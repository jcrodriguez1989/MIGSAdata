#'Pbcmc breast cancer microarray data.
#'
#'Pbcmc package lets download breast cancer microarray datasets, for each, 
#'here we include its expresion matrix and each subjects subtypes.
#'Each dataset subjects were classified using the PAM50 algorithm. Only Basal 
#'and Luminal A subjects were kept.
#'Datasets are:
#'\itemize{
#'\item mainz.
#'\item nki.
#'\item transbig.
#'\item unt.
#'\item upp.
#'\item vdx.
#'}
#'Details in how this datasets were obtained can be find in MIGSA's 
#'gettingPbcmcData vignette.
#'
#'@docType data
#'@format A list containing six lists (one per dataset), each one contains gene 
#'expression as data.frame and subtypes as vector.
#'@name pbcmcData
NULL
