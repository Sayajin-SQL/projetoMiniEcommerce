/****************** PROJETO MINI E-COMMERCE ******************/

/*

        -- Bem Vindos Sayajins --

⣿⣿⠿⠿⠿⠿⣿⣷⣂⠄⠄⠄⠄⠄⠄⠈⢷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣷⡾⠯⠉⠉⠉⠉⠚⠑⠄⡀⠄⠄⠄⠄⠄⠈⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⡀⠄⠄⠄⠄⠄⠄⠄⠄⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⠎⠄⠄⣀⡀⠄⠄⠄⠄⠄⠄⠄⠘⠋⠉⠉⠉⠉⠭⠿⣿
⡀⠄⠄⠄⠄⠄⠄⠄⠄⡇⠄⣠⣾⣳⠁⠄⠄⢺⡆⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
⣿⣷⡦⠄⠄⠄⠄⠄⢠⠃⢰⣿⣯⣿⡁⢔⡒⣶⣯⡄⢀⢄⡄⠄⠄⠄⠄⠄⣀⣤⣶
⠓⠄⠄⠄⠄⠄⠸⠄⢀⣤⢘⣿⣿⣷⣷⣿⠛⣾⣿⣿⣆⠾⣷⠄⠄⠄⠄⢀⣀⣼⣿             
⠄⠄⠄⠄⠄⠄⠄⠑⢘⣿⢰⡟⣿⣿⣷⣫⣭⣿⣾⣿⣿⣴⠏⠄⠄⢀⣺⣿⣿⣿⣿
⣿⣿⣿⣿⣷⠶⠄⠄⠄⠹⣮⣹⡘⠛⠿⣫⣾⣿⣿⣿⡇⠑⢤⣶⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣯⣤⣤⣤⣤⣀⣀⡹⣿⣿⣷⣯⣽⣿⣿⡿⣋⣴⡀⠈⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣝⡻⢿⣿⡿⠋⡒⣾⣿⣧⢰⢿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⣏⣟⣼⢋⡾⣿⣿⣿⣘⣔⠙⠿⠿⠿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⣛⡵⣻⠿⠟⠁⠛⠰⠿⢿⠿⡛⠉⠄⠄⢀⠄⠉⠉⢉
⣿⣿⣿⣿⡿⢟⠩⠉⣠⣴⣶⢆⣴⡶⠿⠟⠛⠋⠉⠩⠄⠉⢀⠠⠂⠈⠄⠐⠄⠄⠄



-- Canal Sayajin SQL    >> https://www.youtube.com/channel/UC6aR2nPTkD6GECmEjQBEWtQ
-- Github               >> https://github.com/Sayajin-SQL

.
.
.
.
.
.
.
.
.
.
.
.
.
*/




/* ########## AULA 01  ########## */

-- Apresentação do sumário do projeto


--------- SUMÁRIO --------------------

-- 1. Modelagem
-- 2. Criação de tabelas
-- 3. Insert
-- 4. Update
-- 5. Delete
-- 6. Select | Views
-- 7. Funções
-- 8. Triggers
-- 9. Procedimentos Armazenados
-- 10. Cursores
-- 11. Joins
-- 12. Controle de Usuários



/* ########## AULA 02  ########## */

-- Apresentação do modelo relacional



-- --------------- MODELO RELACIONAL ------------------------

-- 1. Entidades 

    -- 1.1 Produto      (Forte)
    -- 1.2 Cliente      (Forte)
    -- 1.3 Pedido       (Fraca)
    -- 1.4 Carrinho     (Associativa)

/* 

    PRODUTO --N---N-- PEDIDO -N---1- CLIENTE  
                |
                |
             CARRINHO

*/



/* ########## AULA 03  ########## */

-- Criando tabelas | tipos de dados | Contraints | Sequências


-- --------------- TABELAS ------------------------

-- 1 - Produto --                                                                           

    -- 1.1 - ID -- PK
    -- 1.2 - Nome
    -- 1.3 - Preço
    -- 1.4 - Custo
    -- 1.5 - Estoque

    /* Tabela */

CREATE TABLE tbl_produto (

    id_produto          INT                 NOT NULL        ,
    nome_produto        VARCHAR2  (50)      NOT NULL        ,
    preco_produto       DECIMAL   (9,2)     NOT NULL        ,
    custo_produto       DECIMAL   (9,2)     NOT NULL        ,
    estoque_produto     INT                     NULL        ,

    CONSTRAINT      pk_id_produto         PRIMARY KEY     (id_produto)      

)
;

    /* Sequência */

CREATE SEQUENCE sq_id_produto
START WITH 1
INCREMENT BY 1
NOCACHE
;

    /* Informações */

select 
    column_name, data_type,data_precision,data_scale,data_length
from   
    user_tab_columns
where  
    table_name = UPPER('tbl_produto')
    ;

-- ------------------------ // ------------------------

-- 2 - Cliente --

    -- 2.1 - ID -- PK
    -- 2.2 - Nome
    -- 2.3 - Sobrenome
    -- 2.4 - Sexo -- CK
    -- 2.5 - Nascimento
    -- 2.6 - Celular -- U | CK
    -- 2.7 - Email -- U

    /* Tabela */

CREATE TABLE tbl_cliente (

    id_cliente          INT                 NOT NULL        ,
    nome_cliente        VARCHAR2  (50)      NOT NULL        ,
    sobrenome_cliente   VARCHAR2  (80)      NOT NULL        ,
    sexo_cliente        CHAR       (1)      NOT NULL        ,
    nascimento_cliente  DATE                NOT NULL        ,
    celular_cliente     CHAR      (14)      NOT NULL        ,
    email_cliente       VARCHAR2  (80)      NOT NULL        ,

    CONSTRAINT      pk_id_cliente         PRIMARY KEY     (id_cliente)                  ,
    CONSTRAINT      u_celular_cliente     UNIQUE          (celular_cliente)             ,
    CONSTRAINT      u_email_cliente       UNIQUE          (email_cliente)               ,
    CONSTRAINT      ck_sexo               CHECK           (sexo_cliente in ('M','F'))   , 
    CONSTRAINT      ck_celular            CHECK           (REGEXP_LIKE (celular_cliente,'[(][0-9][0-9][)][9][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]'))   
)
;


    /* Sequência */

CREATE SEQUENCE sq_id_cliente
START WITH 1
INCREMENT BY 1
NOCACHE
;

    /* Informações */

select 
    column_name, data_type,data_precision,data_scale,data_length
from   
    user_tab_columns
where  
    table_name = UPPER('tbl_cliente')
    ;

-- ------------------------ // ------------------------

-- 3 - Pedido --

    -- 3.1 - ID -- PK
    -- 3.2 - ID do Cliente -- FK
    -- 3.3 - Situação do pagamento -- CK
    -- 3.4 - Data


    /* Tabela */

CREATE TABLE tbl_pedido (

    id_pedido           INT                 NOT NULL        ,
    id_cliente          INT                 NOT NULL        ,
    situacao_pag        CHAR       (1)          NULL        ,
    data_pedido         DATE                NOT NULL        ,

    CONSTRAINT      pk_id_pedido          PRIMARY KEY     (id_pedido)                  ,
    CONSTRAINT      fk_id_cliente         FOREIGN KEY     (id_cliente)
        REFERENCES  tbl_cliente (id_cliente) ON DELETE CASCADE                          ,
    CONSTRAINT      ck_situacao_pag       CHECK           (situacao_pag = 'P')   
)
;

    /* Sequência */

CREATE SEQUENCE seq_id_pedido
START WITH 1
INCREMENT BY 1
NOCACHE
;

    /* Informações */

select 
    column_name, data_type,data_precision,data_scale,data_length
from   
    user_tab_columns
where  
    table_name = UPPER('tbl_pedido')
    ;

-- ------------------------ // ------------------------

-- 4 - Carrinho --

    -- 4.1 - ID do Pedido -- PK | FK 
    -- 4.2 - ID do Produto -- PK | FK
    -- 4.3 - Qnt do Produto -- CK
    -- 4.4 - Custo do Produto
    -- 4.5 - Preço do Produto

    /* Tabela */

CREATE TABLE tbl_carrinho (

    id_pedido          INT                 NOT NULL        ,
    id_produto         INT                 NOT NULL        ,
    qnt_Produto        INT                 NOT NULL        ,
    preco_produto      DECIMAL   (9,2)     NOT NULL        ,
    custo_produto      DECIMAL   (9,2)     NOT NULL        ,

    CONSTRAINT      pk_id_pedido_carrinho          PRIMARY KEY     (id_pedido,id_produto)                  ,

    CONSTRAINT      fk_id_pedido_carrinho         FOREIGN KEY     (id_pedido)
        REFERENCES  tbl_pedido (id_pedido) ON DELETE CASCADE                                                ,
    
    CONSTRAINT      fk_id_produto_carrinho         FOREIGN KEY     (id_produto)
        REFERENCES  tbl_produto (id_produto) ON DELETE CASCADE                                              ,
    
    CONSTRAINT      ck_qnt_Produto       CHECK           (qnt_Produto > 0)   
)
;


    /* Informações */

select 
    column_name, data_type,data_precision,data_scale,data_length
from   
    user_tab_columns
where  
    table_name = UPPER('tbl_carrinho')
    ;



/* ########## AULA 04  ########## */

-- Inserindo registros nas tabelas



-- --------------- INSERT ------------------------

-- Produtos --

-- Inserindo produtos

-- Produto 1

INSERT INTO 
    ADMIN.TBL_PRODUTO (ID_PRODUTO,NOME_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO,ESTOQUE_PRODUTO) 
VALUES 
    (sq_id_produto.nextval,'Produto_1',99.99,50.99,10);

-- Produto 2

INSERT INTO 
    ADMIN.TBL_PRODUTO (ID_PRODUTO,NOME_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO,ESTOQUE_PRODUTO) 
VALUES 
    (sq_id_produto.nextval,'Produto_2',199.99,150.99,5);

-- Produto 3

INSERT INTO 
    ADMIN.TBL_PRODUTO (ID_PRODUTO,NOME_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO,ESTOQUE_PRODUTO) 
VALUES 
    (sq_id_produto.nextval,'Produto_3',299.99,250.99,6);

-- Produto 4

INSERT INTO 
    ADMIN.TBL_PRODUTO (ID_PRODUTO,NOME_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO,ESTOQUE_PRODUTO) 
VALUES 
    (sq_id_produto.nextval,'Produto_4',399.99,200.99,5);

-- Produto 5

INSERT INTO 
    ADMIN.TBL_PRODUTO (ID_PRODUTO,NOME_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO,ESTOQUE_PRODUTO) 
VALUES 
    (sq_id_produto.nextval,'Produto_5',259.99,230.99,NULL);

-- Comitando inserts

COMMIT;

-- Retornando tabela

SELECT * FROM tbl_produto ORDER BY id_Produto;

-- ------------------------ // ------------------------

-- Cliente --

-- Inserindo clientes

-- Cliente 1

INSERT INTO 
    ADMIN.TBL_CLIENTE (ID_CLIENTE,NOME_CLIENTE,SOBRENOME_CLIENTE,SEXO_CLIENTE,NASCIMENTO_CLIENTE,CELULAR_CLIENTE,EMAIL_CLIENTE) 
VALUES 
    (sq_id_cliente.nextval,'Cliente_1','Sobrenome_2','M',TO_DATE('1979-06-04','YYYY-MM-DD'),'(99)99999-9999','Cliente01@xxxx.com');

-- Cliente 2

INSERT INTO 
    ADMIN.TBL_CLIENTE (ID_CLIENTE,NOME_CLIENTE,SOBRENOME_CLIENTE,SEXO_CLIENTE,NASCIMENTO_CLIENTE,CELULAR_CLIENTE,EMAIL_CLIENTE) 
VALUES 
    (sq_id_cliente.nextval,'Cliente_2','Sobrenome_2','F',TO_DATE('1969-12-09','YYYY-MM-DD'),'(99)99999-9990','Cliente02@xxxx.com');

-- Cliente 3

INSERT INTO 
    ADMIN.TBL_CLIENTE (ID_CLIENTE,NOME_CLIENTE,SOBRENOME_CLIENTE,SEXO_CLIENTE,NASCIMENTO_CLIENTE,CELULAR_CLIENTE,EMAIL_CLIENTE) 
VALUES 
    (sq_id_cliente.nextval,'Cliente_3','Sobrenome_3','M',TO_DATE('1999-11-11','YYYY-MM-DD'),'(99)99999-9991','Cliente03@xxxx.com');

-- Cliente 4

INSERT INTO 
    ADMIN.TBL_CLIENTE (ID_CLIENTE,NOME_CLIENTE,SOBRENOME_CLIENTE,SEXO_CLIENTE,NASCIMENTO_CLIENTE,CELULAR_CLIENTE,EMAIL_CLIENTE) 
VALUES 
    (sq_id_cliente.nextval,'Cliente_4','Sobrenome_4','F',TO_DATE('1987-05-01','YYYY-MM-DD'),'(99)99999-9992','Cliente04@xxxx.com');

-- Cliente 5

INSERT INTO 
    ADMIN.TBL_CLIENTE (ID_CLIENTE,NOME_CLIENTE,SOBRENOME_CLIENTE,SEXO_CLIENTE,NASCIMENTO_CLIENTE,CELULAR_CLIENTE,EMAIL_CLIENTE) 
VALUES 
    (sq_id_cliente.nextval,'Cliente_5','Sobrenome_5','M',TO_DATE('19-12-1995','dd-mm-yyyy'),'(99)99999-9993','Cliente05@xxxx.com');

-- Comitando inserts

COMMIT;

-- Retornando tabela de clientes

SELECT * FROM tbl_cliente ORDER BY id_cliente;

-- ------------------------ // ------------------------

-- Pedido + Carrinho

-- Pedido 01 -- Pendente

INSERT INTO 
    ADMIN.TBL_PEDIDO (ID_PEDIDO,ID_CLIENTE,SITUACAO_PAG,DATA_PEDIDO) 
VALUES (
    seq_id_pedido.nextval,
    1,
    NULL,
    CURRENT_DATE + 1)
    ;

-- Adicionando produto 1 | 2 unid 

INSERT INTO 
    ADMIN.TBL_CARRINHO (ID_PEDIDO,ID_PRODUTO,QNT_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO) 
VALUES (
    1,
    1,
    2,
    (SELECT PRECO_PRODUTO FROM tbl_produto WHERE id_produto = 1),
    (SELECT CUSTO_PRODUTO FROM tbl_produto WHERE id_produto = 1))
    ;

-- Comitando inserts

COMMIT;

-- Retornando tabela de pedidos e carrinho

SELECT * FROM tbl_pedido    ORDER BY id_pedido;
SELECT * FROM tbl_carrinho  ORDER BY id_pedido;

-- ------------------------ // ------------------------

-- Pedido 02 -- Pago

INSERT INTO 
    ADMIN.TBL_PEDIDO (ID_PEDIDO,ID_CLIENTE,SITUACAO_PAG,DATA_PEDIDO) 
VALUES (
    seq_id_pedido.nextval,
    2,
    'P',
    CURRENT_DATE + 2)
    ;

-- Adicionando produto 3 | 3 unid 

INSERT INTO 
    ADMIN.TBL_CARRINHO (ID_PEDIDO,ID_PRODUTO,QNT_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO) 
VALUES (
    2,
    3,
    3,
    (SELECT PRECO_PRODUTO FROM tbl_produto WHERE id_produto = 2),
    (SELECT CUSTO_PRODUTO FROM tbl_produto WHERE id_produto = 2))
    ;

-- Adicionando produto 4 | 1 unid 

INSERT INTO 
    ADMIN.TBL_CARRINHO (ID_PEDIDO,ID_PRODUTO,QNT_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO) 
VALUES (
    2,
    4,
    1,
    (SELECT PRECO_PRODUTO FROM tbl_produto WHERE id_produto = 4),
    (SELECT CUSTO_PRODUTO FROM tbl_produto WHERE id_produto = 4))
    ;

-- Comitando inserts

COMMIT;

-- Retornando tabela de pedidos e carrinho

SELECT * FROM tbl_pedido    ORDER BY id_pedido;
SELECT * FROM tbl_carrinho  ORDER BY id_pedido;


-- ------------------------ // ------------------------

-- Pedido 03 -- Pago

INSERT INTO 
    ADMIN.TBL_PEDIDO (ID_PEDIDO,ID_CLIENTE,SITUACAO_PAG,DATA_PEDIDO) 
VALUES (
    seq_id_pedido.nextval,
    5,
    'P',
    CURRENT_DATE + 4)
    ;

-- Adicionando produto 1 | 1 unid 

INSERT INTO 
    ADMIN.TBL_CARRINHO (ID_PEDIDO,ID_PRODUTO,QNT_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO) 
VALUES (
    3,
    1,
    1,
    (SELECT PRECO_PRODUTO FROM tbl_produto WHERE id_produto = 1),
    (SELECT CUSTO_PRODUTO FROM tbl_produto WHERE id_produto = 1))
    ;

-- Adicionando produto 4 | 1 unid 

INSERT INTO 
    ADMIN.TBL_CARRINHO (ID_PEDIDO,ID_PRODUTO,QNT_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO) 
VALUES (
    3,
    4,
    1,
    (SELECT PRECO_PRODUTO FROM tbl_produto WHERE id_produto = 4),
    (SELECT CUSTO_PRODUTO FROM tbl_produto WHERE id_produto = 4))
    ;


-- Comitando inserts

COMMIT;

-- Retornando tabela de pedidos e carrinho

SELECT * FROM tbl_pedido    ORDER BY id_pedido;
SELECT * FROM tbl_carrinho  ORDER BY id_pedido;


/* ########## AULA 05  ########## */

-- Alterando registros nas tabelas



-- --------------- UPDATE ------------------------

-- Atualizar saída de estoque --

-- Pedido 01 >> produto 1 | 2 unid

SELECT id_produto,estoque_produto FROM tbl_produto  WHERE id_produto = 1 ;

UPDATE 
    tbl_produto
SET
    ESTOQUE_PRODUTO = ESTOQUE_PRODUTO - 2
WHERE
    ID_PRODUTO = 1
    ;

COMMIT ;

-- ------------------------ // ------------------------

-- Pedido 02 >> produto 3 | 3 unid + produto 4 | 1 unid

SELECT id_produto,estoque_produto FROM tbl_produto  WHERE id_produto in (3,4) ;

UPDATE 
    tbl_produto
SET
    ESTOQUE_PRODUTO = ESTOQUE_PRODUTO - 3
WHERE
    ID_PRODUTO = 3
    ;

UPDATE 
    tbl_produto
SET
    ESTOQUE_PRODUTO = ESTOQUE_PRODUTO - 1
WHERE
    ID_PRODUTO = 4
    ;

COMMIT ;

-- ------------------------ // ------------------------

-- Pedido 03 >> produto 1 | 1 unid + produto 4 | 1 unid

SELECT id_produto,estoque_produto FROM tbl_produto  WHERE id_produto in (1,4) ;

UPDATE 
    tbl_produto
SET
    ESTOQUE_PRODUTO = ESTOQUE_PRODUTO - 1
WHERE
    ID_PRODUTO = 1
    ;

UPDATE 
    tbl_produto
SET
    ESTOQUE_PRODUTO = ESTOQUE_PRODUTO - 1
WHERE
    ID_PRODUTO = 4
    ;

COMMIT ;



/* ########## AULA 05  ########## */

-- Deletando registros nas tabelas



-- --------------- DELETE ------------------------

-- Cancelando um pedido

-- Pedidos Pendentes - Pedido 01

-- Verificar pedidos pendentes

SELECT 
    * 
FROM 
    tbl_Pedido 
WHERE 
    SITUACAO_PAG IS NULL 
    ;

-- ------------------------ // ------------------------

-- Verificar qnt no carrinho do pedido 01

SELECT 
    ID_PEDIDO,
    ID_PRODUTO,
    QNT_PRODUTO 
FROM 
    tbl_carrinho 
WHERE 
    id_pedido = 1 
    ; 

-- ------------------------ // ------------------------

-- Verificar qnt de estoque do produto 01

SELECT 
    ID_PRODUTO,
    ESTOQUE_PRODUTO 
FROM 
    tbl_produto 
WHERE 
    ID_PRODUTO = 1 
    ;

-- ------------------------ // ------------------------

-- Cancelar pedido 01

DELETE FROM tbl_pedido WHERE ID_PEDIDO = 1 ;

COMMIT ;

-- ------------------------ // ------------------------

-- Registrar entrada estoque -- Produto 01 | 2 unid

UPDATE 
    tbl_produto
SET
    ESTOQUE_PRODUTO = ESTOQUE_PRODUTO + 2
WHERE
    ID_PRODUTO = 1
    ;

COMMIT ;


/* ########## AULA 06  ########## */

-- Criando visualizações das tabelas



-- --------------- VIEW ------------------------

-- Produto

SELECT * FROM tbl_produto ORDER BY id_Produto;

--- CREATE OR REPLACE VIEW vw_tbl_produto AS
SELECT
    ID_PRODUTO                              AS  "ID"        ,
    NOME_PRODUTO                            AS  "Nome"      ,
    PRECO_PRODUTO                           AS  "Preço"     ,  
    CUSTO_PRODUTO                           AS  "Custo"     ,
    (PRECO_PRODUTO - CUSTO_PRODUTO)         AS "Faturamento",
    NVL(ESTOQUE_PRODUTO,0)                  AS  "Estoque"
FROM
    ADMIN.TBL_PRODUTO
ORDER BY
    id_produto
    ;

SELECT * FROM vw_tbl_produto;

-- ------------------------ // ------------------------

-- Cliente

SELECT * FROM tbl_cliente ORDER BY id_cliente;

-- CREATE OR REPLACE VIEW vw_tbl_cliente AS
SELECT
    ID_CLIENTE                                      AS  "ID"            ,
    NOME_CLIENTE                                    AS  "Nome"          ,
    SOBRENOME_CLIENTE                               AS  "Sobrenome"     ,
    CASE SEXO_CLIENTE
        WHEN 'M' THEN 'Masculino'
        WHEN 'F' THEN 'Feminino'
        END                                         AS  "Gênero"        ,
    TO_CHAR(NASCIMENTO_CLIENTE,'dd-mm-YYYY')        AS  "Nascimento"    ,
    CELULAR_CLIENTE                                 AS  "Celular"       ,
    EMAIL_CLIENTE                                   AS  "Email"
FROM
    ADMIN.TBL_CLIENTE
ORDER BY
    ID_CLIENTE
    ;

SELECT * FROM vw_tbl_cliente;

-- ------------------------ // ------------------------

-- Pedido 

SELECT * FROM tbl_pedido ORDER BY  id_pedido;

-- CREATE OR REPLACE VIEW vw_tbl_pedido AS
SELECT
    ID_PEDIDO                               AS  "Nº Pedido",
    ID_CLIENTE                              AS  "ID do Cliente",
    CASE 
        WHEN SITUACAO_PAG IS NULL THEN 'Pendente' 
        ELSE                            'Pago' 
        END                                 AS  "Situação",
    TO_CHAR(DATA_PEDIDO,'dd-mm-YYYY')       AS  "Data"
FROM
    ADMIN.TBL_PEDIDO
ORDER BY
    ID_PEDIDO
    ;

SELECT * FROM vw_tbl_pedido;

-- ------------------------ // ------------------------

-- Carrinho

SELECT * FROM tbl_carrinho ORDER BY id_pedido ;

-- CREATE OR REPLACE VIEW vw_tbl_carrinho AS
SELECT
    ID_PEDIDO                                                       AS  "Nº do Pedido"      ,
    ID_PRODUTO                                                      AS  "Id do Produto"     ,
    QNT_PRODUTO                                                     AS  "Quantidade"        ,
    PRECO_PRODUTO                                                   AS  "Preço Unitário"    ,
    CUSTO_PRODUTO                                                   AS  "Custo Unitário"    ,
    CUSTO_PRODUTO*QNT_PRODUTO                                       AS  "Custo Total"       ,
    PRECO_PRODUTO*QNT_PRODUTO                                       AS  "Preço Total"       ,
    (PRECO_PRODUTO*QNT_PRODUTO)-(CUSTO_PRODUTO*QNT_PRODUTO)         AS  "Faturamento Total"       
FROM
    ADMIN.TBL_CARRINHO
ORDER BY
    ID_PEDIDO
    ;

SELECT * FROM vw_tbl_carrinho;

-- ------------------------ // ------------------------

-- Pedido + Carrinho

-- CREATE OR REPLACE VIEW vw_tbl_resumo_pedido AS
SELECT
    P1.ID_PEDIDO                               AS  "Nº Pedido"           ,
    SUM(C1.QNT_PRODUTO)                        AS  "Quantidade"          ,
    SUM(C1.PRECO_PRODUTO*C1.QNT_PRODUTO)            AS  "Preço Total"         ,
    CASE 
        WHEN P1.SITUACAO_PAG IS NULL THEN 'Pendente' 
        ELSE                            'Pago' 
        END                                    AS  "Situação"          ,
    TO_CHAR(P1.DATA_PEDIDO,'dd-mm-YYYY')       AS  "Data"

FROM
    ADMIN.TBL_PEDIDO    P1
INNER JOIN 
    ADMIN.TBL_CARRINHO  C1
ON
    P1.ID_PEDIDO = C1.ID_PEDIDO
GROUP BY
    P1.ID_PEDIDO,P1.SITUACAO_PAG,P1.DATA_PEDIDO
ORDER BY
    P1.ID_PEDIDO
    ;

SELECT * FROM vw_tbl_resumo_pedido;

-- ------------------------ // ------------------------

-- Faturamento pedidos

-- CREATE OR REPLACE VIEW vw_tbl_faturamento_pedido AS
SELECT
    ID_PEDIDO                                AS  "Nº do Pedido"      ,
    SUM(QNT_PRODUTO)                         AS  "Quantidade"        ,
    SUM(CUSTO_PRODUTO)                       AS  "Custo Total"       ,
    SUM(PRECO_PRODUTO)                       AS  "Lucro Total"       ,
    SUM(PRECO_PRODUTO-CUSTO_PRODUTO)         AS  "Faturamento Total"       
FROM
    ADMIN.TBL_CARRINHO
GROUP BY
    ID_PEDIDO
ORDER BY
    ID_PEDIDO
    ;

SELECT * FROM vw_tbl_faturamento_pedido;



/* ########## AULA 07  ########## */

-- Criando funções e testando input e output



-- --------------- INPUT | OUTPUT ------------------------

-- Retornando quantidade de produto no estoque

SET SERVEROUTPUT ON ;

ACCEPT v_idproduto PROMPT 'Digite o id do Produto';

DECLARE 
    v_idDigitado INT            ;
    vnomeProduto VARCHAR2(50)   ;
    vqntEstoque  INT            ;
BEGIN

    v_idDigitado := &v_idproduto;

    SELECT NOME_PRODUTO,ESTOQUE_PRODUTO INTO vnomeProduto,vqntEstoque FROM TBL_PRODUTO WHERE ID_PRODUTO = v_idDigitado;

    DBMS_OUTPUT.PUT_LINE('O '||vnomeProduto||' contém '||vqntEstoque||' unidades no estoque.');

    EXCEPTION
        WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('Produto não cadastrado');

END;
/

-- --------------- FUNCTION ------------------------

-- Retornar estoque do produto

CREATE OR REPLACE FUNCTION FUNC_RETORNAR_ESTOQUE(v_idProduto IN NUMBER)
RETURN NUMBER 
    IS 
        v_qnt_produto NUMBER;
BEGIN

    SELECT ESTOQUE_PRODUTO INTO v_qnt_produto FROM TBL_PRODUTO WHERE ID_PRODUTO = v_idProduto ;

    RETURN v_qnt_produto;

END;
/

SELECT FUNC_RETORNAR_ESTOQUE(1) "Estoque" FROM DUAL;


/* ########## AULA 08  ########## */

-- Criando triggers



-- --------------- TRIGGER ------------------------



-- ------------------------------------------------



/* ########## AULA 09  ########## */

-- Criando procedimentos armazenados
-- Procedimentos para inserir registros
-- Procedimentos para coamndos DML nas tabelas | Aplicação


-- --------------- PROCEDIMENTOS ------------------------

-- Sequencias

SELECT SEQ_ID_PEDIDO.CURRVAL FROM DUAL; -- Atual

SELECT SEQ_ID_PEDIDO.NEXTVAL FROM DUAL; -- Próxima

-- ------------------------ // ------------------------

-- Procedimento Zerar tabelas

CREATE OR REPLACE PROCEDURE SP_ZERAR_TABELA
(
                                                v_seq_name      in  VARCHAR2    ,
                                                v_nome_tabela   in  VARCHAR2
)

IS
    v_valor_seq         NUMBER          ;
    cursor_             SYS_REFCURSOR   ;
    
BEGIN
    EXECUTE IMMEDIATE
    'DELETE FROM ' || v_nome_tabela;
    EXECUTE IMMEDIATE
    'SELECT ' || v_seq_name || ' .NEXTVAL FROM DUAL' INTO v_valor_seq;

    EXECUTE IMMEDIATE
    'ALTER SEQUENCE ' || v_seq_name || ' INCREMENT BY -' || v_valor_seq || ' MINVALUE 0';

    EXECUTE IMMEDIATE
    'SELECT ' || v_seq_name || ' .NEXTVAL FROM DUAL' INTO v_valor_seq;

    EXECUTE IMMEDIATE
    'ALTER SEQUENCE ' || v_seq_name || ' INCREMENT BY 1 MINVALUE 0';

    OPEN cursor_ FOR SELECT 'Tabela ' || v_nome_tabela || ' Zerada' " Retorno" FROM DUAL; 
    DBMS_SQL.RETURN_RESULT(cursor_);
    IF cursor_ %ISOPEN THEN
        CLOSE cursor_;
    END IF;
END;
/

-- Limpar tabelas

EXEC SP_ZERAR_TABELA('SEQ_ID_PEDIDO','TBL_PEDIDO');
EXEC SP_ZERAR_TABELA('SQ_ID_CLIENTE','TBL_CLIENTE');
EXEC SP_ZERAR_TABELA('SQ_ID_PRODUTO','TBL_PRODUTO');

-- ------------------------ // ------------------------

-- ---------- Procedimentos para inserir registros --------------------------------

-- Procedimento Inserir produtos --

-- Passar como parâmetro o nº de registros a serem inseridos

CREATE OR REPLACE PROCEDURE SP_INSERIR_PRODUTOS(v_registros_inseridos IN NUMBER)
IS
    v_idProduto             INT                 ;   -- id do produto
    v_nomeProduto           VARCHAR2    (50)    ;   -- nome do produto
    v_precoProduto          NUMBER      (9,2)   ;   -- preço do produto
    v_custoProduto          NUMBER      (9,2)   ;   -- custo do produto
    v_estoque               INT                 ;   -- estoque do produto
    cursor_                 SYS_REFCURSOR       ;   -- cursor de retorno
    v_SQLERRM               VARCHAR2    (100)   ;   -- mensagem de erro
    v_SQLCODE               VARCHAR2    (30)    ;   -- código de erro

BEGIN

    -- Deletar registros da tabela + resetar sequencia

    SP_ZERAR_TABELA('SQ_ID_PRODUTO','TBL_PRODUTO');

    -- Inserir registros

    FOR CONT IN 1..v_registros_inseridos LOOP

        v_nomeProduto   := 'Produto ' || CONT                                   ;
        v_custoProduto  :=  ROUND(DBMS_RANDOM.VALUE*100,2)                      ;
        v_precoProduto  :=  v_custoProduto + ROUND(DBMS_RANDOM.VALUE*10,2)      ;
        v_estoque       :=  ROUND(DBMS_RANDOM.VALUE*100)                        ;

        INSERT INTO 
            ADMIN.TBL_PRODUTO (ID_PRODUTO,NOME_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO,ESTOQUE_PRODUTO) 
        VALUES  
            (sq_id_produto.nextval,v_nomeProduto,v_precoProduto,v_custoProduto,v_estoque);

    END LOOP;

    -- Commit

    IF SQLCODE = 0 THEN
        COMMIT;
        OPEN cursor_ FOR SELECT 'Dados registrados com sucesso' "Retorno" FROM DUAL; 
        DBMS_SQL.RETURN_RESULT(cursor_);
        IF cursor_ %ISOPEN THEN 
            CLOSE cursor_;
        END IF;
    END IF;

    -- Tratamento de erro

    EXCEPTION
    WHEN OTHERS THEN

        v_SQLERRM:=SQLERRM;
        v_SQLCODE:=SQLCODE;

        OPEN cursor_ FOR 
            SELECT 
                v_SQLERRM         AS "Mensagem de erro" ,
                v_SQLCODE         AS "Código de erro"  
            FROM DUAL; 

        DBMS_SQL.RETURN_RESULT(cursor_);
        
        IF cursor_ %ISOPEN THEN 
            CLOSE cursor_;
        END IF;
        ROLLBACK;

END;
/

-- Executar procedimento

EXEC SP_INSERIR_PRODUTOS(50);

-- Retornar tabela

SELECT * FROM TBL_PRODUTO;

-- ------------------------ // ------------------------

-- Procedimento Inserir Clientes --

-- Passar como parâmetro o nº de registros a serem inseridos

CREATE OR REPLACE PROCEDURE SP_INSERIR_CLIENTES(v_registros_inseridos IN NUMBER)
IS
    v_idCliente             INT                 ;   -- id do cliente
    v_nomeCliente           VARCHAR2    (50)    ;   -- nome do cliente
    v_sobrenomeCliente      VARCHAR2    (80)    ;   -- sobrenome do cliente
    v_generoCliente         CHAR         (1)    ;   -- genero do cliente
    v_nascCliente           DATE                ;   -- nascimento do cliente
    v_celularCliente        CHAR        (14)    ;   -- celular do cliente
    v_emailCliente          VARCHAR2    (80)    ;   -- email do cliente

    cursor_                 SYS_REFCURSOR       ;   -- cursor de retorno
    v_SQLERRM               VARCHAR2    (100)   ;   -- mensagem de erro
    v_SQLCODE               VARCHAR2    (30)    ;   -- código de erro

BEGIN

    -- Deletar registros da tabela + resetar sequencia

    SP_ZERAR_TABELA('SQ_ID_CLIENTE','TBL_CLIENTE');

    -- Inserir registros

    FOR CONT IN 1..v_registros_inseridos LOOP

        v_nomeCliente           := 'Cliente '   || CONT                                   ;
        v_sobrenomeCliente      := 'Sobrenome ' || CONT                                   ;
        v_emailCliente          := 'Cliente '   || CONT || '@xxxx.com'                                  ;
        v_nascCliente           :=  TO_DATE(ADD_MONTHS(SYSDATE,(DBMS_RANDOM.VALUE(500,1000))*-1),'dd-mm-yyyy')  ; -- SELECT TO_DATE(ADD_MONTHS(SYSDATE,(DBMS_RANDOM.VALUE(500,1000))*-1),'dd-mm-yyyy') FROM DUAL;
        v_celularCliente        :=  '('||ROUND(DBMS_RANDOM.VALUE(10,50))||')9'||ROUND(DBMS_RANDOM.VALUE(1000,9999))||'-'||ROUND(DBMS_RANDOM.VALUE(1000,9999));

        IF MOD(ROUND(DBMS_RANDOM.VALUE*20),2) = 0 THEN

            v_generoCliente :='M';

        ELSE

             v_generoCliente :='F';

        END IF;

        INSERT INTO 
            ADMIN.TBL_CLIENTE (ID_CLIENTE,NOME_CLIENTE,SOBRENOME_CLIENTE,SEXO_CLIENTE,NASCIMENTO_CLIENTE,CELULAR_CLIENTE,EMAIL_CLIENTE) 
        VALUES 
            (
            sq_id_cliente.nextval,
            v_nomeCliente,
            v_sobrenomeCliente,
            v_generoCliente,
            v_nascCliente,
            v_celularCliente,
            v_emailCliente
            );

    END LOOP;

    -- Commit

    IF SQLCODE = 0 THEN
        COMMIT;
        OPEN cursor_ FOR SELECT 'Dados registrados com sucesso' "Retorno" FROM DUAL; 
        DBMS_SQL.RETURN_RESULT(cursor_);
        IF cursor_ %ISOPEN THEN 
            CLOSE cursor_;
        END IF;
    END IF;

    -- Tratamento de erro

    EXCEPTION
    WHEN OTHERS THEN

        v_SQLERRM:=SQLERRM;
        v_SQLCODE:=SQLCODE;

        OPEN cursor_ FOR 
            SELECT 
                v_SQLERRM         AS "Mensagem de erro" ,
                v_SQLCODE         AS "Código de erro"  
            FROM DUAL; 

        DBMS_SQL.RETURN_RESULT(cursor_);
        
        IF cursor_ %ISOPEN THEN 
            CLOSE cursor_;
        END IF;
        ROLLBACK;

END;
/

-- Executar procedimento

EXEC SP_INSERIR_CLIENTES(50);

-- Retornar tabela

SELECT * FROM TBL_CLIENTE;

-- ------------------------ // ------------------------


-- Procedimento Inserir Pedidos --

-- Passar como parâmetro o nº de registros a serem inseridos

CREATE OR REPLACE PROCEDURE SP_INSERIR_PEDIDOS(v_registros_inseridos IN NUMBER)
IS
    v_idPedido              INT                 ;   -- id do pedido
    v_idCliente             INT                 ;   -- id do cliente
    v_situacaoPedido        CHAR         (1)    ;   -- situação do pedido
    v_dataPedido            DATE                ;   -- data do pedido
    
    v_idProduto             INT                 ;   -- id do produto
    v_qntProduto            INT                 ;   -- quantidade do produto
    v_precoProduto          DECIMAL(9,2)        ;   -- preço do produto
    v_custoProduto          DECIMAL(9,2)        ;   -- custo do produto

    cursor_                 SYS_REFCURSOR       ;   -- cursor de retorno
    v_SQLERRM               VARCHAR2    (100)   ;   -- mensagem de erro
    v_SQLCODE               VARCHAR2    (30)    ;   -- código de erro

BEGIN

    -- Deletar registros da tabela + resetar sequencia

    SP_ZERAR_TABELA('SEQ_ID_PEDIDO','TBL_PEDIDO');


    -- Inserir registros

    FOR CONT IN 1..v_registros_inseridos LOOP
        
        SELECT ID_CLIENTE INTO v_idCliente FROM (SELECT ID_CLIENTE FROM tbl_cliente ORDER BY dbms_random.value) WHERE rownum = 1;

        v_dataPedido            :=  TO_DATE(SYSDATE-dbms_random.value(1,1000),'dd-mm-yyyy')                                  ; 
        
        SELECT ID_PRODUTO,ESTOQUE_PRODUTO INTO v_idProduto,v_qntProduto FROM (SELECT ID_PRODUTO,ESTOQUE_PRODUTO FROM tbl_produto WHERE ESTOQUE_PRODUTO > 0 ORDER BY dbms_random.value)  WHERE rownum = 1 ;

        v_qntProduto := dbms_random.value(1,v_qntProduto);

        SELECT PRECO_PRODUTO,CUSTO_PRODUTO INTO v_precoProduto,v_custoProduto FROM tbl_produto WHERE ID_PRODUTO = v_idProduto;

        IF MOD(ROUND(DBMS_RANDOM.VALUE*20),2) = 0 THEN

            v_situacaoPedido :='P';

        ELSE

             v_situacaoPedido :=NULL;

        END IF;

        INSERT INTO 
            ADMIN.TBL_PEDIDO (ID_PEDIDO,ID_CLIENTE,SITUACAO_PAG,DATA_PEDIDO) 
        VALUES (
            seq_id_pedido.nextval,
            v_idCliente,
            v_situacaoPedido,
            v_dataPedido);

        INSERT INTO 
            ADMIN.TBL_CARRINHO (ID_PEDIDO,ID_PRODUTO,QNT_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO) 
        VALUES (
            seq_id_pedido.CURRVAL,
            v_idProduto,
            v_qntProduto,
            v_precoProduto,
            v_custoProduto);

        UPDATE TBL_PRODUTO SET ESTOQUE_PRODUTO = ESTOQUE_PRODUTO - v_qntProduto WHERE ID_PRODUTO = v_idProduto;
            
    END LOOP;

    -- Commit

    IF SQLCODE = 0 THEN
        COMMIT;
        OPEN cursor_ FOR SELECT 'Dados registrados com sucesso' "Retorno" FROM DUAL; 
        DBMS_SQL.RETURN_RESULT(cursor_);
        IF cursor_ %ISOPEN THEN 
            CLOSE cursor_;
        END IF;
    END IF;

    -- Tratamento de erro

    EXCEPTION
    WHEN OTHERS THEN

        v_SQLERRM:=SQLERRM;
        v_SQLCODE:=SQLCODE;

        OPEN cursor_ FOR 
            SELECT 
                v_SQLERRM         AS "Mensagem de erro" ,
                v_SQLCODE         AS "Código de erro"  
            FROM DUAL; 

        DBMS_SQL.RETURN_RESULT(cursor_);
        
        IF cursor_ %ISOPEN THEN 
            CLOSE cursor_;
        END IF;
        ROLLBACK;

END;
/

-- Executar procedimento

EXEC SP_INSERIR_PEDIDOS(50);

-- Retornar tabela

SELECT * FROM TBL_PEDIDO;
SELECT * FROM TBL_CARRINHO;
SELECT * FROM TBL_PRODUTO;








-- ------------------------ // ------------------------


/* ########## AULA 10  ########## */

-- Criando procedimentos armazenados
-- Procedimentos para comandos DML nas tabelas | Aplicação



-- ---------- Procedimentos para a aplicação --------------------------------





-- ---------------------------------------------------------------------------



/* ########## AULA 11  ########## */

-- Criando cursores



-- --------------- CURSOR ------------------------


-- -----------------------------------------------


/* ########## AULA 12  ########## */

-- Criando consultas avançadas | Joins



-- --------------- JOINS ------------------------




-- -----------------------------------------------



/* ########## AULA 13  ########## */

-- Criando usuários para a equipe de desenvolvimento



-- --------------- USUÁRIOS ------------------------

/* Usuários */

-- Atual

SELECT USER FROM DUAL;

-- Criando usuário desenvolvedor

CREATE USER user_dev_01
  IDENTIFIED BY Userdev0123456;

-- Verificando se foi criado

select *
from dba_users
where username = 'USER_DEV_01';

-- Grant

GRANT CREATE SESSION                            TO USER_DEV_01;
GRANT SELECT            ON ADMIN.tbl_produto    TO USER_DEV_01;

-- Revoke

REVOKE SELECT            ON ADMIN.tbl_produto    FROM USER_DEV_01;

-- Verificando Privilégios

SELECT * FROM dba_sys_privs     WHERE grantee   = 'USER_DEV_01';
SELECT * FROM dba_role_privs    WHERE grantee   = 'USER_DEV_01';
SELECT * FROM dba_tab_privs     WHERE grantee   = 'USER_DEV_01';

/* Desenvolvedor da aplicação */

-- Visualizar tabelas

SELECT tablespace_name, table_name, owner 
FROM all_tables
WHERE OWNER = 'ADMIN';

-- Visualizar Privilégios

SELECT * FROM user_tab_privs     WHERE grantee   = 'USER_DEV_01';


-- --------------- TESTES ------------------------


-- Aleatório 

SELECT * FROM (SELECT * FROM tbl_cliente ORDER BY dbms_random.value) WHERE rownum = 1;   

SELECT  
       TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,(DBMS_RANDOM.VALUE(500,1000))*-1),'dd-mm-yyyy'),'dd-mm-YYYY') 
FROM DUAL
;

SELECT ROUND(to_char(sysdate, 'yyyy')-DBMS_RANDOM.VALUE*20) FROM DUAL;

SELECT 
    '('||ROUND(DBMS_RANDOM.VALUE(10,50))||')9'||ROUND(DBMS_RANDOM.VALUE(1000,9999))||'-'||ROUND(DBMS_RANDOM.VALUE(1000,9999)) 
FROM DUAL;

-- '(99)99999-9999'