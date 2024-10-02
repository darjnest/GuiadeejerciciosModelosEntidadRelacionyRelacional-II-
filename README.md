# Sistema de Consultas Médicas

Este proyecto es un sistema para gestionar consultas médicas, médicos, pacientes, especialidades y licencias.

## Tabla de Contenidos

- [Sistema de Consultas Médicas](#sistema-de-consultas-médicas)
  - [Tabla de Contenidos](#tabla-de-contenidos)
  - [Descripción del Proyecto](#descripción-del-proyecto)
  - [Modelo Entidad-Relación](#modelo-entidad-relación)
  - [Modelo Relacional](#modelo-relacional)

## Descripción del Proyecto

El sistema permite gestionar:

- Médicos con sus especialidades.
- Pacientes que pueden recibir consultas.
- Consultas médicas, incluyendo fecha, hora de atención y consultorio.
- Licencias médicas emitidas por los médicos.

## Modelo Entidad-Relación

![Modelo ER](ruta/a/tu/diagrama/er.png)  
_Descripción del diagrama ER aquí_

## Modelo Relacional

Las tablas en el sistema son las siguientes:

1. **Especialidad**

   - `codigo` (VARCHAR, PK)
   - `descripcion` (VARCHAR)

2. **Medico**

   - `rut` (VARCHAR, PK)
   - `nombre` (VARCHAR)
   - `direccion` (VARCHAR)
   - `codigo_especialidad` (FK)

3. **Paciente**

   - `rut` (VARCHAR, PK)
   - `nombre` (VARCHAR)
   - `direccion` (VARCHAR)

4. **Consulta**

   - `consultaID` (INT, PK)
   - `fecha` (DATE)
   - `horaAtencion` (VARCHAR)
   - `numeroBox` (VARCHAR)
   - `rutMedico` (FK)
   - `rutPaciente` (FK)

5. **Licencia**
   - `codigo` (VARCHAR, PK)
   - `diagnostico` (VARCHAR)
   - `fechaInicio` (DATE)
   - `fechaTermino` (DATE)
   - `rutMedico` (FK)
   - `rutPaciente` (FK)

Clona el repositorio.
Conéctate a PostgreSQL y ejecuta el script SQL para crear la base de datos.
Inserta los datos necesarios para comenzar a usar el sistema.
Tecnologías Usadas

PostgreSQL
SQL

```

```
