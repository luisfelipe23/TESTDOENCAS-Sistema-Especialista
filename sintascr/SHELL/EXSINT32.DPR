{=======================================================================
 Expert SINTA - Uma ferramenta visual para
                constru??o de Sistemas
                Especialistas

 Vers?o: 1.1b
 Linguagem: Borland Delphi 2.0/3.0

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
 Adapta??o para Delphi 2.0/3.0 por Ricardo Bezerra

 Data de in?cio: 23 de dezembro de 1995
 Data de t?rmino (1.0): 13 de setembro de 1996
 Data de t?rmino (1.1): 21 de outubro de 1996
 Data de t?rmino (1.1a): 03 de mar?o de 1997
 Data de t?rmino (1.1b): 27 de agosto de 1997
 ?ltima modifica??o: 02 de maio de 1998
 Expert SINTA (c) 1995-1998 Grupo SINTA
 =======================================================================}

program Exsint32;
uses
  Dialogs,
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
  Options in 'OPTIONS.PAS' {dialogOptions},
  Newpassw in 'NEWPASSW.PAS' {dialogCreatePasswd},
  Zoom in 'ZOOM.PAS' {dialogZoom},
  Main in 'Win32\Main.pas' {frmMain},
  Export in 'Export.pas',
  PrintDlg in 'PrintDlg.pas' {dialogPrint},
  Totd in 'Totd.pas' {fTipOfTheDay},
  Depend in 'Depend.pas' {dialogDepend},
  WatCode in 'WatCode.pas' {frmWatch},
  AddWVars in 'AddWVars.pas' {dialogAddVars},
  About in 'About.pas' {dialogAbout},
  Credits in 'Credits.pas' {dialogCredits};

{$R *.RES}

begin
  Application.Title := 'Expert SINTA';
  Application.HelpFile := 'EXSINTA.HLP';
  frmFirstOne := TfrmFirstOne.Create(nil);
  frmFirstOne.Refresh;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmWatch, frmWatch);
  Application.CreateForm(TdialogAddVars, dialogAddVars);
  with frmMain do begin
     Refresh;
     XToolBarFile.Refresh;
     XToolBarConsult.Refresh;
     XToolBarSystem.Refresh;
  end;
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
