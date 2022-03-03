-- No está el query para las tablas de servicios
CREATE TABLE hotel(
    id_hotel int primary key,
    ubicacion varchar,
    direccion varchar,
    capacidad varchar,
    id_servicios int,
     CONSTRAINT id_servicios
      FOREIGN KEY(id_servicios)
	  REFERENCES "serviciosHotel"(id_servicios)
	  ON DELETE CASCADE
);

CREATE TABLE habitacion(
    id_habitacion int primary key,
    ocupacion_estado varchar,
    tarifa int,
    id_servicios int,
     CONSTRAINT id_servicios
      FOREIGN KEY(id_servicios)
	  REFERENCES "serviciosHabitacion"(id_servicios)
	  ON DELETE CASCADE
);

CREATE TABLE cliente(
    id_cliente int primary key,
    nombre varchar,
    edad int,
    telefono int,
    email varchar,
    direccion varchar,
    cant_acompañantes int,
    id_servicios int
);

CREATE TABLE reserva(
    id_reserva int primary key,
    id_hotel int,
    id_habitacion int,
    id_cliente int,
     CONSTRAINT id_hotel
      FOREIGN KEY(id_hotel)
	  REFERENCES "hotel"(id_hotel)
	  ON DELETE CASCADE,

    CONSTRAINT id_habitacion
      FOREIGN KEY(id_habitacion)
	  REFERENCES "habitacion"(id_habitacion)
	  ON DELETE CASCADE,

	CONSTRAINT id_cliente
      FOREIGN KEY(id_cliente)
	  REFERENCES "cliente"(id_cliente)
	  ON DELETE CASCADE
);