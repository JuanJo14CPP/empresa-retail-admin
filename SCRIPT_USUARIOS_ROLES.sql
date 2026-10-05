-- CONFIGURACION DE USUARIOS, ROLES Y PERMISOS --

USE `empresa-retail-db`;

-- CREACIÓN DE USUARIOS

-- Usuario ana_crm
CREATE USER 'ana_crm'@'localhost' IDENTIFIED BY 'Retail2026!Caja';
-- Usuario pedro_mkt
CREATE USER IF NOT EXISTS 'pedro_mkt'@'localhost' IDENTIFIED BY 'Retail2026!Stock';
-- Usuario marta_auditoria
CREATE USER 'marta_auditoria'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Retail2026!Admin';

FLUSH PRIVILEGES;

-- CREACIÓN DE ROLES

-- Rol Ana: puede gestionar Clientes e Interacciones (Lectura y Escritura).
CREATE ROLE IF NOT EXISTS 'rol_gestor_clientes';
-- Rol Pedro: puede gestionar Canales y Campañas, pero solo puede ver clientes, pero no editarlos.
CREATE ROLE IF NOT EXISTS 'rol_gestor_canales';
-- Rol Marta: solo puede ver Conversiones (Compra, registro, suscripción) y usar procedimientos almacenados de consulta.
CREATE ROLE IF NOT EXISTS 'rol_auditor';

FLUSH PRIVILEGES;

