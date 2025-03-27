ALTER TABLE `db_introsql`.`editora`
    CHANGE COLUMN `descricao` `nome` VARCHAR(45) NOT NULL;

ALTER TABLE `db_introsql`.`autor`
    CHANGE COLUMN `sexo` `sexo` VARCHAR(1) NULL DEFAULT NULL;

ALTER TABLE `db_introsql`.`livro`
    ADD UNIQUE INDEX `isbn_UNIQUE` (`isbn` ASC) VISIBLE;

ALTER TABLE `db_introsql`.`livro`
    CHANGE COLUMN `preco` `preco` FLOAT NOT NULL DEFAULT 10.00;

ALTER TABLE `db_introsql`.`livro`
    DROP COLUMN `num_edicao`;

ALTER TABLE `db_introsql`.`livro`
    ADD COLUMN `edicao` VARCHAR(45) NULL AFTER `titulo`;

CREATE TABLE `db_introsql`.`grupo` (
    `id_grupo` INT NOT NULL,
    `nome` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_grupo`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

ALTER TABLE `db_introsql`.`editora`
    ADD COLUMN id_grupo INT,
    ADD CONSTRAINT id_grupo
        FOREIGN KEY (id_grupo)
        REFERENCES `db_introsql`.`grupo` (id_grupo)
        ON DELETE SET NULL
        ON UPDATE CASCADE;