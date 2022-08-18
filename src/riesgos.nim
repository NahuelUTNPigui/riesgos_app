import ioutiles
import std/algorithm
import std/strutils
import models
import std/os

iterator `...`*[T](a: T, b: T): T =
  var res: T = T(a)
  while res <= b:
    yield res
    inc res


proc ids_x_porc(porc: float, rs: var seq[Riesgo]):seq[int]=
  var exposicion_total=0
  rs.sort(inv_cmp_risk)
  
  var ids=newSeq[int](0)
  for r in rs:
    exposicion_total+=r.exposicion()
  var acumulado=0.0
  var i=0
  while acumulado<porc:
    acumulado+=rs[i].exposicion()/exposicion_total
    ids.add(rs[i].id)
    inc i
  return ids

when isMainModule:
  var opcion="0.7"
  when declared(commandLineParams):
    if(len(commandLineParams())>0):
      opcion=commandLineParams()[0]
  let fopcion=parseFloat(opcion)
  var rs=read_archivo("riesgos")
  var ids=ids_x_porc(fopcion,rs)
  for i in 0...len(ids)-1:
    echo rs[i].show()
    
