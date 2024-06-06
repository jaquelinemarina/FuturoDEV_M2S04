-- 1. Criar a tabela categorias
create table categorias (
    id_categoria int primary key,
    nome_categoria varchar(50) not null
)

-- 2. Adicionar coluna categoria_id à tabela produtos e criar chave estrangeira
alter table produtos 
add column categorias_id int,
add constraint fk_categorias
    foreign key (categorias_id) 
    references categorias (id_categoria)

-- 3. Excluir a tabela categorias
drop table categorias