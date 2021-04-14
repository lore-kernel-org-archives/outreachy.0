X-GM-THRID: 6950980105413853184
X-Received: by 2002:a05:6512:3094:: with SMTP id z20mr14854395lfd.354.1618401645770;
        Wed, 14 Apr 2021 05:00:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1824991lff.3.gmail; Wed, 14
 Apr 2021 05:00:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIRj02AwXiMIIDbaWrQ+/RGllXvuRdT+zS2WRnx4AcMIRAX2TX75KM2AAQU1jOzgTOdMQd
X-Received: by 2002:a19:c309:: with SMTP id t9mr25327557lff.348.1618401644113;
        Wed, 14 Apr 2021 05:00:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618401644; cv=none;
        d=google.com; s=arc-20160816;
        b=r5x8XlMFOcm0+sBD8Hbfu1HPsGG+I8m7XajH4sxPeLPFzPTt9v2RQEUgtlG24ymuh2
         4ZItCZYy2ei0Hq2SmIr0LbluyZ7Q8UtIH9kSnG9f1FXvG7zFOGNDzhU/OS1KJCFSEH9b
         gyy3+vzmdZnFDT/m8OnyR6i5fhzEP4SAivEN16x4m97qO0H4YTQ2h2oqA6BH0S7S8ePJ
         qDNA1LNB+B6o8r86IUBr63zBph8jn4WDAlnO/f/13PjIMxrGYQf3vl8a+oOSOrCHk4/r
         I4TVFYzx0qsGKSp14/ryQkeRBljPP7RXDbkpssz2FqFxB1uv6f3G2k0W7jSPA921iDMo
         bAKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=i5HQjPxljcZpnbRE8jlqMD0sbzsc3/4zXnile+oXWDQ=;
        b=wHhPlyOhH+N6WnswltHrAKVm53M5vBJ/CCtT2f72YiZx+23f1VYtmEHISEyji4t4lH
         dZjADumYs7/q+sfw8DUg74TMw3S2YOptz2KjJdU7oy4MIkbnmakeGSmUIUchtbOdkXpN
         FQBgrbxg/4sDsBvvrHJWG2GBw4D9L6N/L0D0eSKyWtL3se3BEmm5z34J09sMRKCkHqmU
         I3WJAdw4BaBfIDU4ksoRstURBpvUh66/pyexgwd6i2cswMuew8cEEZQwLq7o+N4XqFyF
         v5rGo7Rp1S6IGX6zwZXi4cuD6/jkxo2dr0WR2FSzgSCo4RcmDAptXHF2uG5Fg6AXA428
         3dcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScW4FlP0;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fabioaiuto83@gmail.com>
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id p5si954830lfd.4.2021.04.14.05.00.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 05:00:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScW4FlP0;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42b.google.com with SMTP id k26so3198709wrc.8
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 05:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=i5HQjPxljcZpnbRE8jlqMD0sbzsc3/4zXnile+oXWDQ=;
        b=ScW4FlP0yM6PkI94P7pV26U6mEKpxWSwBqKSSe4/+xhy+qNiHmhO3yGuAZhSlQ7rtq
         kULF9POB6rgS9sSmFJjhYEW6FGb9+/ovW5fwFDmwPl3mHP+FXqY6f0eZ8ZW6b9/QUsiF
         6/FMO4iGBtImK+GOc12KEsr4B4iW02B9hWr7OulBsVz8ea6Sd9StIi1QnGHZZsNIIkz4
         doNN2AmXlFFFG04uDXC72PuuGRMPKeegNURLOjWSjGxjVdum5dlL9zQjsju6rslvXiBP
         OkUsa4t+0F+esaWDeKSYVXBzhltOxamW2Qt2u6HTiSGYYwA13+gSn8LGF9OaqmdUzuKd
         WZKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=i5HQjPxljcZpnbRE8jlqMD0sbzsc3/4zXnile+oXWDQ=;
        b=hN4hKkaqIq+Dc5wQqjx7333uYeev2PGM8Okw0VV6HY2kDT4Wtok6Oi3cM6wrrolRqF
         W/M7vkpl7YYOH8804PMTHaneSnVkwfat3HF4wQ1pegDqeowedMT1lrLfODRDY55VV8El
         3ifbih9CGWnfIoqVW6gW47ZIKpMx97wEAShioxReajQcU68MEhEHjhRmkL7l3YVRpMjq
         A00kA7AmgKcb/GwuXAEX9UAOjp0pyus5f819w+hPr0HatkYDuY377xORF+pqP0hLytCr
         azywjHU2y2rVC8ey6RtdFExzH1a7TbrINoqKWFcdf0QIzG26r+0ZOyQ2/HJbYIXOZ4n5
         dA1g==
X-Gm-Message-State: AOAM532/8tPyMpGOhUwb/+y8sMSBZccGzblKLmWobCIcp2pMqNz8SxZh
	RgkrB6pmVzxu5TbV4BLoziuFtHgeRVL0gQ==
X-Received: by 2002:a5d:508d:: with SMTP id a13mr11234994wrt.182.1618401643900;
        Wed, 14 Apr 2021 05:00:43 -0700 (PDT)
Return-Path: <fabioaiuto83@gmail.com>
Received: from agape.jhs ([5.171.26.216])
        by smtp.gmail.com with ESMTPSA id o1sm6407860wrw.95.2021.04.14.05.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 05:00:43 -0700 (PDT)
Date: Wed, 14 Apr 2021 14:00:40 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove useless
 led_blink_hdl()
Message-ID: <20210414120039.GA1417@agape.jhs>
References: <20210414115243.32716-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414115243.32716-1-fmdefrancesco@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Apr 14, 2021 at 01:52:43PM +0200, Fabio M. De Francesco wrote:
> Removed the led_blink_hdl() function (declaration and definition).
> Declared dummy_function() in include/rtw_mlme_ext.h and defined it in
> core/rtw_cmd.c. Changed the second parameter of GEN_MLME_EXT_HANDLER
> macro to make use of dummy_function().
> 
> Reported-by: Julia Lawall <julia.lawall@inria.fr>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 4 +++-
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
>  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 3 ++-
>  3 files changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 0297fbad7bce..7b6102a2bb2c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -87,6 +87,8 @@ static struct _cmd_callback rtw_cmd_callback[] = {
>  	{GEN_CMD_CODE(_RunInThreadCMD), NULL},/*64*/
>  };
>  
> +u8 dummy_functioni(struct adapter *var0, u8 *var1) { return 0; }
> +

I think that this won't compile

>  static struct cmd_hdl wlancmds[] = {
>  	GEN_DRV_CMD_HANDLER(0, NULL) /*0*/
>  	GEN_DRV_CMD_HANDLER(0, NULL)
> @@ -150,7 +152,7 @@ static struct cmd_hdl wlancmds[] = {
>  
>  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
>  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
> -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/
> +	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), dummy_function) /*60*/
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
> index 5e6cf63956b8..57977da78eb3 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> @@ -745,11 +745,12 @@ u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf);
>  u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf);
>  u8 set_ch_hdl(struct adapter *padapter, u8 *pbuf);
>  u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf);
> -u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf);
>  u8 set_csa_hdl(struct adapter *padapter, unsigned char *pbuf);	/* Kurt: Handling DFS channel switch announcement ie. */
>  u8 tdls_hdl(struct adapter *padapter, unsigned char *pbuf);
>  u8 run_in_thread_hdl(struct adapter *padapter, u8 *pbuf);
>  
> +/* Dummy function used to fill elements of an array of function pointers */
> +u8 dummy_function(struct adapter *, u8 *);

here 'dummy_function' prototype is declared

>  
>  #define GEN_DRV_CMD_HANDLER(size, cmd)	{size, &cmd ## _hdl},
>  #define GEN_MLME_EXT_HANDLER(size, cmd)	{size, cmd},
> -- 
> 2.31.1
> 
> 

thank you,

fabio

