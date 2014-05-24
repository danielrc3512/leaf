
mediaMaximalIndentationDepth <- function ()
{

	misdatos <- read.csv("C:/Users/Danielin/Desktop/R/leaf/leaf.csv")
	maximalIndentationDeph <- misdatos[,9]
	median(maximalIndentationDeph)

}
