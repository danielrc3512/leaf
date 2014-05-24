
datos <- "C:/Users/Danielin/Documents/GitHub/leaf/leaf.csv"

misdatos <- read.csv(datos)
mediaMaximalIndentationDepth <- function ()
{

	maximalIndentationDeph <- misdatos[,9]
	median(maximalIndentationDeph)

}
mediaXClase <- function ()
{

 largo <- dim(misdatos)[1]
 tClase <- 0
 sClase <- 0
 for (i in 1:largo )
 {
	clase <- misdatos[i,1]
	sClase <- sClase + misdatos[i,9]
	tClase <- tClase + 1
	
	if ( i == largo) 
	{
		texto <- paste("La media Maximal Indentation Depth de la clase", clase,"es",(sClase / tClase), sep = " ", collapse = NULL) 
		print(texto)
			
	} else {
	
		if (clase != misdatos[i+1,1] )
		{
		
		
			texto <- paste("La media Maximal Indentation Depth de la clase", clase,"es",(sClase / tClase), sep = " ", collapse = NULL) 
			print(texto)
			tClase <- 0
			sClase <- 0
		
		} 
	}
 }
}