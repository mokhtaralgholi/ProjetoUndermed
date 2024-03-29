create or replace view view_caixa_credito as
select a.cd_caixa                       codigo,
         a.dt_caixa                       data,
         a.cd_historico                   historico,
         b.ds_historico                   descricao,
         a.vl_caixa                       valor,
         a.ds_observacao                  observacao,
         decode(a.tp_caixa,'C','Cr�dito') tipo
    from mvtocaixa  a,
         historicos b
   where a.cd_historico = b.cd_historico and
         a.tp_caixa     = 'C';
