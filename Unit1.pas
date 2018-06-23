unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects;

type
  TForm1 = class(TForm)
    btnMultiple: TButton;
    btnDivision: TButton;
    btnAdditon: TButton;
    btnSubtraction: TButton;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    edtFirst: TEdit;
    edtSecond: TEdit;
    lblResult: TLabel;
    procedure btnMultipleClick(Sender: TObject);
    procedure btnDivisionClick(Sender: TObject);
    procedure btnAdditonClick(Sender: TObject);
    procedure btnSubtractionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  L, F : integer;
  G : real;
  I : double;
implementation

{$R *.DFM}
{$R *.SmXhdpiPh.fmx ANDROID}

{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm1.btnMultipleClick(Sender: TObject);
begin
    L := strtoint(edtFirst.text);
    F := strtoint(edtSecond.text);
    lblResult.text := inttostr(L * F);
end;

procedure TForm1.btnDivisionClick(Sender: TObject);
begin
    G := strtofloat(edtFirst.text);
    I := strtofloat(edtSecond.text);
    lblResult.text := floattostr(G / F);
end;

procedure TForm1.btnAdditonClick(Sender: TObject);
begin
    L := strtoint(edtFirst.text);
    F := strtoint(edtSecond.text);
    lblResult.text := inttostr(L + F);
end;

procedure TForm1.btnSubtractionClick(Sender: TObject);
begin
    L := strtoint(edtFirst.text);
    F := strtoint(edtSecond.text);
    lblResult.text := inttostr(L - F);
end;

end.

