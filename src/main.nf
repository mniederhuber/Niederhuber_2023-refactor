
process downloadSRA{
    input:
    val accession

    output:
    path "${accession}.sra"

    script:
    """
    aws s3 cp s3://sra-pub-run-odp/sra/${accession}/${accession}.1 ${accession}.sra --no-sign-request
    """
}

process SRAtoFastq {
    input:
    path sra_file

    output:
    path "${sra_file.baseName}.fastq"

    script:
    """
    fasterq-dump --split-files ${sra_file} -O ${params.raw_fastq_dir} -e ${params.threads} 
    """

}

process compressFastq {
    input:
    path fastq_file

    output:
    path "${fastq_file.baseName}.fastq.gz"
    publishDir params.raw_fastq_dir, mode: 'copy'

    script:
    """
    gzip ${fastq_file}
    """
}

workflow {
    accession_ch = Channel
        .fromPath(params.SraRunTable)
        .splitCsv(header: true)
        .map { row -> row.Run }
    
    downloadSRA(accession_ch) |
    SRAtoFastq |
    compressFastq
}