X-GM-THRID: 6463845646554103808
X-Received: by 10.28.107.79 with SMTP id g76mr529180wmc.28.1505045441900;
        Sun, 10 Sep 2017 05:10:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.65 with SMTP id i1ls144081ljd.43.gmail; Sun, 10 Sep 2017
 05:10:40 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB8B9khVQ6KJFQ4g2spknXMbo/0EnwH89hNoASjixWeD6bPI0EEsbobRVPr1piDBmldcs7t
X-Received: by 10.46.4.147 with SMTP id a19mr580359ljf.44.1505045440102;
        Sun, 10 Sep 2017 05:10:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505045440; cv=none;
        d=google.com; s=arc-20160816;
        b=Ok4pPMjJJWKzJN1nTqk5v9TgoLP7QXQwe02zGHr/hC/ZvWE7oYLyUObcvj992DAW5D
         xdswVBY30v6QKWLB6gRuKVNeI3GzSkWktY7ypDowl63JFpHjaWgjdri7iShLlrLNSI90
         HYr7vEscyn4zaJVjJdst+JlES3bzQWLhQaLHht/PJOSe5ABdhbNuTrPZ9RcnCSiWkPFV
         lREcm/OGz9rHJaI4Yh2Gj2zdnqBODk60yfNzKZKQ7FL4dwtA/3dkYAG0+LD3fbX93FkN
         mF9U3qMtnu4Mm63hQoi7VMTn3qXlvUIBpPdU4moFiaBLHy8vXxUnj99Zu8l0ClN0g4bh
         PHug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=nSlyvisv6ctYPFwK9sgg7LLs660o/svbp5GInjrtl3E=;
        b=J/nc+x2BOWYybcxjreHXto3OrZa0MAfq2UKt7MpcSXtvOBU3kW5Z5I1Wr34npUKnh6
         HoMcdPLYy1d1S3U4MDDOzpOurFjNIi1fLvAwRW+DXYGM8udpRTRcWa5rgwccXEw1DrQV
         UJntnfCbGetrUEH7lluO0keySfnKgV/3RhsH2ZUfA8+A1WxnwiDq21wwyUTkGupwhKl6
         tWOkRZGsnDF/0+DFQuLcy09F9hTfGMWIOMMWFYR47Uh34uekv1lC4mpJM+PpXSifi0e0
         qAY2xFvMjlqD6sL9oMXS3OOOhmstsZqKVBOC0IRmXq/Rk057qrEmsJ4hjrIYiiP6t+Zc
         gWYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b62si256426wmd.3.2017.09.10.05.10.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 05:10:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,372,1500933600"; 
   d="scan'208";a="236940279"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 14:10:39 +0200
Date: Sun, 10 Sep 2017 14:10:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: rtl8723bs: Add spaces
 around '=', '|', '<<'
In-Reply-To: <78b23708-60d8-47dd-9bea-94a1eb29bbeb@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709101409290.6842@hadrien>
References: <1504981213-14584-1-git-send-email-harshasharmaiitr@gmail.com> <78b23708-60d8-47dd-9bea-94a1eb29bbeb@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1210728754-1505045439=:6842"

--8323329-1210728754-1505045439=:6842
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 10 Sep 2017, Harsha Sharma wrote:

>
>
> On Saturday, September 9, 2017 at 11:52:22 PM UTC+5:30, Harsha Sharma wrote:
>       Use one space around most binary operators
>
>       Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
>       ---
>        drivers/staging/rtl8723bs/os_dep/os_intfs.c | 26
>       +++++++++++++-------------
>        1 file changed, 13 insertions(+), 13 deletions(-)
>
>       diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
>       b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
>       index 0215899..0129381 100644
>       --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
>       +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
>       @@ -121,7 +121,7 @@
>        
>        static int rtw_enusbss = 0;/* 0:disable, 1:enable */
>        
>       -static int rtw_hwpdn_mode =2;/* 0:disable, 1:enable, 2: by
>       EFUSE config */
>       +static int rtw_hwpdn_mode = 2;/* 0:disable, 1:enable, 2: by
>       EFUSE config */
>        
>        #ifdef CONFIG_HW_PWRP_DETECTION
>        static int rtw_hwpwrp_detect = 1;
>       @@ -183,7 +183,7 @@
>        
>        module_param(rtw_hw_wps_pbc, int, 0644);
>        
>       -static uint rtw_max_roaming_times =2;
>       +static uint rtw_max_roaming_times = 2;
>        module_param(rtw_max_roaming_times, uint, 0644);
>        MODULE_PARM_DESC(rtw_max_roaming_times,"The max roaming times
>       to try");
>        
>       @@ -222,7 +222,7 @@
>        /*  BIT4 - RF,                                        0:
>       non-support, 1: support */
>        /*  BIT5 - RF_TXPWR_TRACK,        0: non-support, 1: support */
>        /*  BIT6 - RF_TXPWR_LMT,                0: non-support, 1:
>       support */
>       -static int rtw_load_phy_file = (BIT2|BIT6);
>       +static int rtw_load_phy_file = (BIT2 | BIT6);
>        module_param(rtw_load_phy_file, int, 0644);
>        MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map");
>        static int rtw_decrypt_phy_file = 0;
>       @@ -255,8 +255,8 @@ static uint loadparam(struct adapter
>       *padapter, _nic_hdl pnetdev)
>        
>                registry_par->vrtl_carrier_sense =
>       (u8)rtw_vrtl_carrier_sense ;
>                registry_par->vcs_type = (u8)rtw_vcs_type;
>       -        registry_par->rts_thresh =(u16)rtw_rts_thresh;
>       -        registry_par->frag_thresh =(u16)rtw_frag_thresh;
>       +        registry_par->rts_thresh = (u16)rtw_rts_thresh;
>       +        registry_par->frag_thresh = (u16)rtw_frag_thresh;
>                registry_par->preamble = (u8)rtw_preamble;
>                registry_par->scan_mode = (u8)rtw_scan_mode;
>                registry_par->adhoc_tx_pwr = (u8)rtw_adhoc_tx_pwr;
>       @@ -440,7 +440,7 @@ u16 rtw_recv_select_queue(struct sk_buff
>       *skb)
>                u32 priority;
>                u8 *pdata = skb->data;
>        
>       -        memcpy(&eth_type, pdata+(ETH_ALEN<<1), 2);
>       +        memcpy(&eth_type, pdata+(ETH_ALEN << 1), 2);
>        
>                switch (be16_to_cpu(eth_type)) {
>                        case ETH_P_IP:
>       @@ -652,8 +652,8 @@ static u8 rtw_init_default_value(struct
>       adapter *padapter)
>        #ifdef CONFIG_GTK_OL
>                psecuritypriv->binstallKCK_KEK = _FAIL;
>        #endif /* CONFIG_GTK_OL */
>       -        psecuritypriv->sw_encrypt
>       =pregistrypriv->software_encrypt;
>       -        psecuritypriv->sw_decrypt
>       =pregistrypriv->software_decrypt;
>       +        psecuritypriv->sw_encrypt =
>       pregistrypriv->software_encrypt;
>       +        psecuritypriv->sw_decrypt =
>       pregistrypriv->software_decrypt;
>        
>                psecuritypriv->dot11AuthAlgrthm =
>       dot11AuthAlgrthm_Open; /* open system */
>                psecuritypriv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
>       @@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struct adapter
>       *padapter)
>                pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;
>                pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0;
>        
>       -        _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY
>       |_FW_UNDER_LINKING);
>       +        _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY |
>       _FW_UNDER_LINKING);
>        
>                pwrctrlpriv->pwr_state_check_cnts = 0;
>        
>       @@ -777,7 +777,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>                        goto exit;
>                }
>        
>       -        padapter->cmdpriv.padapter =padapter;
>       +        padapter->cmdpriv.padapter = padapter;
>        
>                if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
>                        RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n
>       Can't init evt_priv\n"));
>       @@ -986,7 +986,7 @@ int _netdev_open(struct net_device *pnetdev)
>        
>                        DBG_871X("MAC Address = "MAC_FMT"\n",
>       MAC_ARG(pnetdev->dev_addr));
>        
>       -                status =rtw_start_drv_threads(padapter);
>       +                status = rtw_start_drv_threads(padapter);
>                        if (status == _FAIL) {
>                                DBG_871X("Initialize driver software
>       resource Failed!\n");
>                                goto netdev_open_error;
>       @@ -1641,7 +1641,7 @@ int rtw_resume_process_wow(struct adapter
>       *padapter)
>                        }
>        
>                        /* Disable WOW, set H2C command */
>       -                poidparam.subcode =WOWLAN_DISABLE;
>       +                poidparam.subcode = WOWLAN_DISABLE;
>                        padapter->HalFunc.SetHwRegHandler(padapter,
>       HW_VAR_WOWLAN, (u8 *)&poidparam);
>        
>                        psta = rtw_get_stainfo(&padapter->stapriv,
>       get_bssid(&padapter->mlmepriv));
>       @@ -1705,7 +1705,7 @@ int rtw_resume_process_wow(struct adapter
>       *padapter)
>                        DBG_871X_LEVEL(_drv_always_, "do not reset
>       timer\n");
>                }
>        
>       -        pwrpriv->wowlan_mode =false;
>       +        pwrpriv->wowlan_mode = false;
>        
>                /* clean driver side wake up reason. */
>                pwrpriv->wowlan_wake_reason = 0;
>       --
>       1.9.1
>
> Hi,
> I am trying to send patchset for this file with 10 commits but unable to
> send it. I am following this  https://kernelnewbies.org/Outreachyfirstpatch
> and with this command "git format-patch -o /tmp/ --cover-letter -n
> --thread=shallow --cc="linux-usb@vger.kernel.org" 7b2a57c^..f46968c"
> no matches found: 7b2a57c^..f46968c.
> But these commit ID's exist in "git log --pretty=oneline --abbrev-commit" .
> Can you please help ?

A similar command line works for me.  Are you sure that

git log --pretty=oneline --abbrev-commit 7b2a57c^..f46968c

works?  Just copy-paste it from the mail, don't retype anything.

julia

> Thanks a lot.
>
> Regards,
> Harsha Sharma
>  
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/78b23708-60d8-47dd-9bea-
> 94a1eb29bbeb%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1210728754-1505045439=:6842--

