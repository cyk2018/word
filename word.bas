Attribute VB_Name = "cyk"
Sub ����ȫ�ı�������()
    Dim tbs As Tables, tb As Table
    Set tbs = ActiveDocument.Tables
    n = tbs.Count
    For i = 1 To n
        Set tb = tbs(i)
        'ѡ�б���
        tb.Select
        '���ñ���ĸ�ʽ
        If tb.Title = "" Then
        
        '��������߿�
        tb.Borders.InsideLineStyle = wdLineStyleSingle
        tb.Borders.InsideLineWidth = wdLineWidth050pt
        tb.Borders.OutsideLineStyle = wdLineStyleSingle
        tb.Borders.OutsideLineWidth = wdLineWidth050pt
        
        tb.Style.Font.Name = "����"
        tb.Style.Font.Size = 10.5
        tb.Style.Font.NameAscii = "Times New Roman"
        
        
        '��������
        
        Selection.MoveLeft Count:=2
        tabletitle = Chr(13) & "�� " & "x-x ���������"
        Selection.TypeText tabletitle
        tb.Title = tabletitle
        Selection.MoveUp unit:=wdParagraph, Count:=1, Extend:=wdExtend
        Selection.ClearFormatting
        
        '��������������
        Selection.Font.Name = "����"
        Selection.Font.Size = 10.5
        Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
        Selection.ParagraphFormat.SpaceBefore = 12
        Selection.ParagraphFormat.SpaceAfter = 6
        Selection.Font.Bold = False
                       
        End If
        
    Next i
    MsgBox "���ֶ��������"
End Sub
Sub Ӣ��ȫ�ı�������()
    Dim tbs As Tables, tb As Table
    Set tbs = ActiveDocument.Tables
    n = tbs.Count
    For i = 1 To n
        Set tb = tbs(i)
        'ѡ�б���
        tb.Select
        '���ñ���ĸ�ʽ
        If tb.Title = "" Then
        
        '��������߿�
        tb.Borders.InsideLineStyle = wdLineStyleSingle
        tb.Borders.InsideLineWidth = wdLineWidth050pt
        tb.Borders.OutsideLineStyle = wdLineStyleSingle
        tb.Borders.OutsideLineWidth = wdLineWidth050pt
        
        tb.Style.Font.Name = "����"
        tb.Style.Font.Size = 10.5
        tb.Style.Font.NameAscii = "Times New Roman"
        
        
        '��������
        
        Selection.MoveLeft Count:=2
        tabletitle = Chr(13) & "Table" & " x-x Please input the title"
        Selection.TypeText tabletitle
        tb.Title = tabletitle
        Selection.MoveUp unit:=wdParagraph, Count:=1, Extend:=wdExtend
        Selection.ClearFormatting
        
        '��������������
        Selection.Font.Name = "Times New Roman"
        Selection.Font.Size = 10.5
        Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
        Selection.Font.Bold = False
        
        Selection.ParagraphFormat.SpaceBefore = 12
        Selection.ParagraphFormat.SpaceAfter = 6
                    
        End If
        
    Next i
    MsgBox "Please enter the title manually"
End Sub

Sub ����ȫ��ͼƬ����()
    Dim pics As InlineShapes, pic As InlineShape
    Set pics = ActiveDocument.InlineShapes
    n = pics.Count
    For i = 1 To n
        Set pic = pics(i)
        pic.Select
        If pic.Title = "" Then
            Selection.MoveRight Count:=1
            Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
        
            'Selection.MoveRight
            pictitle = Chr(13) & "ͼ x-x" & " ���������"
            Selection.TypeText pictitle
            pic.Title = pictitle
            Selection.ClearFormatting
            Selection.Font.Name = "����"
            Selection.Font.Size = 10.5
            Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
            
            Selection.ParagraphFormat.SpaceBefore = 6
            Selection.ParagraphFormat.SpaceAfter = 12
        End If
    Next i
    MsgBox "���ֶ��������"
End Sub
Sub Ӣ��ȫ��ͼƬ����()
    Dim pics As InlineShapes, pic As InlineShape
    Set pics = ActiveDocument.InlineShapes
    n = pics.Count
    For i = 1 To n
        Set pic = pics(i)
        pic.Select
        If pic.Title = "" Then
            Selection.MoveRight Count:=1
            Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
        
            'Selection.MoveDown unit:=wdParagraph, Count:=1, Extend:=wdExtend
            pictitle = Chr(13) & "Figure x-x" & " Please input the title"
            Selection.TypeText pictitle
            pic.Title = pictitle
            Selection.ClearFormatting
            Selection.Font.Name = "Times New Roman"
            Selection.Font.Size = 10.5
            Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
            
            Selection.ParagraphFormat.SpaceBefore = 6
            Selection.ParagraphFormat.SpaceAfter = 12
        End If
    Next i
    MsgBox "Please enter the title manually"
End Sub


Sub ȫ��ҳ�߾��ҳü_ҳ�Ÿ�ʽ()
response = MsgBox("����Ҫ��ʾ��" & Chr(13) & "ȷ�Ϻ�Ḳ�����޸ĵ�ҳü" & Chr(13) & "��������ȷ��", buttons:=vbOKCancel + vbDefaultButton2)
    If response = 1 Then
        response = MsgBox("���ٴ�ȷ�ϡ�" & Chr(13) & "��ȷ���޸���", buttons:=vbOKCancel + vbDefaultButton2)
        If response <> 1 Then
            Exit Sub
        End If
    Else
        Exit Sub
    End If

    Selection.WholeStory '����ҳ�߾�
    With ActiveDocument.PageSetup
        .TopMargin = CentimetersToPoints(3)
        .BottomMargin = CentimetersToPoints(3)
        .LeftMargin = CentimetersToPoints(3)
        .RightMargin = CentimetersToPoints(3)
    End With
    Selection.ParagraphFormat.LineSpacingRule = wdLineSpace1pt5

    ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageHeader '����ҳü
    Selection.HomeKey unit:=wdLine
    Selection.EndKey unit:=wdLine, Extend:=wdExtend
    Selection.Delete
    Selection.TypeText Text:="���ӿƼ���ѧѧʿѧλ����"
    Selection.HomeKey unit:=wdLine
    Selection.EndKey unit:=wdLine, Extend:=wdExtend
    Selection.Font.Name = "����"
    Selection.Font.Size = 10.5

ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageFooter
    Selection.HomeKey unit:=wdLine
    Selection.EndKey unit:=wdLine, Extend:=wdExtend
    Selection.Delete '���и���ɾ��
    Selection.TypeText Text:=""
    Selection.HomeKey unit:=wdLine
    Selection.EndKey unit:=wdLine, Extend:=wdExtend
    Selection.Font.Name = "����"
    Selection.Font.Size = 10.5
    
    Selection.PageSetup.HeaderDistance = 56.6 ' ����ҳü��ҳ��ױߵľ���
    Selection.PageSetup.FooterDistance = 56.6 ' ����ҳ�ŵ�ҳ��ױߵľ���
    ActiveWindow.ActivePane.View.SeekView = wdSeekMainDocument
    Selection.HomeKey
    MsgBox "��ɣ�"
End Sub

Sub Ӣ������_ҳü��ʽ()
     If Selection.Type = wdSelectionIP Then
        Selection.Expand unit:=wdParagraph
    ElseIf Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ�����֣�"
        Exit Sub
    End If
    response = MsgBox("�˲�����������Ӣ������ҳü�ĸ�ʽ" & Chr(13), buttons:=vbOKCancel + vbDefaultButton2)
    If response <> 1 Then
            Exit Sub
    End If
    ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageHeader '����ҳü
    Selection.Font.Name = "Times New Roman"
    Selection.Font.Size = 10.5
    ActiveWindow.ActivePane.View.SeekView = wdSeekMainDocument
End Sub


Sub ȫ��Ӣ��ʹ������������()
    On Error GoTo msg
    Dim ps As Paragraphs
    Set ps = ActiveDocument.Paragraphs
    n = ps.Count
    For i = 1 To n
        For Each C In ps(i).Range.Characters
            If VBA.Asc(C) >= 0 And C.Font.Name <> "Times New Roman" Then
                C.Font.Name = "Times New Roman"
            End If
        Next
    Next
    MsgBox "��ɣ�"
    Exit Sub
msg:
    MsgBox "���˵����⣬���������  >_<", Title:="Error", buttons:=vbCritical
End Sub

Sub ����_����()
    If Selection.Type = wdSelectionIP Then
        Selection.Expand unit:=wdParagraph
    ElseIf Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ�����֣�"
        Exit Sub
    End If
    Selection.ClearFormatting
    Selection.Font.Name = "����"
    Selection.Font.Size = 12
    Selection.Font.Bold = False
    Selection.ParagraphFormat.LineSpacingRule = wdLineSpaceExactly
    Selection.ParagraphFormat.LineSpacing = 20 '�̶��о�20��
    With Selection.ParagraphFormat
        .SpaceBefore = 0
        .SpaceBeforeAuto = False
        .SpaceAfter = 0
        .SpaceAfterAuto = False
        '.LineSpacingRule = wdLineSpace1pt5
        .CharacterUnitFirstLineIndent = 2 '�����������ַ�
        .OutlineLevel = wdOutlineLevelBodyText
        .LineUnitBefore = 0
        .LineUnitAfter = 0
    End With
End Sub
Sub ����_Ӣ��()
    If Selection.Type = wdSelectionIP Then
        Selection.Expand unit:=wdParagraph
    ElseIf Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ��Ӣ�ģ�"
        Exit Sub
    End If
    Selection.ClearFormatting
    Selection.Font.Name = "Times New Roman"
    Selection.Font.Size = 12
    
    Selection.Font.Bold = False
    Selection.ParagraphFormat.LineSpacingRule = wdLineSpaceExactly
    Selection.ParagraphFormat.LineSpacing = 20
    With Selection.ParagraphFormat
        .SpaceBefore = 0
        .SpaceBeforeAuto = False
        .SpaceAfter = 0
        .SpaceAfterAuto = False
        '.LineSpacingRule = wdLineSpace1pt5
        .CharacterUnitFirstLineIndent = 2 '�����������ַ�
        .OutlineLevel = wdOutlineLevelBodyText
        .LineUnitBefore = 0
        .LineUnitAfter = 0
    End With
End Sub

Sub ����ҳ��()
    response = MsgBox("����Ҫ��ʾ��" & Chr(13) & "��ȷ�����λ�ڵ�һ�µ�һ������ǰ" & Chr(13) & "�ٵ��[ȷ��]  ������[ȡ��]", buttons:=vbOKCancel + vbDefaultButton2)
    If response = 1 Then
        response = MsgBox("���ٴ�ȷ�ϡ�" & Chr(13) & "��ȷ�Ϲ��λ����ȷλ��", buttons:=vbOKCancel + vbDefaultButton2)
        If response <> 1 Then
            Exit Sub
        End If
    Else
        Exit Sub
    End If

    Selection.InsertBreak Type:=wdSectionBreakNextPage
    
    With ActiveDocument.Sections(1)
        .Footers(wdHeaderFooterPrimary).PageNumbers.Add PageNumberAlignment:=wdAlignPageNumberCenter, FirstPage:=True
        .Footers(wdHeaderFooterPrimary).PageNumbers.StartingNumber = 1
        .Footers(wdHeaderFooterPrimary).PageNumbers.NumberStyle = wdPageNumberStyleUppercaseRoman '��һ��֮ǰ������������
        .Footers(wdHeaderFooterPrimary).Range.Font.Name = "Times New Roman"
        .Footers(wdHeaderFooterPrimary).Range.Font.Size = 9
        '.Headers(1).Range.ParagraphFormat.Borders(3).LineStyle = wdLineStyleNone
    End With
    With ActiveDocument.Sections(2)
        .Footers(wdHeaderFooterPrimary).PageNumbers.Add PageNumberAlignment:=wdAlignPageNumberCenter, FirstPage:=True
        .Footers(wdHeaderFooterPrimary).PageNumbers.RestartNumberingAtSection = True
        .Footers(wdHeaderFooterPrimary).PageNumbers.StartingNumber = 1
        .Footers(wdHeaderFooterPrimary).PageNumbers.NumberStyle = wdPageNumberStyleArabic
        .Footers(wdHeaderFooterPrimary).Range.Font.Name = "Times New Roman"
        .Footers(wdHeaderFooterPrimary).Range.Font.Size = 9
        '.Headers(1).Range.ParagraphFormat.Borders(3).LineStyle = wdLineStyleNone
    End With
    MsgBox "��ɣ�"
End Sub


Sub �����ע()
    With Selection
        With .FootnoteOptions
            .Location = wdBottomOfPage
            '.NumberingRule = wdRestartSection
            '.NumberingRule = wdRestartContinuous
            .StartingNumber = 1
            .NumberStyle = wdNoteNumberStyleNumberInCircle
            .LayoutColumns = 1
        End With
        .Font.Size = 10.5
        .ParagraphFormat.Alignment = 3
        .ParagraphFormat.LineSpacingRule = pbLineSpacingSingle '�����о�
        .ParagraphFormat.LineUnitBefore = 0 '��ǰ��
        .ParagraphFormat.LineUnitAfter = 0 '�κ��
        Set myRange = ActiveDocument.Sections(1).Range
    If myRange.Footnotes.NumberingRule = wdRestartSection Then
        myRange.Footnotes.NumberingRule = wdRestartPage
    End If
        .Footnotes.Add Range:=Selection.Range, Reference:=""
    End With
End Sub

Sub �����±���()
    If Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ������"
        Exit Sub
    End If
    With ActiveDocument.Styles("���� 1").Font
        .NameFarEast = "����"
        .Name = "����"
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Size = 15
        .Bold = False
    End With
    With ActiveDocument.Styles("���� 1").ParagraphFormat
        .SpaceBefore = 24
        .SpaceBeforeAuto = False
        .SpaceAfter = 18
        .SpaceAfterAuto = False
        .LineSpacingRule = wdLineSpace1pt5
        .Alignment = wdAlignParagraphCenter
        .LineUnitBefore = 0
        .LineUnitAfter = 1
    End With
    Selection.ClearFormatting
    Selection.Style = ActiveDocument.Styles("���� 1")
    Selection.HomeKey unit:=wdLine
    Selection.InsertBreak Type:=wdPageBreak
End Sub



Sub ����һ������()
    If Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ������"
        Exit Sub
    End If
    With ActiveDocument.Styles("���� 2").Font
        .NameFarEast = "����"
        .Name = "����"
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Size = 14
        .Bold = False
    End With
    With ActiveDocument.Styles("���� 2").ParagraphFormat
        .SpaceBefore = 18
        .SpaceBeforeAuto = False
        .SpaceAfter = 6
        .SpaceAfterAuto = False
        .LineSpacingRule = wdLineSpace1pt5
        .Alignment = wdAlignParagraphLeft
        .LineUnitBefore = 0
        .LineUnitAfter = 1
    End With
    Selection.ClearFormatting
    Selection.Style = ActiveDocument.Styles("���� 2")
End Sub

Sub ���Ķ�������()
    If Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ������"
        Exit Sub
    End If
    With ActiveDocument.Styles("���� 3").Font
        .NameFarEast = "����"
        .Name = "����"
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Size = 14
        .Bold = False
    End With
    With ActiveDocument.Styles("���� 3").ParagraphFormat
        .SpaceBefore = 12
        .SpaceBeforeAuto = False
        .SpaceAfter = 6
        .SpaceAfterAuto = False
        .LineSpacingRule = wdLineSpace1pt5
        .Alignment = wdAlignParagraphLeft
        .LineUnitBefore = 0
        .LineUnitAfter = 1
    End With
    Selection.ClearFormatting
    Selection.Style = ActiveDocument.Styles("���� 3")
End Sub

Sub ������������()
    If Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ������"
        Exit Sub
    End If
    With ActiveDocument.Styles("���� 4").Font
        .NameFarEast = "����"
        .Name = "����"
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Size = 12
        .Bold = False
    End With
    With ActiveDocument.Styles("���� 4").ParagraphFormat
        .SpaceBefore = 12
        .SpaceBeforeAuto = False
        .SpaceAfter = 6
        .SpaceAfterAuto = False
        .LineSpacingRule = wdLineSpace1pt5
        .Alignment = wdAlignParagraphLeft
        .LineUnitBefore = 0.5
        .LineUnitAfter = 0.5
    End With
    Selection.ClearFormatting
    Selection.Style = ActiveDocument.Styles("���� 4")
End Sub

Sub Ӣ���±���()
    If Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ������"
        Exit Sub
    End If
    With ActiveDocument.Styles("���� 1").Font
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Name = "Times New Roman"
        .Size = 15
        .Bold = True
    End With
    With ActiveDocument.Styles("���� 1").ParagraphFormat
        .SpaceBefore = 24
        .SpaceBeforeAuto = False
        .SpaceAfter = 18
        .SpaceAfterAuto = False
        .LineSpacingRule = wdLineSpace1pt5
        .Alignment = wdAlignParagraphCenter
        .LineUnitBefore = 0
        .LineUnitAfter = 1
    End With
    Selection.ClearFormatting
    Selection.Style = ActiveDocument.Styles("���� 1")
    Selection.HomeKey unit:=wdLine
    Selection.InsertBreak Type:=wdPageBreak
End Sub

Sub Ӣ��һ������()
    If Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ������"
        Exit Sub
    End If
    With ActiveDocument.Styles("���� 2").Font
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Name = "Times New Roman"
        .Size = 14
        .Bold = True
    End With
    With ActiveDocument.Styles("���� 2").ParagraphFormat
        .SpaceBefore = 18
        .SpaceBeforeAuto = False
        .SpaceAfter = 6
        .SpaceAfterAuto = False
        .LineSpacingRule = wdLineSpace1pt5
        .Alignment = wdAlignParagraphLeft
        .LineUnitBefore = 0
        .LineUnitAfter = 1
    End With
    Selection.ClearFormatting
    Selection.Style = ActiveDocument.Styles("���� 2")
End Sub


Sub Ӣ�Ķ�������()
    If Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ������"
        Exit Sub
    End If
    With ActiveDocument.Styles("���� 3").Font
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Name = "Times New Roman"
        .Size = 14
        .Bold = True
    End With
    With ActiveDocument.Styles("���� 3").ParagraphFormat
        .SpaceBefore = 12
        .SpaceBeforeAuto = False
        .SpaceAfter = 6
        .SpaceAfterAuto = False
        .LineSpacingRule = wdLineSpace1pt5
        .Alignment = wdAlignParagraphLeft
        .LineUnitBefore = 0
        .LineUnitAfter = 1
    End With
    Selection.ClearFormatting
    Selection.Style = ActiveDocument.Styles("���� 3")
End Sub


Sub Ӣ����������()
    If Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ������"
        Exit Sub
    End If
    With ActiveDocument.Styles("���� 4").Font
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Name = "Times New Roman"
        .Size = 12
        .Bold = True
    End With
    With ActiveDocument.Styles("���� 4").ParagraphFormat
        .SpaceBefore = 12
        .SpaceBeforeAuto = False
        .SpaceAfter = 6
        .SpaceAfterAuto = False
        .LineSpacingRule = wdLineSpace1pt5
        .Alignment = wdAlignParagraphLeft
        .LineUnitBefore = 0.5
        .LineUnitAfter = 0.5
    End With
    Selection.ClearFormatting
    Selection.Style = ActiveDocument.Styles("���� 4")
End Sub


Sub ժҪ()
    If Selection.Type <> wdSelectionNormal Then
        MsgBox "��ѡ������"
        Exit Sub
    End If
    Selection.Style = ActiveDocument.Styles("����")
    Selection.Font.Name = "����"
    Selection.Font.NameAscii = "Times New Roman"
    Selection.Font.Size = 10.5
    Selection.Font.Bold = False
    Selection.ParagraphFormat.CharacterUnitFirstLineIndent = 2
    Selection.EndKey
    Selection.TypeText Chr(13)
End Sub

