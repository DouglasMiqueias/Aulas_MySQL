-- Tabela: editora
CREATE TABLE IF NOT EXISTS `db_introSQL`.`editora` (
    `cod_editora` INT NOT NULL AUTO_INCREMENT,
    `descricao`   VARCHAR(45) NOT NULL,
    `endereco`    VARCHAR(45) DEFAULT NULL,
    PRIMARY KEY (`cod_editora`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- Tabela: livro
CREATE TABLE IF NOT EXISTS `db_introSQL`.`livro` (
    `cod_livro`             INT NOT NULL AUTO_INCREMENT,
    `isbn`                  VARCHAR(45) NOT NULL,
    `titulo`                VARCHAR(45) NOT NULL,
    `num_edicao`            VARCHAR(45) DEFAULT NULL,
    `preco`                 DECIMAL(10,2) NOT NULL,
    `editora_cod_editora`   INT NOT NULL,
    PRIMARY KEY (`cod_livro`),
    INDEX `fk_livro_editora_idx` (`editora_cod_editora` ASC),
    CONSTRAINT `fk_livro_editora`
        FOREIGN KEY (`editora_cod_editora`)
        REFERENCES `db_introSQL`.`editora` (`cod_editora`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- Tabela: autor
CREATE TABLE IF NOT EXISTS `db_introSQL`.`autor` (
    `cod_autor`       INT NOT NULL AUTO_INCREMENT,
    `nome`            VARCHAR(45) NOT NULL,
    `sexo`            CHAR(1) DEFAULT NULL,
    `data_nascimento` DATE NOT NULL,
    PRIMARY KEY (`cod_autor`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- Tabela: livro_has_autor
CREATE TABLE IF NOT EXISTS `db_introSQL`.`livro_has_autor` (
    `livro_cod_livro` INT NOT NULL,
    `autor_cod_autor` INT NOT NULL,
    PRIMARY KEY (`livro_cod_livro`, `autor_cod_autor`),
    INDEX `fk_livro_has_autor_autor1_idx` (`autor_cod_autor` ASC),
    INDEX `fk_livro_has_autor_livro1_idx` (`livro_cod_livro` ASC),
    CONSTRAINT `fk_livro_has_autor_livro1`
        FOREIGN KEY (`livro_cod_livro`)
        REFERENCES `db_introSQL`.`livro` (`cod_livro`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_livro_has_autor_autor1`
        FOREIGN KEY (`autor_cod_autor`)
        REFERENCES `db_introSQL`.`autor` (`cod_autor`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
