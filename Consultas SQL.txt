/*  COMIENZO  CONSULTA    SQL Caracteristicas de los vehiculos y aseguradora y polizas    */


select concat (a.precio_compra,' ',b.tipo_moneda ) as precio_compra,
a.fecha_compra,
a.num_matricula as Matricula,
a.kilometraje as total_kilometros,
c.nombre_grupo as grupo_automovilistico ,
d.marca,e.nombre_modelo,f.color,
g.nombre_aseguradora,
h.num_poliza as Numero_Poliza,
h.importe as Importe_Poliza ,
h.fecha_alta as Fecha_Alta_Poliza,
h.fecha_renovacion as Fecha_Renovacion_Poliza
from sebastianbenitez.vehiculos a
inner join sebastianbenitez.moneda b on a.id_moneda=b.id_moneda
inner join sebastianbenitez.grupo c on c.id_grupo=a.id_grupo 
inner join sebastianbenitez.marca d on d.id_marca=a.id_marca
inner join sebastianbenitez.modelo e on e.id_modelo=a.id_modelo
inner join sebastianbenitez.color f on f.id_color=a.id_color
inner join sebastianbenitez.aseguradora g on g.id_matricula=a.id_matricula
inner join sebastianbenitez.poliza  h on g.id_poliza=h.id_poliza 
order by a.precio_compra ;


/* Consulta SQL : REVISIONES VEHICULOS */

--CONSULTA SQL: VEHICULOS CON ULTIMA REVISION --

select 
a.num_matricula as Numero_Matricula,
c.fecha_revision as fecha_ultima_revision,
concat (c.importe,' ', d.tipo_moneda ) as Importe_Revision,
c.kilometros_revision as Kilometros_Revision,
max(c.cantidad_revisiones) as Numero_de_revisiones
from sebastianbenitez.vehiculos a
inner join sebastianbenitez.historico_revisiones b on a.id_matricula=b.id_matricula
inner join sebastianbenitez.revisiones c on b.id_revision=c.id_revision
inner join sebastianbenitez.moneda d on d.id_moneda =c.id_moneda 
group by a.num_matricula,c.fecha_revision ,c.importe,d.tipo_moneda ,c.kilometros_revision,c.cantidad_revisiones having c.fecha_revision between '09-09-2021'and '09-09-2022' and c.kilometros_revision <>0 
order by a.num_matricula;

--CONSULTA SQL: VEHICULOS QUE TODAVIA NO HAN PASADO REVISIONES-- 

select c.num_matricula ,c.fecha_compra from sebastianbenitez.revisiones b
inner join sebastianbenitez.historico_revisiones a on a.id_revision=b.id_revision
inner join sebastianbenitez.vehiculos c on c.id_matricula=a.id_matricula
group by c.num_matricula,c.fecha_compra having c.fecha_compra > '09-09-2017';

--CONSULTA SQL; FECHAS PROXIMAS REVISIONES  --

select 
a.num_matricula,
max(c.fecha_revision) as fecha_proxima_revision
 from sebastianbenitez.vehiculos a
inner join sebastianbenitez.historico_revisiones b on a.id_matricula=b.id_matricula
inner join sebastianbenitez.revisiones c on b.id_revision=c.id_revision
group by a.num_matricula,c.cantidad_revisiones  having c.cantidad_revisiones=0
order by a.num_matricula,c.cantidad_revisiones;


/* FIN CONSULTA sql  */