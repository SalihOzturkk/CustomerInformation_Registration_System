unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit5: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  kadirizm:string;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
VAR
i:integer;
begin
for i:= 1 to ADOTable1.RecordCount do begin
ComboBox1.Items.Add(ADOTable1.FieldValues ['IL'] );
ADOTable1.Next;
label1.Caption:='Kayýt Sayýsý : '+IntToStr(ADOTable2.RecordCount);
end;

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if (CheckBox1.Checked=true) then begin
kadirizm:=CheckBox1.Caption;
CheckBox2.Checked :=false;
end;

end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if (CheckBox2.Checked=true) then begin
kadirizm:=CheckBox2.Caption;
CheckBox1.Checked :=false;
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
ADOTable2.Append;
ADOTable2['ADI']:=edit1.Text;
ADOTable2['SOYADI']:=edit2.Text;
ADOTable2.FieldValues['MEMLEKET']:=ComboBox1.Text;
ADOTable2['GELIR']:=edit3.Text;
ADOTable2['GIDER']:=edit4.Text;
ADOTable2['MEDENI_DURUM']:=kadirizm;
ADOTable2['ADRES']:=edit5.Text;
ADOTable2['KAYIT_ZAMANI']:=DateTimeToStr(now);
AdoTable2.Post;
label1.Caption:='Kayýt Sayýsý : '+IntToStr(ADOTable2.RecordCount);

edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
ComboBox1.ItemIndex:=-1;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;

ShowMessage('TÜM BÝLGÝLER BAÞARIYLA KAYDEDÝLDÝ.');

end;

end.
