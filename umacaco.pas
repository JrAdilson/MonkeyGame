unit umacaco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tmacacop = class(TForm)
    imgTabu: TImage;
    imgX: TImage;
    imgO: TImage;
    img1: TImage;
    img3: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    img2: TImage;
    img4: TImage;
    imgB: TImage;
    reset: TButton;
    Label3: TLabel;
    Label4: TLabel;
    nomep1: TLabel;
    nomep2: TLabel;
    Button1: TButton;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure img8Click(Sender: TObject);
    procedure img9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure macacoBClick(Sender: TObject);
    procedure resetClick(Sender: TObject);
    procedure nomep2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    // procedure Button1Click(Sender: TObject);
    // procedure macacoBChange(Sender: TObject);
  private
    vez: integer;
    map1, map2, map3, map4, map5, map6, map7, map8, map9: integer;
    mab1, mab2, mab3, mab4, mab5, mab6, mab7, mab8, mab9: integer;
    mvp: integer;
    mvb: integer;
    { Private declarations }
  public
    { Public declarations }
    velha: integer;
  end;

var
  macacop: Tmacacop;

implementation

{$R *.dfm}

uses uprincipal;

{ procedure Tmacacop.Button1Click(Sender: TObject);
  begin
  umacaco.Visible := false;
  uprincipal.ShowModal;
  end; }
procedure Tmacacop.Button1Click(Sender: TObject);
begin
   principal.Show;
   macacop.Close;
end;

procedure Tmacacop.FormCreate(Sender: TObject);
begin
  // Label3.Caption:=mvp.ToString;
  // macacoP.Text:=mvp.ToString;
  // if map1+map2+map3 = 3 then
  // begin
  // ShowMessage('mamacoPRETO perdeu pq ele mesmo ganhando ele ainda ? preto');
  // end;
end;

procedure Tmacacop.FormShow(Sender: TObject);
begin
  vez := 0;
  // Label3.Caption:=mvp.ToString;
end;

procedure Tmacacop.img1Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    Label1.Caption := '? o turno do Macaco Branco!';
    img1.Picture := imgX.Picture;
    map1 := map1 + 1;
    vez := 1;
  end
  else
  begin
    Label1.Caption := '? o turno do Macaco Preto!';
    img1.Picture := imgO.Picture;
    mab1 := mab1 + 1;
    vez := 0;
  end;
  img1.Enabled := false;
  if (map1 + map2 + map3 = 3) or (map4 + map5 + map6 = 3) or
    (map7 + map8 + map9 = 3) or (map1 + map5 + map9 = 3) or
    (map3 + map5 + map7 = 3) or (map1 + map4 + map7 = 3) or
    (map2 + map5 + map8 = 3) or (map3 + map6 + map9 = 3) then
  begin
    mvb := mvb + 1;
    ShowMessage('mamaco BRANCO ganhou, pq ele n?o ? preto');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label4.Caption := mvb.ToString;
    Label1.Caption := '';
    // img1.Picture:=img1.Picture;
    // ShowMessage('aaaaa');
    exit;
  end;
  if (mab1 + mab2 + mab3 = 3) or (mab4 + mab5 + mab6 = 3) or
    (mab7 + mab8 + mab9 = 3) or (mab1 + mab5 + mab9 = 3) or
    (mab3 + mab5 + mab7 = 3) or (mab1 + mab4 + mab7 = 3) or
    (mab2 + mab5 + mab8 = 3) or (mab3 + mab6 + mab9 = 3) then
  begin
    mvp := mvp + 1;
    ShowMessage('mamaco PRETO ganhou, pq ele n?o ? branco');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label3.Caption := mvp.ToString;
    Label1.Caption := '';
    exit;
  end;

end;

procedure Tmacacop.img2Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    Label1.Caption := '? o turno do Macaco Branco!';
    img2.Picture := imgX.Picture;
    map2 := map2 + 1;
    vez := 1;
  end
  else
  begin
    Label1.Caption := '? o turno do Macaco Preto!';
    img2.Picture := imgO.Picture;
    mab2 := mab2 + 1;
    vez := 0;
  end;
  img2.Enabled := false;
  if (map1 + map2 + map3 = 3) or (map4 + map5 + map6 = 3) or
    (map7 + map8 + map9 = 3) or (map1 + map5 + map9 = 3) or
    (map3 + map5 + map7 = 3) or (map1 + map4 + map7 = 3) or
    (map2 + map5 + map8 = 3) or (map3 + map6 + map9 = 3) then
  begin
    mvb := mvb + 1;
    ShowMessage('mamaco BRANCO ganhou, pq ele n?o ? preto');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label4.Caption := mvb.ToString;
    Label1.Caption := '';
    exit;
  end;
  if (mab1 + mab2 + mab3 = 3) or (mab4 + mab5 + mab6 = 3) or
    (mab7 + mab8 + mab9 = 3) or (mab1 + mab5 + mab9 = 3) or
    (mab3 + mab5 + mab7 = 3) or (mab1 + mab4 + mab7 = 3) or
    (mab2 + mab5 + mab8 = 3) or (mab3 + mab6 + mab9 = 3) then
  begin
    mvp := mvp + 1;
    ShowMessage('mamaco PRETO ganhou, pq ele n?o ? branco');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label3.Caption := mvp.ToString;
    Label1.Caption := '';
    exit;
  end;
end;

procedure Tmacacop.img3Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    Label1.Caption := '? o turno do Macaco Branco!';
    img3.Picture := imgX.Picture;
    map3 := map3 + 1;
    vez := 1;
  end
  else
  begin
    Label1.Caption := '? o turno do Macaco Preto!';
    img3.Picture := imgO.Picture;
    mab3 := mab3 + 1;
    vez := 0;
  end;
  img3.Enabled := false;
  if (map1 + map2 + map3 = 3) or (map4 + map5 + map6 = 3) or
    (map7 + map8 + map9 = 3) or (map1 + map5 + map9 = 3) or
    (map3 + map5 + map7 = 3) or (map1 + map4 + map7 = 3) or
    (map2 + map5 + map8 = 3) or (map3 + map6 + map9 = 3) then
  begin
    mvb := mvb + 1;
    ShowMessage('mamaco BRANCO ganhou, pq ele n?o ? preto');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label4.Caption := mvb.ToString;
    Label1.Caption := '';
    exit;
  end;
  if (mab1 + mab2 + mab3 = 3) or (mab4 + mab5 + mab6 = 3) or
    (mab7 + mab8 + mab9 = 3) or (mab1 + mab5 + mab9 = 3) or
    (mab3 + mab5 + mab7 = 3) or (mab1 + mab4 + mab7 = 3) or
    (mab2 + mab5 + mab8 = 3) or (mab3 + mab6 + mab9 = 3) then
  begin
    mvp := mvp + 1;
    ShowMessage('mamaco PRETO ganhou, pq ele n?o ? branco');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label3.Caption := mvp.ToString;
    Label1.Caption := '';
    exit;
  end;
end;

procedure Tmacacop.img4Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    Label1.Caption := '? o turno do Macaco Branco!';
    img4.Picture := imgX.Picture;
    map4 := map4 + 1;
    vez := 1;
  end
  else
  begin
    Label1.Caption := '? o turno do Macaco Preto!';
    img4.Picture := imgO.Picture;
    mab4 := mab4 + 1;
    vez := 0;
  end;
  img4.Enabled := false;
  if (map1 + map2 + map3 = 3) or (map4 + map5 + map6 = 3) or
    (map7 + map8 + map9 = 3) or (map1 + map5 + map9 = 3) or
    (map3 + map5 + map7 = 3) or (map1 + map4 + map7 = 3) or
    (map2 + map5 + map8 = 3) or (map3 + map6 + map9 = 3) then
  begin
    mvb := mvb + 1;
    ShowMessage('mamaco BRANCO ganhou, pq ele n?o ? preto');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label4.Caption := mvb.ToString;
    Label1.Caption := '';
    exit;
  end;
  if (mab1 + mab2 + mab3 = 3) or (mab4 + mab5 + mab6 = 3) or
    (mab7 + mab8 + mab9 = 3) or (mab1 + mab5 + mab9 = 3) or
    (mab3 + mab5 + mab7 = 3) or (mab1 + mab4 + mab7 = 3) or
    (mab2 + mab5 + mab8 = 3) or (mab3 + mab6 + mab9 = 3) then
  begin
    mvp := mvp + 1;
    ShowMessage('mamaco PRETO ganhou, pq ele n?o ? branco');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label3.Caption := mvp.ToString;
    Label1.Caption := '';
    exit;
  end;
end;

procedure Tmacacop.img5Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    Label1.Caption := '? o turno do Macaco Branco!';
    img5.Picture := imgX.Picture;
    map5 := map5 + 1;
    vez := 1;
  end
  else
  begin
    Label1.Caption := '? o turno do Macaco Preto!';
    img5.Picture := imgO.Picture;
    mab5 := mab5 + 1;
    vez := 0;
  end;
  img5.Enabled := false;
  if (map1 + map2 + map3 = 3) or (map4 + map5 + map6 = 3) or
    (map7 + map8 + map9 = 3) or (map1 + map5 + map9 = 3) or
    (map3 + map5 + map7 = 3) or (map1 + map4 + map7 = 3) or
    (map2 + map5 + map8 = 3) or (map3 + map6 + map9 = 3) then
  begin
    mvb := mvb + 1;
    ShowMessage('mamaco BRANCO ganhou, pq ele n?o ? preto');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label4.Caption := mvb.ToString;
    Label1.Caption := '';
    exit;
  end;
  if (mab1 + mab2 + mab3 = 3) or (mab4 + mab5 + mab6 = 3) or
    (mab7 + mab8 + mab9 = 3) or (mab1 + mab5 + mab9 = 3) or
    (mab3 + mab5 + mab7 = 3) or (mab1 + mab4 + mab7 = 3) or
    (mab2 + mab5 + mab8 = 3) or (mab3 + mab6 + mab9 = 3) then
  begin
    mvp := mvp + 1;
    ShowMessage('mamaco PRETO ganhou, pq ele n?o ? branco');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label3.Caption := mvp.ToString;
    Label1.Caption := '';
    exit;
  end;
end;

procedure Tmacacop.img6Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    Label1.Caption := '? o turno do Macaco Branco!';
    img6.Picture := imgX.Picture;
    map6 := map6 + 1;
    vez := 1;
  end
  else
  begin
    Label1.Caption := '? o turno do Macaco Preto!';
    img6.Picture := imgO.Picture;
    mab6 := mab6 + 1;
    vez := 0;
  end;
  img6.Enabled := false;
  if (map1 + map2 + map3 = 3) or (map4 + map5 + map6 = 3) or
    (map7 + map8 + map9 = 3) or (map1 + map5 + map9 = 3) or
    (map3 + map5 + map7 = 3) or (map1 + map4 + map7 = 3) or
    (map2 + map5 + map8 = 3) or (map3 + map6 + map9 = 3) then
  begin
    mvb := mvb + 1;
    ShowMessage('mamaco BRANCO ganhou, pq ele n?o ? preto');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label4.Caption := mvb.ToString;
    Label1.Caption := '';
    exit;
  end;
  if (mab1 + mab2 + mab3 = 3) or (mab4 + mab5 + mab6 = 3) or
    (mab7 + mab8 + mab9 = 3) or (mab1 + mab5 + mab9 = 3) or
    (mab3 + mab5 + mab7 = 3) or (mab1 + mab4 + mab7 = 3) or
    (mab2 + mab5 + mab8 = 3) or (mab3 + mab6 + mab9 = 3) then
  begin
    mvp := mvp + 1;
    ShowMessage('mamaco PRETO ganhou, pq ele n?o ? branco');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label3.Caption := mvp.ToString;
    Label1.Caption := '';
    exit;
  end;
  // if map1+map2+map3 = 3 then
  // begin
  // ShowMessage('mamacoPRETO perdeu pq ele mesmo ganhando ele ainda ? preto');
  // end;

end;

procedure Tmacacop.img7Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    Label1.Caption := '? o turno do Macaco Branco!';
    img7.Picture := imgX.Picture;
    map7 := map7 + 1;
    vez := 1;
  end
  else
  begin
    Label1.Caption := '? o turno do Macaco Preto!';
    img7.Picture := imgO.Picture;
    mab7 := mab7 + 1;
    vez := 0;
  end;
  if (map1 + map2 + map3 = 3) or (map4 + map5 + map6 = 3) or
    (map7 + map8 + map9 = 3) or (map1 + map5 + map9 = 3) or
    (map3 + map5 + map7 = 3) or (map1 + map4 + map7 = 3) or
    (map2 + map5 + map8 = 3) or (map3 + map6 + map9 = 3) then
  begin
    mvb := mvb + 1;
    ShowMessage('mamaco BRANCO ganhou, pq ele n?o ? preto');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label4.Caption := mvb.ToString;
    Label1.Caption := '';
    exit;
  end;
  if (mab1 + mab2 + mab3 = 3) or (mab4 + mab5 + mab6 = 3) or
    (mab7 + mab8 + mab9 = 3) or (mab1 + mab5 + mab9 = 3) or
    (mab3 + mab5 + mab7 = 3) or (mab1 + mab4 + mab7 = 3) or
    (mab2 + mab5 + mab8 = 3) or (mab3 + mab6 + mab9 = 3) then
  begin
    mvp := mvp + 1;
    ShowMessage('mamaco PRETO ganhou, pq ele n?o ? branco');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label3.Caption := mvp.ToString;
    Label1.Caption := '';
    exit;
  end;
end;

procedure Tmacacop.img8Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    Label1.Caption := '? o turno do Macaco Branco!';
    img8.Picture := imgX.Picture;
    map8 := map8 + 1;
    vez := 1;
  end
  else
  begin
    Label1.Caption := '? o turno do Macaco Preto!';
    img8.Picture := imgO.Picture;
    mab8 := mab8 + 1;
    vez := 0;
  end;
  img8.Enabled := false;
  if (map1 + map2 + map3 = 3) or (map4 + map5 + map6 = 3) or
    (map7 + map8 + map9 = 3) or (map1 + map5 + map9 = 3) or
    (map3 + map5 + map7 = 3) or (map1 + map4 + map7 = 3) or
    (map2 + map5 + map8 = 3) or (map3 + map6 + map9 = 3) then
  begin
    mvb := mvb + 1;
    ShowMessage('mamaco BRANCO ganhou, pq ele n?o ? preto');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label4.Caption := mvb.ToString;
    Label1.Caption := '';
    exit;
  end;
  if (mab1 + mab2 + mab3 = 3) or (mab4 + mab5 + mab6 = 3) or
    (mab7 + mab8 + mab9 = 3) or (mab1 + mab5 + mab9 = 3) or
    (mab3 + mab5 + mab7 = 3) or (mab1 + mab4 + mab7 = 3) or
    (mab2 + mab5 + mab8 = 3) or (mab3 + mab6 + mab9 = 3) then
  begin
    mvp := mvp + 1;
    ShowMessage('mamaco PRETO ganhou, pq ele n?o ? branco');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label3.Caption := mvp.ToString;
    Label1.Caption := '';
    exit;
  end;
end;

procedure Tmacacop.img9Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    Label1.Caption := '? o turno do Macaco Branco!';
    img9.Picture := imgX.Picture;
    map9 := map9 + 1;
    vez := 1;
  end
  else
  begin
    Label1.Caption := '? o turno do Macaco Preto!';
    img9.Picture := imgO.Picture;
    mab9 := mab9 + 1;
    vez := 0;
  end;
  img9.Enabled := false;
  if (map1 + map2 + map3 = 3) or (map4 + map5 + map6 = 3) or
    (map7 + map8 + map9 = 3) or (map1 + map5 + map9 = 3) or
    (map3 + map5 + map7 = 3) or (map1 + map4 + map7 = 3) or
    (map2 + map5 + map8 = 3) or (map3 + map6 + map9 = 3) then
  begin
    mvb := mvb + 1;
    ShowMessage('mamaco BRANCO ganhou, pq ele n?o ? preto');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label4.Caption := mvb.ToString;
    Label1.Caption := '';
    exit;
  end;
  if (mab1 + mab2 + mab3 = 3) or (mab4 + mab5 + mab6 = 3) or
    (mab7 + mab8 + mab9 = 3) or (mab1 + mab5 + mab9 = 3) or
    (mab3 + mab5 + mab7 = 3) or (mab1 + mab4 + mab7 = 3) or
    (mab2 + mab5 + mab8 = 3) or (mab3 + mab6 + mab9 = 3) then
  begin
    mvp := mvp + 1;
    ShowMessage('mamaco PRETO ganhou, pq ele n?o ? branco');
    img1.Picture := imgB.Picture;
    img2.Picture := imgB.Picture;
    img3.Picture := imgB.Picture;
    img4.Picture := imgB.Picture;
    img5.Picture := imgB.Picture;
    img6.Picture := imgB.Picture;
    img7.Picture := imgB.Picture;
    img8.Picture := imgB.Picture;
    img9.Picture := imgB.Picture;
    img1.Enabled := true;
    img2.Enabled := true;
    img3.Enabled := true;
    img4.Enabled := true;
    img5.Enabled := true;
    img6.Enabled := true;
    img7.Enabled := true;
    img8.Enabled := true;
    img9.Enabled := true;
    map1 := 0;
    map2 := 0;
    map3 := 0;
    map4 := 0;
    map5 := 0;
    map6 := 0;
    map7 := 0;
    map8 := 0;
    map9 := 0;
    mab1 := 0;
    mab2 := 0;
    mab3 := 0;
    mab4 := 0;
    mab5 := 0;
    mab6 := 0;
    mab7 := 0;
    mab8 := 0;
    mab9 := 0;
    vez := 0;
    Label3.Caption := mvp.ToString;
    Label1.Caption := '';
    exit;
  end;
  if velha = 9 then
    ShowMessage('Deu Velha, reinicie o jogo');
end;

procedure Tmacacop.macacoBClick(Sender: TObject);
begin
  Label3.Caption := mvp.ToString;
end;

procedure Tmacacop.nomep2Click(Sender: TObject);
begin
  nomep2.Caption := principal.nam2.Text;
end;

procedure Tmacacop.resetClick(Sender: TObject);
begin
  img1.Picture := imgB.Picture;
  img2.Picture := imgB.Picture;
  img3.Picture := imgB.Picture;
  img4.Picture := imgB.Picture;
  img5.Picture := imgB.Picture;
  img6.Picture := imgB.Picture;
  img7.Picture := imgB.Picture;
  img8.Picture := imgB.Picture;
  img9.Picture := imgB.Picture;
  img1.Enabled := true;
  img2.Enabled := true;
  img3.Enabled := true;
  img4.Enabled := true;
  img5.Enabled := true;
  img6.Enabled := true;
  img7.Enabled := true;
  img8.Enabled := true;
  img9.Enabled := true;
  map1 := 0;
  map2 := 0;
  map3 := 0;
  map4 := 0;
  map5 := 0;
  map6 := 0;
  map7 := 0;
  map8 := 0;
  map9 := 0;
  mab1 := 0;
  mab2 := 0;
  mab3 := 0;
  mab4 := 0;
  mab5 := 0;
  mab6 := 0;
  mab7 := 0;
  mab8 := 0;
  mab9 := 0;
  vez := 0;
  Label1.Caption := '';
end;

end.
