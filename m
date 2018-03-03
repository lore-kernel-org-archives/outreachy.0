X-GM-THRID: 6528466201738215424
Date: Fri, 2 Mar 2018 20:00:09 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <a3e7f438-5d31-491c-a462-89757352f077@googlegroups.com>
In-Reply-To: <CAO393AD6M9K6GYrM35z2-xu+hwZs4BANThtAbVYzN543VS_TnQ@mail.gmail.com>
References: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>
 <1520026941-16548-2-git-send-email-arushisinghal19971997@gmail.com>
 <CAO393AD6M9K6GYrM35z2-xu+hwZs4BANThtAbVYzN543VS_TnQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8712: Remove
 multiple blank line(s)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_9469_991144668.1520049609607"
X-Google-Token: EMm76NQFOBb5anfAgZU0
X-Google-IP: 14.139.82.6

------=_Part_9469_991144668.1520049609607
Content-Type: multipart/alternative; 
	boundary="----=_Part_9470_2065124184.1520049609608"

------=_Part_9470_2065124184.1520049609608
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, March 3, 2018 at 3:19:17 AM UTC+5:30, Shraddha Barke wrote:
>
>
>
> On Fri, Mar 2, 2018 at 10:42 PM, Arushi Singhal <arushising...@gmail.com> 
> wrote:
>
>> From: Arushi Singhal <arushi...@gmail.com>
>>
>> Remove extra blank line(s) that were causing checkpatch issues.
>>
>> Signed-off-by: Arushi Singhal <arushising...@gmail.com>
>>
>
> Your From and Signed-off emails are still different (maybe check your git 
> config) Regarding the commit message, you should write why you removed
> the extra lines say "to adhere to Linux coding style", not because they 
> were checkpatch errors. Give credit to the tool.
> The change looks fine to me.
>
 
Hi  Shraddha
Yes, I mentioned in my previous mail to ignore this series. I made changes 
to my git config but the problem occurred may be because for some commits, 
I tried to change the signed off manually.  
I'll take care of the suggestions in next version. 
Best
Arushi

>  
>
>> ---
>>  drivers/staging/rtl8712/os_intfs.c                 | 1 -
>>  drivers/staging/rtl8712/rtl8712_bitdef.h           | 1 -
>>  drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h   | 2 --
>>  drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h | 1 -
>>  drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h | 2 --
>>  drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h  | 1 -
>>  drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h  | 2 --
>>  drivers/staging/rtl8712/rtl8712_gp_regdef.h        | 1 -
>>  drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h | 1 -
>>  9 files changed, 12 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8712/os_intfs.c 
>> b/drivers/staging/rtl8712/os_intfs.c
>> index d6d27da..ff4e451 100644
>> --- a/drivers/staging/rtl8712/os_intfs.c
>> +++ b/drivers/staging/rtl8712/os_intfs.c
>> @@ -347,7 +347,6 @@ u8 r8712_free_drv_sw(struct _adapter *padapter)
>>         return _SUCCESS;
>>  }
>>
>> -
>>  static void enable_video_mode(struct _adapter *padapter, int cbw40_value)
>>  {
>>         /*   bit 8:
>> diff --git a/drivers/staging/rtl8712/rtl8712_bitdef.h 
>> b/drivers/staging/rtl8712/rtl8712_bitdef.h
>> index bff57a8..dee35fe 100644
>> --- a/drivers/staging/rtl8712/rtl8712_bitdef.h
>> +++ b/drivers/staging/rtl8712/rtl8712_bitdef.h
>> @@ -18,7 +18,6 @@
>>   *
>>   
>> ******************************************************************************/
>>
>> -
>>  #ifndef __RTL8712_BITDEF_H__
>>  #define __RTL8712_BITDEF_H__
>>
>> diff --git a/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h 
>> b/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
>> index 9374f1c..8df42a7 100644
>> --- a/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
>> +++ b/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
>> @@ -20,7 +20,6 @@
>>  #ifndef __RTL8712_CMDCTRL_REGDEF_H__
>>  #define __RTL8712_CMDCTRL_REGDEF_H__
>>
>> -
>>  #define CR                     (RTL8712_CMDCTRL_ + 0x0000)
>>  #define TXPAUSE                        (RTL8712_CMDCTRL_ + 0x0002)
>>  #define TCR                    (RTL8712_CMDCTRL_ + 0x0004)
>> @@ -29,6 +28,5 @@
>>  #define SYSF_CFG               (RTL8712_CMDCTRL_ + 0x000D)
>>  #define MBIDCTRL               (RTL8712_CMDCTRL_ + 0x000E)
>>
>> -
>>  #endif /* __RTL8712_CMDCTRL_REGDEF_H__ */
>>
>> diff --git a/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h 
>> b/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
>> index 8bd4837..4b34367 100644
>> --- a/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
>> +++ b/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
>> @@ -51,5 +51,4 @@
>>  /*FDLOCKFLAG1*/
>>  #define        _LOCKFLAG1_MSK          0x03
>>
>> -
>>  #endif /* __RTL8712_DEBUGCTRL_BITDEF_H__ */
>> diff --git a/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h 
>> b/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
>> index 43630bb..d7c964d 100644
>> --- a/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
>> +++ b/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
>> @@ -41,7 +41,5 @@
>>  #define TRXPKTBUF_DBG_CTRL     (RTL8712_DEBUGCTRL_ + 0x38)
>>  #define DPLL_MON               (RTL8712_DEBUGCTRL_ + 0x3A)
>>
>> -
>> -
>>  #endif /* __RTL8712_DEBUGCTRL_REGDEF_H__ */
>>
>> diff --git a/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h 
>> b/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
>> index c564dc8..bd82404 100644
>> --- a/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
>> +++ b/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
>> @@ -140,6 +140,5 @@
>>  /*TXFF_PG_NUM*/
>>  #define        _TXFF_PG_NUM_MSK        0x0FFF
>>
>> -
>>  #endif /*      __RTL8712_FIFOCTRL_BITDEF_H__ */
>>
>> diff --git a/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h 
>> b/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
>> index 29b89c4..6d52738 100644
>> --- a/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
>> +++ b/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
>> @@ -71,6 +71,4 @@
>>  #define TXQ_PGADD              (RTL8712_FIFOCTRL_ + 0xB3)
>>  #define TXFF_PG_NUM            (RTL8712_FIFOCTRL_ + 0xB4)
>>
>> -
>> -
>>  #endif /* __RTL8712_FIFOCTRL_REGDEF_H__ */
>> diff --git a/drivers/staging/rtl8712/rtl8712_gp_regdef.h 
>> b/drivers/staging/rtl8712/rtl8712_gp_regdef.h
>> index 8fc68f6..a037936 100644
>> --- a/drivers/staging/rtl8712/rtl8712_gp_regdef.h
>> +++ b/drivers/staging/rtl8712/rtl8712_gp_regdef.h
>> @@ -37,6 +37,5 @@
>>  #define PHY_REG_RPT            (RTL8712_GP_ + 0x13)
>>  #define PHY_REG_DATA           (RTL8712_GP_ + 0x14)
>>
>> -
>>  #endif /*__RTL8712_GP_REGDEF_H__ */
>>
>> diff --git a/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h 
>> b/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
>> index 49598c3..2a561d2 100644
>> --- a/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
>> +++ b/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
>> @@ -53,6 +53,5 @@
>>  #define        _VODOK                                  BIT(1)
>>  #define        _RXOK                                   BIT(0)
>>
>> -
>>  #endif /*__RTL8712_INTERRUPT_BITDEF_H__*/
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups 
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an 
>> email to outreachy-kern...@googlegroups.com.
>> To post to this group, send email to outreach...@googlegroups.com.
>> To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/outreachy-kernel/1520026941-16548-2-git-send-email-arushisinghal19971997%40gmail.com
>> .
>> For more options, visit https://groups.google.com/d/optout.
>>
>
>
>
> -- 
> Shraddha
>

------=_Part_9470_2065124184.1520049609608
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, March 3, 2018 at 3:19:17 AM UTC+5:30,=
 Shraddha Barke wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=
=3D"ltr"><br><div><br><div class=3D"gmail_quote">On Fri, Mar 2, 2018 at 10:=
42 PM, Arushi Singhal <span dir=3D"ltr">&lt;<a rel=3D"nofollow">arushising.=
..@gmail.<wbr>com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">F=
rom: Arushi Singhal &lt;<a rel=3D"nofollow">arushi...@gmail.com</a>&gt;<br>
<br>
Remove extra blank line(s) that were causing checkpatch issues.<br>
<br>
Signed-off-by: Arushi Singhal &lt;<a rel=3D"nofollow">arushising...@gmail.<=
wbr>com</a>&gt;<br></blockquote><div><br></div><div>Your From and Signed-of=
f emails are still different (maybe check your git config) Regarding the co=
mmit message, you should write why you removed</div><div>the extra lines sa=
y &quot;to adhere to Linux coding style&quot;, not because they were checkp=
atch errors. Give credit to the tool.</div><div>The change looks fine to me=
.</div></div></div></div></blockquote><div>=C2=A0<br>Hi=C2=A0 Shraddha<br>Y=
es, I mentioned in my previous mail to ignore this series. I made changes t=
o my git config but the problem occurred may be because for some commits, I=
 tried to change the signed off manually.=C2=A0 <br>I&#39;ll take care of t=
he suggestions in next version. <br>Best<br>Arushi<br>

             </div><blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D=
"ltr"><div><div class=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
---<br>
=C2=A0drivers/staging/rtl8712/os_<wbr>intfs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 1 -<br>
=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_bitdef.h=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 1 -<br>
=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_cmdctrl_regdef.h=C2=A0 =C2=A0| 2=
 --<br>
=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_bitdef.h | 1 -<br>
=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_regdef.h | 2 --<br>
=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_bitdef.h=C2=A0 | 1 -<br=
>
=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_regdef.h=C2=A0 | 2 --<b=
r>
=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_gp_regdef.h=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 1 -<br>
=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_interrupt_bitdef.h | 1 -<br>
=C2=A09 files changed, 12 deletions(-)<br>
<br>
diff --git a/drivers/staging/rtl8712/os_<wbr>intfs.c b/drivers/staging/rtl8=
712/os_<wbr>intfs.c<br>
index d6d27da..ff4e451 100644<br>
--- a/drivers/staging/rtl8712/os_<wbr>intfs.c<br>
+++ b/drivers/staging/rtl8712/os_<wbr>intfs.c<br>
@@ -347,7 +347,6 @@ u8 r8712_free_drv_sw(struct _adapter *padapter)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return _SUCCESS;<br>
=C2=A0}<br>
<br>
-<br>
=C2=A0static void enable_video_mode(struct _adapter *padapter, int cbw40_va=
lue)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /*=C2=A0 =C2=A0bit 8:<br>
diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_bitdef.h b/drivers/stagin=
g/rtl8712/<wbr>rtl8712_bitdef.h<br>
index bff57a8..dee35fe 100644<br>
--- a/drivers/staging/rtl8712/<wbr>rtl8712_bitdef.h<br>
+++ b/drivers/staging/rtl8712/<wbr>rtl8712_bitdef.h<br>
@@ -18,7 +18,6 @@<br>
=C2=A0 *<br>
=C2=A0 ******************************<wbr>******************************<wb=
r>******************/<br>
<br>
-<br>
=C2=A0#ifndef __RTL8712_BITDEF_H__<br>
=C2=A0#define __RTL8712_BITDEF_H__<br>
<br>
diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_cmdctrl_regdef.h b/driver=
s/staging/rtl8712/<wbr>rtl8712_cmdctrl_regdef.h<br>
index 9374f1c..8df42a7 100644<br>
--- a/drivers/staging/rtl8712/<wbr>rtl8712_cmdctrl_regdef.h<br>
+++ b/drivers/staging/rtl8712/<wbr>rtl8712_cmdctrl_regdef.h<br>
@@ -20,7 +20,6 @@<br>
=C2=A0#ifndef __RTL8712_CMDCTRL_REGDEF_H__<br>
=C2=A0#define __RTL8712_CMDCTRL_REGDEF_H__<br>
<br>
-<br>
=C2=A0#define CR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(RTL8712_CMDCTRL_ + 0x0000)<br>
=C2=A0#define TXPAUSE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (RTL8712_CMDCTRL_ + 0x0002)<br>
=C2=A0#define TCR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (RTL8712_CMDCTRL_ + 0x0004)<br>
@@ -29,6 +28,5 @@<br>
=C2=A0#define SYSF_CFG=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(RTL8712_CMDCTRL_ + 0x000D)<br>
=C2=A0#define MBIDCTRL=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(RTL8712_CMDCTRL_ + 0x000E)<br>
<br>
-<br>
=C2=A0#endif /* __RTL8712_CMDCTRL_REGDEF_H__ */<br>
<br>
diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_bitdef.h b/driv=
ers/staging/rtl8712/<wbr>rtl8712_debugctrl_bitdef.h<br>
index 8bd4837..4b34367 100644<br>
--- a/drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_bitdef.h<br>
+++ b/drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_bitdef.h<br>
@@ -51,5 +51,4 @@<br>
=C2=A0/*FDLOCKFLAG1*/<br>
=C2=A0#define=C2=A0 =C2=A0 =C2=A0 =C2=A0 _LOCKFLAG1_MSK=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 0x03<br>
<br>
-<br>
=C2=A0#endif /* __RTL8712_DEBUGCTRL_BITDEF_H__ */<br>
diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_regdef.h b/driv=
ers/staging/rtl8712/<wbr>rtl8712_debugctrl_regdef.h<br>
index 43630bb..d7c964d 100644<br>
--- a/drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_regdef.h<br>
+++ b/drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_regdef.h<br>
@@ -41,7 +41,5 @@<br>
=C2=A0#define TRXPKTBUF_DBG_CTRL=C2=A0 =C2=A0 =C2=A0(RTL8712_DEBUGCTRL_ + 0=
x38)<br>
=C2=A0#define DPLL_MON=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(RTL8712_DEBUGCTRL_ + 0x3A)<br>
<br>
-<br>
-<br>
=C2=A0#endif /* __RTL8712_DEBUGCTRL_REGDEF_H__ */<br>
<br>
diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_bitdef.h b/drive=
rs/staging/rtl8712/<wbr>rtl8712_fifoctrl_bitdef.h<br>
index c564dc8..bd82404 100644<br>
--- a/drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_bitdef.h<br>
+++ b/drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_bitdef.h<br>
@@ -140,6 +140,5 @@<br>
=C2=A0/*TXFF_PG_NUM*/<br>
=C2=A0#define=C2=A0 =C2=A0 =C2=A0 =C2=A0 _TXFF_PG_NUM_MSK=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0x0FFF<br>
<br>
-<br>
=C2=A0#endif /*=C2=A0 =C2=A0 =C2=A0 __RTL8712_FIFOCTRL_BITDEF_H__ */<br>
<br>
diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_regdef.h b/drive=
rs/staging/rtl8712/<wbr>rtl8712_fifoctrl_regdef.h<br>
index 29b89c4..6d52738 100644<br>
--- a/drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_regdef.h<br>
+++ b/drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_regdef.h<br>
@@ -71,6 +71,4 @@<br>
=C2=A0#define TXQ_PGADD=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (RT=
L8712_FIFOCTRL_ + 0xB3)<br>
=C2=A0#define TXFF_PG_NUM=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (RTL8712=
_FIFOCTRL_ + 0xB4)<br>
<br>
-<br>
-<br>
=C2=A0#endif /* __RTL8712_FIFOCTRL_REGDEF_H__ */<br>
diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_gp_regdef.h b/drivers/sta=
ging/rtl8712/<wbr>rtl8712_gp_regdef.h<br>
index 8fc68f6..a037936 100644<br>
--- a/drivers/staging/rtl8712/<wbr>rtl8712_gp_regdef.h<br>
+++ b/drivers/staging/rtl8712/<wbr>rtl8712_gp_regdef.h<br>
@@ -37,6 +37,5 @@<br>
=C2=A0#define PHY_REG_RPT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (RTL8712=
_GP_ + 0x13)<br>
=C2=A0#define PHY_REG_DATA=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(RTL8712=
_GP_ + 0x14)<br>
<br>
-<br>
=C2=A0#endif /*__RTL8712_GP_REGDEF_H__ */<br>
<br>
diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_interrupt_bitdef.h b/driv=
ers/staging/rtl8712/<wbr>rtl8712_interrupt_bitdef.h<br>
index 49598c3..2a561d2 100644<br>
--- a/drivers/staging/rtl8712/<wbr>rtl8712_interrupt_bitdef.h<br>
+++ b/drivers/staging/rtl8712/<wbr>rtl8712_interrupt_bitdef.h<br>
@@ -53,6 +53,5 @@<br>
=C2=A0#define=C2=A0 =C2=A0 =C2=A0 =C2=A0 _VODOK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 BIT(1)<br>
=C2=A0#define=C2=A0 =C2=A0 =C2=A0 =C2=A0 _RXOK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0BIT(0)<br>
<br>
-<br>
=C2=A0#endif /*__RTL8712_INTERRUPT_BITDEF_<wbr>H__*/<br>
<span><font color=3D"#888888"><br>
--<br>
2.7.4<br>
<br>
--<br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.<br=
>
To post to this group, send email to <a rel=3D"nofollow">outreach...@google=
groups.<wbr>com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/1520026941-16548-2-git-send-email-arushisinghal=
19971997%40gmail.com" rel=3D"nofollow">https://groups.google.com/d/<wbr>msg=
id/outreachy-kernel/<wbr>1520026941-16548-2-git-send-<wbr>email-arushisingh=
al19971997%<wbr>40gmail.com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"nofollow">https://groups.google.com/d/<wbr>optout</a>.<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div><div dir=3D"ltr">Shraddha<br></div></div>
</div></div>
</blockquote></div>
------=_Part_9470_2065124184.1520049609608--

------=_Part_9469_991144668.1520049609607--

