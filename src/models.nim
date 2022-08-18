type
    Riesgo* = object
        id*,impacto*,probabilidad*: int
        nombre*: string
proc exposicion*(r: Riesgo): int=
    r.impacto * r.probabilidad


proc show*(r:Riesgo):string=
    var res="{id:" & $r.id & " , nombre: " & $r.nombre & "}"
    return res

proc inv_cmp_risk*(r1,r2:Riesgo):int=
    -1*cmp(r1.exposicion(),r2.exposicion())

proc cmp_risk*(r1,r2:Riesgo):int=
    cmp(r1.exposicion(),r2.exposicion())