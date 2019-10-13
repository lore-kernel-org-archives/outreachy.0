X-GM-THRID: 6747349178842611712
X-Received: by 2002:a17:906:19d9:: with SMTP id h25mr24355411ejd.297.1570995075605;
        Sun, 13 Oct 2019 12:31:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ac25:: with SMTP id v34ls2925418edc.10.gmail; Sun, 13
 Oct 2019 12:31:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyt+Byt2Ljvp2N+dzCk7U8ev0OiIVTXffYz7teK418bDuNOCnIi61zf3K36103+2zPzlw48
X-Received: by 2002:aa7:c959:: with SMTP id h25mr24923162edt.216.1570995074643;
        Sun, 13 Oct 2019 12:31:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570995074; cv=none;
        d=google.com; s=arc-20160816;
        b=OS+N199T3RSlqeQ+KQDHWrg6P3kXQ8QgyPXgwK3F3cv32n0j2AewtLdWGvTL5QRORI
         DeNgnCX5RWnlaCymw77k9hb/kSfUJ9/0LyNID4HoWSHkot0wOcrwOjL/o4ELaXrWwiSH
         WzYNCTFRFavXc6OL7pwH+/ki5wZOXCYbpCV0E7xf7H7wmKK7uhGaxSUxan8Q567oCx/W
         BH7bEbSQyiYB65FZbNDU1c9dBjy/jKFpBHbrT5y/9CQh1BKbWmOhUIFHLKRxBMUB70RI
         YSBxhvmyKF9NoFJajG35inLfQp19H9c/PLKYMLIXlnSN3d+1ndm8a+Ze6rUDrpf6e1L3
         uDQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ODrOXRbkBotVGygMgWn3v0cCpPS7x9C8Kj50AAvLYBQ=;
        b=l96roeQkGBZ8pPRz2pFQnYMf2K5e5qa9rTg9VFZQClv+8a2ao9oFkKO/LHpeb91+IS
         BO5XHEcfKvUR4ovbOCfCZtJyrMq8iuMiUpVSEkdkKwZ8rUFKcuhBAzYRyIFi3r1Dld85
         BriCuVItcUiNORiprQNTJNKHRmwSDu4YwEQEaaMEuB1mTMAqT/cCq5detUcwK1w4AJ7B
         ff7zQyBUxcJoVEy2SHmTTsmvOPaa9TaXbMh/I8iuu9yhQbdv+3q1DsFhEi3ACmxljiFj
         CJTbV1RRJ4vVMoDPmWtA8/d9jcMKPZrANhKQeb0QebkK9u8bDctT72E53+8akaah+Gys
         P+MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r3si478951eds.2.2019.10.13.12.31.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Oct 2019 12:31:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,293,1566856800"; 
   d="scan'208";a="405952555"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2019 21:31:14 +0200
Date: Sun, 13 Oct 2019 21:31:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, eric@anholt.net, 
    wahrenst@gmx.net, bcm-kernel-feedback-list@broadcom.com, 
    linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: use DIV_ROUND_UP
 helper macro
In-Reply-To: <20191013191027.6470-1-wambui.karugax@gmail.com>
Message-ID: <alpine.DEB.2.21.1910132126290.2565@hadrien>
References: <20191013191027.6470-1-wambui.karugax@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 13 Oct 2019, Wambui Karuga wrote:

> Use the DIV_ROUND_UP macro to replace open-coded divisor calculation
> to improve readability.
> Issue found using coccinelle:
> @@
> expression n,d;
> @@
> (
> - ((n + d - 1) / d)
> + DIV_ROUND_UP(n,d)
> |
> - ((n + (d - 1)) / d)
> + DIV_ROUND_UP(n,d)
> )
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
>   - Remove comment that explained previously used calculation.

Maybe it is not very important for a comment, but remember that what is
below the --- will disappear in the history.  So when actual code changes,
it may be necessary to integrate the extended change in the commit log as
well as putting it in the v2 changes.

julia


> ---
>  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> index 87535a4c2e14..22931ab3a5fc 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> @@ -4156,9 +4156,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
>  				break;
>  			}
>
> -			/*  The value of ((usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B) */
> -			/*  is getting the upper integer. */
> -			usNavUpper = (usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B;
> +			usNavUpper = DIV_ROUND_UP(usNavUpper,
> +						  HAL_NAV_UPPER_UNIT_8723B);
>  			rtw_write8(padapter, REG_NAV_UPPER, (u8)usNavUpper);
>  		}
>  		break;
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191013191027.6470-1-wambui.karugax%40gmail.com.
>

