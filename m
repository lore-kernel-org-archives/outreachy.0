X-GM-THRID: 6674542859228545024
X-Received: by 2002:a2e:460a:: with SMTP id t10mr676974lja.28.1554038893074;
        Sun, 31 Mar 2019 06:28:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls816980lji.14.gmail; Sun, 31 Mar
 2019 06:28:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwJaoXGof6Tvf8J17UY9T3VXejic88/2jKApGbPcbo2nxI16o7r6oVHWyyEg/Hbb3umdS+x
X-Received: by 2002:a2e:5d90:: with SMTP id v16mr562250lje.2.1554038892595;
        Sun, 31 Mar 2019 06:28:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554038892; cv=none;
        d=google.com; s=arc-20160816;
        b=AYvS1zTEYS/nKY4+6nycobYr/NzrBlllw3PMuMf+lIS7gzDC94x2JuXwvNnt9H67zm
         AFWlE+0cUIf6UV+W3R+SKS/95Wi60thKqlbOqaHZeeD1HzEdjoK5f0uvFXzYGZGms7Uu
         REsCX9nY8UDz2PR2TFagDlEfbljmdDnxBC+e3cMpFZq8Hm9RwLw7a5nzdYkkJxlx07I2
         oPJN3yHFj8wSp2D0KAsMiADMOY4Y6MLsu9ccyvdFFRD3RmK2qB+T0t/iraRn1m18jhFO
         h/XocvG7v28EZwSfyjJhFJnJnGWxWy+BLX6r2x5S8IRiesaaD8yuT3+0eqi78SMEiGNF
         ljmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fQNZKbo+Ko3f0ReO8YzrqbXLiCjnMd61Y7nRrFRMY6o=;
        b=znvCd8G8l/Hg19D9kgDkWkuc2DWRh5HMLiULpftAld4CEwc/xrsCKzx3GBf06H1MsW
         E6Jmf8F9jdN/akdrbUgecsCNjrIrnz9IyOWIi3wy2QjduMPWjAOOK3aB707Ik02v5qnm
         ZS/HnR0U7cPdNouCz5xqHnp+dFi2wuqRtCEyRtFggaDh2hEbpVHc9Esn+QfBJH6Spceg
         6UeCQQbk5g2xYkqGu3p3hazxEh7fMThTPMF25gOPqXfmCUdoDfgV9rYn5bEpl97onntD
         /wfIgJIcNDEKndPluGF5h5TNkySiw0U6rqdlXH3nsK+Vvn3ejpB57oBe+IUMZN0A/T6a
         Gc4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u21si206421lja.1.2019.03.31.06.28.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:28:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,292,1549926000"; 
   d="scan'208";a="301295303"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 15:28:11 +0200
Date: Sun, 31 Mar 2019 15:28:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/7] staging: rtlwifi: halmac: Compress
 two lines into one line
In-Reply-To: <a94f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903311527480.2578@hadrien>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com> <a94f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

6 and 7 have the same subject line.

julia

On Sun, 31 Mar 2019, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle.
> Compresses two lines into one line and remove unnecessary variable.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> index 0bd6abd..0ae0d02 100644
> --- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> +++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> @@ -192,7 +192,6 @@ halmac_cfg_rx_aggregation_88xx_usb(struct halmac_adapter *halmac_adapter,
>  u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter *halmac_adapter,
>  			      u32 halmac_offset)
>  {
> -	u8 value8;
>  	void *driver_adapter = NULL;
>  	struct halmac_api *halmac_api;
>
> @@ -205,9 +204,7 @@ u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter *halmac_adapter,
>  	driver_adapter = halmac_adapter->driver_adapter;
>  	halmac_api = (struct halmac_api *)halmac_adapter->halmac_api;
>
> -	value8 = PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
> -
> -	return value8;
> +	return PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
>  }
>
>  /**
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a94f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

