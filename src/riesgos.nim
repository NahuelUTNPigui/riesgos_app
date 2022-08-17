import ioutiles
import models
import std/os

proc mergear():seq[Riesgo]=
  return @[Riesgo()]

proc merge_sort(ls: seq[Riesgo]):seq[Riesgo]=
  return @[Riesgo()]


proc ordenar_riesgos():seq[Riesgo]=
  
  
  return @[Riesgo()]

proc ids_x_porc(porc: float, rs: var seq[Riesgo]):seq[int]=
  var acumulado=0
  for r in rs:
    acumulado+=r.exposicion()
  

  return @[1]

when isMainModule:
  var opcion="0.7"
  when declared(commandLineParams):
    if(len(commandLineParams())>0):
      opcion=commandLineParams()[0]
  echo opcion
  let rs=read_archivo("riesgos")
  for r in rs:
    echo r.show()
  
