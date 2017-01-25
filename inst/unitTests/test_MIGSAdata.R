# library(covr);
# library(RUnit);
# library(MIGSAdata);

# BiocGenerics:::testPackage("MIGSAdata")
require(BiocGenerics);

rOpts <- getOption("RUnit");
rOpts$silent <- !FALSE;
options("RUnit"=rOpts);

######## bcMigsaResAsList

test_bcMigsaResAsList_ok <- function() {
    data(bcMigsaResAsList);
    
    checkTrue(is(bcMigsaResAsList, "list"));
    checkTrue(all(names(bcMigsaResAsList) == c("dframe", "genesRank")));
    
    checkTrue(is(bcMigsaResAsList$dframe, "data.table"));
    checkTrue(all(dim(bcMigsaResAsList$dframe) == c(163400, 15)));
    
    checkTrue(is(bcMigsaResAsList$genesRank, "list"));
    checkTrue(length(bcMigsaResAsList$genesRank) == 8);
    checkTrue(all(unlist(lapply(bcMigsaResAsList$genesRank, class)) == 
        "data.frame"));
}

######## mGSZspeedup

test_mGSZspeedup_ok <- function() {
    data(mGSZspeedup);
    
    checkTrue(is(mGSZspeedup, "list"));
    checkTrue(all(names(mGSZspeedup) == c("allRes", "nCores", "timeSpent")));
    
    checkTrue(is(mGSZspeedup$allRes, "list"));
    checkTrue(length(mGSZspeedup$allRes) == 7);
    
    checkTrue(all(mGSZspeedup$nCores == c(1,2,4,8,10,12,14)));
}

######## pbcmcData

test_pbcmcData_ok <- function() {
    data(pbcmcData);
    
    checkTrue(is(pbcmcData, "list"));
    checkTrue(length(pbcmcData) == 6);
    
    checkTrue(all(unlist(lapply(pbcmcData, class)) == "list"));
}

######## tcgaMAdata

test_tcgaMAdata_ok <- function() {
    data(tcgaMAdata);
    
    checkTrue(is(tcgaMAdata, "list"));
    checkTrue(all(names(tcgaMAdata) == c("geneExpr", "subtypes")));
    
    checkTrue(all(dim(tcgaMAdata$geneExpr) == c(16207, 237)));
    checkTrue(all(table(tcgaMAdata$subtypes) == c(95, 142)));
}

######## tcgaRNAseqData

test_tcgaRNAseqData_ok <- function() {
    data(tcgaRNAseqData);
    
    checkTrue(is(tcgaRNAseqData, "list"));
    checkTrue(all(names(tcgaRNAseqData) == c("rnaSeq", "subtypes")));
    
    checkTrue(all(dim(tcgaRNAseqData$rnaSeq) == c(19948, 237)));
    checkTrue(all(table(tcgaRNAseqData$subtypes) == c(95, 142)));
}
