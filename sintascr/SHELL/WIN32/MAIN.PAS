{============================================
 UNIDADE/FORMUL?RIO principal
 Implementa??o: Ricardo Bezerra
                Ricardo Silvestre
 Design de interface: Ricardo Silvestre
                      Ricardo Bezerra
 Adapta??o Windows 95: Ricardo Bezerra
 Descri??o: Janela principal, contendo os
            menus e barras de ferramenta para
            acesso ?s funcionalidades do
            Expert SINTA.
 Data de in?cio: 23 de dezembro de 1995
 Data de t?rmino: 22 de janeiro de 1996
 ?ltima modifica??o: 03 de maio de 1998
 Expert SINTA (c) 1995-1998 Grupo SINTA/LIA
 ============================================}

unit Main;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, Buttons, ExtCtrls, StdCtrls, Base, Options,
  General, ComCtrls, Wordcap, TB97;

type
  TfrmMain = class(TForm)
    Timer: TTimer;
    dialogOpen: TOpenDialog;
    dialogSave: TSaveDialog;
    StatusBar: TStatusBar;
    MainMenu: TMainMenu;
    mnuFile: TMenuItem;
    mnuNew: TMenuItem;
    mnuOpen: TMenuItem;
    mnuSave: TMenuItem;
    mnuSaveAs: TMenuItem;
    N1: TMenuItem;
    mnuLastFile1: TMenuItem;
    mnuLastFile2: TMenuItem;
    mnuLastFile3: TMenuItem;
    mnuLastFile4: TMenuItem;
    mnuFileBar: TMenuItem;
    mnuExit: TMenuItem;
    mnuEdit: TMenuItem;
    mnuCut: TMenuItem;
    mnuCopy: TMenuItem;
    mnuPaste: TMenuItem;
    mnuDelete: TMenuItem;
    mnuExecute: TMenuItem;
    mnuBreak: TMenuItem;
    mnuStart: TMenuItem;
    mnuFinish: TMenuItem;
    mnuDebug: TMenuItem;
    mnuStep: TMenuItem;
    N2: TMenuItem;
    mnuWatch: TMenuItem;
    mnuAdd: TMenuItem;
    mnuShow: TMenuItem;
    mnuShowToolBoxFile: TMenuItem;
    mnuShowStatus: TMenuItem;
    lineOptions: TMenuItem;
    mnuOptions: TMenuItem;
    mnuWindow: TMenuItem;
    mnuCascade: TMenuItem;
    mnuTileH: TMenuItem;
    mnuTileV: TMenuItem;
    mnuIcons: TMenuItem;
    mnuHelp: TMenuItem;
    mnuContents: TMenuItem;
    mnuSeekHelp: TMenuItem;
    mnuHowToUse: TMenuItem;
    N3: TMenuItem;
    mnuAbout: TMenuItem;
    mnuExport: TMenuItem;
    N5: TMenuItem;
    dialogExport: TSaveDialog;
    mnuPrint: TMenuItem;
    N6: TMenuItem;
    mnuSystem: TMenuItem;
    mnuSystemNewRule: TMenuItem;
    mnuSystemOpenRule: TMenuItem;
    mnuSystemDelete: TMenuItem;
    N7: TMenuItem;
    mnuSystemView: TMenuItem;
    mnuSystemVars: TMenuItem;
    mnuSystemTargets: TMenuItem;
    N8: TMenuItem;
    mnuInterface: TMenuItem;
    N9: TMenuItem;
    mnuSystemInfo: TMenuItem;
    mnuBarBreak: TMenuItem;
    mnuLastQuestion: TMenuItem;
    N4: TMenuItem;
    PrinterSetDlg: TPrinterSetupDialog;
    DocksTop: TDock97;
    XToolBarFile: TToolbar97;
    DocksLeft: TDock97;
    DocksRight: TDock97;
    DocksBottom: TDock97;
    XToolBarConsult: TToolbar97;
    XToolBarSystem: TToolbar97;
    XToolBarHelp: TToolbar97;
    mnuShowToolBoxConsult: TMenuItem;
    mnuShowToolBoxSystem: TMenuItem;
    mnuShowToolBoxHelp: TMenuItem;
    btnNew: TToolbarButton97;
    btnOpen: TToolbarButton97;
    btnSave: TToolbarButton97;
    btnPrint: TToolbarButton97;
    btnGo: TToolbarButton97;
    btnLastQuestion: TToolbarButton97;
    btnPause: TToolbarButton97;
    btnStop: TToolbarButton97;
    btnStep: TToolbarButton97;
    btnAddVars: TToolbarButton97;
    btnWatch: TToolbarButton97;
    btnHelp: TToolbarButton97;
    btnNewRule: TToolbarButton97;
    btnOpenRule: TToolbarButton97;
    btnDelete: TToolbarButton97;
    btnView: TToolbarButton97;
    btnVars: TToolbarButton97;
    btnTargets: TToolbarButton97;
    btnQuestions: TToolbarButton97;
    btnInfo: TToolbarButton97;
    mnuTipOfTheDay: TMenuItem;
    N10: TMenuItem;
    mnuDependencies: TMenuItem;
    N11: TMenuItem;
    MSOfficeCaption: TMSOfficeCaption;
    mnuExportBase: TMenuItem;
    mnuExportCode: TMenuItem;
    ToolbarSep971: TToolbarSep97;
    ToolbarSep972: TToolbarSep97;
    procedure AppOnActivate(Sender: TObject);
    procedure AppOnMessage(var Msg: TMsg; var Handled: Boolean);
    procedure AppOnKeyDown(Sender: TObject; Key: Word);
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure mnuShowToolBoxFileClick(Sender: TObject);
    procedure mnuShowStatusClick(Sender: TObject);
    procedure mnuContentsClick(Sender: TObject);
    procedure mnuSeekHelpClick(Sender: TObject);
    procedure mnuHowToUseClick(Sender: TObject);
    procedure mnuIconsClick(Sender: TObject);
    procedure mnuCascadeClick(Sender: TObject);
    procedure mnuTileHClick(Sender: TObject);
    procedure mnuTileVClick(Sender: TObject);
    procedure mnuExitClick(Sender: TObject);
    procedure TurnOnExecutionMode(Sender: TObject);
    procedure BackToLastQuestion(Sender: TObject);
    procedure ExecuteStep(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure mnuSaveAsClick(Sender: TObject);
    procedure mnuAddClick(Sender: TObject);
    procedure btnWatchClick(Sender: TObject);
    procedure btnNewRuleClick(Sender: TObject);
    procedure btnOpenRuleClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure btnVarsClick(Sender: TObject);
    procedure btnQuestionsClick(Sender: TObject);
    procedure btnTargetsClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure mnuEditClick(Sender: TObject);
    procedure mnuCutClick(Sender: TObject);
    procedure mnuCopyClick(Sender: TObject);
    procedure mnuPasteClick(Sender: TObject);
    procedure mnuDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpenLastUsedFiles(Sender: TObject);
    procedure mnuOptionsClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure mnuSystemClick(Sender: TObject);
    procedure mnuShowToolBoxConsultClick(Sender: TObject);
    procedure mnuShowToolBoxSystemClick(Sender: TObject);
    procedure mnuShowToolBoxHelpClick(Sender: TObject);
    procedure mnuTipOfTheDayClick(Sender: TObject);
    procedure mnuDependenciesClick(Sender: TObject);
    procedure mnuExportBaseClick(Sender: TObject);
    procedure mnuExportCodeClick(Sender: TObject);
    procedure mnuShowClick(Sender: TObject);
  private
    procedure SetStatusMessage(info: string);
    procedure ResetStatusBar;
  public
    procedure ChangeOwnButtons;
    procedure DisableOwnButtons;
    procedure ChangeEditionMode;
    procedure ChangeExecutionMode;
    procedure StatusNormal;
    procedure StatusExecution;
    procedure StatusBreak;
    procedure SetStatusLastQuestion(s: boolean);
    procedure DisplayHint(Sender: TObject);
    procedure OpenBase(FileName: string);
    procedure AfterCheckPassword(Sender: TObject);
    procedure OnStart(Sender: TObject);
    procedure OnPrompt(Sender: TObject; V: integer);
    procedure OnShowResults(Sender: TObject; V: integer);
    procedure OnFinish(Sender: TObject);
  end;

var
  frmMain: TfrmMain;

implementation

uses
   About, AddWVars, Intro, WatCode, RuleEdit, Trace, Clipbrd, Export,
   Depend, Totd, ExSystem, ExConsts, Results;

{$R *.DFM}

{======================================================================
 ======================================================================
                       INICIALIZA??ES E FINALIZA??ES
 ======================================================================
 ======================================================================}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
   if GetColorsCount > 256 then MSOfficeCaption.Enabled := geAlways;
   InitExpertSystem;
   ReadGeneralINIConfig;
   ReadLastUsedFile;
   try
      dialogOpen.InitialDir := save_folder;
      dialogSave.InitialDir := save_folder;
      dialogExport.InitialDir := save_folder;
   except end;
   enabled := true;
   base_opened := false;
   TimerTimer(Sender);
   Application.OnMessage := AppOnMessage;
   Application.OnHint := DisplayHint;
   Application.OnActivate := AppOnActivate;
   AppOnActivate(Sender);
end;

procedure TfrmMain.FormResize(Sender: TObject);
var
   sum: integer;
begin
   if Width < 250 then Width := 250;
   with StatusBar do begin
     sum := (3 * Panels[1].Width + Panels[2].Width +
             Panels[3].Width + Panels[4].Width);
     Panels[0].Width := Width - sum;
   end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   WriteGeneralINIConfig;
   Timer.Interval := 0;
   if base_opened then ExSys.AbortConsultation;
   Application.OnMessage := nil;
   Application.OnHint := nil;
   Application.OnActivate := nil;
end;

{======================================================================
 ======================================================================
                       TRATAMENTO DA BARRA DE STATUS
 ======================================================================
 ======================================================================}

procedure TfrmMain.AppOnActivate(Sender: TObject);
begin
   {Atualiza os mostradores das teclas INS, CAPS, etc.}
   if GetKeyState(VK_CAPITAL) = 0 then
      StatusBar.Panels.Items[2].Text := ''
   else
      StatusBar.Panels.Items[2].Text := 'CAPS';
   if GetKeyState(VK_INSERT) = 0 then
      StatusBar.Panels.Items[1].Text := ''
   else
      StatusBar.Panels.Items[1].Text := 'INS';
   if GetKeyState(VK_NUMLOCK) = 0 then
      StatusBar.Panels.Items[3].Text := ''
   else
      StatusBar.Panels.Items[3].Text := 'NUM';
   if GetKeyState(VK_SCROLL) = 0 then
      StatusBar.Panels.Items[4].Text := ''
   else
      StatusBar.Panels.Items[4].Text := 'SCRL';
end;

procedure TfrmMain.AppOnMessage(var Msg: TMsg; var Handled: Boolean);
begin
   if Msg.message = WM_KEYDOWN then AppOnKeyDown(Self, Word(Msg.wParam));
end;

procedure TfrmMain.AppOnKeyDown(Sender: TObject; Key: Word);
begin
    case Key of
       VK_CAPITAL:
         if GetKeyState(VK_CAPITAL) = -128 then
            StatusBar.Panels.Items[2].Text := ''
         else
            StatusBar.Panels.Items[2].Text := 'CAPS';
       VK_INSERT:
         if GetKeyState(VK_INSERT) = -128 then
            StatusBar.Panels.Items[1].Text := ''
         else
            StatusBar.Panels.Items[1].Text := 'INS';
       VK_NUMLOCK:
         if GetKeyState(VK_NUMLOCK) = -128 then
            StatusBar.Panels.Items[3].Text := ''
         else
            StatusBar.Panels.Items[3].Text := 'NUM';
       VK_SCROLL:
         if GetKeyState(VK_SCROLL) = -128 then
            StatusBar.Panels.Items[4].Text := ''
         else
            StatusBar.Panels.Items[4].Text := 'SCRL';
    end;
end;

procedure TfrmMain.DisplayHint(Sender: TObject);
begin
   if Application.Hint = '' then
      ResetStatusBar
   else
      SetStatusMessage(Application.Hint);
end;

procedure TfrmMain.SetStatusMessage(info: string);
begin
   StatusBar.Panels.Items[0].Text := info;
end;

procedure TfrmMain.ResetStatusBar;
begin
   StatusBar.Panels.Items[0].Text := 'Pronto.';
end;

procedure TfrmMain.TimerTimer(Sender: TObject);
var aux: string;
begin
   aux := FormatDateTime('hh:mm', Time);
   if aux <> StatusBar.Panels.Items[5].Text then
      StatusBar.Panels.Items[5].Text := aux;
end;

{======================================================================
 ======================================================================
                    OPERA??ES (MENUS E BOT?ES DE ATALHO)
 ======================================================================
 ======================================================================}

{===========================
           Arquivo
 ===========================}

procedure TfrmMain.btnNewClick(Sender: TObject);
begin
   if base_opened then frmBase.Close;
   if not base_opened then begin
      frmBase := TfrmBase.Create(Self);
      file_chosen := '';
      frmBase.FillRules;
      frmBase.Caption := 'SEM NOME';
      ChangeEditionMode;
      if ExSys.Rules.RecordCount > 0 then frmBase.EnableRulesEdition;
      ChangeOwnButtons;
   end
end;

procedure TfrmMain.btnOpenClick(Sender: TObject);
begin
   try
      dialogOpen.InitialDir := save_folder;
      dialogSave.InitialDir := save_folder;
      dialogExport.InitialDir := save_folder;
   except end;
   if dialogOpen.Execute then OpenBase(dialogOpen.FileName);
end;

procedure TfrmMain.OpenBase(FileName: string);

   procedure DisableView;
   begin
       btnStep.Enabled := false;
       btnAddVars.Enabled := false;
       btnWatch.Enabled := false;
       btnPrint.Enabled := false;
       mnuPrint.Enabled := false;
       btnOpenRule.Enabled := false;
       btnNewRule.Enabled := false;
       btnDelete.Enabled := false;
       btnVars.Enabled := false;
       btnView.Enabled := false;
       btnQuestions.Enabled := false;
       btnTargets.Enabled := false;
       btnInfo.Enabled := false;
       mnuOptions.Enabled := false;
       mnuDebug.Enabled := false;
       mnuWindow.Enabled := false;
       btnSave.Enabled := false;
       mnuSave.Enabled := false;
       mnuSaveAs.Enabled := false;
       mnuExport.Enabled := false;
       mnuSystem.Enabled := false;
   end;

   procedure DisableEdition;
   begin
       btnSave.Enabled := false;
       mnuSave.Enabled := false;
       mnuSaveAs.Enabled := false;
   end;

begin
   if ExtractFileExt(FileName) = '' then FileName := FileName + '.BCM';
   if not FileExists(FileName) then begin
      MessageDlg('Arquivo inexistente!', mtError, [mbOk], 0);
      file_chosen := '';
   end
   else begin
      FileName := ExpandFileName(FileName);
      if base_opened then frmBase.Close;
      if not base_opened then begin
         file_chosen := FileName;
         ExSys.FileName := FileName;
         if ExSys.FileName <> '' then begin
            {Carregou corretamente}
            dialogEditRule.FillCombos;
            frmBase.Caption := ExtractFileName(file_chosen);
            frmBase.FillRules;
            if frmBase.listRules.Items.Count <> 0 then
               frmBase.EnableRulesEdition;
            if ExSys.Vars.RecordCount > 0 then frmBase.btnNewRule.Enabled := true;
            ChangeEditionMode;
            ChangeOwnButtons;
            WriteLastUsedFile;
            ReadLastUsedFile;
            {somente execu??o}
            if ExSys.Permission = ONLY_EXECUTE then DisableView;
            {somente execu??o e visualiza??o}
            if ExSys.Permission = EXECUTE_AND_VIEW then DisableEdition;
         end
         else
            if ExSys.Permission = BAD_FILE then
               MessageDlg('Este arquivo n?o ? um arquivo Expert SINTA!',
                           mtError, [mbOk], 0);
            if ExSys.Permission = CORRUPTED_FILE then
               MessageDlg('Este arquivo Expert SINTA est? danificado!',
                           mtError, [mbOk], 0);
      end;
   end;
end;

{Este m?todo ? chamado pelo objeto ExSys ap?s a verifica??o de password.
 S? acontece se a permiss?o for maior que NO_PERMISSION e ? seguido do
 carregamento do restante da base.}
procedure TfrmMain.AfterCheckPassword(Sender: TObject);
var
   old_permission: integer;
   old_protection: TProtection;
begin
   old_permission := ExSys.Permission;
   old_protection := ExSys.Protection;
   frmBase := TfrmBase.Create(Self);
   frmBase.Caption := 'Aguarde...';
   frmBase.Refresh;
   ExSys.Permission := old_permission;
   ExSys.Protection := old_protection;
   if ExSys.Permission = ONLY_EXECUTE then begin
      frmBase.WindowState := wsMinimized;
      frmBase.Enabled := false;
   end;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
var
   answer: word;
   continue: boolean;
begin
   if file_chosen = '' then begin
      if dialogSave.Execute then begin
         file_chosen := dialogSave.FileName;
         frmBase.save_me := false;
         ExSys.SaveToFile(file_chosen);
         WriteLastUsedFile;
         ReadLastUsedFile;
         frmBase.Caption := ExtractFileName(file_chosen);
      end
      else
         frmBase.dont_close_me := true; {No caso de se fechar a janela
                                         principal, cancelar o fechamento}
   end
   else begin
      continue := true;
      if (ExSys.Version <> '1.1') then begin
          answer :=  MessageDlg('O arquivo atual ? de uma ' +
            'vers?o anterior do Expert SINTA. Deseja convert?-lo para ' +
            'Expert SINTA 1.1?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
          if answer = mrYes then ExSys.Version := '1.1';
          if answer = mrCancel then continue := false;
      end;
      if continue then begin
         frmBase.save_me := false;
         ExSys.SaveToFile(file_chosen);
         WriteLastUsedFile;
         ReadLastUsedFile;
      end;
   end;
end;

procedure TfrmMain.mnuSaveAsClick(Sender: TObject);
begin
   if dialogSave.Execute then begin
      file_chosen := dialogSave.FileName;
      ExSys.SaveToFile(file_chosen);
      frmBase.save_me := false;
      frmBase.Caption := ExtractFileName(file_chosen);
   end;
end;

procedure TfrmMain.mnuExportBaseClick(Sender: TObject);
var
   export_file: string;
   ext_pos: integer;
begin
   export_file := ExtractFileName(AnsiUpperCase(file_chosen));
   ext_pos := pos('.BCM', export_file) - 1;
   if ext_pos = length(export_file) - length('.BCM') then
      export_file := copy(ExtractFileName(file_chosen), 1, ext_pos);
   if export_file <> '' then export_file := export_file + '.txt';
   dialogExport.FileName := export_file;
   if dialogExport.Execute then ExportToText(dialogExport.FileName, false);
end;

procedure TfrmMain.mnuExportCodeClick(Sender: TObject);
var
   export_file: string;
   ext_pos: integer;
begin
   export_file := ExtractFileName(AnsiUpperCase(file_chosen));
   ext_pos := pos('.BCM', export_file) - 1;
   if ext_pos = length(export_file) - length('.BCM') then
      export_file := copy(ExtractFileName(file_chosen), 1, ext_pos);
   if export_file <> '' then export_file := export_file + '.txt';
   dialogExport.FileName := export_file;
   if dialogExport.Execute then ExportToStruct(dialogExport.FileName, false);
end;

procedure TfrmMain.btnPrintClick(Sender: TObject);
begin
   ExportToText('', true);
end;

procedure TfrmMain.OpenLastUsedFiles(Sender: TObject);
begin
   OpenBase((Sender as TMenuItem).Hint);
end;

procedure TfrmMain.mnuExitClick(Sender: TObject);
begin
   Close;
end;

{===========================
           Editar
 ===========================}

procedure TfrmMain.mnuEditClick(Sender: TObject);
begin
   if (Screen.ActiveControl is TEdit) or (Screen.ActiveControl is TMemo)
      then begin
      if Clipboard.HasFormat(CF_TEXT) then begin
         mnuPaste.Enabled := true;
         mnuPaste.Hint :=
          'Insere o conte?do da ?rea de transfer?ncia na posi??o do ponto de inser??o.';
      end
      else begin
         mnuPaste.Enabled := false;
         mnuPaste.Hint :=
         'Esse comando n?o est? dispon?vel porque n?o h? nenhum texto na ?rea de Transfer?ncia.';
      end;
      if TEdit(Screen.ActiveControl).SelLength > 0 then begin
         mnuDelete.Enabled := true;
         mnuDelete.Hint :=
          'Remove o texto selecionado sem lev?-lo para a ?rea de Transfer?ncia.';
         mnuCopy.Enabled := true;
         mnuCopy.Hint := 'Copia o texto selecionado para a ?rea de transfer?ncia.';
         mnuCut.Enabled := true;
         mnuCut.Hint := 'Exclui o texto selecionado para a ?rea de transfer?ncia.';
      end
      else begin
         mnuCut.Enabled := false;
         mnuCut.Hint := 'Esse comando n?o est? dispon?vel porque nenhum texto foi selecionado.';
         mnuDelete.Enabled := false;
         mnuDelete.Hint := mnuCut.Hint;
         mnuCopy.Enabled := false;
         mnuCopy.Hint := mnuCut.Hint;
      end;
   end
   else begin
      mnuCut.Enabled := false;
      mnuCut.Hint := 'Esse comando n?o est? dispon?vel porque nenhum texto foi selecionado.';
      mnuDelete.Enabled := false;
      mnuDelete.Hint := mnuCut.Hint;
      mnuCopy.Enabled := false;
      mnuCopy.Hint := mnuCut.Hint;
      mnuPaste.Enabled := false;
      mnuPaste.Hint :=
      'Esse comando n?o est? dispon?vel porque o objeto selecionado n?o o aceita.';
   end;
end;

procedure TfrmMain.mnuCutClick(Sender: TObject);
begin
   TEdit(Screen.ActiveControl).CutToClipboard;
end;

procedure TfrmMain.mnuCopyClick(Sender: TObject);
begin
   TEdit(Screen.ActiveControl).CopyToClipboard;
end;

procedure TfrmMain.mnuPasteClick(Sender: TObject);
begin
   TEdit(Screen.ActiveControl).PasteFromClipboard;
end;

procedure TfrmMain.mnuDeleteClick(Sender: TObject);
begin
   TEdit(Screen.ActiveControl).ClearSelection;
end;

{===========================
           Exibir
 ===========================}

procedure TfrmMain.mnuShowClick(Sender: TObject);
begin
   mnuShowToolBoxFile.Checked := XToolBarFile.Visible;
   mnuShowToolBoxConsult.Checked := XToolBarConsult.Visible;
   mnuShowToolBoxSystem.Checked := XToolBarSystem.Visible;
   mnuShowToolBoxHelp.Checked := XToolBarHelp.Visible;
end;

procedure TfrmMain.mnuShowToolBoxFileClick(Sender: TObject);
begin
   mnuShowToolBoxFile.Checked := not mnuShowToolBoxFile.Checked;
   XToolBarFile.Visible := mnuShowToolBoxFile.Checked;
end;

procedure TfrmMain.mnuShowToolBoxConsultClick(Sender: TObject);
begin
   mnuShowToolBoxConsult.Checked := not mnuShowToolBoxConsult.Checked;
   XToolBarConsult.Visible := mnuShowToolBoxConsult.Checked;
end;

procedure TfrmMain.mnuShowToolBoxSystemClick(Sender: TObject);
begin
   mnuShowToolBoxSystem.Checked := not mnuShowToolBoxSystem.Checked;
   XToolBarSystem.Visible := mnuShowToolBoxSystem.Checked;
end;

procedure TfrmMain.mnuShowToolBoxHelpClick(Sender: TObject);
begin
   mnuShowToolBoxHelp.Checked := not mnuShowToolBoxHelp.Checked;
   XToolBarHelp.Visible := mnuShowToolBoxHelp.Checked;
end;

procedure TfrmMain.mnuShowStatusClick(Sender: TObject);
begin
   mnuShowStatus.Checked := not mnuShowStatus.Checked;
   StatusBar.Visible := mnuShowStatus.Checked;
end;

procedure TfrmMain.mnuOptionsClick(Sender: TObject);
begin
   dialogOptions.ShowModal;
end;

{===========================
           Sistema
 ===========================}

procedure TfrmMain.mnuSystemClick(Sender: TObject);
begin
   mnuSystemNewRule.Enabled := btnNewRule.Enabled;
   mnuSystemOpenRule.Enabled := btnOpenRule.Enabled;
   mnuSystemDelete.Enabled := btnDelete.Enabled;
   mnuSystemView.Enabled := btnView.Enabled;
end;

procedure TfrmMain.btnNewRuleClick(Sender: TObject);
begin
   frmBase.btnNewRuleClick(frmBase.btnNewRule);
end;

procedure TfrmMain.btnOpenRuleClick(Sender: TObject);
begin
   frmBase.btnOpenRuleClick(frmBase.btnOpenRule);
end;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
begin
   frmBase.btnDeleteClick(frmBase.btnDelete);
end;

procedure TfrmMain.btnViewClick(Sender: TObject);
begin
   frmBase.btnViewClick(frmBase.btnView);
end;

procedure TfrmMain.btnVarsClick(Sender: TObject);
begin
   frmBase.btnVarsClick(frmBase.btnVars);
end;

procedure TfrmMain.btnQuestionsClick(Sender: TObject);
begin
   frmBase.btnQuestionsClick(frmBase.btnQuestions);
end;

procedure TfrmMain.btnTargetsClick(Sender: TObject);
begin
   frmBase.btnTargetsClick(frmBase.btnTargets);
end;

procedure TfrmMain.btnInfoClick(Sender: TObject);
begin
   frmBase.btnInfoClick(frmBase.btnInfo);
end;

{===========================
           Consulta
 ===========================}

procedure TfrmMain.TurnOnExecutionMode(Sender: TObject);
begin
  if ExSys.Heads.RecordCount <> 0 then begin
     if ExSys.Trace then begin
        frmTrace.Visible := False;
        StatusExecution;
        ExSys.ResumeEngine
     end
     else begin
        ChangeExecutionMode;
        StatusExecution;
        frmTrace.Visible := False;
        ExSys.StartConsultation;
     end;
  end
  else
    MessageDlg('Crie algumas regra antes!', mtInformation, [mbOk], 0);
end;

procedure TfrmMain.btnStopClick(Sender: TObject);
begin
   ExSys.AbortConsultation;
end;

procedure TfrmMain.btnPauseClick(Sender: TObject);
begin
    StatusBreak;
    frmTrace.Show;
    ExSys.PauseEngine;
end;

procedure TfrmMain.BackToLastQuestion(Sender: TObject);
begin
   ExSys.BackToLastQuestion;
   if ExSys.TotalQuestions = 0 then begin
      btnLastQuestion.Enabled := false;
      mnuLastQuestion.Enabled := false;
   end;
end;

{===========================
           Depurar
 ===========================}

procedure TfrmMain.ExecuteStep(Sender: TObject);
begin
    frmTrace.Visible := True;
    ExSys.ExecuteStep;
end;

procedure TfrmMain.btnWatchClick(Sender: TObject);
begin
   frmWatch.Show;
end;

procedure TfrmMain.mnuAddClick(Sender: TObject);
begin
   dialogAddVars.ShowModal;
end;

procedure TfrmMain.mnuDependenciesClick(Sender: TObject);
begin
   dialogDepend := TdialogDepend.Create(Application);
   try
      dialogDepend.ShowModal;
   finally
      dialogDepend.Free;
   end;
end;

{===========================
           Janela
 ===========================}

procedure TfrmMain.mnuCascadeClick(Sender: TObject);
begin
   Cascade;
end;

procedure TfrmMain.mnuTileHClick(Sender: TObject);
begin
   TileMode := tbHorizontal;
   Tile;
end;

procedure TfrmMain.mnuTileVClick(Sender: TObject);
begin
   TileMode := tbVertical;
   Tile;
end;

procedure TfrmMain.mnuIconsClick(Sender: TObject);
begin
   ArrangeIcons;
end;

{===========================
            Ajuda
 ===========================}

procedure TfrmMain.mnuContentsClick(Sender: TObject);
begin
   Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TfrmMain.mnuSeekHelpClick(Sender: TObject);
begin
   Application.HelpCommand(HELP_PARTIALKEY, 0);
end;

procedure TfrmMain.mnuHowToUseClick(Sender: TObject);
begin
   Application.HelpCommand(HELP_HELPONHELP, 0);
end;

procedure TfrmMain.mnuTipOfTheDayClick(Sender: TObject);
begin
   TipOfTheDay;
end;

procedure TfrmMain.mnuAboutClick(Sender: TObject);
var
   dialogAbout: TdialogAbout;
begin
   dialogAbout := TdialogAbout.Create(Self);
   dialogAbout.ShowModal;
end;

{======================================================================
 ======================================================================
        ATUALIZA??ES DA DISPONIBILIDADE DE ITENS DE MENU/BOT?ES
 ======================================================================
 ======================================================================}

procedure TfrmMain.ChangeEditionMode;
begin
   mnuFile.Enabled := True;
   mnuShow.Enabled := True;
   btnNew.Enabled := True;
   btnOpen.Enabled := True;
   if ExSys.Permission = TOTAL_PERMISSION then begin
      btnSave.Enabled := True;
      mnuSave.Enabled := True;
      mnuSaveAs.Enabled := True;
   end;
   if ExSys.CanView then begin
      mnuWindow.Enabled := True;
      mnuSystem.Enabled := True;
      mnuEdit.Enabled := True;
      btnPrint.Enabled := True;
      mnuPrint.Enabled := True;
      mnuExport.Enabled := True;
      mnuDependencies.Enabled := True;
   end;
   StatusNormal;
end;

procedure TfrmMain.ChangeExecutionMode;
begin
   mnuFile.Enabled := False;
   mnuSystem.Enabled := False;
   mnuWindow.Enabled := False;
   mnuEdit.Enabled := False;
   mnuShow.Enabled := False;
   btnNew.Enabled := False;
   btnOpen.Enabled := False;
   btnSave.Enabled := False;
   mnuSave.Enabled := False;
   mnuSaveAs.Enabled := False;
   btnPrint.Enabled := False;
   mnuPrint.Enabled := False;
   mnuExport.Enabled := False;
   mnuDependencies.Enabled := False;
end;

procedure TfrmMain.StatusNormal;
begin
   btnGo.Enabled := true;
   btnLastQuestion.Enabled := false;
   btnPause.Enabled := false;
   btnStop.Enabled := false;
   if ExSys.CanView then begin
      btnStep.Enabled := true;
      mnuDebug.Enabled := true;
      mnuStep.Enabled := true;
      mnuWatch.Enabled := true;
      mnuAdd.Enabled := true;
      btnWatch.Enabled := true;
      btnAddVars.Enabled := true;
   end;
   mnuBarBreak.Visible := false;
   mnuBreak.Visible := false;
   mnuExecute.Enabled := true;
   mnuStart.Caption := '&Iniciar';
   mnuStart.Hint := 'Inicia uma consulta ao sistema especialista.';
   mnuStart.Enabled := true;
   btnGo.Hint := 'Iniciar|Inicia uma consulta ao sistema especialista.';
   mnuFinish.Enabled := false;
end;

procedure TfrmMain.ChangeOwnButtons;
begin
  btnNewRule.Enabled := frmBase.btnNewRule.Enabled;
  btnOpenRule.Enabled := frmBase.btnOpenRule.Enabled;
  btnDelete.Enabled := frmBase.btnDelete.Enabled;
  btnView.Enabled := frmBase.btnView.Enabled;
  btnVars.Enabled := frmBase.btnVars.Enabled;
  btnQuestions.Enabled := frmBase.btnQuestions.Enabled;
  btnTargets.Enabled := frmBase.btnTargets.Enabled;
  btnInfo.Enabled := frmBase.btnInfo.Enabled;
end;

procedure TfrmMain.DisableOwnButtons;
begin
  btnNewRule.Enabled := false;
  btnOpenRule.Enabled := false;
  btnDelete.Enabled := false;
  btnView.Enabled := false;
  btnVars.Enabled := false;
  btnQuestions.Enabled := false;
  btnTargets.Enabled := false;
  btnInfo.Enabled := false;
end;

procedure TfrmMain.StatusExecution;
begin
   btnGo.Enabled := false;
   if ExSys.CanView then begin
      btnPause.Enabled := true;
      mnuBarBreak.Visible := true;
      mnuBreak.Visible := true;
      mnuBreak.Enabled := true;
   end;
   btnStop.Enabled := true;
   btnStep.Enabled := false;
   mnuStep.Enabled := false;
   mnuFinish.Enabled := true;
   mnuStart.Caption := '&Continuar';
   mnuStart.Hint := 'D? prosseguimento ? consulta.';
   mnuStart.Enabled := false;
   btnGo.Hint := 'Continuar|D? prosseguimento ? consulta.';
end;

procedure TfrmMain.StatusBreak;
begin
   btnPause.Enabled := false;
   btnGo.Enabled := true;
   btnStep.Enabled := true;
   mnuStep.Enabled := true;
   mnuStart.Enabled := true;
   mnuBreak.Enabled := false;
end;

procedure TfrmMain.SetStatusLastQuestion(s: boolean);
begin
   btnLastQuestion.Enabled := s;
   mnuLastQuestion.Enabled := s;
end;

{======================================================================
 ======================================================================
                        FUN??ES DE USO GERAL
 ======================================================================
 ======================================================================}

procedure TfrmMain.OnStart(Sender: TObject);

   procedure DisableMDIChildren;
   var
      i, total: integer;
   begin
      total := MDIChildCount - 1;
      for i := 0 to total do
          MDIChildren[i].Enabled := false;
      DisableOwnButtons;
   end;

begin
   frmTrace.DebugPanel.FillRules;
   frmResults.RuleView.FillRules;
   frmResults.ConsultTree.Clear;
   DisableMDIChildren;
   if ExSys.Info.ShowIntro then begin
      dialogIntro := TdialogIntro.Create(frmMain);
      if ExSys.Info.Name <> '' then
         dialogIntro.labelName.Caption := ExSys.Info.Name
      else
         dialogIntro.labelName.Caption := '';
      if ExSys.Info.Authors <> '' then
         dialogIntro.labelAuthors.Caption := ExSys.Info.authors
      else
         dialogIntro.labelAuthors.Caption := '';
      if ExSys.Info.Overture.Count <> 0 then
         dialogIntro.memoIntro.Lines.AddStrings(ExSys.Info.Overture)
      else
         dialogIntro.memoIntro.Visible := False;
      dialogIntro.ShowModal;
      dialogIntro.Free;
   end;
end;

procedure TfrmMain.OnPrompt(Sender: TObject; V: integer);
begin
   btnLastQuestion.Enabled := ExSys.TotalQuestions > 0;
   ExSys.DefaultPrompt(v);
end;

procedure TfrmMain.OnShowResults(Sender: TObject; V: integer);
begin
   with frmResults do begin
      var_code := v; {Usada na ajuda on-line}
      panelVarName.Caption := ExSys.VarName(v);
      ValuesGrid.VarCode := v;
      ValuesGrid.RefreshValues;
      {Observe que, uma vez preenchida uma ConsultTree, outra n?o poder?
       ser utilizada, ou seja, todas as informa??es daquela busca de um
       objetivo s?o "descarregadas" em ConsultTree. Para replicar itens
       de uma ConsultTree em outra, consulte a ajuda para as classes
       TOutline (Delphi 1.x) ou TTreeView (Delphi 2.0 ou superior)}
      ConsultTree.CreateTree(ExSys);
      AllVars.CreateTree(ExSys);
      Notebook.PageIndex := 0;
      TabSet.TabIndex := 0;
      ShowModal;
   end;
end;

procedure TfrmMain.OnFinish(Sender: TObject);

   procedure EnableMDIChildren;
   var
      i, total: integer;
   begin
      total := MDIChildCount - 1;
      for i := 0 to total do
          MDIChildren[i].Enabled := true;
      ChangeOwnButtons;
   end;

begin
   if ExSys.Permission <> ONLY_EXECUTE then EnableMDIChildren;
   frmWatch.Close;
   frmTrace.Close;
   ChangeEditionMode;
end;

end.
