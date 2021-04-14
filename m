X-GM-THRID: 6950980105413853184
X-Received: by 2002:adf:d091:: with SMTP id y17mr43243030wrh.73.1618418816088;
        Wed, 14 Apr 2021 09:46:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls1476595wmk.0.canary-gmail;
 Wed, 14 Apr 2021 09:46:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXcdwHjvJJUKaw3dhKLhXWWSxYwp3+QpAWf/5XT7PL2vLpE5WvfTxXiLZAoQqzppyiQ3sZ
X-Received: by 2002:a05:600c:3556:: with SMTP id i22mr3949967wmq.116.1618418814626;
        Wed, 14 Apr 2021 09:46:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618418814; cv=none;
        d=google.com; s=arc-20160816;
        b=fZV+QrOkwpqXozjTd1oIvLvtUv1/G8HSXs8uUG1A9JSJBh5iUs7ZWjozq21ynSh2Ju
         gpSXwVcSJRNTJwR3ENFy9MKh0XinjWwJ2tK5UyNPg2AJj9gJU9dMdAUzngW44lVGD0sH
         1Ol2+hoPZ7chptos9uEO5zQgwdou1EsUwBA07aac3OsxEvLhmv9DNRTwn1J9u4ZUIDIg
         Vy7WRFCgekiUlg8LzN2u22rlT3iNiwiYnFhTId6w8gIW48/UvvhluWmtuD2MbijUyBUt
         BpM/yZpJgZQJDTIT2UgQ47Dym6zKKgzaPJGXdriITVNB+q8pfzrJtUAlsHheneOWNHjs
         uTsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=o+ROcY1C8wz+8PkDwYJ0lELoDYp6Z6DB0Dpa2ieHXSk=;
        b=tfXnEqT++A9bVhpM7ACe2n7HQA3t+liM7E9PK/VAUSuz3kS0fWZkepTnprSrYv/Mx5
         C4IfEuvUQdLLVqmDtTejEcBBqcHBpd+rkgjzwr58bumTRIYZwXrkJdSSPH/aExJ8j7yc
         b+ZapFT5QTTNcU/BAbc0lQlS3ji5B1Gpz9Mk4r4NYBlbcqu13ZpsFDx3wvwdbn72imXo
         ogLqHTS75YEWDla9UFO49BjFzPNOZtVKEsbSzU2C2cI9SYRQ/kwJ9lq8IzspslQ3tPqr
         fcT6uZvIzdRp49Vhw3KmMzICbSjshLjoWCLlY1mvEfeucK/At/p413UxXhrC+vuLwobm
         JrDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WKZZ4YuC;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fabioaiuto83@gmail.com>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id t124si330537wmb.3.2021.04.14.09.46.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 09:46:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WKZZ4YuC;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x330.google.com with SMTP id f195-20020a1c1fcc0000b029012eb88126d7so927682wmf.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 09:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=o+ROcY1C8wz+8PkDwYJ0lELoDYp6Z6DB0Dpa2ieHXSk=;
        b=WKZZ4YuCmfu4t3u8YtaZHTMmCLTh1OUflTICQbpr98lNRy5a1nW0CB5E01bfuOaSkx
         hRDK9UJpSNgAC5Z+cYmrZPALX2T6vnanFG6BfjAg5OmZsBr2BOMYldptIQ8q9Wwoyn/i
         mzY1uBZ+77qI6HUapXtnXdO9KpwPeci+cRyrz3y4YsTTvizuH6OMaNj9wGetPedi63HC
         hsjbMHpyu/eA3zNTswNgdvRkIlRhfw+eREDOkVlulQUygoBzCv/4wNuZ8VdzgHedD12D
         5uyHro/8Vst7frKlQ98NVlF1NGJco1i9/RN5woAiUoOUfuZJKtgln7Ug+hOn/hU1Ocu6
         U7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=o+ROcY1C8wz+8PkDwYJ0lELoDYp6Z6DB0Dpa2ieHXSk=;
        b=QPMMxuHVYbhTuvoQshmyT11STwV0HmqkbEWFphtC0BF0DV1TDleUKdDQhLZNVkZ8zf
         7sXdD2K1FkEjfVdStjg49bx4qO/XIp/QAmGaBc2T2IrLAWsYhEiaCyt2ySNo+nG0Twcg
         EgKM7FVzAkyQ58JkHZJUJFYIJCZLCI9/8NbwSEubuKkA9CJTozUXtEtTi4a5vX+Uimwg
         KHVUWb+3I+DL6QBEyuaZe1KoXnFKaEOQq1F+3TsN8HJsNUKXuK4fzabaRvtAywiaTxIq
         QQ4uuH1KdjipJlo+0oy3gL4QiG9FndLqh0+T7jb8rZOL+HPOTrVF1z9s/H8YKlfYSwZ0
         EjeQ==
X-Gm-Message-State: AOAM533kzyIM2BniUypiiYYrK+3/qHsoX9/SKTWvG5EOKmnjtocM+n6C
	Vb/urHoOG8o1AYRR80XkIes=
X-Received: by 2002:a1c:2985:: with SMTP id p127mr3911373wmp.165.1618418814386;
        Wed, 14 Apr 2021 09:46:54 -0700 (PDT)
Return-Path: <fabioaiuto83@gmail.com>
Received: from agape.jhs ([5.171.72.89])
        by smtp.gmail.com with ESMTPSA id j14sm23224202wrw.69.2021.04.14.09.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 09:46:54 -0700 (PDT)
Date: Wed, 14 Apr 2021 18:46:51 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove useless
 led_blink_hdl()
Message-ID: <20210414164650.GA1418@agape.jhs>
References: <20210414162614.14867-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414162614.14867-1-fmdefrancesco@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Apr 14, 2021 at 06:26:14PM +0200, Fabio M. De Francesco wrote:
> Removed useless led_blink_hdl() prototype and definition. In wlancmds[]
> the slot #60 is now set to NULL using the macro GEN_MLME_EXT_HANDLER. This
> change has not unwanted side effects because the code in rtw_cmd.c checks
> if the function pointer is valid before using it.
> 
> Reported-by: Julia Lawall <julia.lawall@inria.fr>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes since v1: Corrected a bad solution to this issue that made use of
> an unnecessary dummy function.
> 
>  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 2 +-
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
>  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
>  3 files changed, 1 insertion(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 0297fbad7bce..f82dbd4f4c3d 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -150,7 +150,7 @@ static struct cmd_hdl wlancmds[] = {
>  
>  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
>  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
> -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/
> +	GEN_MLME_EXT_HANDLER(0, NULL) /*60*/

I'd remove LedBlink_param struct as well, now it's unused

>  
>  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelSwitch_param), set_csa_hdl) /*61*/
>  	GEN_MLME_EXT_HANDLER(sizeof(struct TDLSoption_param), tdls_hdl) /*62*/
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index 873d3792ac8e..963ea80083c8 100644
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
> 

thank you,

fabio

