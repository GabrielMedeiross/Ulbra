SELECT * FROM advogados where area = 'area1';

SELECT * FROM agenda where data = '2020-05-15' and hora = '09:00';

SELECT * FROM clientes where nome = 'nome1';

SELECT * FROM processos where vara = 'vara3';

SELECT * FROM clientes where id_secretaria = 5;

select nome from advogados, processos where processos.id = 4 and processos.id_advogado = advogados.id;

select hora from processos, agenda where processos.id = 5 and processos.id = agenda.id_processo and agenda.data = '2020-05-15';

select cod_processo from processos, agenda where agenda.data = '2020-05-15' and agenda.id_processo = processos.id;

select cod_processo from processos, agenda where agenda.data between cast('2020-05-15' as date) and cast('2020-05-31' as date) and agenda.id_processo = processos.id;

select cod_processo from processos, agenda where agenda.data between cast('2020-05-15' as date) and cast('2020-05-31' as date) and agenda.hora = '09:00' and agenda.id_processo = processos.id;

select cod_processo from processos, andamento_processo where andamento_processo.cod_andamento = 'and1' and andamento_processo.id_processo = processos.id;

select cod_processo from processos, advogados where advogados.area = 'aera1' and andamento_processo.id_processo = processos.id;

select cod_processo from processos, calculo where processos.id_advogado = 1 and calculo.id_processo = processos.id;

select cod_processo from processos, advogados where processos.vara = 'vara1' and advogados.id = processos.id_advogado;

select cod_processo from processos, calculo where processos.id_cliente = 5 and calculo.id_processo = processos.id;



