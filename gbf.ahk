; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1

; 图片搜索测试
F6::
    find( "again.bmp")
    ; clickUntil(282, 536, 342, 555, "ok.bmp", 282, 536, 342, 555)
    ; find(.bmp")
return

`::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    ToolTip color: %color% X: %MouseX% Y: %MouseY%
return

=::
    Click(273, 323, 324, 326)
return

-::
    Click(197, 612, 278, 621)
return

F2:: ;放咸鱼
Click(313, 440, 341, 503)
CheckColorQ(272, 511, 0xd7dff7)
Click(99, 437, 107, 491)
CheckColorQ(119, 348, 0x927f77)
Click(252, 507, 348, 517)
return

F4::
    Loop {
        WinActivate, グランブルーファンタジー - Google Chrome
        
        ; SlaiBaku()
        ; Generic()
        ; SaltFishA()
        ; PingA()
        huodong()
        ; SaltFishTwoTurn()
        
        CheckBattleFinish()
        
        ; find( "again.bmp")
        ; clickUntil("again.bmp")
    }
Return

F9::
    MoveTo("http://game.granbluefantasy.jp/#quest/supporter/510031/5")
    Loop {
        WinActivate, グランブルーファンタジー - Google Chrome
        SummonSelect()
        
        find( "attack.bmp")
        clickUntil( "attack.bmp")
        RandomSleep()
        Click(29, 59) ;browser back
        find( "attack.bmp")
        clickUntil( "attack.bmp")
        
        RandomSleep()
        Click(29, 59) ;browser back
        find( "attack.bmp")
        clickUntil( "attack.bmp")
        Click(29, 59) ;browser back
        
        ; ; 点auto
        ; Click(88, 390, 125, 397)
        
        ; 等待结束
        CheckBattleFinish()
        clickUntil( "ok.bmp")
        ; 点击again
        find( "again.bmp")
        clickUntil( "again.bmp")
        ; 找HL
        Loop {
            RandomSleep()
            ImageSearch, FoundX, FoundY, 15, 84, 382, 884, *12 challenge.bmp
            ToolTip  challenge.bmp %A_Index% %ErrorLevel%
            if (ErrorLevel = 0) {
                res := 1
                break
            } else if (A_Index = 5) {
                ; 超时找不到
                res := 2
                break
            }
        }
        if (res = 1) {
            clickUntil( "challenge.bmp")
            SummonSelect()
            find( "attack.bmp")
            clickUntil( "attack.bmp")
            RandomSleep()
            Click(88, 390, 125, 397)
            CheckBattleFinish()
            MoveTo("http://game.granbluefantasy.jp/#quest/supporter/510031/5")
        }
    }
Return

PingA()
{
    MoveTo("http://game.granbluefantasy.jp/#quest/supporter/751361/1") ; 牛
    ; MoveTo("http://game.granbluefantasy.jp/#quest/supporter/751371/1") ; 90
    ; MoveTo("http://game.granbluefantasy.jp/#quest/supporter/704/0") ;古代布
    
    SummonSelect()
    
    ; 点道具获取确认
    ; find( "ok.bmp")
    ; clickUntil( "ok.bmp")
    
    find( "attack.bmp")
    clickUntil( "attack.bmp")
    
    delayLong()
    Click(88, 390, 125, 397)
}

; 针对有二面的活动，咸鱼需要A两次
SaltFishTwoTurn()
{
    MoveTo("http://game.granbluefantasy.jp/#quest/supporter/749921/5")
    
    SummonSelect()
    
    find( "attack.bmp")
    
    useFish()
    
    delayLong()
    find( "attack.bmp")
    delayLong()
    Attack()
    delayLong()
    Click(29, 59)
    delayLong()
    find( "attack.bmp")
    delayLong()
    Attack()
    
    Send {F5}
}

SaltFishA()
{
    MoveTo("http://game.granbluefantasy.jp/#quest/supporter/749661/1")
    
    SummonSelect()
    
    CheckAttack()
    
    useFish()
    
    delayLong()
    delayLong()
    CheckAttack()
    delayLong()
    delayLong()
    
    Attack()
    
    RandomSleep()
    
    Send {F5}
    ;Click(92, 394, 119, 398)
    ; findNClick(89, 393, 0x615D32, 92, 394, 119, 398)
}
Generic()
{
    ;咸鱼技能A
    MoveTo("http://game.granbluefantasy.jp/#quest/supporter/749671/1/0/10334")
    
    SummonSelect()
    
    CheckAttack()
    
    useFish()
    
    delayLong()
    delayLong()
    CheckAttack()
    delayLong()
    delayLong()
    
    SelectChar(1)
    delayLong()
    UseSkill(0)
    RandomSleep()
    UseSkill(1)
    RandomSleep()
    Click(150, 264, 188, 347)
    delayLong()
    delayLong()
    delayLong()
    delayLong()
    delayLong()
    
    Attack()
    
    RandomSleep()
    
    Send {F5}
    ;Click(92, 394, 119, 398)
    ; findNClick(89, 393, 0x615D32, 92, 394, 119, 398)
    
}

huodong()
{
    ; 活动星本
    MoveTo("http://game.granbluefantasy.jp/#quest/supporter/800011/22")
    
    SummonSelect()
    
    find( "attack.bmp")
    
    RandomSleep()
    SelectChar(0)
    delayLong()
    UseSkill(2)
    RandomSleep()
    Send {F5}
    
}

SlaiBaku()
{
    ; MoveTo("http://game.granbluefantasy.jp/#quest/supporter/400151/4")
    MoveTo("http://game.granbluefantasy.jp/#quest/supporter/400181/4")
    
    SummonSelect()
    
    CheckAttack()
    
    RandomSleep()
    SelectChar(0)
    delayLong()
    UseSkill(0)
    
    delayLong()
    
    Click(29, 59) ;browser back
    RandomSleep()
    
    CheckAttack()
    
    RandomSleep()
    SelectChar(1)
    delayLong()
    UseSkill(2)
    
    delayLong()
    
    Send {F5}
    
}

Click(x1, y1, x2="", y2="")
{
    Random, t, 65, 110
    
    if !x2 or !y2
        Click, %x1%, %y1%
    else {
        Random, x, %x1%, %x2%
        Random, y, %y1%, %y2%
        Click, %x%, %y%, down
        Sleep, t
        Click, up
    }
    return
}

CheckBattleFinish()
{
    find( "ok.bmp")
    RandomSleep()
}

CheckColor(x, y, thecolor)
{
    Loop {
        PixelGetColor, OutputVar, %x%, %y%
        ToolTip % "now searching - " A_Index " " OutputVar thecolor
        if (thecolor == OutputVar)
            break
        sleep, 1000
    }
}

CheckColorQ(x, y, thecolor)
{
    Loop {
        PixelGetColor, OutputVar, %x%, %y%
        ;ToolTip % "now searching - " A_Index " " OutputVar thecolor
        if (thecolor == OutputVar)
            break
        sleep, 500
    }
}

CheckAttack()
{
    CheckColor(348, 373, 0x2A72DC)
}

RandomSleep()
{
    Random, x, 800, 1100
    Sleep, %x%
}

delayLong()
{
    Random, x, 1000, 1500
    Sleep, %x%
}

SelectChar(i)
{
    ; i start from zero
    ltx := 86 + i * 54
    lty := 429
    rbx := ltx + 38
    rby := lty + 60
    Click(ltx, lty, rbx, rby)
}

UseSkill(i)
{
    ; i start from zero
    ltx := 162 + i * 57
    lty := 478
    rbx := ltx + 25
    rby := lty + 25
    Click(ltx, lty, rbx, rby)
}

MoveTo(url)
{
    Click(300, 59)
    SendRaw %url%
    Send {Enter}
}

Attack()
{
    Click(286, 364, 351, 385)
}

SummonSelect()
{
    find("supporter.bmp")
    clickUntil("supporter.bmp", 90, 673, 361, 739)
    ; clickUntil("supporter.bmp", 158, 341, 353, 395)
    
    find("rightSideOk.bmp")
    clickUntil( "rightSideOk.bmp", 248, 531, 363, 566)
}

useFish()
{
    Click(313, 440, 341, 503)
    find("xianyu1.bmp")
    Click(99, 437, 107, 491)
    find("xianyu2.bmp")
    Click(252, 507, 348, 517)
}

; 寻找图片
; 图片寻找范围，图片url
find(url)
{
    Loop {
        RandomSleep()
        ; ImageSearch, FoundX, FoundY, %x1%, %y1%, %x2%, %y2%, *12 %url%
        ImageSearch, FoundX, FoundY, 15, 84, 382, 884, *12 %url%
        ToolTip  %url% %A_Index% %ErrorLevel%
        if (ErrorLevel = 0) {
            ToolTip Image found!
            break
        } else if ( ErrorLevel = 1) {
            ; ToolTip Image NotFound!
        } else if (A_Index = 10) {
            ; 超时找不到
            break
        }
    }
}

waitSupporterPage()
{
    find( "supporter.bmp")
}

; 点击直到图片消失
; 图片寻找范围，图片url，点击范围
; 若不传点击范围，点击找到图片的位置
clickUntil(url, cx1=0, cy1=0, cx2=0, cy2=0)
{
    Loop {
        RandomSleep()
        ImageSearch, FoundX, FoundY, 15, 84, 382, 884, *30 %url%
        ToolTip  %url% %A_Index% %ErrorLevel%
        if (ErrorLevel = 0) {
            if (cx1=0)
                Click(FoundX, FoundY, FoundX+40, FoundY+20)
            else
                Click(cx1, cy1, cx2, cy2)
        } else if (ErrorLevel = 1) {
            break
        }
    }
}