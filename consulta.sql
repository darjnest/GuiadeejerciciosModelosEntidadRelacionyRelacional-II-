-- Crear la base de datos
CREATE DATABASE sistema_consultas;

-- Conectar a la base de datos
\c sistema_consultas;

-- Crear la tabla ESPECIALIDAD
CREATE TABLE Especialidad (
    codigo VARCHAR(50) PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

-- Crear la tabla MEDICO
CREATE TABLE Medico (
    rut VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    codigo_especialidad VARCHAR(50),
    FOREIGN KEY (codigo_especialidad) REFERENCES Especialidad(codigo)
);

-- Crear la tabla PACIENTE
CREATE TABLE Paciente (
    rut VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255)
);

-- Crear la tabla CONSULTA
CREATE TABLE Consulta (
    consultaID SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    horaAtencion VARCHAR(10),
    numeroBox VARCHAR(10),
    rutMedico VARCHAR(15),
    rutPaciente VARCHAR(15),
    FOREIGN KEY (rutMedico) REFERENCES Medico(rut),
    FOREIGN KEY (rutPaciente) REFERENCES Paciente(rut)
);

-- Crear la tabla LICENCIA
CREATE TABLE Licencia (
    codigo VARCHAR(50) PRIMARY KEY,
    diagnostico VARCHAR(255) NOT NULL,
    fechaInicio DATE NOT NULL,
    fechaTermino DATE NOT NULL,
    rutMedico VARCHAR(15),
    rutPaciente VARCHAR(15),
    FOREIGN KEY (rutMedico) REFERENCES Medico(rut),
    FOREIGN KEY (rutPaciente) REFERENCES Paciente(rut)
);




