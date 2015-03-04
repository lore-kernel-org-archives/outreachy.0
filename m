X-GM-THRID: 6557663232000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7a08b91082310616
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.100.103 with SMTP id ex7mr4321357vdb.6.1425472324120;
        Wed, 04 Mar 2015 04:32:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.35 with SMTP id rt3ls221451obb.53.gmail; Wed, 04 Mar
 2015 04:32:03 -0800 (PST)
X-Received: by 10.182.47.228 with SMTP id g4mr4539889obn.5.1425472323871;
        Wed, 04 Mar 2015 04:32:03 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-ob0-x22e.google.com (mail-ob0-x22e.google.com. [2607:f8b0:4003:c01::22e])
        by gmr-mx.google.com with ESMTPS id g3si414283igr.2.2015.03.04.04.32.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 04:32:03 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) client-ip=2607:f8b0:4003:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by obcuz6 with SMTP id uz6so6425503obc.9
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 04:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=MYDU3qq6k0dxUgM2IDOfi7DEH1Xsft/wadlS2hCtOpY=;
        b=EIXDLT8o98/G+MwjFo1lxbz5XLyVDXV3h2fYo9E7BUVVNmyUQO2yQ3C4obFWdoO/cR
         yaQbECdG9pUOG2QNQrRgQXuO9HiAHUUUZkFaR+pS4T4Uw6aREt/ywW7IrrxCQh38g4KS
         y3TVGhjkuqPyzPF74gVUv9LWxCvZrZjf7H6FYlGIUD39hAUuS0ux3z3EgggqfbnYs0zd
         1SMIdI7LuOsbyqVPWpL71jDfbqVF+TkkAfP0AKK3ppNavAiCNLzQvsYVVPRAP/OEGPFs
         NuFncV7JTpxabV0vRAc5MjSZeoFKE914dvRXYrcXjWMno6Hb1CBkeiy5nEsfR2dtqQbH
         YYow==
MIME-Version: 1.0
X-Received: by 10.202.23.201 with SMTP id 70mr2646531oix.130.1425472323166;
 Wed, 04 Mar 2015 04:32:03 -0800 (PST)
Received: by 10.76.159.168 with HTTP; Wed, 4 Mar 2015 04:32:03 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1503040706130.3976@hadrien>
References: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>
	<1425469442-32412-6-git-send-email-somyaanand214@gmail.com>
	<alpine.DEB.2.10.1503040706130.3976@hadrien>
Date: Wed, 4 Mar 2015 18:02:03 +0530
Message-ID: <CANPzvBDe=Ek+=ui=_fbwHnMuUewchpUpiJHTfPEYLYsh-C6+GA@mail.gmail.com>
Subject: Re: [PATCH 5/6] Staging: rtl8188eu: Remove redundant local variable
From: Somya Anand <somyaanand214@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113e33b075b16f051075a310

--001a113e33b075b16f051075a310
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 4, 2015 at 5:37 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> This patch and 6/6 have as afar as I can see the same subject line.  Every
> patch must have a different subject line.  One solution could be to merge
> two patches on the same driver.  Another could be to find another way to
> refer to the code.

>Okay, I will send the another version of these patches.

> You may use git log --oneline {path} to find what
> others have done.
>
> julia
>
> Thanks
somya

> On Wed, 4 Mar 2015, Somya Anand wrote:
>
> > This patch removes a redundant variable "val" and adds
> > inline return statements. It also adds a default case
> > to the switch statement which returns 0 to keep the logic
> > intact.
> >
> > This issue is identified by the following coccinelle script.
> > @@
> > expression ret;
> > identifier f;
> > @@
> >
> > -ret =
> > +return
> >      f(...);
> > -return ret;
> >
> > Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 41
> +++++++++-----------------
> >  1 file changed, 14 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> > index d5ebd52..9939448 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> > @@ -136,47 +136,34 @@ u8 judge_network_type(struct adapter *padapter,
> unsigned char *rate, int ratelen
> >
> >  static unsigned char ratetbl_val_2wifirate(unsigned char rate)
> >  {
> > -     unsigned char val = 0;
> > -
> >       switch (rate & 0x7f) {
> >       case 0:
> > -             val = IEEE80211_CCK_RATE_1MB;
> > -             break;
> > +             return IEEE80211_CCK_RATE_1MB;
> >       case 1:
> > -             val = IEEE80211_CCK_RATE_2MB;
> > -             break;
> > +             return IEEE80211_CCK_RATE_2MB;
> >       case 2:
> > -             val = IEEE80211_CCK_RATE_5MB;
> > -             break;
> > +             return IEEE80211_CCK_RATE_5MB;
> >       case 3:
> > -             val = IEEE80211_CCK_RATE_11MB;
> > -             break;
> > +             return IEEE80211_CCK_RATE_11MB;
> >       case 4:
> > -             val = IEEE80211_OFDM_RATE_6MB;
> > -             break;
> > +             return IEEE80211_OFDM_RATE_6MB;
> >       case 5:
> > -             val = IEEE80211_OFDM_RATE_9MB;
> > -             break;
> > +             return IEEE80211_OFDM_RATE_9MB;
> >       case 6:
> > -             val = IEEE80211_OFDM_RATE_12MB;
> > -             break;
> > +             return IEEE80211_OFDM_RATE_12MB;
> >       case 7:
> > -             val = IEEE80211_OFDM_RATE_18MB;
> > -             break;
> > +             return IEEE80211_OFDM_RATE_18MB;
> >       case 8:
> > -             val = IEEE80211_OFDM_RATE_24MB;
> > -             break;
> > +             return IEEE80211_OFDM_RATE_24MB;
> >       case 9:
> > -             val = IEEE80211_OFDM_RATE_36MB;
> > -             break;
> > +             return IEEE80211_OFDM_RATE_36MB;
> >       case 10:
> > -             val = IEEE80211_OFDM_RATE_48MB;
> > -             break;
> > +             return IEEE80211_OFDM_RATE_48MB;
> >       case 11:
> > -             val = IEEE80211_OFDM_RATE_54MB;
> > -             break;
> > +             return IEEE80211_OFDM_RATE_54MB;
> > +     default:
> > +             return 0;
> >       }
> > -     return val;
> >  }
> >
> >  static int is_basicrate(struct adapter *padapter, unsigned char rate)
> > --
> > 1.9.1
> >
> >
>

--001a113e33b075b16f051075a310
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Mar 4, 2015 at 5:37 PM, Julia Lawall <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This patch and 6/6 =
have as afar as I can see the same subject line.=C2=A0 Every<br>
patch must have a different subject line.=C2=A0 One solution could be to me=
rge<br>
two patches on the same driver.=C2=A0 Another could be to find another way =
to<br>
refer to the code.=C2=A0</blockquote><div>&gt;Okay, I will send the another=
 version of these patches.=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"> You m=
ay use git log --oneline {path} to find what<br>
others have done.<br>
<span class=3D"im HOEnZb"><br>
julia<br><br></span></blockquote><div>Thanks</div><div>somya=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><span class=3D"im HOEnZb">
On Wed, 4 Mar 2015, Somya Anand wrote:<br>
<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">&gt; This patch removes a re=
dundant variable &quot;val&quot; and adds<br>
&gt; inline return statements. It also adds a default case<br>
&gt; to the switch statement which returns 0 to keep the logic<br>
&gt; intact.<br>
&gt;<br>
&gt; This issue is identified by the following coccinelle script.<br>
&gt; @@<br>
&gt; expression ret;<br>
&gt; identifier f;<br>
&gt; @@<br>
&gt;<br>
&gt; -ret =3D<br>
&gt; +return<br>
&gt;=C2=A0 =C2=A0 =C2=A0 f(...);<br>
&gt; -return ret;<br>
&gt;<br>
&gt; Signed-off-by: Somya Anand &lt;<a href=3D"mailto:somyaanand214@gmail.c=
om">somyaanand214@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 41 +++++++++---=
--------------<br>
&gt;=C2=A0 1 file changed, 14 insertions(+), 27 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/=
staging/rtl8188eu/core/rtw_wlan_util.c<br>
&gt; index d5ebd52..9939448 100644<br>
&gt; --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c<br>
&gt; +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c<br>
&gt; @@ -136,47 +136,34 @@ u8 judge_network_type(struct adapter *padapter, =
unsigned char *rate, int ratelen<br>
&gt;<br>
&gt;=C2=A0 static unsigned char ratetbl_val_2wifirate(unsigned char rate)<b=
r>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0unsigned char val =3D 0;<br>
&gt; -<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (rate &amp; 0x7f) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 0:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_CCK=
_RATE_1MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_CCK_=
RATE_1MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 1:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_CCK=
_RATE_2MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_CCK_=
RATE_2MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 2:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_CCK=
_RATE_5MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_CCK_=
RATE_5MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 3:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_CCK=
_RATE_11MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_CCK_=
RATE_11MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 4:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_OFD=
M_RATE_6MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_OFDM=
_RATE_6MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 5:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_OFD=
M_RATE_9MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_OFDM=
_RATE_9MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 6:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_OFD=
M_RATE_12MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_OFDM=
_RATE_12MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 7:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_OFD=
M_RATE_18MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_OFDM=
_RATE_18MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 8:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_OFD=
M_RATE_24MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_OFDM=
_RATE_24MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 9:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_OFD=
M_RATE_36MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_OFDM=
_RATE_36MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 10:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_OFD=
M_RATE_48MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_OFDM=
_RATE_48MB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 11:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D IEEE80211_OFD=
M_RATE_54MB;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IEEE80211_OFDM=
_RATE_54MB;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0default:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return val;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static int is_basicrate(struct adapter *padapter, unsigned char =
rate)<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div>

--001a113e33b075b16f051075a310--

