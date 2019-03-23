X-GM-THRID: 6671492660700643328
X-Received: by 2002:a17:906:4ca:: with SMTP id g10mr8042232eja.88.1553328811213;
        Sat, 23 Mar 2019 01:13:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9e41:: with SMTP id z59ls450386ede.8.gmail; Sat, 23 Mar
 2019 01:13:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxh03mwl4M7Owo/QTgcPy2cQcX72SX+5WIaQimNwmtYvu+Pwmjrnp0H3+oDay7P6ZUwC5ZV
X-Received: by 2002:a50:90ee:: with SMTP id d43mr9566946eda.220.1553328810269;
        Sat, 23 Mar 2019 01:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553328810; cv=none;
        d=google.com; s=arc-20160816;
        b=NpRL85DWFyvQhm4LJ7RbjUIZoLU+HHwhnoUOF+bFQQVvF04S2ccGT02Vs0nK051bTF
         y5bRXl7LFlcpld4THPyjB56h1DngdUbxaQ5jJHlPOJ7uL1QVNbu/wUYW0bswwZWNQdyT
         rPRfA1nioSVkz8XTd0MDO0Up3yZJxdwoUu5qRWM4ZAaVst9G15hO/cYm7BTqUa+Zzg6W
         fkkzo3J7tHcVhGzi38KbXV/2qPnjNiBU/9CJYSJ+mQ5cxZjk/nrzNlF+XenixOphYAbJ
         sipU4dsDGw/pjKJS3y+7Neb+TPm3NF3Y96lpdjZ3P3064yYAAuVwwj28s9RM2FR94cGi
         VE5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=mMb5yb+Uj6IaiRJv5rk/Oc8RYLBvE6j0gb6aE/EZkpM=;
        b=Z65yyRXrkG5QP8Q5xzKGH0xuz5JZCkDJndwMWLaoErXTd18Pr0XV9biN1GPsEo/KEV
         soiYk2koDp2OTbtGlMW2sDEmLDCf6AWTEPjfFRgUBhGZli/7tWcHjOpJ0jBBBpjgvlFm
         OB0DBB8GUeK2BSqfbBAquw0Zh5nwcU99P+oL6uywvdIDPXy5zzU/Gp7feZWhKvAJlMTQ
         52ydAXZiEDbLbcb3VO9c2PATI4WyPkmNHf6SZ85UNZ/pLjeotmpOcI2KtZD5LfjPjvZt
         n9du51VN9CmAWVJIGfQPkVPDyG+Q716pUgqGu3AwjIcne44GjRXXOQDUJ5+YS7eFBu+F
         frfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id jt16si200226ejb.0.2019.03.23.01.13.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 01:13:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375395764"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 09:13:13 +0100
Date: Sat, 23 Mar 2019 09:13:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com, pkbehappyallthetime@gmail.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: rtl8712: avoid camelcase
 variable name 'bPowerOn'
In-Reply-To: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903230910120.2537@hadrien>
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com> <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1954174631-1553328793=:2537"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1954174631-1553328793=:2537
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

When you make a series, it is nice to make a cover letter as well, so that
one can see the scope of the changes all at once.  see the tutorial if you
don't know how to do this.

On Sat, 23 Mar 2019, Payal Kshirsagar wrote:

> Eliminate camelcase variable names to fix the style issue – ‘avoid
> camelcase’
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
> index 00babd0..3275f7a 100644
> --- a/drivers/staging/rtl8712/rtl8712_efuse.c
> +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
> @@ -23,11 +23,11 @@
>  /* reserve 3 bytes for HW stop read */
>  static int efuse_available_max_size = EFUSE_MAX_SIZE - 3 /*0x1FD*/;
>
> -static void efuse_reg_ctrl(struct _adapter *padapter, u8 bPowerOn)
> +static void efuse_reg_ctrl(struct _adapter *padapter, u8 power_on)

It seems that bPowerOn always has a boolean value.  It would be nice to
add other patches to the series that declare the variables as type bool
instead of u8 (or int in one case).

Actually, this particular function is only called once and only called
with the argument false.  The function that looks like it should call this
one with the argument true currently just returns true,  I don't know if
this function should be specialized to the false case and then inlined
into the call site, or if it is considered that the true case gives useful
information about the device, even if the code is not used.

julia

>  {
>  	u8 tmpu8 = 0;
>
> -	if (bPowerOn) {
> +	if (power_on) {
>  		/* -----------------e-fuse pwr & clk reg ctrl ---------------
>  		 * Enable LDOE25 Macro Block
>  		 */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1954174631-1553328793=:2537--

