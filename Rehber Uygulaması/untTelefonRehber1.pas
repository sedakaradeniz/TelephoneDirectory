unit untTelefonRehber1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TTelefonRehberi = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Edit6: TEdit;
    Button7: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelefonRehberi: TTelefonRehberi;
  secim: integer;

implementation

{$R *.dfm}

procedure TTelefonRehberi.Button1Click(Sender: TObject);
var a:integer;
begin
  if (Edit1.Text <> '') and (Edit3.Text <> '') then
  begin
   if Edit2.Text='' then
   Begin
   Edit2.Text:=' ';

   End;
   if Edit4.Text='' then
   begin
     Edit4.Text:='';
   end;
   if Edit5.Text='' then
   begin
     Edit5.Text:= '';
   end;
   if ComboBox1.Text='' then
   begin
     ComboBox1.Text:='';
   end;
   if ComboBox2.Text='' then
   begin
     ComboBox2.Text:=''
   end;



    ListBox1.Items.Add(UpperCase(Edit1.Text+' / '+Edit2.Text+' / '+Edit3.Text+' / '+Edit4.Text+' / '+Edit5.Text+' / '+ComboBox1.Text+' / '+ComboBox2.Text));
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    ComboBox1.ItemIndex := -1;
    ComboBox2.ItemIndex := -1;

    ShowMessage('Ki�i Kaydedilmi�tir');

    ListBox1.Items.SaveToFile('C:\Users\Yunus\OneDrive\Documents\Rehber.txt');
     ListBox1.Sorted:=True;
  end
  else
  begin
    ShowMessage('ad ve numara bo� b�rakmay�n�z');
  end;

end;

procedure TTelefonRehberi.Button2Click(Sender: TObject);
begin

Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    ComboBox1.ItemIndex := -1;
    ComboBox2.ItemIndex := -1;
         if  MessageDlg('Ki�iyi silmek istiyor musunuz?', mtconfirmation, [mbyes, mbno], 0)=mrYes then
               begin

  ListBox1.Items.Delete(secim);
   ListBox1.Items.SaveToFile('C:\Users\Yunus\OneDrive\Documents\Rehber.txt');
  ShowMessage('Ki�i Silinmi�tir');
               end;


end;

procedure TTelefonRehberi.Button3Click(Sender: TObject);
var
  StrList: TStringList;
  I: Integer;
  kelime: String;

begin

  StrList := TStringList.Create;
  StrList.Delimiter := '/';
  StrList.DelimitedText := ListBox1.Items[secim];

  kelime := StrList[0];
  ShowMessage(kelime + ' Aran�yor...');

end;

procedure TTelefonRehberi.Button4Click(Sender: TObject);
begin
  ListBox1.Items.SaveToFile('C:\Users\Yunus\OneDrive\Documents\Rehber.txt');
  ShowMessage('Rehber g�ncellenmi�tir.');
end;

procedure TTelefonRehberi.Button5Click(Sender: TObject);

begin


         ListBox1.Items.Delete(secim);

 ListBox1.Items.Insert(0,UpperCase(Edit1.Text+' / '+Edit2.Text+' / '+Edit3.Text+' / '+Edit4.Text+' / '+Edit5.Text+' / '+ComboBox1.Text+' / '+ComboBox2.Text));
  ListBox1.Items.SaveToFile('C:\Users\Yunus\OneDrive\Documents\Rehber.txt');
   ListBox1.Sorted:=True;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  ComboBox1.ItemIndex := -1;
  ComboBox2.ItemIndex := -1;


  ShowMessage('Ki�i g�ncellenmi�tir.');


end;

procedure TTelefonRehberi.Button6Click(Sender: TObject);
begin

  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;

  ComboBox1.ItemIndex := -1;
  ComboBox2.ItemIndex := -1;
end;

procedure TTelefonRehberi.Button7Click(Sender: TObject);
var
       i:integer;

begin

      for i := 0 to ListBox1.items.Count - 1 do
      begin
        if Pos(UpperCase(Edit6.Text), ListBox1.items.Strings[i]) > 0 then

        begin

          ListBox1.ItemIndex := i;
          ListBox1Click(ListBox1);
          ShowMessage(ListBox1.Items.Strings[i]);

        end;

      end;


    end;

    procedure TTelefonRehberi.FormCreate(Sender: TObject);
begin
  ListBox1.Items.LoadFromFile('C:\Users\Yunus\OneDrive\Documents\Rehber.txt');
end;

procedure TTelefonRehberi.ListBox1Click(Sender: TObject);
var
  StrList: TStringList;
  I: Integer;
  kelime: String;

begin
Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;

  ComboBox1.ItemIndex := -1;
  ComboBox2.ItemIndex := -1;

  secim := ListBox1.ItemIndex;
  StrList := TStringList.Create;
  StrList.Delimiter := '/';
  StrList.DelimitedText := ListBox1.Items[secim];

  Edit1.Text := StrList[0];
  Edit2.Text := StrList[1];
  Edit3.Text := StrList[2];
  Edit4.Text := StrList[3];
  Edit5.Text := StrList[4];
  ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(StrList[5]);
  ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(StrList[6]);





end;

end.
