X-GM-THRID: 6330315371322540032
X-Received: by 10.200.37.77 with SMTP id 13mr7890422qtn.10.1473968321980;
        Thu, 15 Sep 2016 12:38:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.17 with SMTP id n17ls3061656ota.40.gmail; Thu, 15 Sep
 2016 12:38:41 -0700 (PDT)
X-Received: by 10.157.46.36 with SMTP id q33mr7833431otb.40.1473968321576;
        Thu, 15 Sep 2016 12:38:41 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id m82si387600ywm.2.2016.09.15.12.38.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:38:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id 11so1950298qtc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=7TBTyNPWnqIaCyiv2Tgv69xUcsvSx7sXtkGUx1/Y05o=;
        b=daJUVHFw0kCY2lmg2SGgP9Kl8ZyDZx654zdBkMTHRKoM7w2dqyN/VHEoAzQydNvgYU
         y2v5W4v1W5B3VCajbWXMyJodg+MrsE/r7p72QvFNGTfd7wGiF5yhbsRhhhmBHXafu3Zi
         e6YispwC+QGZXkPzzv1CcJG2u/51HRfwmF4IQMFnSUMmOPFLYwvEXRHviY0+I/KydgbF
         wphi0LJ28Xo2colL/mFTenZ9Jk+kZOeG3KtDTB0Zau+QgxUfh4Y19Xuh66/0sZh4HBGe
         ifcI83jR+N2yC3JsTNjJuTQTbXHlBU0P9yvdNbKGuM6p7waRz3MDceCm0ObfQpWVmmwS
         yDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=7TBTyNPWnqIaCyiv2Tgv69xUcsvSx7sXtkGUx1/Y05o=;
        b=KlLiZItXuBLzQBNwJ6c5ErSgwgmRriOtiycok4YDXpSGEXSgL+BUvDrXh5vUUMxFAY
         u3MOFXVwNSBOjbutvjgteKmh0Q93UJIlkNQ6OzhmAClJqw/vWZ+VUaj/BRr/ksBgrxOn
         1L2VI7e6FN88nWa5XAvY3KwVzsJtJ4hYFYubDwICMWnCF4lkNag3JrrbT6a6M/f8jEWD
         12LOaJsb/r8a6Q9pfMwsBTvVO2292hWc1T1vCyqzAYPa7Ifr5LxBZvt24oe1uOWbKqVY
         504UJnRlqp4nvG1Kmg7u9bYivosiKEongh86B/zsu3hWKtLHogDQneveoBxJAYce8zvH
         sREw==
X-Gm-Message-State: AE9vXwNeSb17aE707rztY65NC2/YYvEisx3N6q909v3g6J1qrUYxJDqhCl9SmUjW91XsCH03rIOPj6jBecGUTw==
X-Received: by 10.200.53.11 with SMTP id y11mr11776796qtb.74.1473968321029;
 Thu, 15 Sep 2016 12:38:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 12:38:20 -0700 (PDT)
In-Reply-To: <20160915193352.GA7939@namrata-HP-Pavilion-g6-Notebook-PC>
References: <CAFrQyDHKq8Ktv05E5zpQfiDfQGgceZu5B19WXF1bdhJT=w6tYg@mail.gmail.com>
 <alpine.DEB.2.10.1609150717060.6078@hadrien> <20160915174614.GA6219@namrata-HP-Pavilion-g6-Notebook-PC>
 <CAFrQyDF1qx890vw5Nuff2sZ8Z80N=Q6zPpGO674J-r=1oQ2+tg@mail.gmail.com>
 <alpine.DEB.2.10.1609152124420.3364@hadrien> <20160915193352.GA7939@namrata-HP-Pavilion-g6-Notebook-PC>
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 01:08:20 +0530
Message-ID: <CAFrQyDFQuz=5-F-TS2D2cDECAgjrvObDpdc8gM-gJFyi13xayw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: vt6656: main_usb: Remove
 unnecessary blank lines
To: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: multipart/alternative; boundary=001a1140c5b22f6e47053c90fe7c

--001a1140c5b22f6e47053c90fe7c
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 15, 2016 at 09:25:13PM +0200, Julia Lawall wrote:
>
>
>
> I'm not sure what you mean by abandon.  Just send the whole series again,
> with any needed corrections, and indicate what has changed.
>
> julia

Will do the same.Thank you.


-Namrata

> >
> > Thanks,
> > Namrata
> >
> >
> > On Thu, Sep 15, 2016 at 11:16 PM, Namrata A Shettar
> > <namrataashettar@gmail.com> wrote:
> >       There is actually a blank line change but I added a space by
> >       mistake
> >       while deleting the blank line.So will I have to abandon this
> >       patch.If
> >       yes,then in the new version of the patchset I make do I have to
> >       change
> >       the numbering.Once again thanks for your inputs!
> >
> >       -Namrata
> >
> >       On Thu, Sep 15, 2016 at 07:17:53AM +0200, Julia Lawall wrote:
> >       >
> >       >
> >       > On Thu, 15 Sep 2016, Namrata A Shettar wrote:
> >       >
> >       > > This patch resolves checkpatch issue of unnecessary blank
> >       lines.
> >       > >
> >       > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> >       > > ---
> >       > >  drivers/staging/vt6656/main_usb.c | 5 +----
> >       > >  1 file changed, 1 insertion(+), 4 deletions(-)
> >       > >
> >       > > diff --git a/drivers/staging/vt6656/main_usb.c
> >       > > b/drivers/staging/vt6656/main_usb.c
> >       > > index 0594828..d79f07f 100644
> >       > > --- a/drivers/staging/vt6656/main_usb.c
> >       > > +++ b/drivers/staging/vt6656/main_usb.c
> >       > > @@ -692,7 +692,6 @@ static void vnt_bss_info_changed(struct
> >       ieee80211_hw
> >       > > *hw,
> >       > >         if (changed & BSS_CHANGED_BSSID && conf->bssid)
> >       > >                 vnt_mac_set_bssid_addr(priv, (u8
> >       *)conf->bssid);
> >       > >
> >       > > -
> >       > >         if (changed & BSS_CHANGED_BASIC_RATES) {
> >       > >                 priv->basic_rates = conf->basic_rates;
> >       > >
> >       > > @@ -814,7 +813,6 @@ static void vnt_configure(struct
> >       ieee80211_hw *hw,
> >       > >                 } else {
> >       > >                         rx_mode &= ~(RCR_MULTICAST |
> >       RCR_BROADCAST);
> >       > >                 }
> >       > > -
> >       > >         }
> >       > >
> >       > >         if (changed_flags & (FIF_OTHER_BSS |
> >       FIF_BCN_PRBRESP_PROMISC)) {
> >       > > @@ -925,8 +923,7 @@ static const struct ieee80211_ops
> >       vnt_mac_ops = {
> >       > >
> >       > >  int vnt_init(struct vnt_private *priv)
> >       > >  {
> >       > > -
> >       > > -       if (!(vnt_init_registers(priv)))
> >       > > +        if (!(vnt_init_registers(priv)))
> >       >
> >       > Here you seem to have added an extra space.  Actually all the
> >       spaces
> >       > should be removed, and there should be a tab.  But in any case
> >       it is not a
> >       > blank line change.
> >       >
> >       > julia
> >       >



>

--001a1140c5b22f6e47053c90fe7c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span class=3D"gmail-im">On Thu, Sep 15, 2016 at 09:25:13P=
M +0200, Julia Lawall wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I&#39;m not sure what you mean by abandon.=C2=A0 Just send the whole s=
eries again,<br>
&gt; with any needed corrections, and indicate what has changed.<br>
&gt;<br>
&gt; julia<br>
<br>
</span>Will do the same.Thank you.<div class=3D"gmail-yj6qo gmail-ajU"><div=
 tabindex=3D"0" class=3D"gmail-ajR" id=3D"gmail-:r7"><img src=3D"https://ss=
l.gstatic.com/ui/v1/icons/mail/images/cleardot.gif" class=3D"gmail-ajT"></d=
iv></div><div class=3D"gmail-adL"><br>
</div><span class=3D"gmail-HOEnZb gmail-adL"><font color=3D"#888888"><br>
-Namrata<br>
</font></span><br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt; Namrata<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Thu, Sep 15, 2016 at 11:16 PM, Namrata A Shettar<br>
&gt; &gt; &lt;<a href=3D"mailto:namrataashettar@gmail.com">namrataashettar@=
gmail.com</a>&gt; wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0There is actually a blank line change b=
ut I added a space by<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mistake<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while deleting the blank line.So will I=
 have to abandon this<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0patch.If<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0yes,then in the new version of the patc=
hset I make do I have to<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0change<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the numbering.Once again thanks for you=
r inputs!<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Namrata<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Thu, Sep 15, 2016 at 07:17:53AM +020=
0, Julia Lawall wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; On Thu, 15 Sep 2016, Namrata A She=
ttar wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; This patch resolves checkpatc=
h issue of unnecessary blank<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lines.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; Signed-off-by: Namrata A Shet=
tar &lt;<a href=3D"mailto:namrataashettar@gmail.com">namrataashettar@gmail.=
com</a>&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; ---<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0drivers/staging/vt6656/=
main_<wbr>usb.c | 5 +----<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A01 file changed, 1 inser=
tion(+), 4 deletions(-)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; diff --git a/drivers/staging/=
vt6656/main_<wbr>usb.c<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; b/drivers/staging/vt6656/main=
_<wbr>usb.c<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; index 0594828..d79f07f 100644=
<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; --- a/drivers/staging/vt6656/=
main_<wbr>usb.c<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; +++ b/drivers/staging/vt6656/=
main_<wbr>usb.c<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; @@ -692,7 +692,6 @@ static vo=
id vnt_bss_info_changed(struct<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ieee80211_hw<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; *hw,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
f (changed &amp; BSS_CHANGED_BSSID &amp;&amp; conf-&gt;bssid)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 vnt_mac_set_bssid_addr(priv, (u8<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*)conf-&gt;bssid);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; -<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
f (changed &amp; BSS_CHANGED_BASIC_RATES) {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;basic_rates =3D conf-&gt;basic_rates;<=
br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; @@ -814,7 +813,6 @@ static vo=
id vnt_configure(struct<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ieee80211_hw *hw,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_mode &amp;=3D ~(=
RCR_MULTICAST |<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0RCR_BROADCAST);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; -<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }=
<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
f (changed_flags &amp; (FIF_OTHER_BSS |<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0FIF_BCN_PRBRESP_PROMISC)) {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; @@ -925,8 +923,7 @@ static co=
nst struct ieee80211_ops<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0vnt_mac_ops =3D {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0int vnt_init(struct vnt=
_private *priv)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; =C2=A0{<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; -<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0i=
f (!(vnt_init_registers(priv)))<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
if (!(vnt_init_registers(priv)))<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Here you seem to have added an ext=
ra space.=C2=A0 Actually all the<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spaces<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; should be removed, and there shoul=
d be a tab.=C2=A0 But in any case<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it is not a<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; blank line change.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; julia<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote"><br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOE=
nZb"><div class=3D"h5">
<br>
</div></div></blockquote></div><br></div></div>

--001a1140c5b22f6e47053c90fe7c--

