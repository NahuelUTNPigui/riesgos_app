import  std/strutils
import models
proc read_archivo*(filename:string):seq[Riesgo]=
    let f= open(filename)
    defer: f.close()
    var riesgos= newSeq[Riesgo](0)
    for line in lines f:
        let palabras=line.split(" ")
        
        let r=Riesgo(
            id:parseInt(palabras[0]),
            nombre:palabras[1],
            probabilidad:parseInt(palabras[2]),
            impacto:parseInt(palabras[3])
        )
        riesgos.add(r)
    return riesgos