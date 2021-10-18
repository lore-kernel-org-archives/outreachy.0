X-GM-THRID: 7020448359173324800
X-Received: by 2002:a1c:23cd:: with SMTP id j196mr23777wmj.11.1634576079724;
        Mon, 18 Oct 2021 09:54:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4f08:: with SMTP id l8ls1534wmq.0.canary-gmail;
 Mon, 18 Oct 2021 09:54:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxNK81/jjZPvdlwilSw9lqG6tOFci7nRzZjAU6WjE3m97pMJjop63lwQbZSms90l4AVk3lm
X-Received: by 2002:a1c:2507:: with SMTP id l7mr25003wml.186.1634576077997;
        Mon, 18 Oct 2021 09:54:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634576077; cv=none;
        d=google.com; s=arc-20160816;
        b=Kl65MQwzwyvqIBcdCOEynyoMWH4K/SyDq6nzq4aFDoxzxjJWhGCS6tiGNk9HDc08W9
         DxY84qFDTLCOY16V5HyuKDRbplUpzgTlXhXF+xmY24VugZLuB1NyxLTKD8VxfjkzFioz
         IXV55giF8+fKHBOw+yk/7apIFGi8hhezs3OV8Dl+WW0kfHlPyFTME67iH26Trtgoqzac
         PlflHZyT6N/TNzwN51SVchAAjweAKcCWyxR5uZDWZy6KR2Nbx8qMHSG5AsGHKYuGuA85
         hAdKxfCf0YNo9aOdbhlzvcaMxlJ+6LNSLvbXneuq+PzdGW/QJ6VsPpt0q1M85kCGnIvR
         /IEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LCcdtasdXTfQbgTnNzKTJ+Rp0V8NQd01O4JHhZ2sxG0=;
        b=EczOiJRsdAMcUMt1c1ubRWXWM6fZKvjzQbahRjBND/02bJlCHxd9VuLvA4rSft21v1
         BZ9VlDX9j4P/HqI7MpbdSOvwvl4lL4dTuUwHZOkrEUJmyj8+PiqchLgDbiQrD+JfFiXp
         Ok6fkAACU4TCIqAk+ckHv6KhTD8thXffpNL36jlwbFMbjXcYbjXtQLrBzISq6aFpjOUL
         pRw/HjHsUuQ0FITH2EHbTKfsVA30fVisUxQQXA2RQXzxkDbqPBtVRqdTXLncVdlMXINH
         1y1HzwPk0WaII20qYcMMhWHQXkVMrcACYYQSN52egdxT47B0QZebsGbKrgGJ7FUJLcKw
         d6KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UkGRKExs;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id f9si1846018wmg.2.2021.10.18.09.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 09:54:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UkGRKExs;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52c.google.com with SMTP id w19so1545566edd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 09:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LCcdtasdXTfQbgTnNzKTJ+Rp0V8NQd01O4JHhZ2sxG0=;
        b=UkGRKExsMrfGyQxxuhUHofN4K1fIKX16G+zN4AzD6dMG+kENjn59yfYj+oLLqgvBte
         6dnEcaxMTD2/TeC9EJPxCnItxyFnSR/EFuxZZCGqDIvyVymQoyO6Q01I8UAu08c172Yf
         iwLIdOapzuMfI6kVPQCpd4il22Vb0J9AQmaK1g7EzKeqqz9kFDdxAvBo2AsAkj+ErYT+
         WrBT38VJBSpli0qLZfpWQRjEITK3Qm/GjYpf8J+XnYMFm0UznDLbcqFRkuk0JNoiTGcm
         BJ+vuwgig3kTi3K4ZYDBhLZrFCaea0eBzoF5J5VhELaZ4kVmYs3mBpTQBg60rt4g68BQ
         PC8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LCcdtasdXTfQbgTnNzKTJ+Rp0V8NQd01O4JHhZ2sxG0=;
        b=lmoSb3i1a5Uze+3c4DKn82QGM9q+wAMOhBKLzAhAJ03z5NSY007spc8ViTjU9DZI00
         +3Vmw3wRUN7mhEsxze+cSjfZhBbtomaLrsEX92Kr0EfLYJiu9R03tUG7BQWDsWSFRJkY
         0hKWJIXNfsLQVXzHV7+83aGuujgHl5p/dXsb5lfhpS4h+R8+eb0kIxEBfS/U4ctRgOTC
         XEE8KZyYLZpreNg0JTLtxnMj3cV/W4IMebZ9jRMZtozhLDI3MisMO+Ldwjfq5YPNtkrA
         6FdmISKXCujkltp9TxCpn/slsceUqPD4c6KvfyYtAa+CWz9hid8rfdP2dkbbUUhrQRhy
         tPmQ==
X-Gm-Message-State: AOAM533n3M4pwYdLB8uczGFZX6mkdCiLKgIHAG4DkvmCEwHJg/WGfWC1
	v5KeRrX1p0fPVizbJYKo6A8MBNevamo=
X-Received: by 2002:a17:906:c015:: with SMTP id e21mr30928104ejz.113.1634576076487;
        Mon, 18 Oct 2021 09:54:36 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id y6sm2837762edj.51.2021.10.18.09.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 09:54:36 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, mike.rapoport@gmail.com, kushalkothari2850@gmail.com
Cc: Kushal Kothari <kushalkothari285@gmail.com>, Kushal Kothari <kushalkothari285@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in array const
Date: Mon, 18 Oct 2021 18:54:34 +0200
Message-ID: <163460335.XzdQGyDEVH@localhost.localdomain>
In-Reply-To: <20211018164431.26462-1-kushalkothari285@gmail.com>
References: <20211018164431.26462-1-kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> Change the parameters of functions from const char *g_fbmode[] to
> const char * const g_fbmode[]. This additional const is needed to
> allow us to fix  checkpatch warning, as well as being good
> programming practice.
> 
> For the checkpatch warnings, if we have a set of command line
> args that we want to check defined as:
> 	static const char * g_fbmode[] = {NULL, NULL};
> 
> checkpatch will complain:
> 	WARNING: static const char * array should probably be static const 
char * const
> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/
sm750.c
> index dbd1159a2ef0..3d9b4b0efcb1 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -33,7 +33,7 @@
>  static int g_hwcursor = 1;
>  static int g_noaccel;
>  static int g_nomtrr;
> -static const char *g_fbmode[] = {NULL, NULL};
> +static const char * const g_fbmode[] = {NULL, NULL};

You have introduced a logical change (g_fbmode[] entries cannot be assigned 
any more) and a build error (because there is code somewhere that assigns 
values to those slots).

Please, build the code after you've changed it.

Thanks,

Fabio

>  static const char *g_def_fbmode = "1024x768-32@60";
>  static char *g_settings;
>  static int g_dualview;
> -- 
> 2.25.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/
outreachy-kernel/20211018164431.26462-1-kushalkothari285%40gmail.com.
> 





