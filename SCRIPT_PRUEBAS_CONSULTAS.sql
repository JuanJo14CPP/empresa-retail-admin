
-- PRUEBAS DE PERMISOS --

USE `empresa-retail-db`;

-- Prueba 1: ana_crm conecta corectamente con la tabla clientes
SELECT USER(), CURRENT_USER();

-- Prueba 2: ana_crm NO puede modificar la tabla de empleados ----
UPDATE empleado SET emp_cargo = 'Gerente' WHERE emp_id_empleado = 1; -- Debe dar error de permisos (no tiene permisos sobre esta tabla)


-- Prueba 4: pedro_mkt puede insertar datos en la tabla campañas ----
INSERT INTO campania (cam_nombre, cam_presupuesto, cam_fecha_inicio, 
                      cam_fecha_final, canal_can_id_canal)
VALUES ('Campaña Verano', 5000000, '2026-06-01', '2026-08-31', 2); -- Debe funcionar

-- Prueba 5: pedro_mkt NO puede modificar la tabla clientes ----
UPDATE cliente SET cli_ciudad = 'bogota' WHERE cli_id_cliente = 1; -- Debe dar error 

-- Prueba 6: marta_auditoria puede leer la tabla conversiones ----
SELECT * FROM conversion;

-- Prueba 7: marta_auditoria NO puede modificar clientes ----
INSERT INTO conversion (con_tipo, con_valor, con_fecha, cliente_cli_id_cliente)
VALUES ('Compra', 235000, CURDATE(), 4); --  Debe dar error 

