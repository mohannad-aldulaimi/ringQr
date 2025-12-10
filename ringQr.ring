load 'codegenlib.ring'

loadlib("RingQrCode.dll")


func readfromimage pImage 
	return ring_readfromimage( getobjectpointerfromringobject(pImage) )

func readfromfile cF 
	return ring_readfromfile(cF)
  
func genqrcode cText
	pImageAsByteArray = ring_genqrcode(cText)
	pImage = new qPixMap2(200,200)
	pImage.loadFromData_2(pImageAsByteArray,"PNG",3)
	return pImage