X-GM-THRID: 6388469372118106112
Date: Sat, 18 Feb 2017 09:10:15 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-Id: <da5a9bc2-9a49-4fac-b7e8-eb686d14ad1e@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702181715380.3112@hadrien>
References: <20170218152351.GA28908@singhal-Inspiron-5558> <alpine.DEB.2.20.1702181628130.3112@hadrien> <5192275f-5b36-4e1d-8d66-afc735f3a8f6@googlegroups.com>
 <alpine.DEB.2.20.1702181715380.3112@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: rtl8192e: Fix block
 comments warning
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2494_923290472.1487437815808"
X-Google-Token: EPf_ocUFVEUd7MfeNWY0
X-Google-IP: 14.139.82.6

------=_Part_2494_923290472.1487437815808
Content-Type: multipart/alternative; 
	boundary="----=_Part_2495_31839165.1487437815808"

------=_Part_2495_31839165.1487437815808
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, February 18, 2017 at 9:46:48 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 18 Feb 2017, SIMRAN SINGHAL wrote: 
>
> > 
> > 
> > On Saturday, February 18, 2017 at 9:00:51 PM UTC+5:30, Julia Lawall 
> wrote: 
> > 
> > 
> >       On Sat, 18 Feb 2017, simran singhal wrote: 
> > 
> >       > Align * on a line, to conform to the kernal coding 
> >       > style for block comments. 
> > 
> >       It is not clear what is means to align * on a line.  What line? 
> > 
> >       What has been done is to add a space at the beginning of the 
> >       line.  But 
> >       then the line goes over 80 characters and doesn't line up any 
> >       more on the 
> >       right side.  I would guess that you should have gotten a new 
> >       warning by 
> >       having gone over 80 characters. Fixing one warning should not 
> >       introduce a 
> >       new one, especially for something purely decorative, like this. 
> > 
> >       julia 
> > 
> >  Julia, I am not getting any new warning. It's not gone over 80 
> characters. 
>
> OK, it looked like it would be too long on my screen. 
>
> Are the right sides of the * lines lined up after the change? 
>
> julia 
>
> In the right sides of the * lines, stars are lined up. 

> >   
> >       > 
> >       > Signed-off-by: simran singhal <singhal...@gmail.com> 
> >       > --- 
> >       >  drivers/staging/rtl8192e/rtl819x_HT.h | 2 +- 
> >       >  1 file changed, 1 insertion(+), 1 deletion(-) 
> >       > 
> >       > diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h 
> >       b/drivers/staging/rtl8192e/rtl819x_HT.h 
> >       > index 6eb018f..48d101a 100644 
> >       > --- a/drivers/staging/rtl8192e/rtl819x_HT.h 
> >       > +++ b/drivers/staging/rtl8192e/rtl819x_HT.h 
> >       > @@ -11,7 +11,7 @@ 
> >       >   * 
> >       >   * Contact Information: 
> >       >   * wlanfae <wla...@realtek.com> 
> >       
> >-************************************************************************** 
>
> >       ****/ 
> >       > 
> +*************************************************************************** 
>
> >       ***/ 
> >       >  #ifndef _RTL819XU_HTTYPE_H_ 
> >       >  #define _RTL819XU_HTTYPE_H_ 
> >       > 
> >       > -- 
> >       > 2.7.4 
> >       > 
> >       > -- 
> >       > You received this message because you are subscribed to the 
> >       Google Groups "outreachy-kernel" group. 
> >       > To unsubscribe from this group and stop receiving emails from 
> >       it, send an email to outreachy-kern...@googlegroups.com. 
> >       > To post to this group, send email to 
> >       outreach...@googlegroups.com. 
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20170218152351.GA28908%4 
> >       0singhal-Inspiron-5558. 
> >       > For more options, visit https://groups.google.com/d/optout. 
> >       > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/5192275f-5b36-4e1d-8d66- 
> > afc735f3a8f6%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >


------=_Part_2495_31839165.1487437815808
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, February 18, 2017 at 9:46:48 PM UTC+5=
:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sat, 18 Feb 2017, SIMRAN SINGHAL wrote:
<br>
<br>&gt;
<br>&gt;
<br>&gt; On Saturday, February 18, 2017 at 9:00:51 PM UTC+5:30, Julia Lawal=
l wrote:
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Sat, 18 Feb 2017, simran singhal wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Align * on a line, to conform to the ker=
nal coding
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; style for block comments.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 It is not clear what is means to align * on a=
 line. =C2=A0What line?
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 What has been done is to add a space at the b=
eginning of the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 line. =C2=A0But
<br>&gt; =C2=A0 =C2=A0 =C2=A0 then the line goes over 80 characters and doe=
sn&#39;t line up any
<br>&gt; =C2=A0 =C2=A0 =C2=A0 more on the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 right side. =C2=A0I would guess that you shou=
ld have gotten a new
<br>&gt; =C2=A0 =C2=A0 =C2=A0 warning by
<br>&gt; =C2=A0 =C2=A0 =C2=A0 having gone over 80 characters. Fixing one wa=
rning should not
<br>&gt; =C2=A0 =C2=A0 =C2=A0 introduce a
<br>&gt; =C2=A0 =C2=A0 =C2=A0 new one, especially for something purely deco=
rative, like this.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt; =C2=A0Julia, I am not getting any new warning. It&#39;s not gone o=
ver 80 characters.
<br>
<br>OK, it looked like it would be too long on my screen.
<br>
<br>Are the right sides of the * lines lined up after the change?
<br>
<br>julia
<br>
<br></blockquote><div>In the right sides of the * lines, stars are lined up=
.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-le=
ft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: simran singhal &lt;<a>sin=
ghal...@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8192e/<wbr>rtl8=
19x_HT.h | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A01 file changed, 1 insertion(+), 1 =
deletion(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8192e/<w=
br>rtl819x_HT.h
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8192e/<wbr>rtl819x_HT.h
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 6eb018f..48d101a 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8192e/<wbr>rtl8=
19x_HT.h
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8192e/<wbr>rtl8=
19x_HT.h
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -11,7 +11,7 @@
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * Contact Information:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 * wlanfae &lt;<a>wla...@realtek.c=
om</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;-****************************<wbr>*******=
***********************<wbr>****************
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ****/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +*****************************<wbr>*****=
*************************<wbr>****************
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ***/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0#ifndef _RTL819XU_HTTYPE_H_
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0#define _RTL819XU_HTTYPE_H_
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; 2.7.4
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; You received this message because you ar=
e subscribed to the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Google Groups &quot;outreachy-kernel&quot; gr=
oup.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To unsubscribe from this group and stop =
receiving emails from
<br>&gt; =C2=A0 =C2=A0 =C2=A0 it, send an email to <a>outreachy-kern...@<wb=
r>googlegroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To post to this group, send email to
<br>&gt; =C2=A0 =C2=A0 =C2=A0 <a>outreach...@googlegroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To view this discussion on the web visit=
https://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/201702=
18152351.GA28908%4" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.=
href=3D&#39;http://groups.google.com/d/msgid/outreachy-kernel/2017021815235=
1.GA28908%4&#39;;return true;" onclick=3D"this.href=3D&#39;http://groups.go=
ogle.com/d/msgid/outreachy-kernel/20170218152351.GA28908%4&#39;;return true=
;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>20170218152351.GA28=
908%4</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0singhal-Inspiron-5558.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; For more options, visit <a href=3D"https=
://groups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow" onmousedo=
wn=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;return true;=
" onclick=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;retur=
n true;">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"tFDlkKcEEgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"tFDlkKcEEgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/5192275f-5b36-4e1d-8d66-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/5192275f-5b36-4e1d-8d66-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/5192275f-5b36-4e1d-8d66-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>5192275f-5b36-4e1d-8d66-</a>
<br>&gt; afc735f3a8f6%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_2495_31839165.1487437815808--

------=_Part_2494_923290472.1487437815808--

