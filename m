X-GM-THRID: 6330315371322540032
X-Received: by 10.129.160.134 with SMTP id x128mr7275695ywg.25.1473962456138;
        Thu, 15 Sep 2016 11:00:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.70 with SMTP id m67ls1316240iod.41.gmail; Thu, 15 Sep
 2016 11:00:54 -0700 (PDT)
X-Received: by 10.98.54.197 with SMTP id d188mr7319427pfa.11.1473962454702;
        Thu, 15 Sep 2016 11:00:54 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id w124si495627ywc.4.2016.09.15.11.00.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 11:00:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id z143so3836584qka.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 11:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Qa7ryNIOKCHxCczx3pBuHAQ35/6y3iFGJIzc+q6oF/Y=;
        b=cavtvFF1DVMhjsEH49Oh70NsnqRAXQXpR+PdOiraA2CTPL3EhTbNUiQUx7Hjtg0WNp
         g0+pxuFL6lXCnU6pFWOZlOhVVsLUDAnmEkEsmHAHFgCXqBiun8Yj0motMCNRWHjKsiC7
         tbya2hWkBvd43oKXIZOOcBDQyxQBoNq/kfgidzpzAS++URUfcEt2amRrniGg6tm4b8tU
         Ee15umPVV98MlLKS9a3YRIUHzP6QOfE1eMQhCiseocsughuKT6W+o2/B/YFGYPQL4YZA
         E3KkFE0QwKYvSdcU0IVslc+mQtpy9Typ2sIR7pAn31WsmcowKzI9nkbPsNo/GyGbkowI
         mGFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Qa7ryNIOKCHxCczx3pBuHAQ35/6y3iFGJIzc+q6oF/Y=;
        b=OTnR+eqd/GnURfmmvlLRtuJJO5MqM4yl+RXkhYvonbSD0XjdfXgQam38bqCbHjZ43Q
         0saVsWfTJgHV+Keij/dJnmu45oASnqmVBHY/ki3wlKok82MOqwTp1q5sBDkI0AANcnLg
         C9w7pvw3BmcE6VOJFGKfLon3d4F86fluTeCJUUVyhKLrdWmF0jBLUsdaeesyoPH0PkIb
         FyIvGAQ3yA0jofENPNvIumq1PS1lR48hMyJQpOpJ58HMWqrVNl/TR4335PGDIL+g45m5
         phjq8EcLgBWetcsHYqcsfFwQm9TQBs9FvfmO3AKjUuwkWMAZEw/n8O1eALc1/ZAFAhQ+
         +U9g==
X-Gm-Message-State: AE9vXwNixVH0joRFLa0BgA3iqQ9y5BPMyx13TT1QEnjPNng15/96XK6g0TirAQwetV8liGADcjVQ+bXNuxpfPw==
X-Received: by 10.55.201.200 with SMTP id m69mr2040102qkl.304.1473962454453;
 Thu, 15 Sep 2016 11:00:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 11:00:34 -0700 (PDT)
In-Reply-To: <20160915174614.GA6219@namrata-HP-Pavilion-g6-Notebook-PC>
References: <CAFrQyDHKq8Ktv05E5zpQfiDfQGgceZu5B19WXF1bdhJT=w6tYg@mail.gmail.com>
 <alpine.DEB.2.10.1609150717060.6078@hadrien> <20160915174614.GA6219@namrata-HP-Pavilion-g6-Notebook-PC>
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Thu, 15 Sep 2016 23:30:34 +0530
Message-ID: <CAFrQyDF1qx890vw5Nuff2sZ8Z80N=Q6zPpGO674J-r=1oQ2+tg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: vt6656: main_usb: Remove
 unnecessary blank lines
To: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: multipart/alternative; boundary=001a1149ad0e829290053c8fa04b

--001a1149ad0e829290053c8fa04b
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 15, 2016 at 07:17:53AM +0200, Julia Lawall wrote:
>
>
> On Thu, 15 Sep 2016, Namrata A Shettar wrote:
>
> > This patch resolves checkpatch issue of unnecessary blank lines.
> >
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  int vnt_init(struct vnt_private *priv)
> >  {
> > -
> > -       if (!(vnt_init_registers(priv)))
> > +        if (!(vnt_init_registers(priv)))
> >
>
> Here you seem to have added an extra space.  Actually all the spaces
> should be removed, and there should be a tab.  But in any case it is not a
> blank line change.
>
> julia
>

There is actually a blank line change but I added a space by mistake
while deleting the blank line.So will I have to abandon this patch.If
yes,then in the new version of the patchset I make ,do I have to change
the numbering? Will be more careful the next time!

Thanks,
Namrata


On Thu, Sep 15, 2016 at 11:16 PM, Namrata A Shettar <
namrataashettar@gmail.com> wrote:

> There is actually a blank line change but I added a space by mistake
> while deleting the blank line.So will I have to abandon this patch.If
> yes,then in the new version of the patchset I make do I have to change
> the numbering.Once again thanks for your inputs!
>
> -Namrata
>
> On Thu, Sep 15, 2016 at 07:17:53AM +0200, Julia Lawall wrote:
> >
> >
> > On Thu, 15 Sep 2016, Namrata A Shettar wrote:
> >
> > > This patch resolves checkpatch issue of unnecessary blank lines.
> > >
> > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > ---
> > >  drivers/staging/vt6656/main_usb.c | 5 +----
> > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/vt6656/main_usb.c
> > > b/drivers/staging/vt6656/main_usb.c
> > > index 0594828..d79f07f 100644
> > > --- a/drivers/staging/vt6656/main_usb.c
> > > +++ b/drivers/staging/vt6656/main_usb.c
> > > @@ -692,7 +692,6 @@ static void vnt_bss_info_changed(struct
> ieee80211_hw
> > > *hw,
> > >         if (changed & BSS_CHANGED_BSSID && conf->bssid)
> > >                 vnt_mac_set_bssid_addr(priv, (u8 *)conf->bssid);
> > >
> > > -
> > >         if (changed & BSS_CHANGED_BASIC_RATES) {
> > >                 priv->basic_rates = conf->basic_rates;
> > >
> > > @@ -814,7 +813,6 @@ static void vnt_configure(struct ieee80211_hw *hw,
> > >                 } else {
> > >                         rx_mode &= ~(RCR_MULTICAST | RCR_BROADCAST);
> > >                 }
> > > -
> > >         }
> > >
> > >         if (changed_flags & (FIF_OTHER_BSS | FIF_BCN_PRBRESP_PROMISC))
> {
> > > @@ -925,8 +923,7 @@ static const struct ieee80211_ops vnt_mac_ops = {
> > >
> > >  int vnt_init(struct vnt_private *priv)
> > >  {
> > > -
> > > -       if (!(vnt_init_registers(priv)))
> > > +        if (!(vnt_init_registers(priv)))
> >
> > Here you seem to have added an extra space.  Actually all the spaces
> > should be removed, and there should be a tab.  But in any case it is not
> a
> > blank line change.
> >
> > julia
> >
> > >                 return -EAGAIN;
> > >
> > >         SET_IEEE80211_PERM_ADDR(priv->hw,
> > > priv->permanent_net_addr);[cleardot.gif]
> > >
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com
> .
> > > To view this discussion on the web visithttps://groups.google.
> com/d/msgid/outreachy-kernel/CAFrQyDHKq8Ktv05E5zpQfiD
> > > fQGgceZu5B19WXF1bdhJT%3Dw6tYg%40mail.gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> > >
>
>

--001a1149ad0e829290053c8fa04b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span class=3D"gmail-im gmail-HOEnZb"><br>
On Thu, Sep 15, 2016 at 07:17:53AM +0200, Julia Lawall wrote:<br>
&gt;<br></span>&gt;<br>&gt; On Thu, 15 Sep 2016, Namrata A Shettar wrote:<b=
r>
&gt;<br>
&gt; &gt; This patch resolves checkpatch issue of unnecessary blank lines.<=
br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataash=
ettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; =C2=A0int vnt_init(struct vnt_private *priv)<br>
&gt; &gt; =C2=A0{<br>
&gt; &gt; -<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(vnt_init_registers(priv)))<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(vnt_init_registers(priv)))<br>=
&gt; &gt;<br>&gt;<br>&gt; Here you seem to have added an extra space.=C2=A0=
 Actually all the spaces<br>
&gt; should be removed, and there should be a tab.=C2=A0 But in any case it=
 is not a<br>
&gt; blank line change.<br>
&gt;<br>
&gt; julia<br>
&gt;<br><br><span class=3D"gmail-im gmail-HOEnZb">There is actually a blank=
 line change but I added a space by mistake<br>
while deleting the blank line.So will I have to abandon this patch.If<br>
yes,then in the new version of the patchset I make ,do I have to change<br>
the numbering? Will be more careful the next time!<br>
<br>Thanks,<br>
Namrata</span><br><br></div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On Thu, Sep 15, 2016 at 11:16 PM, Namrata A Shettar <span dir=3D=
"ltr">&lt;<a href=3D"mailto:namrataashettar@gmail.com" target=3D"_blank">na=
mrataashettar@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><span class=3D"im HOEnZb">There is actually a blank line change but I =
added a space by mistake<br>
while deleting the blank line.So will I have to abandon this patch.If<br>
yes,then in the new version of the patchset I make do I have to change<br>
the numbering.Once again thanks for your inputs!<br>
<br>
-Namrata<br>
<br>
On Thu, Sep 15, 2016 at 07:17:53AM +0200, Julia Lawall wrote:<br>
&gt;<br>
&gt;<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">&gt; On Thu, 15 Sep 2016, Na=
mrata A Shettar wrote:<br>
&gt;<br>
&gt; &gt; This patch resolves checkpatch issue of unnecessary blank lines.<=
br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataash=
ettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; =C2=A0drivers/staging/vt6656/main_<wbr>usb.c | 5 +----<br>
&gt; &gt; =C2=A01 file changed, 1 insertion(+), 4 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/vt6656/main_<wbr>usb.c<br>
&gt; &gt; b/drivers/staging/vt6656/main_<wbr>usb.c<br>
&gt; &gt; index 0594828..d79f07f 100644<br>
&gt; &gt; --- a/drivers/staging/vt6656/main_<wbr>usb.c<br>
&gt; &gt; +++ b/drivers/staging/vt6656/main_<wbr>usb.c<br>
&gt; &gt; @@ -692,7 +692,6 @@ static void vnt_bss_info_changed(struct ieee8=
0211_hw<br>
&gt; &gt; *hw,<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (changed &amp; BSS_CHANGED_BSSID &=
amp;&amp; conf-&gt;bssid)<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vnt_mac_s=
et_bssid_addr(priv, (u8 *)conf-&gt;bssid);<br>
&gt; &gt;<br>
&gt; &gt; -<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (changed &amp; BSS_CHANGED_BASIC_R=
ATES) {<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;=
basic_rates =3D conf-&gt;basic_rates;<br>
&gt; &gt;<br>
&gt; &gt; @@ -814,7 +813,6 @@ static void vnt_configure(struct ieee80211_hw=
 *hw,<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<=
br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 rx_mode &amp;=3D ~(RCR_MULTICAST | RCR_BROADCAST);<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; &gt; -<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (changed_flags &amp; (FIF_OTHER_BS=
S | FIF_BCN_PRBRESP_PROMISC)) {<br>
&gt; &gt; @@ -925,8 +923,7 @@ static const struct ieee80211_ops vnt_mac_ops=
 =3D {<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0int vnt_init(struct vnt_private *priv)<br>
&gt; &gt; =C2=A0{<br>
&gt; &gt; -<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(vnt_init_registers(priv)))<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(vnt_init_registers(priv)))<br>
&gt;<br>
&gt; Here you seem to have added an extra space.=C2=A0 Actually all the spa=
ces<br>
&gt; should be removed, and there should be a tab.=C2=A0 But in any case it=
 is not a<br>
&gt; blank line change.<br>
&gt;<br>
&gt; julia<br>
&gt;<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -E=
AGAIN;<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 SET_IEEE80211_PERM_ADDR(priv-&gt;<wbr=
>hw,<br>
&gt; &gt; priv-&gt;permanent_net_addr);[<wbr>cleardot.gif]<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; 2.7.4<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e Groups<br>
&gt; &gt; &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
 send an<br>
&gt; &gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googleg=
roups.com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; &gt; To post to this group, send email to <a href=3D"mailto:outreachy-=
kernel@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; &gt; To view this discussion on the web visithttps://<a href=3D"http:/=
/groups.google.com/d/msgid/outreachy-kernel/CAFrQyDHKq8Ktv05E5zpQfiD" rel=
=3D"noreferrer" target=3D"_blank">groups.google.<wbr>com/d/msgid/outreachy-=
kernel/<wbr>CAFrQyDHKq8Ktv05E5zpQfiD</a><br>
&gt; &gt; fQGgceZu5B19WXF1bdhJT%3Dw6tYg%<a href=3D"http://40mail.gmail.com"=
 rel=3D"noreferrer" target=3D"_blank"><wbr>40mail.gmail.com</a>.<br>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr=
>optout</a>.<br>
&gt; &gt;<br>
&gt; &gt;<br>
<br>
</div></div></blockquote></div><br></div>

--001a1149ad0e829290053c8fa04b--

