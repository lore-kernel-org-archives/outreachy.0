X-GM-THRID: 6333636808059912192
X-Received: by 10.46.0.196 with SMTP id e65mr988225lji.25.1474877988814;
        Mon, 26 Sep 2016 01:19:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.199.7 with SMTP id x7ls1317975wmf.20.canary; Mon, 26 Sep
 2016 01:19:48 -0700 (PDT)
X-Received: by 10.28.56.199 with SMTP id f190mr749391wma.16.1474877988259;
        Mon, 26 Sep 2016 01:19:48 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id w79si457416wmw.0.2016.09.26.01.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 01:19:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id l131so9130169lfl.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 01:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Cn3YeQVXR7SvQ64RZ4mMcbbLCc7GFC2q5VEbkQE0xeQ=;
        b=sM/w4CI/bL6REUlzNRwkDc4IVR/06rSH2jwUaP3ocJHfpENq/NZNjsojTInYTOeNap
         wMs5KvgSYeC98sp9+Ek/V0DWqi+uiMuUjOe1rmCN6n5UesYrFPMCq0//b9WCoLKeGjXo
         TrjnfLtZNx+GEWSPoT3zkOe3j3FXbzk94xvo7u44enygLo1f01rtClpMcpGebIq2b38g
         Dw6EDM5ygB30vYeSI2LGxXWP4XXP4bKg8WxdAEQQEZJo2HbbhbY/PEaRASlnOy88G0ib
         cbNLt5FPwy88KNfe3nV/BCrDiOSq+8EGcBGNZ1w19/duz4OnIaO6+5HR/3db8raTkJSL
         6jPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Cn3YeQVXR7SvQ64RZ4mMcbbLCc7GFC2q5VEbkQE0xeQ=;
        b=PRCTwSlba2oX1Htwkzy2YYAr2LPsZfBkypWLaSdoLoJsw0um2xNTT9lh3wmnU8g2/c
         M0N9d6wRXOk+3EY7EmxQLOiWOMD7rgtcbq1ib3mkAQlj5vUtaWQvgrmMtE91r1AL/Imr
         MzenMIdLSHTgMawj4hy3qpWEScZUKQVPLaiuEtdbNSjKMxCexflqk36E4tPswpdfTn1g
         ruClRTK6WI6xYReRydLFHEDrICGKS+rST6T6TUD6HqN46yC4fQYXjpb6hkHoLb1aB8sZ
         m2EWuPP9ankyeHbZ8zmB70pkR032KD4FHOuDzQKljb+iyiGA5jXE8z5szsgIMWu7VIvT
         7LaA==
X-Gm-Message-State: AE9vXwOseBd1I1UDLtourdyCBbGWHJZVNNegWqUKGNuDTNk5xxRi0S4ICmVzsAaA3l9HFbnkXHrDnQUCxKFLjQ==
X-Received: by 10.25.167.209 with SMTP id q200mr6816610lfe.122.1474877987648;
 Mon, 26 Sep 2016 01:19:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.59.103 with HTTP; Mon, 26 Sep 2016 01:19:47 -0700 (PDT)
In-Reply-To: <20160925103516.GB8119@kroah.com>
References: <20160923213343.GA20036@fireworks> <20160925103516.GB8119@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Mon, 26 Sep 2016 11:19:47 +0300
Message-ID: <CALta04y3Z_12G_7Gcv=65Z9Qb1Hc8UkJ0B4UMVfjQZz9HuKhxw@mail.gmail.com>
Subject: Re: [PATCH v2] staging: ks7010: ks_wlan_net: Use netdev_ or pr_info
 instead of printk
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a114030088a7a5c053d64cacc

--001a114030088a7a5c053d64cacc
Content-Type: text/plain; charset=UTF-8

I submitted the third version of the patch. I had to change the title,
so the patch will not appear in this thread.

About the function static void print_hif_event(int event); I have
no clue how to find the device structure. Could you give me some hints?

Thank you,
Georgiana

On 25 September 2016 at 13:35, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sat, Sep 24, 2016 at 12:33:43AM +0300, Georgiana Rodica Chelu wrote:
> > The checkpatch.pl script found the following warning:
> >
> > WARNING: printk() should include KERN_ facility level
> >
> > After adding the KERN_ facility level to printk(), the script showed
> > another warning:
> >
> > WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> > dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
> >
> > The warning is similar for KERN_ERR and KERN_DEBUG. In conclusion,
> > use netdev_info(), netdev_err() or netdev_dbg() when there is
> > a netdev device and use pr_info() in the remained cases.
> >
> > Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> > ---
> > Changes in v2:
> >         - make the commit message more clear
> >       - replace all the appearances of printk()
> >
> >  drivers/staging/ks7010/ks_wlan_net.c | 92
> ++++++++++++++++++------------------
> >  1 file changed, 46 insertions(+), 46 deletions(-)
> >
> > diff --git a/drivers/staging/ks7010/ks_wlan_net.c
> b/drivers/staging/ks7010/ks_wlan_net.c
> > index d13a06b..9ef44cc 100644
> > --- a/drivers/staging/ks7010/ks_wlan_net.c
> > +++ b/drivers/staging/ks7010/ks_wlan_net.c
> > @@ -233,9 +233,9 @@ static int ks_wlan_set_freq(struct net_device *dev,
> >               /* We should do a better check than that,
> >                * based on the card capability !!! */
> >               if ((channel < 1) || (channel > 14)) {
> > -                     printk(KERN_DEBUG
> > -                            "%s: New channel value of %d is invalid!\n",
> > -                            dev->name, fwrq->m);
> > +                     netdev_dbg(dev,
> > +                                "%s: New channel value of %d is
> invalid!\n",
> > +                                dev->name, fwrq->m);
> >                       rc = -EINVAL;
> >               } else {
> >                       /* Yes ! We can set it !!! */
> > @@ -2671,17 +2671,17 @@ static int ks_wlan_set_sleep_mode(struct
> net_device *dev,
> >
> >       if (*uwrq == SLP_SLEEP) {
> >               priv->sleep_mode = *uwrq;
> > -             printk("SET_SLEEP_MODE %d\n", priv->sleep_mode);
> > +             netdev_info(dev, "SET_SLEEP_MODE %d\n", priv->sleep_mode);
> >
> >               hostif_sme_enqueue(priv, SME_STOP_REQUEST);
> >               hostif_sme_enqueue(priv, SME_SLEEP_REQUEST);
> >
> >       } else if (*uwrq == SLP_ACTIVE) {
> >               priv->sleep_mode = *uwrq;
> > -             printk("SET_SLEEP_MODE %d\n", priv->sleep_mode);
> > +             netdev_info(dev, "SET_SLEEP_MODE %d\n", priv->sleep_mode);
> >               hostif_sme_enqueue(priv, SME_SLEEP_REQUEST);
> >       } else {
> > -             printk("SET_SLEEP_MODE %d errror\n", *uwrq);
> > +             netdev_err(dev, "SET_SLEEP_MODE %d errror\n", *uwrq);
> >               return -EINVAL;
> >       }
> >
> > @@ -2783,7 +2783,7 @@ static int ks_wlan_get_wps_enable(struct
> net_device *dev,
> >       }
> >       /* for SLEEP MODE */
> >       *uwrq = priv->wps.wps_enabled;
> > -     printk("return=%d\n", *uwrq);
> > +     netdev_info(dev, "return=%d\n", *uwrq);
> >
> >       return 0;
> >  }
> > @@ -2978,112 +2978,112 @@ static void print_hif_event(int event)
> >
> >       switch (event) {
> >       case HIF_DATA_REQ:
> > -             printk("HIF_DATA_REQ\n");
> > +             pr_info("HIF_DATA_REQ\n");
> >               break;
> >       case HIF_DATA_IND:
> > -             printk("HIF_DATA_IND\n");
> > +             pr_info("HIF_DATA_IND\n");
>
> All of these should have a device structure somewhere, please fix this
> function up to have that.  Right now I'd just take these changes out of
> the patch and submit the rest.
>
> thanks,
>
> greg k-h
>

--001a114030088a7a5c053d64cacc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>I submitted the third version of =
the patch. I had to change the title,<br></div>so the patch will not appear=
 in this thread.<br><br></div>About the function static void print_hif_even=
t(int event); I have <br>no clue how to find the device structure. Could yo=
u give me some hints?<br></div><br></div>Thank you,<br></div>Georgiana<br><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 25 Septem=
ber 2016 at 13:35, Greg KH <span dir=3D"ltr">&lt;<a href=3D"mailto:gregkh@l=
inuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div cl=
ass=3D"h5">On Sat, Sep 24, 2016 at 12:33:43AM +0300, Georgiana Rodica Chelu=
 wrote:<br>
&gt; The <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_bla=
nk">checkpatch.pl</a> script found the following warning:<br>
&gt;<br>
&gt; WARNING: printk() should include KERN_ facility level<br>
&gt;<br>
&gt; After adding the KERN_ facility level to printk(), the script showed<b=
r>
&gt; another warning:<br>
&gt;<br>
&gt; WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then<b=
r>
&gt; dev_info(dev, ... then pr_info(...=C2=A0 to printk(KERN_INFO ...<br>
&gt;<br>
&gt; The warning is similar for KERN_ERR and KERN_DEBUG. In conclusion,<br>
&gt; use netdev_info(), netdev_err() or netdev_dbg() when there is<br>
&gt; a netdev device and use pr_info() in the remained cases.<br>
&gt;<br>
&gt; Signed-off-by: Georgiana Rodica Chelu &lt;<a href=3D"mailto:georgiana.=
chelu93@gmail.com">georgiana.chelu93@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- make the commit message more clear<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- replace all the appearances of printk()<br=
>
&gt;<br>
&gt;=C2=A0 drivers/staging/ks7010/ks_<wbr>wlan_net.c | 92 +++++++++++++++++=
+------------<wbr>------<br>
&gt;=C2=A0 1 file changed, 46 insertions(+), 46 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/ks7010/ks_<wbr>wlan_net.c b/drivers/stagi=
ng/ks7010/ks_<wbr>wlan_net.c<br>
&gt; index d13a06b..9ef44cc 100644<br>
&gt; --- a/drivers/staging/ks7010/ks_<wbr>wlan_net.c<br>
&gt; +++ b/drivers/staging/ks7010/ks_<wbr>wlan_net.c<br>
&gt; @@ -233,9 +233,9 @@ static int ks_wlan_set_freq(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* We should do =
a better check than that,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * based on the =
card capability !!! */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((channel &lt=
; 1) || (channel &gt; 14)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0printk(KERN_DEBUG<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;%s: New channel value of %d is invalid!\=
n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;name, fwrq-&gt;m);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0netdev_dbg(dev,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;%s: New channel value of %=
d is invalid!\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev-&gt;name, fwrq-&gt;m);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rc =3D -EINVAL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* Yes ! We can set it !!! */<br>
&gt; @@ -2671,17 +2671,17 @@ static int ks_wlan_set_sleep_mode(struct net_d=
evice *dev,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (*uwrq =3D=3D SLP_SLEEP) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;sleep_m=
ode =3D *uwrq;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(&quot;SET_SLEE=
P_MODE %d\n&quot;, priv-&gt;sleep_mode);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_info(dev, &quo=
t;SET_SLEEP_MODE %d\n&quot;, priv-&gt;sleep_mode);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hostif_sme_enque=
ue(priv, SME_STOP_REQUEST);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hostif_sme_enque=
ue(priv, SME_SLEEP_REQUEST);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (*uwrq =3D=3D SLP_ACTIVE) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;sleep_m=
ode =3D *uwrq;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(&quot;SET_SLEE=
P_MODE %d\n&quot;, priv-&gt;sleep_mode);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_info(dev, &quo=
t;SET_SLEEP_MODE %d\n&quot;, priv-&gt;sleep_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hostif_sme_enque=
ue(priv, SME_SLEEP_REQUEST);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(&quot;SET_SLEE=
P_MODE %d errror\n&quot;, *uwrq);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(dev, &quot=
;SET_SLEEP_MODE %d errror\n&quot;, *uwrq);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; @@ -2783,7 +2783,7 @@ static int ks_wlan_get_wps_enable(struct net_dev=
ice *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* for SLEEP MODE */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*uwrq =3D priv-&gt;wps.wps_enabled;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0printk(&quot;return=3D%d\n&quot;, *uwrq);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0netdev_info(dev, &quot;return=3D%d\n&quot;, *uwrq=
);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt; @@ -2978,112 +2978,112 @@ static void print_hif_event(int event)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (event) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case HIF_DATA_REQ:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(&quot;HIF_DATA=
_REQ\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_info(&quot;HIF_DAT=
A_REQ\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case HIF_DATA_IND:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(&quot;HIF_DATA=
_IND\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_info(&quot;HIF_DAT=
A_IND\n&quot;);<br>
<br>
</div></div>All of these should have a device structure somewhere, please f=
ix this<br>
function up to have that.=C2=A0 Right now I&#39;d just take these changes o=
ut of<br>
the patch and submit the rest.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--001a114030088a7a5c053d64cacc--

