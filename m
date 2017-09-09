X-GM-THRID: 6463845646554103808
X-Received: by 10.99.165.23 with SMTP id n23mr4164186pgf.112.1504981909730;
        Sat, 09 Sep 2017 11:31:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.238.75 with SMTP id b72ls3071779iti.21.canary-gmail; Sat,
 09 Sep 2017 11:31:48 -0700 (PDT)
X-Received: by 10.159.50.7 with SMTP id x7mr3085920uad.103.1504981908847;
        Sat, 09 Sep 2017 11:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504981908; cv=none;
        d=google.com; s=arc-20160816;
        b=nizDziLid5DpoiN0ffXFIWqoWgt8ozqr8ifwt2wG+/gWNW/5Af9ZZM/wiZDbl1G53d
         iJCqHS4nl7St6BrhO9ZHy8P2qo3IA8q7GUmTvNXTLmbitrULm6ESxUh9BbvSMiLo5TZ8
         G3KL1eoxyxj9YbHj4Ox92U/l+oCdWncRHa+AK6fbD5ukRSE8cPRAbTL5JKP7NNLI9lqZ
         FpmHxs4xQbWdtrUe7ZXdLTKdIzjjqs5f/9jFgMRRVAouenxDI/IFuQtiBPoDOd4i0x/1
         HtAGKSvEz0vQW9mvWQWULrny2yXlTeXS6KEUjfg3s1mSZasTggHarcDd3PWeDVUGBGSn
         KIEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=q4Vevco2WgBGl8MZDRsN0OLm0m+kLyvojiMc8D8nchU=;
        b=V7aN2+xYGDgnbTjmVinvRkFVzoDzdQRgKoGqbAI0fF2srdZjaLkqW16NdfAgzujwuE
         kLM4EcVmeGvk7lgriw0iU/hvkcbBmMoXZdmLBm5a892+HIygu6MMohnSJNz6xHN0rBk+
         ioAezvrQNzsyM74HepqpPv6FnD1jTwp+1f5+9Lj9uxZSbeDVBctbHUsPZ7zUNh5hP9A9
         6pKoEoTlwh9dQNlQITX9/uXqGrgrpc7thLosAxnR+9bPgsE55VPPnLFOPxhVybaSC3Np
         lfEILB++pFVRZCDwng/6x4G+nsw7z2KGEynZDvgzI+z2rNJufH4a8W1OB9k4yGnud9pH
         4yLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JC8+jOAT;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id r203si175548vke.11.2017.09.09.11.31.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 11:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JC8+jOAT;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id k23so1498846uaf.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 11:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=q4Vevco2WgBGl8MZDRsN0OLm0m+kLyvojiMc8D8nchU=;
        b=JC8+jOATihZtI/5eGT412pGVrBjszdNzN+Hx5XkGQS/3I612VtSFYOdjuy5/tEsHfs
         eC6g17d0wj1neIbnxS9kx3l2UGgD9ucRgFtRN/XvGx/3eUPGbQ2qnrbRAuuzTrWchmTv
         RxniXiE5BywQasQ+0jVzQrzrVex0QzViTi/FBOjvsvfEV18NkxGrhmOqu4r6V4ZAcvSd
         RHSQ93s/Ow+/COFuIliZwuJCSFtYHJPob848pb0dOMsw93eGTbBr6n6yin6PzglX9mUX
         JnE6s2H2aEIlXOfKiAIQTv3C7nitDSur6ebPKbBdZl8pCRdnl41J/D/YOEozkkJ3sXrg
         0ZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=q4Vevco2WgBGl8MZDRsN0OLm0m+kLyvojiMc8D8nchU=;
        b=E3mue1Ejvo484n0FzTlqpr/bHoy85uF61lp6NZkMn4kQfKO3OJX37tvtd1UwlWyqlH
         CWkI4bdpE11NIFx0ka/xRg6UlT1m3ZfCC80Aw22OfMMfgaeI7u9+UJNrULjax8I4a1U2
         B8plOGqIr/7M7WAMZyhxwx4IgDJ9aQBt8rCNgVuA1CCqkLveEygPqtvk4YcM4Y8fT7Dp
         AwUrsZT/ssWMubz7OFPzK0t6gxjwvO2t4Qkr3nHa0ZGEVFTeMsaMoE+bJwpXZYheDnyt
         vcOIDxktJ0bdRduh+lf91+0YRqz9I2aaaJoe2IotrmrwHvmV+rmGpMb28iwfPzp6EFGN
         zrKA==
X-Gm-Message-State: AHPjjUgZqXIlF98ZJprUBHF4BwNEbZirnag+kefuUOevWx7W/uRSG3C1
	hCRM3NJw8E48DBKtyk/drZgdPTSjkw==
X-Google-Smtp-Source: ADKCNb5lS2/ogkr1rLjn8mlwfxn0Wl9OVXHQ76s0zqw7+uP8JbYdM2+Qif6KIiB7zVqGCJWKaoFjSSDGul5EvKEUAfg=
X-Received: by 10.159.48.89 with SMTP id i25mr5021533uab.177.1504981908596;
 Sat, 09 Sep 2017 11:31:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.10.5 with HTTP; Sat, 9 Sep 2017 11:31:48 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709092025040.2149@hadrien>
References: <1504981213-14584-1-git-send-email-harshasharmaiitr@gmail.com> <alpine.DEB.2.20.1709092025040.2149@hadrien>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Sun, 10 Sep 2017 00:01:48 +0530
Message-ID: <CANMOCy0tXm8hNAzUY5snk_bKM0MODvU5XwvTQACTcYwbLBqZRA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Add spaces around
 '=', '|', '<<'
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="f403045e3ae80e30d60558c5e8dd"

--f403045e3ae80e30d60558c5e8dd
Content-Type: text/plain; charset="UTF-8"

Hi,
Thanks for your feedback.
I checked patch with checkpatch.pl and thought will add spaces around '+'
in another patch as there are no. of such warnings.
Should I add them in this patch only or send another patch for it?

Regards,
Harsha Sharma


On Sat, Sep 9, 2017 at 11:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 9 Sep 2017, Harsha Sharma wrote:
>
> > Use one space around most binary operators
> >
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 26
> +++++++++++++-------------
> >  1 file changed, 13 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> > index 0215899..0129381 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> > @@ -121,7 +121,7 @@
> >
> >  static int rtw_enusbss = 0;/* 0:disable, 1:enable */
> >
> > -static int rtw_hwpdn_mode =2;/* 0:disable, 1:enable, 2: by EFUSE config
> */
> > +static int rtw_hwpdn_mode = 2;/* 0:disable, 1:enable, 2: by EFUSE
> config */
> >
> >  #ifdef CONFIG_HW_PWRP_DETECTION
> >  static int rtw_hwpwrp_detect = 1;
> > @@ -183,7 +183,7 @@
> >
> >  module_param(rtw_hw_wps_pbc, int, 0644);
> >
> > -static uint rtw_max_roaming_times =2;
> > +static uint rtw_max_roaming_times = 2;
> >  module_param(rtw_max_roaming_times, uint, 0644);
> >  MODULE_PARM_DESC(rtw_max_roaming_times,"The max roaming times to try");
> >
> > @@ -222,7 +222,7 @@
> >  /*  BIT4 - RF,                                       0: non-support, 1:
> support */
> >  /*  BIT5 - RF_TXPWR_TRACK,   0: non-support, 1: support */
> >  /*  BIT6 - RF_TXPWR_LMT,             0: non-support, 1: support */
> > -static int rtw_load_phy_file = (BIT2|BIT6);
> > +static int rtw_load_phy_file = (BIT2 | BIT6);
> >  module_param(rtw_load_phy_file, int, 0644);
> >  MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map");
> >  static int rtw_decrypt_phy_file = 0;
> > @@ -255,8 +255,8 @@ static uint loadparam(struct adapter *padapter,
> _nic_hdl pnetdev)
> >
> >       registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense ;
> >       registry_par->vcs_type = (u8)rtw_vcs_type;
> > -     registry_par->rts_thresh =(u16)rtw_rts_thresh;
> > -     registry_par->frag_thresh =(u16)rtw_frag_thresh;
> > +     registry_par->rts_thresh = (u16)rtw_rts_thresh;
> > +     registry_par->frag_thresh = (u16)rtw_frag_thresh;
> >       registry_par->preamble = (u8)rtw_preamble;
> >       registry_par->scan_mode = (u8)rtw_scan_mode;
> >       registry_par->adhoc_tx_pwr = (u8)rtw_adhoc_tx_pwr;
> > @@ -440,7 +440,7 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
> >       u32 priority;
> >       u8 *pdata = skb->data;
> >
> > -     memcpy(&eth_type, pdata+(ETH_ALEN<<1), 2);
> > +     memcpy(&eth_type, pdata+(ETH_ALEN << 1), 2);
>
> The + should have space around it also.
>
> julia
>
> >
> >       switch (be16_to_cpu(eth_type)) {
> >               case ETH_P_IP:
> > @@ -652,8 +652,8 @@ static u8 rtw_init_default_value(struct adapter
> *padapter)
> >  #ifdef CONFIG_GTK_OL
> >       psecuritypriv->binstallKCK_KEK = _FAIL;
> >  #endif /* CONFIG_GTK_OL */
> > -     psecuritypriv->sw_encrypt =pregistrypriv->software_encrypt;
> > -     psecuritypriv->sw_decrypt =pregistrypriv->software_decrypt;
> > +     psecuritypriv->sw_encrypt = pregistrypriv->software_encrypt;
> > +     psecuritypriv->sw_decrypt = pregistrypriv->software_decrypt;
> >
> >       psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open; /* open
> system */
> >       psecuritypriv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
> > @@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struct adapter *padapter)
> >       pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;
> >       pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0;
> >
> > -     _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY |_FW_UNDER_LINKING);
> > +     _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING);
> >
> >       pwrctrlpriv->pwr_state_check_cnts = 0;
> >
> > @@ -777,7 +777,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
> >               goto exit;
> >       }
> >
> > -     padapter->cmdpriv.padapter =padapter;
> > +     padapter->cmdpriv.padapter = padapter;
> >
> >       if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
> >               RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init
> evt_priv\n"));
> > @@ -986,7 +986,7 @@ int _netdev_open(struct net_device *pnetdev)
> >
> >               DBG_871X("MAC Address = "MAC_FMT"\n",
> MAC_ARG(pnetdev->dev_addr));
> >
> > -             status =rtw_start_drv_threads(padapter);
> > +             status = rtw_start_drv_threads(padapter);
> >               if (status == _FAIL) {
> >                       DBG_871X("Initialize driver software resource
> Failed!\n");
> >                       goto netdev_open_error;
> > @@ -1641,7 +1641,7 @@ int rtw_resume_process_wow(struct adapter
> *padapter)
> >               }
> >
> >               /* Disable WOW, set H2C command */
> > -             poidparam.subcode =WOWLAN_DISABLE;
> > +             poidparam.subcode = WOWLAN_DISABLE;
> >               padapter->HalFunc.SetHwRegHandler(padapter,
> HW_VAR_WOWLAN, (u8 *)&poidparam);
> >
> >               psta = rtw_get_stainfo(&padapter->stapriv,
> get_bssid(&padapter->mlmepriv));
> > @@ -1705,7 +1705,7 @@ int rtw_resume_process_wow(struct adapter
> *padapter)
> >               DBG_871X_LEVEL(_drv_always_, "do not reset timer\n");
> >       }
> >
> > -     pwrpriv->wowlan_mode =false;
> > +     pwrpriv->wowlan_mode = false;
> >
> >       /* clean driver side wake up reason. */
> >       pwrpriv->wowlan_wake_reason = 0;
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/1504981213-14584-1-git-send-email-harshasharmaiitr%
> 40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--f403045e3ae80e30d60558c5e8dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Thanks for your feedback.</div><div>I checked patc=
h with <a href=3D"http://checkpatch.pl">checkpatch.pl</a> and thought will =
add spaces around &#39;+&#39; in another patch as there are no. of such war=
nings.</div><div>Should I add them in this patch only or send another patch=
 for it?</div><div><br></div><div>Regards,</div><div>Harsha Sharma</div><di=
v><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Sat, Sep 9, 2017 at 11:56 PM, Julia Lawall <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"=
><div class=3D"h5"><br>
<br>
On Sat, 9 Sep 2017, Harsha Sharma wrote:<br>
<br>
&gt; Use one space around most binary operators<br>
&gt;<br>
&gt; Signed-off-by: Harsha Sharma &lt;<a href=3D"mailto:harshasharmaiitr@gm=
ail.com">harshasharmaiitr@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/os_<wbr>dep/os_intfs.c | 26 ++++++++++=
+++-------------<br>
&gt;=C2=A0 1 file changed, 13 insertions(+), 13 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c b/driver=
s/staging/rtl8723bs/<wbr>os_dep/os_intfs.c<br>
&gt; index 0215899..0129381 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c<br>
&gt; @@ -121,7 +121,7 @@<br>
&gt;<br>
&gt;=C2=A0 static int rtw_enusbss =3D 0;/* 0:disable, 1:enable */<br>
&gt;<br>
&gt; -static int rtw_hwpdn_mode =3D2;/* 0:disable, 1:enable, 2: by EFUSE co=
nfig */<br>
&gt; +static int rtw_hwpdn_mode =3D 2;/* 0:disable, 1:enable, 2: by EFUSE c=
onfig */<br>
&gt;<br>
&gt;=C2=A0 #ifdef CONFIG_HW_PWRP_DETECTION<br>
&gt;=C2=A0 static int rtw_hwpwrp_detect =3D 1;<br>
&gt; @@ -183,7 +183,7 @@<br>
&gt;<br>
&gt;=C2=A0 module_param(rtw_hw_wps_pbc, int, 0644);<br>
&gt;<br>
&gt; -static uint rtw_max_roaming_times =3D2;<br>
&gt; +static uint rtw_max_roaming_times =3D 2;<br>
&gt;=C2=A0 module_param(rtw_max_roaming_<wbr>times, uint, 0644);<br>
&gt;=C2=A0 MODULE_PARM_DESC(rtw_max_<wbr>roaming_times,&quot;The max roamin=
g times to try&quot;);<br>
&gt;<br>
&gt; @@ -222,7 +222,7 @@<br>
&gt;=C2=A0 /*=C2=A0 BIT4 - RF,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00: non-support, 1: support */<br>
&gt;=C2=A0 /*=C2=A0 BIT5 - RF_TXPWR_TRACK,=C2=A0 =C2=A00: non-support, 1: s=
upport */<br>
&gt;=C2=A0 /*=C2=A0 BIT6 - RF_TXPWR_LMT,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00: non-support, 1: support */<br>
&gt; -static int rtw_load_phy_file =3D (BIT2|BIT6);<br>
&gt; +static int rtw_load_phy_file =3D (BIT2 | BIT6);<br>
&gt;=C2=A0 module_param(rtw_load_phy_<wbr>file, int, 0644);<br>
&gt;=C2=A0 MODULE_PARM_DESC(rtw_load_phy_<wbr>file,&quot;PHY File Bit Map&q=
uot;);<br>
&gt;=C2=A0 static int rtw_decrypt_phy_file =3D 0;<br>
&gt; @@ -255,8 +255,8 @@ static uint loadparam(struct adapter *padapter, _n=
ic_hdl pnetdev)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0registry_par-&gt;vrtl_carrier_<wbr>sense =3D=
 (u8)rtw_vrtl_carrier_sense ;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0registry_par-&gt;vcs_type =3D (u8)rtw_vcs_ty=
pe;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0registry_par-&gt;rts_thresh =3D(u16)rtw_rts_thres=
h;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0registry_par-&gt;frag_thresh =3D(u16)rtw_frag_thr=
esh;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0registry_par-&gt;rts_thresh =3D (u16)rtw_rts_thre=
sh;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0registry_par-&gt;frag_thresh =3D (u16)rtw_frag_th=
resh;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0registry_par-&gt;preamble =3D (u8)rtw_preamb=
le;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0registry_par-&gt;scan_mode =3D (u8)rtw_scan_=
mode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0registry_par-&gt;adhoc_tx_pwr =3D (u8)rtw_ad=
hoc_tx_pwr;<br>
&gt; @@ -440,7 +440,7 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 priority;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 *pdata =3D skb-&gt;data;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0memcpy(&amp;eth_type, pdata+(ETH_ALEN&lt;&lt;1), =
2);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0memcpy(&amp;eth_type, pdata+(ETH_ALEN &lt;&lt; 1)=
, 2);<br>
<br>
</div></div>The + should have space around it also.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (be16_to_cpu(eth_type)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case ETH_P_IP:<b=
r>
&gt; @@ -652,8 +652,8 @@ static u8 rtw_init_default_value(struct adapter *p=
adapter)<br>
&gt;=C2=A0 #ifdef CONFIG_GTK_OL<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;binstallKCK_KEK =3D _FAIL;=
<br>
&gt;=C2=A0 #endif /* CONFIG_GTK_OL */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;sw_encrypt =3Dpregistrypriv-&gt=
;software_<wbr>encrypt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;sw_decrypt =3Dpregistrypriv-&gt=
;software_<wbr>decrypt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;sw_encrypt =3D pregistrypriv-&g=
t;software_<wbr>encrypt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;sw_decrypt =3D pregistrypriv-&g=
t;software_<wbr>decrypt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;<wbr>dot11AuthAlgrthm =3D =
dot11AuthAlgrthm_Open; /* open system */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;<wbr>dot11PrivacyAlgrthm =
=3D _NO_PRIVACY_;<br>
&gt; @@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struct adapter *padapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pmlmepriv-&gt;LinkDetectInfo.<wbr>TrafficTra=
nsitionCount =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pmlmepriv-&gt;LinkDetectInfo.<wbr>LowPowerTr=
ansitionCount =3D 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY |_FW_UN=
DER_LINKING);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY | _FW_U=
NDER_LINKING);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pwrctrlpriv-&gt;pwr_state_check_<wbr>cnts =
=3D 0;<br>
&gt;<br>
&gt; @@ -777,7 +777,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0padapter-&gt;cmdpriv.padapter =3Dpadapter;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0padapter-&gt;cmdpriv.padapter =3D padapter;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((rtw_init_evt_priv(&amp;padapter-<wbr>&g=
t;evtpriv)) =3D=3D _FAIL) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RT_TRACE(_module=
_os_intfs_c_, _drv_err_, (&quot;\n Can&#39;t init evt_priv\n&quot;));<br>
&gt; @@ -986,7 +986,7 @@ int _netdev_open(struct net_device *pnetdev)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;M=
AC Address =3D &quot;MAC_FMT&quot;\n&quot;, MAC_ARG(pnetdev-&gt;dev_addr));=
<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status =3Drtw_start_d=
rv_threads(<wbr>padapter);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D rtw_start_=
drv_threads(<wbr>padapter);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (status =3D=
=3D _FAIL) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0DBG_871X(&quot;Initialize driver software resource Failed!\n&q=
uot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto netdev_open_error;<br>
&gt; @@ -1641,7 +1641,7 @@ int rtw_resume_process_wow(struct adapter *padap=
ter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Disable WOW, =
set H2C command */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poidparam.subcode =3D=
WOWLAN_DISABLE;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poidparam.subcode =3D=
 WOWLAN_DISABLE;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;Hal=
Func.<wbr>SetHwRegHandler(padapter, HW_VAR_WOWLAN, (u8 *)&amp;poidparam);<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psta =3D rtw_get=
_stainfo(&amp;padapter-&gt;<wbr>stapriv, get_bssid(&amp;padapter-&gt;mlmepr=
iv)<wbr>);<br>
&gt; @@ -1705,7 +1705,7 @@ int rtw_resume_process_wow(struct adapter *padap=
ter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X_LEVEL(_=
drv_always_, &quot;do not reset timer\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0pwrpriv-&gt;wowlan_mode =3Dfalse;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pwrpriv-&gt;wowlan_mode =3D false;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* clean driver side wake up reason. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pwrpriv-&gt;wowlan_wake_reason =3D 0;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1504981213-14584-1-git-send-email-harshash=
armaiitr%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/<wbr>msgid/outreachy-kernel/<wbr>1504981213-14584-1-git-send-<w=
br>email-harshasharmaiitr%<wbr>40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--f403045e3ae80e30d60558c5e8dd--

