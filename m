X-GM-THRID: 6528173745715019776
Date: Fri, 2 Mar 2018 12:11:55 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <13357f14-fb50-45cd-bbc0-930b39468f5b@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1803020732170.2214@hadrien>
References: <20180302024749.GA16440@seema-Inspiron-15-3567>
 <alpine.DEB.2.20.1803020732170.2214@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Fixed 'tabstop'
 coding style warning
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8153_1589700180.1520021515640"
X-Google-Token: EIvg5tQFR6bA1JdrCC40
X-Google-IP: 14.139.82.6

------=_Part_8153_1589700180.1520021515640
Content-Type: multipart/alternative; 
	boundary="----=_Part_8154_1122194655.1520021515641"

------=_Part_8154_1122194655.1520021515641
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, March 2, 2018 at 12:03:12 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Fri, 2 Mar 2018, Arushi Singhal wrote: 
>
> > Replace a mix of tabs and spaces indentation by tabs only. 
> > 
> > Fixed checkpatch warning "Statements should start on a tabstop" in 
> > rtl8712 module. 
>
> There is no need to say "in rtl8712 module".  That is apparent from the 
> subject line and the diffstat just below. 
>
> Hello Julia
As you pointed out in my recent patch that my signed off email ID is not 
same as one in the from line. Should I resend this one too as here is the 
same case?

Best
Arushi

> > 
> > Signed-off-by: Arushi Singhal <arushi...@gmail.com <javascript:>> 
>
> Acked-by: Julia Lawall <julia....@lip6.fr <javascript:>> 
>
>
> > --- 
> >  drivers/staging/rtl8712/drv_types.h | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/rtl8712/drv_types.h 
> b/drivers/staging/rtl8712/drv_types.h 
> > index ae79047..ede99e9 100644 
> > --- a/drivers/staging/rtl8712/drv_types.h 
> > +++ b/drivers/staging/rtl8712/drv_types.h 
> > @@ -161,7 +161,7 @@ struct _adapter { 
> >          u8        EepromAddressSize; 
> >          u8        hw_init_completed; 
> >          struct task_struct *cmdThread; 
> > -         pid_t evtThread; 
> > +        pid_t evtThread; 
> >          struct task_struct *xmitThread; 
> >          pid_t recvThread; 
> >          uint (*dvobj_init)(struct _adapter *adapter); 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20180302024749.GA16440%40seema-Inspiron-15-3567. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_8154_1122194655.1520021515641
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, March 2, 2018 at 12:03:12 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Fri, 2 Mar 2018, Arushi Singhal wrote:
<br>
<br>&gt; Replace a mix of tabs and spaces indentation by tabs only.
<br>&gt;
<br>&gt; Fixed checkpatch warning &quot;Statements should start on a tabsto=
p&quot; in
<br>&gt; rtl8712 module.
<br>
<br>There is no need to say &quot;in rtl8712 module&quot;. =C2=A0That is ap=
parent from the
<br>subject line and the diffstat just below.
<br>
<br></blockquote><div>Hello Julia<br>As you pointed out in my recent patch =
that my signed off email ID is not same as one in the from line. Should I r=
esend this one too as here is the same case?<br><br>Best<br>Arushi<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bo=
rder-left: 1px #ccc solid;padding-left: 1ex;">&gt;
<br>&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"SAc-Y8v9CwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">arushi...@gmail.com</a>&gt;
<br>
<br>Acked-by: Julia Lawall &lt;<a href=3D"javascript:" target=3D"_blank" gd=
f-obfuscated-mailto=3D"SAc-Y8v9CwAJ" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javas=
cript:&#39;;return true;">julia....@lip6.fr</a>&gt;
<br>
<br>
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8712/drv_<wbr>types.h | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8712/drv_<wbr>types.h b/drivers/st=
aging/rtl8712/drv_<wbr>types.h
<br>&gt; index ae79047..ede99e9 100644
<br>&gt; --- a/drivers/staging/rtl8712/drv_<wbr>types.h
<br>&gt; +++ b/drivers/staging/rtl8712/drv_<wbr>types.h
<br>&gt; @@ -161,7 +161,7 @@ struct _adapter {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>EepromAddressSize;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0hw_init_<wbr>completed;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct task_=
struct *cmdThread;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pid_t evtThread;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pid_t evtThread;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct task_=
struct *xmitThread;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pid_t recvTh=
read;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0uint (*dvobj=
_init)(struct _adapter *adapter);
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"SAc-Y8v9CwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"SAc-Y8v9CwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20180302024749.GA16440%40seema-Inspiro=
n-15-3567" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#=
39;https://groups.google.com/d/msgid/outreachy-kernel/20180302024749.GA1644=
0%40seema-Inspiron-15-3567&#39;;return true;" onclick=3D"this.href=3D&#39;h=
ttps://groups.google.com/d/msgid/outreachy-kernel/20180302024749.GA16440%40=
seema-Inspiron-15-3567&#39;;return true;">https://groups.google.com/d/<wbr>=
msgid/outreachy-kernel/<wbr>20180302024749.GA16440%<wbr>40seema-Inspiron-15=
-3567</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_8154_1122194655.1520021515641--

------=_Part_8153_1589700180.1520021515640--

