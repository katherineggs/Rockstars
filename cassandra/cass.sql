-- Construir un modelo en Cassandra que permita replicar 
-- estado actual de las reservaciones 
-- para lograr escalabilidad y mejorar tiempos de respuesta.

-- MODELO
CREATE KEYSPACE rocky
    WITH REPLICATION = {
    'replication_factory' : 1
};

CREATE TABLE reserva(
    id_reserva int primary key,
    id_hotel int,
    id_habitacion int,
    id_cliente int,
    fecha_ingreso date,
    fecha_egreso date,
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