object FrmApagar: TFrmApagar
  Left = 0
  Top = 0
  Caption = 'FrmApagar'
  ClientHeight = 353
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 353
    Align = alClient
    Color = 3969340
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 120
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 21
      Top = 4
      Width = 430
      Height = 47
      Margins.Left = 20
      Margins.Right = 20
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 13816530
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 176
      ExplicitTop = 40
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Label1: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 422
        Height = 39
        Align = alTop
        Alignment = taCenter
        Caption = 'Apagar produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 24
        ExplicitWidth = 402
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 21
      Top = 57
      Width = 430
      Height = 275
      Margins.Left = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alClient
      Color = 16053492
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 208
      ExplicitTop = 112
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Label2: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 422
        Height = 19
        Align = alTop
        Alignment = taCenter
        Caption = 'ID do produto a ser apagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 205
      end
      object Edit1: TEdit
        Left = 80
        Top = 48
        Width = 273
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object cxButton1: TcxButton
        Left = 72
        Top = 224
        Width = 75
        Height = 25
        Caption = 'cxButton1'
        TabOrder = 1
      end
      object cxButton2: TcxButton
        Left = 256
        Top = 225
        Width = 75
        Height = 25
        Caption = 'cxButton2'
        TabOrder = 2
      end
    end
  end
end
