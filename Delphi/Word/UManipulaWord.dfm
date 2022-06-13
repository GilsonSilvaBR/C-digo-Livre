object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Manipulando arquivos Word'
  ClientHeight = 363
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Email: TLabel
    Left = 32
    Top = 98
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label3: TLabel
    Left = 32
    Top = 194
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label4: TLabel
    Left = 32
    Top = 248
    Width = 65
    Height = 13
    Caption = 'Novo Arquivo'
  end
  object label12: TLabel
    Left = 32
    Top = 146
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Bairro: TLabel
    Left = 136
    Top = 162
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label9: TLabel
    Left = 136
    Top = 194
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label2: TLabel
    Left = 32
    Top = 13
    Width = 95
    Height = 13
    Caption = 'Arquivo Doc Origem'
  end
  object edNome: TEdit
    Left = 32
    Top = 72
    Width = 401
    Height = 21
    TabOrder = 1
  end
  object edEmail: TEdit
    Left = 32
    Top = 115
    Width = 401
    Height = 21
    TabOrder = 2
  end
  object edNumero: TEdit
    Left = 32
    Top = 211
    Width = 89
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 32
    Top = 314
    Width = 169
    Height = 25
    Caption = 'Preencher arquivo Word'
    TabOrder = 8
    OnClick = Button1Click
  end
  object edPastaDestino: TEdit
    Left = 32
    Top = 264
    Width = 401
    Height = 21
    TabOrder = 6
    Text = 'C:\Source\Livre\Codigo-Livre\Delphi\Word\copia\'
  end
  object edEndereco: TEdit
    Left = 32
    Top = 163
    Width = 401
    Height = 21
    TabOrder = 3
  end
  object edBairro: TEdit
    Left = 136
    Top = 211
    Width = 297
    Height = 21
    TabOrder = 5
  end
  object ckPDF: TCheckBox
    Left = 32
    Top = 291
    Width = 97
    Height = 17
    Caption = 'Salvar como PDF'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object edDocOrigem: TEdit
    Left = 32
    Top = 29
    Width = 401
    Height = 21
    TabOrder = 0
    Text = 'C:\Source\Livre\Codigo-Livre\Delphi\Word\bin\documento.docx'
  end
end
