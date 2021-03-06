unit uforca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    Erros: TLabel;
    Letra: TLabel;
    LetraDigite: TEdit;
    Iniciar: TButton;
    DicaText: TEdit;
    Dica: TLabel;
    Palavra: TLabel;
    Word: TEdit;
    Gerada: TLabel;
    ErrosCount: TLabel;
    QErros: TLabel;
    cabeca: TImage;
    brae: TImage;
    brad: TImage;
    pere: TImage;
    perd: TImage;
    corpo: TImage;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure IniciarClick(Sender: TObject);
    procedure LetraDigitePress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, b, c: string;
  erro: integer;

implementation
uses
  uprincipal;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  principal.Show;
  Form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   LetraDigite.Enabled := false;
   Word.Visible := true;
   Palavra.Visible := true;
   Dica.Enabled := true;
   DicaText.Enabled := true;
   Word.Text := '';
   DicaText.Text := '';
   Gerada.Hide;
   exit;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  LetraDigite.Enabled := false;
end;

procedure TForm1.IniciarClick(Sender: TObject);
var
  i: integer;
begin
  {if length(Word.Text) = 0 then
    LetraDigite.Text := '';
  QErros.Caption := '';
  erro := 0;
  ErrosCount.Caption := '';
  cabeca.Visible := false;
  corpo.Visible := false;
  brae.Visible := false;
  brad.Visible := false;
  pere.Visible := false;
  perd.Visible := false;
  LetraDigite.Enabled := false;
  ShowMessage('Digite uma palavra antes de come?ar');
  if length(DicaText.Text) = 0 then
    LetraDigite.Text := '';
  QErros.Caption := '';
  erro := 0;
  ErrosCount.Caption := '';
  cabeca.Visible := false;
  corpo.Visible := false;
  brae.Visible := false;
  brad.Visible := false;
  pere.Visible := false;
  perd.Visible := false;
  LetraDigite.Enabled := false;
  ShowMessage('Digite uma dica antes de come?ar');}

  // Inicio da Valida??o dos campos: Palavra e Dica, para que n?o passe em branco/nil;
  try
    if length(Word.Text) = 0 then
      abort
  except
    Word.SetFocus;
    LetraDigite.Enabled := false;
    raise exception.Create('Informe a palavra, seu mamaco.');
  end;
  try
    if length(DicaText.Text) = 0 then
      abort
  except
    DicaText.SetFocus;
    LetraDigite.Enabled := false;
    raise exception.Create('Informe uma dica, seu mamaco.');
  end;
  LetraDigite.Enabled := true;
  a := Word.Text;
  Word.Hide;
  Palavra.Hide;
  DicaText.Enabled := false;
  Gerada.Caption := '';
  Gerada.Visible := true;
  // Concatena??o (usar _ ) para determinar a palavra.
  for i := 1 to length(a) do
  begin
    Gerada.Caption := Gerada.Caption + ' ' + '_';
  end;
  Gerada.Caption := Gerada.Caption + '     ' + InttoStr(length(Word.Text));
  b := Gerada.Caption;
  LetraDigite.SetFocus;
end;

procedure TForm1.LetraDigitePress(Sender: TObject; var Key: Char);
var
  i: integer;
begin
  if Key <> #13 then
  begin
    for i := 1 to length(a) do
    begin
      if Key = a[i] then
        b[i * 2] := a[i];
    end;
    if pos(Key, a) = 0 then
    begin
      erro := erro + 1;
      ErrosCount.Caption := InttoStr(erro);
      QErros.Caption := QErros.Caption + (Key + ', ');
    end;
    case erro of
      1:
        cabeca.Visible := true;
      2:
        corpo.Visible := true;
      3:
        brae.Visible := true;
      4:
        brad.Visible := true;
      5:
        pere.Visible := true;
      6:
        perd.Visible := true
    end;
    if erro = 6 then
    begin
      ShowMessage('Voc? perdeu, mamaco.');
      Form1.Close;
    end;
    LetraDigite.Text := '';
    Gerada.Caption := b;
  end;
end;
end.
