INSERT INTO `inventario_panaderia`.`tabla_proveedor`
(`ID`,
`Nombre_Proveedor`,
`Fecha_Entrega`,
`Tipo_Producto`,
`Precio`)
VALUES
( 1,
"Bimbo",
"03-05-23",
"Pan Blanco",
61);

INSERT INTO `inventario_panaderia`.`tabla_proveedor`
(`ID`,
`Nombre_Proveedor`,
`Fecha_Entrega`,
`Tipo_Producto`,
`Precio`)
VALUES
( 2,
"La Popular",
18/08/23,
"Pan Integral",
85);

INSERT INTO `inventario_panaderia`.`tabla_proveedor`
(`ID`,
`Nombre_Proveedor`,
`Fecha_Entrega`,
`Tipo_Producto`,
`Precio`)
VALUES
( 3,
"Breadco",
21/05/23,
"Baguette",
120);

select * from inventario_panaderia.tabla_proveedor;
INSERT INTO `inventario_panaderia`.`tabla_tipo_panes`
(`ID`,
`Tipo_Pan`,
`Tipo_Sabor`,
`Cantidad`,
`Fecha_Vencimiento`,
`Tipo_Empaque`)
VALUES
( 1,
 "Blanco",
 "Simple",
 5,
 "20-12-23",
 "Caja");
 
 INSERT INTO `inventario_panaderia`.`tabla_tipo_panes`
(`ID`,
`Tipo_Pan`,
`Tipo_Sabor`,
`Cantidad`,
`Fecha_Vencimiento`,
`Tipo_Empaque`)
VALUES
( 2,
 "Integral",
 "Simple",
 10,
 "01-12-23",
 "Caja");
 
 INSERT INTO `inventario_panaderia`.`tabla_tipo_panes`
(`ID`,
`Tipo_Pan`,
`Tipo_Sabor`,
`Cantidad`,
`Fecha_Vencimiento`,
`Tipo_Empaque`)
VALUES
( 3,
 "Integral",
 "Baguette",
 2,
 "24-05-23",
 "Bolsa");
 
 
 
 INSERT INTO `inventario_panaderia`.`tabla_materiaprima`
(`ID`,
`Ingredientes`,
`Cantidades`,
`Costo`)
VALUES
( 1,
"Leche",
2,
110);

INSERT INTO `inventario_panaderia`.`tabla_materiaprima`
(`ID`,
`Ingredientes`,
`Cantidades`,
`Costo`)
VALUES
( 2,
"Huevo",
5,
45);

INSERT INTO `inventario_panaderia`.`tabla_materiaprima`
(`ID`,
`Ingredientes`,
`Cantidades`,
`Costo`)
VALUES
( 3,
"Arina",
10,
150);

select * from inventario_panaderia.tabla_materiaprima;

use inventario_panaderia;
select * from tabla_materiaprima;
delete from tabla_materiaprima where id = 1;

select * from tabla_tipo_panes;
update tabla_tipo_panes set cantidad = 20 where id=2;

 
 
 



