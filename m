X-GM-THRID: 6388469372118106112
Date: Sat, 18 Feb 2017 07:49:11 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-Id: <5192275f-5b36-4e1d-8d66-afc735f3a8f6@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702181628130.3112@hadrien>
References: <20170218152351.GA28908@singhal-Inspiron-5558>
 <alpine.DEB.2.20.1702181628130.3112@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: rtl8192e: Fix block
 comments warning
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2281_103788951.1487432952007"
X-Google-Token: EPfZocUF9ADi_nhuVeY0
X-Google-IP: 14.139.82.6

------=_Part_2281_103788951.1487432952007
Content-Type: multipart/alternative; 
	boundary="----=_Part_2282_472706734.1487432952007"

------=_Part_2282_472706734.1487432952007
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, February 18, 2017 at 9:00:51 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 18 Feb 2017, simran singhal wrote: 
>
> > Align * on a line, to conform to the kernal coding 
> > style for block comments. 
>
> It is not clear what is means to align * on a line.  What line? 
>
> What has been done is to add a space at the beginning of the line.  But 
> then the line goes over 80 characters and doesn't line up any more on the 
> right side.  I would guess that you should have gotten a new warning by 
> having gone over 80 characters. Fixing one warning should not introduce a 
> new one, especially for something purely decorative, like this. 
>
> julia 
>
>  Julia, I am not getting any new warning. It's not gone over 80 
characters. 
 

> > 
> > Signed-off-by: simran singhal <singhal...@gmail.com> 
> > --- 
> >  drivers/staging/rtl8192e/rtl819x_HT.h | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h 
> b/drivers/staging/rtl8192e/rtl819x_HT.h 
> > index 6eb018f..48d101a 100644 
> > --- a/drivers/staging/rtl8192e/rtl819x_HT.h 
> > +++ b/drivers/staging/rtl8192e/rtl819x_HT.h 
> > @@ -11,7 +11,7 @@ 
> >   * 
> >   * Contact Information: 
> >   * wlanfae <wla...@realtek.com> 
> > 
> -******************************************************************************/ 
>
> > + 
> ******************************************************************************/ 
>
> >  #ifndef _RTL819XU_HTTYPE_H_ 
> >  #define _RTL819XU_HTTYPE_H_ 
> > 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com. 
> > To post to this group, send email to outreach...@googlegroups.com. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170218152351.GA28908%40singhal-Inspiron-5558. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2282_472706734.1487432952007
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, February 18, 2017 at 9:00:51 PM UTC+5=
:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sat, 18 Feb 2017, simran singhal wrote:
<br>
<br>&gt; Align * on a line, to conform to the kernal coding
<br>&gt; style for block comments.
<br>
<br>It is not clear what is means to align * on a line. =C2=A0What line?
<br>
<br>What has been done is to add a space at the beginning of the line. =C2=
=A0But
<br>then the line goes over 80 characters and doesn&#39;t line up any more =
on the
<br>right side. =C2=A0I would guess that you should have gotten a new warni=
ng by
<br>having gone over 80 characters. Fixing one warning should not introduce=
 a
<br>new one, especially for something purely decorative, like this.
<br>
<br>julia
<br>
<br></blockquote><div>=C2=A0Julia, I am not getting any new warning. It&#39=
;s not gone over 80 characters. <br>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;pa=
dding-left: 1ex;">&gt;
<br>&gt; Signed-off-by: simran singhal &lt;<a rel=3D"nofollow">singhal...@g=
mail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8192e/<wbr>rtl819x_HT.h | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8192e/<wbr>rtl819x_HT.h b/drivers/=
staging/rtl8192e/<wbr>rtl819x_HT.h
<br>&gt; index 6eb018f..48d101a 100644
<br>&gt; --- a/drivers/staging/rtl8192e/<wbr>rtl819x_HT.h
<br>&gt; +++ b/drivers/staging/rtl8192e/<wbr>rtl819x_HT.h
<br>&gt; @@ -11,7 +11,7 @@
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Contact Information:
<br>&gt; =C2=A0 * wlanfae &lt;<a rel=3D"nofollow">wla...@realtek.com</a>&gt=
;
<br>&gt; -*****************************<wbr>******************************<=
wbr>*******************/
<br>&gt; + ******************************<wbr>*****************************=
*<wbr>******************/
<br>&gt; =C2=A0#ifndef _RTL819XU_HTTYPE_H_
<br>&gt; =C2=A0#define _RTL819XU_HTTYPE_H_
<br>&gt;
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups.co=
m</a>.
<br>&gt; To post to this group, send email to <a rel=3D"nofollow">outreach.=
..@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170218152351.GA28908%40singhal-Inspi=
ron-5558" rel=3D"nofollow">https://groups.google.com/d/<wbr>msgid/outreachy=
-kernel/<wbr>20170218152351.GA28908%<wbr>40singhal-Inspiron-5558</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" rel=3D"nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2282_472706734.1487432952007--

------=_Part_2281_103788951.1487432952007--

