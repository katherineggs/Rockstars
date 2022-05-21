-- Construir un modelo en Cassandra que permita replicar 
-- estado actual de las reservaciones 
-- para lograr escalabilidad y mejorar tiempos de respuesta.

-- MODELO
CREATE KEYSPACE rocky
    WITH REPLICATION = {
        'class' : 'SimpleStrategy'
        'replication_factory' : 1
};

CREATE TABLE reserva(
    id_reserva int primary key,
    id_hotel int,
    id_habitacion int,
    id_cliente int,
    fecha_ingreso date,
    fecha_egreso date,
);

DROP TABLE rocky.reserva


