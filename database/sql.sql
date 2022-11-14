CREATE TABLE mensagens (
    id INT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    comentario VARCHAR(100) 
);

INSERT INTO mensagens (id, nome, email, comentario)
VALUES (1, "patinha", "patinhas@pato", "Ducktales");