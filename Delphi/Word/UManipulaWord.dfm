object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 508
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 43
    Height = 13
    Caption = 'Contrato'
  end
  object Label2: TLabel
    Left = 40
    Top = 82
    Width = 69
    Height = 13
    Caption = 'Data Contrato'
  end
  object Label3: TLabel
    Left = 40
    Top = 130
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label4: TLabel
    Left = 40
    Top = 184
    Width = 65
    Height = 13
    Caption = 'Novo Arquivo'
  end
  object Label5: TLabel
    Left = 184
    Top = 40
    Width = 57
    Height = 13
    Caption = 'N'#250'mero Ref'
  end
  object Label6: TLabel
    Left = 184
    Top = 82
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label7: TLabel
    Left = 184
    Top = 130
    Width = 35
    Height = 13
    Caption = 'Cr'#233'dito'
  end
  object Label8: TLabel
    Left = 328
    Top = 130
    Width = 34
    Height = 13
    Caption = 'Modelo'
  end
  object Label9: TLabel
    Left = 40
    Top = 264
    Width = 102
    Height = 13
    Caption = 'Descri'#231#227'o documento'
  end
  object edContrato: TEdit
    Left = 40
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edContrato'
  end
  object edData: TEdit
    Left = 40
    Top = 99
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edData'
  end
  object edGrupo: TEdit
    Left = 40
    Top = 147
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edGrupo'
  end
  object Button1: TButton
    Left = 512
    Top = 198
    Width = 105
    Height = 25
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object edArquivo: TEdit
    Left = 40
    Top = 200
    Width = 457
    Height = 21
    TabOrder = 4
    Text = 'C:\Source\Livre\copia\novo.doc'
  end
  object edNumRef: TEdit
    Left = 184
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object edCliente: TEdit
    Left = 184
    Top = 99
    Width = 353
    Height = 21
    TabOrder = 6
    Text = 'Edit2'
  end
  object edCredito: TEdit
    Left = 184
    Top = 147
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit3'
  end
  object edModelo: TEdit
    Left = 328
    Top = 147
    Width = 209
    Height = 21
    TabOrder = 8
    Text = 'Edit3'
  end
  object Button2: TButton
    Left = 383
    Top = 277
    Width = 105
    Height = 25
    Caption = 'Salvar arquivo'
    TabOrder = 9
    OnClick = Button2Click
  end
  object edDocumento: TEdit
    Left = 40
    Top = 279
    Width = 337
    Height = 21
    TabOrder = 10
    Text = 'edDocumento'
  end
  object Button3: TButton
    Left = 384
    Top = 312
    Width = 104
    Height = 25
    Caption = 'C'#243'pia arquivos'
    TabOrder = 11
    OnClick = Button3Click
  end
  object ckPDF: TCheckBox
    Left = 136
    Top = 177
    Width = 97
    Height = 17
    Caption = 'Salvar como PDF'
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
  object Button4: TButton
    Left = 40
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 13
    OnClick = Button4Click
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 552
    Top = 272
  end
  object OpenDialog: TOpenDialog
    Left = 264
    Top = 312
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Bases\Fb2.5\VIP\SIGCP25-N27M22.FDB'
      'User_Name=sysdba'
      'Password=sfskey@'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 544
    Top = 136
  end
  object SaveDialog: TSaveDialog
    Left = 176
    Top = 320
  end
end
