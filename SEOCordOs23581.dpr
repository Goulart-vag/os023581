program SEOCordOs23581;

uses
  Forms,
  FrmPrinicipal in 'FrmPrinicipal.pas' {frmBtnDinamico};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmBtnDinamico, frmBtnDinamico);
  Application.Run;
end.
