X-GM-THRID: 6950672534035496960
X-Received: by 2002:adf:f991:: with SMTP id f17mr12867268wrr.5.1618329859484;
        Tue, 13 Apr 2021 09:04:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6c6a:: with SMTP id r10ls4342979wrz.0.gmail; Tue, 13 Apr
 2021 09:04:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwAfiq+mvpoyoT0xs811nmHRvaUXa3TWlw23e5OWSmB7Y+GGlDo2GhGF3hbpyWbDrCiPOt3
X-Received: by 2002:adf:9d81:: with SMTP id p1mr21789057wre.247.1618329857770;
        Tue, 13 Apr 2021 09:04:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618329857; cv=none;
        d=google.com; s=arc-20160816;
        b=YtaoPbo3RF+tAi2ni2FGW84RD5tMQZ/Y3/yNGyEZcMTWdLQM/OFSbGOQblV/yy8j3L
         sQywKIvnCJ6Qco5t3x2viGw5xp2yB1DaseURXPkN1UhNUcjkONCPwCXJOxEGzVoH+NiM
         SaTTKz/SswSgt7u2Gft/mNHT/1YZ9H9leL46mXzmEVvh+LeyJrb5mhQBzeMXQ/4NMZj3
         tlncR5/XmDsjOQlhfPyJ7y2Ch+vTTlFCedyvvs+X3q+7n2XHqvdVbi21mG2QAlfSMs2y
         A+5yeK/hOQU8xF4vG7Jvx6VUbKKWNduAP+G7WjYVOj49W34VJOQoVZWjvHah0e1rf0mD
         rdhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=G/pF28uioResnBizgCKJeh52s5VHorPwo1ksWg+Gw9w=;
        b=AGppRP1g5fFCXlTVOxIy8i3QBtadE0aytAxSf6r387B3UqpxdY978FjLJKVUMGDPDz
         LEbM9nSl7kPdMqC09KAQ3az8K6odT2M3GhMLfcJTIsX2Mf1rbBnvCr/F8ofkaVtcSJAg
         cee2dYaoIHmZ82ZcxmFvq+8yRz1EK4nQItlv0SAcKy4H5HcxnoKFksn0gZRSwAf/Xt92
         6Go5vxQNkO/7i9+j5qk0xCjyqo7dTslyS8VTuNckHfmIWe99jAkFeXhA3hI+FGb5HlNu
         D0NfthkzowI8nRGN5zGStUeBzWh3SK3azznQMVY3A58W+fSWXJJnimG+tEYn+ov/qzoG
         sbRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p189si123174wmp.1.2021.04.13.09.04.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 09:04:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AwaOQla4JKQtXTaoqJQPXwB3XdLJzesId70hD?=
 =?us-ascii?q?6mlaTxtJfsuE0/2/hfhz73DJoRsYRX1Io769EYaaR3e0z/5IyK0cJ62rUgWjmE?=
 =?us-ascii?q?bAFutfxK/jxzGlJCHk7O5a0s5bH5RWM9H7AVhkgcuS2mDReOoI+sWN86yjmI7l?=
 =?us-ascii?q?vhRQZDxtApsA0y5JTiKSEkh7X2B9aKYRJd6m6sBmilObCBYqUvg=3D?=
X-IronPort-AV: E=Sophos;i="5.82,219,1613430000"; 
   d="scan'208";a="378560240"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 18:04:16 +0200
Date: Tue, 13 Apr 2021 18:04:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless
 led_blink_hdl()
In-Reply-To: <20210413155908.8691-1-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104131803270.8430@hadrien>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:

> Removed the led_blink_hdl() function (declaration, definition, and
> caller code) because it's useless. It only seems to check whether or not a
> given pointer is NULL. There are other (simpler) means for that purpose.
>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
>  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
>  3 files changed, 11 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 0297fbad7bce..4c44dfd21514 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -150,7 +150,6 @@ static struct cmd_hdl wlancmds[] = {
>
>  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
>  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
> -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/

This is worrisome.  Doyou fully understand the impact of this?  If not,
the change is probably not a good idea.

julia

>
>  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelSwitch_param), set_csa_hdl) /*61*/
>  	GEN_MLME_EXT_HANDLER(sizeof(struct TDLSoption_param), tdls_hdl) /*62*/
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index 440e22922106..6f2a0584f977 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -6189,15 +6189,6 @@ u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
>  	return	H2C_SUCCESS;
>  }
>
> -u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf)
> -{
> -
> -	if (!pbuf)
> -		return H2C_PARAMETERS_ERROR;
> -
> -	return	H2C_SUCCESS;
> -}
> -
>  u8 set_csa_hdl(struct adapter *padapter, unsigned char *pbuf)
>  {
>  	return	H2C_REJECTED;
> diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> index 5e6cf63956b8..472818c5fd83 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> @@ -745,7 +745,6 @@ u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf);
>  u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf);
>  u8 set_ch_hdl(struct adapter *padapter, u8 *pbuf);
>  u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf);
> -u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf);
>  u8 set_csa_hdl(struct adapter *padapter, unsigned char *pbuf);	/* Kurt: Handling DFS channel switch announcement ie. */
>  u8 tdls_hdl(struct adapter *padapter, unsigned char *pbuf);
>  u8 run_in_thread_hdl(struct adapter *padapter, u8 *pbuf);
> --
> 2.31.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210413155908.8691-1-fmdefrancesco%40gmail.com.
>

