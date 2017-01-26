#'A MIGSA results object obtained from breast cancer data.
#'
#'A MIGSA results object obtained using the datasets:
#'\itemize{
#'\item mainz (microarray).
#'\item nki (microarray).
#'\item tcga (microarray).
#'\item tcga (RNAseq).
#'\item transbig (microarray).
#'\item unt (microarray).
#'\item upp (microarray).
#'\item vdx (microarray).
#'}
#'
#'Each dataset subjects were classified using the PAM50 algorithm. For this 
#'analysis only Basal and Luminal A subjects were kept (this was the contrast 
#'used, i.e., Basal vs. LumA).
#'
#'Datasets were tested for gene set enrichment over:
#'\itemize{
#'\item the org.Hs.eg.db Gene Ontology gene sets, resulting in 14,291 as BP, 
#'1,692 CC and 4,263 MF.
#'\item KEGG gene sets downloaded from enrichr database resulting in 179 gene 
#'sets.
#'}
#'
#'In order to get the MIGSAres object follow:
#'library(MIGSAdata);
#'library(MIGSA);
#'data(bcMigsaResAsList);
#'bcMigsaRes <- MIGSA:::MIGSAres.data.table(bcMigsaResAsList$dframe, 
#'bcMigsaResAsList$genesRank);
#'
#'@docType data
#'@format A list with two main components to create the MIGSAres object
#'@name bcMigsaResAsList
NULL
