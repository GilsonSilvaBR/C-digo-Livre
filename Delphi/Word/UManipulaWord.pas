unit UManipulaWord;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls,   System.Win.ComObj;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Email: TLabel;
    edNome: TEdit;
    edEmail: TEdit;
    Label3: TLabel;
    edNumero: TEdit;
    Button1: TButton;
    Label4: TLabel;
    edPastaDestino: TEdit;
    label12: TLabel;
    edEndereco: TEdit;
    Bairro: TLabel;
    edBairro: TEdit;
    Label9: TLabel;
    ckPDF: TCheckBox;
    Label2: TLabel;
    edDocOrigem: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    WrdApp: Variant;
    procedure ConvertDocToPdf(arquivoWord : String);
  public
    procedure TrocaHeader(doc : OleVariant);
  end;

var
  Form1: TForm1;

implementation
uses
 Winapi.ShellAPI;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  WordApp: Variant;
  Documento, pdf: Olevariant;
begin
  WordApp:= CreateOleObject('Word.Application');
  try
    WordApp.Visible := False;
    Documento := WordApp.Documents.Open(edDocOrigem.text);

    Documento.Content.Find.Execute(FindText := '[NOME]', ReplaceWith := edNome.Text, Wrap := 1, Replace:=2);
    Documento.Content.Find.Execute(FindText := '[ENDERECO]', ReplaceWith := edEndereco.Text, Wrap := 1, Replace:=2);
    Documento.Content.Find.Execute(FindText := '[NUMERO]', ReplaceWith := edNumero.Text, Wrap := 1, Replace:=2);
    Documento.Content.Find.Execute(FindText := '[BAIRRO]', ReplaceWith := edBairro.Text, Wrap := 1, Replace:=2);
    Documento.Content.Find.Execute(FindText := '[EMAIL]', ReplaceWith := edEmail.Text, Wrap := 1, Replace:=2);
    {-- alterar texto no cabeçalho --}
    TrocaHeader(documento);
    {--------------------------------}
    Documento.SaveAs(edPastaDestino.text+'DocCopia.doc');

  finally
    WordApp.Quit;
  end;
  if ckPdf.Checked then
    ConvertDocToPdf(edPastaDestino.text+'DocCopia.doc');
  showmessage('procedimento concluído');
end;

procedure TForm1.ConvertDocToPdf(arquivoWord: String);
var
  Word, Doc: OleVariant;
  arquivoPdf : String;
begin
  arquivoPdf := edPastaDestino.text+'arquivo.pdf';
  try
    Word := CreateOLEObject('Word.Application');
    Doc := Word.Documents.Open(arquivoWord);
    Doc.ExportAsFixedFormat(arquivoPdf, 17);
  finally
    word.quit;
    if FileExists(arquivoPdf) then
    begin
      sleep(1000);
      ShellExecute(Application.Handle, 'open', PChar(arquivoPdf), nil, nil,
          SW_SHOWMAXIMIZED);
    end;
  end;
end;


procedure TForm1.TrocaHeader(doc: OleVariant);
const
  wdFirstPageHeaderStory = 10;
  wdFirstPageFooterStory=11;
  wdMainTextStory=1;
  wdFindContinue=1;
  wdReplaceAll=2;
var
  SearchRng: OleVariant;
  Story : integer;
begin
  for Story := wdMainTextStory to wdFirstPageFooterStory do
  begin
    try
      SearchRng := Doc.StoryRanges.Item(Story);
      SearchRng.Find.Execute('[NOME]',
                      Wrap := wdFindContinue,
                      ReplaceWith := edNome.Text,
                      Replace := wdReplaceAll);
      SearchRng.Find.Execute('[EMAIL]',
                      Wrap := wdFindContinue,
                      ReplaceWith := edEmail.Text,
                      Replace := wdReplaceAll);
    except
      on E: EOleSysError do
      begin
        {}
      end;
    end;
  end;
end;

end.
