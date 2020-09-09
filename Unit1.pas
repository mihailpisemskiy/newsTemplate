unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Memo2: TMemo;
    Memo3: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  result_text:string;
  //39
  goroda:array[1..40] of string=('������','�����-���������','�������','����������','������������','�����������','���������',
  '�������','������������','��������','�������','������','�����������','��������','�����������-��-�����','���������','����������',
  '������','�����','������������','���������� �����','�������','�������������','������ ��������','�����������','�����������',
  '����','����','�����','������-��-����','������','�����','������','����-���','���������','���','���������','���������','����','���������');
  goroda_link:array[1..40] of string=(
  'http://tesgroup.ru/filials/moscow/',             //������
  'http://tesgroup.ru/filials/sankt-peterburg/',    //�����-���������
  'http://tesgroup.ru/filials/barnaul/',            //�������
  'http://tesgroup.ru/filials/birobigan/',          //����������
  'http://tesgroup.ru/filials/blag/',               //������������
  'http://tesgroup.ru/filials/vladivostok/',        //�����������
  'http://tesgroup.ru/filials/volgograd/',          //���������
  'http://tesgroup.ru/filials/voronezh/',           //�������
  'http://tesgroup.ru/filials/ekaterinburg/',       //������������
  'http://tesgroup.ru/filials/zlatoust/',           //��������
  'http://tesgroup.ru/filials/irkutsk/',            //�������
  'http://tesgroup.ru/filials/kazan/',              //������
  'http://tesgroup.ru/filials/kaliningrad/',        //�����������
  'http://tesgroup.ru/filials/kemerovo/',           //��������
  'http://tesgroup.ru/filials/koms-in-amur/',       //�����������-��-�����
  'http://tesgroup.ru/filials/krasnodar/',          //���������
  'http://tesgroup.ru/filials/krasnoyarsk/',        //����������
  'http://tesgroup.ru/filials/kurgan/',             //������
  'http://tesgroup.ru/filials/kursk/',              //�����
  'http://tesgroup.ru/filials/magnit/',             //������������
  'http://tesgroup.ru/filials/n.chelny/',           //���������� �����
  'http://tesgroup.ru/filials/naxodka/',            //�������
  'http://tesgroup.ru/filials/nizhevart/',          //�������������
  'http://tesgroup.ru/filials/n_novgorod/',         //������ ��������
  'http://tesgroup.ru/filials/novokuz/',            //�����������
  'http://tesgroup.ru/filials/novosibirsk/',        //�����������
  'http://tesgroup.ru/filials/omsk/',               //����
  'http://tesgroup.ru/filials/orel/',               //����
  'http://tesgroup.ru/filials/perm/',               //�����
  'http://tesgroup.ru/filials/rostov/',             //������-��-����
  'http://tesgroup.ru/filials/surgut/',             //������
  'http://tesgroup.ru/filials/tomsk/',              //�����
  'http://tesgroup.ru/filials/tyumen/',             //������
  'http://tesgroup.ru/filials/ulanude/',            //����-���
  'http://tesgroup.ru/filials/ussuriysk/',          //���������
  'http://tesgroup.ru/filials/ufa/',                //���
  'http://tesgroup.ru/filials/xabarovsk/',          //���������
  'http://tesgroup.ru/filials/chelyabinsk/',        //���������
  'http://tesgroup.ru/filials/Chita/',              //����
  'http://tesgroup.ru/filials/yaroslavl/');         //���������

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
i:integer;
begin
RadioButton1.Checked:=true;
for i:=1 to 40 do
 begin
   Combobox1.Items.Add(goroda[i]);
   listbox1.Items.Add(goroda[i]);
   memo2.Lines.Add('<a href="'+goroda_link[i] +'">'+goroda[i]+'</a>');
 end;
label1.hide; edit2.Hide; label2.Hide; edit3.Hide; label3.Hide; memo2.Hide; memo3.Hide;
end;

procedure TForm1.Edit1Click(Sender: TObject);
begin
edit1.Text:='';
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
kuda,tuda:string;
goroda_mass:string;
gorod_x,gorod_xx:string;
i,j:integer;
begin
/////////////////������/////////////////////////
/////////////////��������� �����////////////////
i:=0;
for i:=1 to 40 do
  begin
    if goroda[i] = Combobox1.Items[Combobox1.ItemIndex] then
      begin
        gorod_x:=memo2.Lines[i-1];
        gorod_xx:='<a href="'+goroda_link[i]+'prices/">'+'��������������� ��������'+'</a>';
      end;
  end;
/////////////////� ������//////////////////////
i:=0;j:=0;
memo3.Clear;
for i:=0 to listbox2.Items.Count-1 do
  begin
    for j:=1 to 40 do
      begin
        if listbox2.Items[i] = goroda[j] then
          begin
            memo3.Lines.Add(memo2.Lines[j-1]);
          end;
      end;
  end;
//////////////////////////////////////////////
memo1.Clear;
if RadioButton1.Checked = true then kuda:='�';
if RadioButton2.Checked = true then kuda:='��';
if RadioButton1.Checked = true then tuda:='��';
if RadioButton2.Checked = true then tuda:='�';

result_text:='��������� ������� �� �������� ��������� '+kuda+' �.'+combobox1.Items[combobox1.ItemIndex];
memo1.Lines.Add(result_text); edit2.Text:=result_text;
result_text:='��������� �������! �������� ���� �������� �� ��������� ������� � '+edit1.Text+' �� �������� ��������� '+kuda+' �.'+combobox1.Items[combobox1.ItemIndex];
memo1.Lines.Add(result_text); edit3.Text:=result_text;
result_text:='��������� �������! �������� ���� �������� �� ��������� ������� � '+edit1.Text+' �� �������� ��������� '+kuda+' �.'+gorod_x+' '+tuda;
memo1.Lines.Add(result_text);
for i:=0 to memo3.Lines.Count-1 do
 begin
   goroda_mass:=goroda_mass+' �.'+memo3.Lines[i]+', ';
 end;
Delete(goroda_mass,length(goroda_mass)-1,1);
memo1.Lines[4]:=memo1.Lines[4]+(goroda_mass);
memo1.Lines.add('� ����� ��������� ����������� �� ������� ����� ������������ �� '+gorod_xx+' �������.');

end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
begin
listbox2.Items.Add(listbox1.Items[listbox1.ItemIndex]);
listbox1.Items.Delete(listbox1.ItemIndex);
end;

procedure TForm1.ListBox2DblClick(Sender: TObject);
begin
listbox1.Items.Add(listbox2.Items[listbox2.ItemIndex]);
listbox2.Items.Delete(listbox2.ItemIndex);
end;

end.
