X-GM-THRID: 6330141489404837888
Date: Wed, 14 Sep 2016 05:35:38 -0700 (PDT)
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: bankarsandhya512@gmail.com
Message-Id: <35a8014f-c63b-46eb-87fe-e54db1d9d8a3@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1609141427430.3092@hadrien>
References: <20160914110228.GA3269@sandhya>
 <alpine.DEB.2.10.1609141427430.3092@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: adc: Add space around
 '-'
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_619_228999875.1473856538508"
X-Google-Token: EJqI5b4FYH33JLtIiVg0
X-Google-IP: 182.77.94.114

------=_Part_619_228999875.1473856538508
Content-Type: multipart/alternative; 
	boundary="----=_Part_620_783221451.1473856538509"

------=_Part_620_783221451.1473856538509
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, September 14, 2016 at 5:58:33 PM UTC+5:30, Julia Lawall wrote:
>
> Is there no other maintainer that should receive this? 
>
> julia 
>
> On Wed, 14 Sep 2016, Sandhya Bankar wrote: 
>
> > Add space around operator '-' . 
> > This patch is found by checkpatch.pl script . 
> > CHECK: spaces preferred around that '-' (ctx:VxV) . 
> > 
> > Signed-off-by: Sandhya Bankar <bankarsa...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/iio/adc/ad7192.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/iio/adc/ad7192.c 
> b/drivers/staging/iio/adc/ad7192.c 
> > index 1cf6b79..5688b29 100644 
> > --- a/drivers/staging/iio/adc/ad7192.c 
> > +++ b/drivers/staging/iio/adc/ad7192.c 
> > @@ -391,7 +391,7 @@ ad7192_show_scale_available(struct device *dev, 
> >  } 
> > 
> >  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available, 
> > -                             in_voltage-voltage_scale_available, 
> > +                             in_voltage - voltage_scale_available, 
> >                               S_IRUGO, ad7192_show_scale_available, 
> NULL, 0); 
> > 
> >  static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO, 
> > -- 
> > 1.8.2.3 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20160914110228.GA3269%40sandhya. 
>
> > For more options, visit https://groups.google.com/d/optout. 
>




 Thanks for pointing out. I will do that with v2.

------=_Part_620_783221451.1473856538509
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, September 14, 2016 at 5:58:33 PM UTC=
+5:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin=
: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Is t=
here no other maintainer that should receive this?
<br>
<br>julia
<br>
<br>On Wed, 14 Sep 2016, Sandhya Bankar wrote:
<br>
<br>&gt; Add space around operator &#39;-&#39; .
<br>&gt; This patch is found by <a href=3D"http://checkpatch.pl" target=3D"=
_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.=
com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3d=
D\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return tru=
e;">checkpatch.pl</a> script .
<br>&gt; CHECK: spaces preferred around that &#39;-&#39; (ctx:VxV) .
<br>&gt;
<br>&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"Deb_WSeZBwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">bankarsa...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/iio/adc/<wbr>ad7192.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/iio/adc/<wbr>ad7192.c b/drivers/stagi=
ng/iio/adc/<wbr>ad7192.c
<br>&gt; index 1cf6b79..5688b29 100644
<br>&gt; --- a/drivers/staging/iio/adc/<wbr>ad7192.c
<br>&gt; +++ b/drivers/staging/iio/adc/<wbr>ad7192.c
<br>&gt; @@ -391,7 +391,7 @@ ad7192_show_scale_available(<wbr>struct device=
 *dev,
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0static IIO_DEVICE_ATTR_NAMED(in_v_m_<wbr>v_scale_available,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 in_voltage-voltage_scale_<wbr>available,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 in_voltage - voltage_scale_available,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 S_IRUGO, ad7192_show_scale_available, NULL, 0);
<br>&gt;
<br>&gt; =C2=A0static IIO_DEVICE_ATTR(in_voltage_<wbr>scale_available, S_IR=
UGO,
<br>&gt; --
<br>&gt; 1.8.2.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"Deb_WSeZBwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"Deb_WSeZBwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20160914110228.GA3269%40sandhya" targe=
t=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://group=
s.google.com/d/msgid/outreachy-kernel/20160914110228.GA3269%40sandhya&#39;;=
return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d/msgid=
/outreachy-kernel/20160914110228.GA3269%40sandhya&#39;;return true;">https:=
//groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20160914110228.GA326=
9%<wbr>40sandhya</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br></blockquote><div><br><br><br><br>=C2=A0Thanks for pointing out. I will=
 do that with v2.<br></div></div>
------=_Part_620_783221451.1473856538509--

------=_Part_619_228999875.1473856538508--

