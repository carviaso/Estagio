�
 TRELBANCASPORPROFESSOR 0
  TPF0�TRELBancasPorProfessorRELBancasPorProfessorCaptionRELBancasPorProfessorPixelsPerInch`
TextHeight �	TRLReport	RLReport1 �TRLBand	rlbTitulo �TRLLabelrlTituloLeftWidth� CaptionBancas por professor   TRLBandRLBand2Left&Top� Width�HeightBandTypebtColumnHeaderBorders.SidessdCustomBorders.DrawLeftBorders.DrawTopBorders.DrawRightBorders.DrawBottom	ColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold ParentColor
ParentFontTransparent TRLLabelRLLabel1LeftTop Width?HeightCaption	ProfessorTransparent  TRLLabelRLLabel2Left1Top Width!HeightCaptionDataTransparent  TRLLabelRLLabel3Left~Top Width3HeightCaption   HorárioTransparent  TRLLabelRLLabel4Left�Top Width(HeightCaptionBlocoTransparent  TRLLabelRLLabel5Left:Top Width!HeightCaptionSalaTransparent   TRLGroupRLGroup1Left&Top� Width�HeightIBorders.SidessdCustomBorders.DrawLeftBorders.DrawTopBorders.DrawRightBorders.DrawBottom	
DataFields	NOME_PROF TRLBandRLBand3Left Top Width�HeightAutoSize	 	TRLDBText	RLDBText2Left3Top�WidthKHeight	DataField
DATA_BANCA
DataSourceDataSource1  	TRLDBText	RLDBText1Left~Top Width]Height	DataFieldHORARIO_BANCA
DataSourceDataSource1  	TRLDBText	RLDBText4Left�Top WidthRHeight	DataFieldBLOCO_BANCA
DataSourceDataSource1  	TRLDBText	RLDBText5Left:Top WidthKHeight	DataField
SALA_BANCA
DataSourceDataSource1   	TRLDBText	RLDBText3LeftTop Width Height	DataField	NOME_PROF
DataSourceDataSource1    �TClientDataSetClientDataSet1Active	 TStringFieldClientDataSet1NOME_PROF	FieldName	NOME_PROFSize2  
TDateFieldClientDataSet1DATA_BANCA	FieldName
DATA_BANCA  
TTimeFieldClientDataSet1HORARIO_BANCA	FieldNameHORARIO_BANCA  TStringFieldClientDataSet1BLOCO_BANCA	FieldNameBLOCO_BANCASize
  TStringFieldClientDataSet1SALA_BANCA	FieldName
SALA_BANCASize
   �	TSQLQuery	SQLQuery1SQL.StringsWselect p.nome_prof,b.data_banca,b.horario_banca,b.bloco_banca,b.sala_banca from banca bJ    join aluno a on(b.ra = a.ra_alu and b.ano_letivo_banca = a.ano_letivo)9    left join professor p on(p.cod_prof =a.cod_professor)=    left join prof_banca pb on(pb.cod_prof = a.cod_professor)5    join categoria c on(p.categoria_prof = c.cod_cat)&    where c.rec_por_orientador_cat = 1 M group by p.nome_prof,b.data_banca,b.horario_banca,b.bloco_banca,b.sala_bancaorder by p.nome_prof    