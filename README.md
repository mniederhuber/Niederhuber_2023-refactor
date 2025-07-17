> [!WARNING] 
> This is a refactor project of https://github.com/mniederhuber/Niederhuber_2023
> The goal is to fully refactor the original codebase to optimize ease of reuse and reproducibility without changing results.
> The original repository will remain as a record of the code at the time of publication.

# The SWI/SNF nucleosome remodeler constrains enhancer activity during Drosophila wing development
## Code repository for Niederhuber, Leatham-Jensen, and McKay, 2023.
### Abstract
Chromatin remodeling is central to the dynamic changes in gene expression that drive cell fate determination. During development, the sets of enhancers that are accessible for use change globally as cells transition between stages. While transcription factors and nucleosome remodeling complexes are known to work together to control access to enhancers, it is unclear how the short stretches of DNA that they individually unmask yield the kilobase-sized accessible regions that are characteristic of active enhancers.

**Published Paper:** [The SWI/SNF nucleosome remodeler constrains enhancer activity during _Drosophila_ wing development](https://academic.oup.com/genetics/article/226/2/iyad196/7394852?login=true) (Genetics)

**Preprint:** [The SWI/SNF nucleosome remodeler constrains enhancer activity during _Drosophila_ wing development](https://www.biorxiv.org/content/10.1101/2023.07.17.549384v1) (bioRxiv)

# Data

GEO Record <a href='GSE244556'>GSE244556</a>

Raw fastq files can be retrieved from the SRA S3 bucket. 

```bash
aws s3 cp s3://sra-pub-run-