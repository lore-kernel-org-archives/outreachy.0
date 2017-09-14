X-GM-THRID: 6464370677237415936
Date: Thu, 14 Sep 2017 03:02:38 -0700 (PDT)
From: aastha.gupta4104@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <e0cf38af-6358-4d96-8251-f2f9d3f16e81@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1709111249080.6947@hadrien>
References: <1505103575-5301-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1709110851330.2136@hadrien> <0bffa628-d26a-447f-9609-c6dd63b19567@googlegroups.com>
 <alpine.DEB.2.20.1709111249080.6947@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: fix multiple line
 dereference
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_24663_725625397.1505383359072"
X-Google-Token: EL6n6c0FS_csWP_wHgk0
X-Google-IP: 122.176.131.114

------=_Part_24663_725625397.1505383359072
Content-Type: multipart/alternative; 
	boundary="----=_Part_24664_1155781029.1505383359073"

------=_Part_24664_1155781029.1505383359073
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, September 11, 2017 at 4:20:04 PM UTC+5:30, Julia Lawall wrote:


On Mon, 11 Sep 2017, aastha.g...@gmail.com <javascript:> wrote: 

> 
> 
> On Monday, September 11, 2017 at 12:22:27 PM UTC+5:30, Julia Lawall 
wrote: 
> 
> 
> On Mon, 11 Sep 2017, Aastha Gupta wrote: 
> 
> > This patch fixes the checkpatch.pl warning: 
> > 
> > WARNING: Avoid multiple line dereference - 
> prefer'XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag' 
> > 
> > Signed-off-by: Aastha Gupta <aastha.g...@gmail.com> 
> > --- 
> > drivers/staging/xgifb/vb_setmode.c | 3 +-- 
> > 1 file changed, 1 insertion(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/xgifb/vb_setmode.c 
> b/drivers/staging/xgifb/vb_setmode.c 
> > index cea128b..bf69dc9 100644 
> > --- a/drivers/staging/xgifb/vb_setmode.c 
> > +++ b/drivers/staging/xgifb/vb_setmode.c 
> > @@ -5479,8 +5479,7 @@ unsigned char XGISetModeNew(struct 
> xgifb_video_info *xgifb_info, 
> > 
> ModeIdIndex)) 
> > return 0; 
> > 
> > - pVBInfo->ModeType = 
> XGI330_EModeIDTable[ModeIdIndex]. 
> > - Ext_ModeFlag 
> & ModeTypeMask; 
> > + pVBInfo->ModeType = 
> XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask; 
> 
> Put the right side of the = on a separate line, with one extra 
> tab of 
> indentation. Then the whole thing will fit in 80 characters. 
> 
> julia 
> 
won't that hinder readability.
> > 
> > pVBInfo->SetFlag = 0; 
> > pVBInfo->VBInfo = DisableCRT2Display; 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the 
> Google Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from 
> it, send an email to outreachy-kern...@googlegroups.com. 
> > To post to this group, send email to 
> outreach...@googlegroups.com. 
> > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/1505103575-5301-1-git-se 
> nd-email-aastha.gupta4104%40gmail.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> 
> Putting everything to the right of = to the next line still won't resolve 
> the warning that the line is over 80 characters. 

OK, maybe you can also put a newline before or after the &. 

julia 

> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "outreachy-kernel" group. 
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to outreachy-kern...@googlegroups.com <javascript:>. 
> To post to this group, send email to outreach...@googlegroups.com 
<javascript:>. 
> To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/0bffa628-d26a-447f-9609- 
> c6dd63b19567%40googlegroups.com. 
> For more options, visit https://groups.google.com/d/optout. 
> 
>

------=_Part_24664_1155781029.1505383359073
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, September 11, 2017 at 4:20:04 PM UTC+5:=
30, Julia Lawall wrote:<br> <br> <br>On Mon, 11 Sep 2017, <a href=3D"javasc=
ript:">aastha.g...@gmail.com</a> wrote: <br> <br>&gt; <br>&gt; <br>&gt; On =
Monday, September 11, 2017 at 12:22:27 PM UTC+5:30, Julia Lawall wrote: <br=
>&gt; <br>&gt; <br>&gt;       On Mon, 11 Sep 2017, Aastha Gupta wrote: <br>=
&gt; <br>&gt;       &gt; This patch fixes the <a href=3D"http://checkpatch.=
pl/">checkpatch.pl</a> warning: <br>&gt;       &gt; <br>&gt;       &gt; WAR=
NING: Avoid multiple line dereference - <br>&gt;       prefer&#39;XGI330_EM=
odeIDTable[ModeIdIndex].Ext_ModeFlag&#39; <br>&gt;       &gt; <br>&gt;     =
  &gt; Signed-off-by: Aastha Gupta &lt;aastha.g...@gmail.com&gt; <br>&gt;  =
     &gt; --- <br>&gt;       &gt;  drivers/staging/xgifb/vb_setmode.c | 3 +=
-- <br>&gt;       &gt;  1 file changed, 1 insertion(+), 2 deletions(-) <br>=
&gt;       &gt; <br>&gt;       &gt; diff --git a/drivers/staging/xgifb/vb_s=
etmode.c <br>&gt;       b/drivers/staging/xgifb/vb_setmode.c <br>&gt;      =
 &gt; index cea128b..bf69dc9 100644 <br>&gt;       &gt; --- a/drivers/stagi=
ng/xgifb/vb_setmode.c <br>&gt;       &gt; +++ b/drivers/staging/xgifb/vb_se=
tmode.c <br>&gt;       &gt; @@ -5479,8 +5479,7 @@ unsigned char XGISetModeN=
ew(struct <br>&gt;       xgifb_video_info *xgifb_info, <br>&gt;       &gt; =
                                                    <br>&gt;       ModeIdIn=
dex)) <br>&gt;       &gt;                                  return 0; <br>&g=
t;       &gt; <br>&gt;       &gt; -                pVBInfo-&gt;ModeType =3D=
 <br>&gt;       XGI330_EModeIDTable[ModeIdIndex]. <br>&gt;       &gt; -    =
                                            Ext_ModeFlag <br>&gt;       &am=
p; ModeTypeMask; <br>&gt;       &gt; +                pVBInfo-&gt;ModeType =
=3D <br>&gt;       XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag &amp; Mode=
TypeMask; <br>&gt; <br>&gt;       Put the right side of the =3D on a separa=
te line, with one extra <br>&gt;       tab of <br>&gt;       indentation.  =
Then the whole thing will fit in 80 characters. <br>&gt; <br>&gt;       jul=
ia <br>&gt;=C2=A0<div>won&#39;t that hinder readability.<br>&gt;       &gt;=
 <br>&gt;       &gt;                  pVBInfo-&gt;SetFlag =3D 0; <br>&gt;  =
     &gt;                  pVBInfo-&gt;VBInfo =3D DisableCRT2Display; <br>&=
gt;       &gt; -- <br>&gt;       &gt; 2.7.4 <br>&gt;       &gt; <br>&gt;   =
    &gt; -- <br>&gt;       &gt; You received this message because you are s=
ubscribed to the <br>&gt;       Google Groups &quot;outreachy-kernel&quot; =
group. <br>&gt;       &gt; To unsubscribe from this group and stop receivin=
g emails from <br>&gt;       it, send an email to outreachy-kern...@googleg=
roups.com. <br>&gt;       &gt; To post to this group, send email to <br>&gt=
;       outreach...@googlegroups.com. <br>&gt;       &gt; To view this disc=
ussion on the web visithttps://<a href=3D"http://groups.google.com/d/msgid/=
outreachy-kernel/1505103575-5301-1-git-se">groups.google.com/d/msgid/outrea=
chy-kernel/1505103575-5301-1-git-se</a> <br>&gt;       nd-email-aastha.gupt=
a4104%<a href=3D"http://40gmail.com/">40gmail.com</a>. <br>&gt;       &gt; =
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>. <br>&gt;       &gt; <br>&gt; <br>&gt; P=
utting everything to the right of =3D to the next line still won&#39;t reso=
lve <br>&gt; the warning that the line is over 80 characters. <br> <br>OK, =
maybe you can also put a newline before or after the &amp;. <br> <br>julia =
<br> <br>&gt; <br>&gt; -- <br>&gt; You received this message because you ar=
e subscribed to the Google Groups <br>&gt; &quot;outreachy-kernel&quot; gro=
up. <br>&gt; To unsubscribe from this group and stop receiving emails from =
it, send an <br>&gt; email to <a href=3D"javascript:">outreachy-kern...@goo=
glegroups.com</a>. <br>&gt; To post to this group, send email to <a href=3D=
"javascript:">outreach...@googlegroups.com</a>. <br>&gt; To view this discu=
ssion on the web visithttps://<a href=3D"http://groups.google.com/d/msgid/o=
utreachy-kernel/0bffa628-d26a-447f-9609-">groups.google.com/d/msgid/outreac=
hy-kernel/0bffa628-d26a-447f-9609-</a> <br>&gt; c6dd63b19567%<a href=3D"htt=
p://40googlegroups.com/">40googlegroups.com</a>. <br>&gt; For more options,=
 visit <a href=3D"https://groups.google.com/d/optout">https://groups.google=
.com/d/optout</a>. <br>&gt; <br>&gt;<br></div></div>
------=_Part_24664_1155781029.1505383359073--

------=_Part_24663_725625397.1505383359072--

