{=======================================================================
 Expert SINTA - Uma ferramenta visual para
                constru??o de Sistemas
                Especialistas

 Vers?o: 1.1b
 Linguagem: Borland Delphi 1.0

 Implementa??o:          Ricardo Bezerra
                         Ricardo Silvestre (vers?o Beta1 - em VB 3.0)
 Design de interface:    Ricardo Silvestre
                         Ricardo Bezerra
 Analisador de f?rmulas: Jo?o Fernando
                         Rafael Castro
 Com a coordena??o de:   Helano Matos
 Id?ia original:         Ricardo Silvestre

 Baseado em um prot?tipo implementado para o
 XIV Encontro de Inicia??o Cient?fica - UFC
 (em Visual Basic - eca!)

 Data de in?cio: 23 de dezembro de 1995
 Data de t?rmino (1.0): 13 de setembro de 1996
 Data de t?rmino (1.1): 21 de outubro de 1996
 Data de t?rmino (1.1a): 03 de mar?o de 1997
 Data de t?rmino (1.1b): 27 de agosto de 1997
 ?ltima modifica??o: 02 de maio de 1998

 Expert SINTA (c) 1995-1998 Grupo SINTA
 =======================================================================}


program Exsinta;

uses
  Forms,
  Base in 'BASE.PAS' {frmBase},
  Varscode in 'VARSCODE.PAS' {frmVars},
  General in 'GENERAL.PAS',
  Newrule in 'NEWRULE.PAS' {dialogNewRule},
  Rulecode in 'RULECODE.PAS' {frmRule},
  Ruleedit in 'RULEEDIT.PAS' {dialogEditRule},
  Targcode in 'TARGCODE.PAS' {frmTargets},
  Results in 'RESULTS.PAS' {frmResults},
  Dlgview in 'DLGVIEW.PAS' {dialogView},
  Viewcode in 'VIEWCODE.PAS' {frmView},
  Trace in 'TRACE.PAS' {frmTrace},
  Infocode in 'INFOCODE.PAS' {frmInfos},
  Intro in 'INTRO.PAS' {dialogIntro},
  Askcode in 'ASKCODE.PAS' {frmQuestions},
  Overture in 'OVERTURE.PAS' {frmFirstOne},
  AddWVars in 'ADDWVARS.PAS' {dialogAddVars},
  Options in 'OPTIONS.PAS' {dialogOptions},
  Newpassw in 'NEWPASSW.PAS' {dialogCreatePasswd},
  Zoom in 'ZOOM.PAS' {dialogZoom},
  Main in 'MAIN.PAS' {frmMain},
  About in 'ABOUT.PAS' {dialogAbout},
  Export in 'EXPORT.PAS',
  PrintDlg in 'PRINTDLG.PAS' {dialogPrint},
  Totd in 'TOTD.PAS' {fTipOfTheDay},
  Depend in 'DEPEND.PAS' {dialogDepend},
  WatCode in 'WATCODE.PAS' {frmWatch},
  Credits in 'CREDITS.PAS' {dialogCredits};

{$R *.RES}

begin
  Application.Title := 'Expert SINTA';
  Application.HelpFile := 'EXSINTA.HLP';
  frmFirstOne := TfrmFirstOne.Create(nil);
  frmFirstOne.Refresh;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdialogCredits, dialogCredits);
  frmMain.panelToolBox.Refresh;
  frmMain.panelStatus.Refresh;
  Application.CreateForm(TdialogOptions, dialogOptions);
  Application.CreateForm(TdialogCreatePasswd, dialogCreatePasswd);
  Application.CreateForm(TdialogZoom, dialogZoom);
  Application.CreateForm(TdialogAddVars, dialogAddVars);
  Application.CreateForm(TfrmWatch, frmWatch);
  Application.CreateForm(TdialogNewRule, dialogNewRule);
  Application.CreateForm(TdialogEditRule, dialogEditRule);
  Application.CreateForm(TfrmResults, frmResults);
  Application.CreateForm(TdialogView, dialogView);
  Application.CreateForm(TfrmTrace, frmTrace);
  frmFirstOne.Close;
  {Trata de algum argumento de linha de comando}
  if ParamCount > 0 then frmMain.OpenBase(ParamStr(1));
  if show_tips then TipOfTheDay;
  Application.Run;
end.
