X-GM-THRID: 6807040455722663936
X-Received: by 2002:a05:6000:370:: with SMTP id f16mr24572645wrf.9.1584887721204;
        Sun, 22 Mar 2020 07:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:2250:: with SMTP id a16ls1180016wmm.3.canary-gmail;
 Sun, 22 Mar 2020 07:35:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtRdH+A/MTy8u5d9k2rKzaXBZ0gKpNY55HYc2sNcgqxFMgydDrEBcGSkFR2TO64P69jiC7H
X-Received: by 2002:a7b:c8cd:: with SMTP id f13mr8624443wml.181.1584887718881;
        Sun, 22 Mar 2020 07:35:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584887718; cv=none;
        d=google.com; s=arc-20160816;
        b=sIn1OuOH+AHWC+wuaN9kw/xOZqag1M7GeO2xEdbtdfW81dzKJJYnCkVeqrsSrlICtM
         qWw4ndhVVcecrjJAwERnVQzUHFOsFI7fOjJDftlbvVef1cnx3viZ9AH6cniRV5S8VOKL
         1COo8wXhq5Poq9HyN0ORQRCC0KxxOpviIP+mC/DAqbSEZCXVfM1ftLqVJdAX8DZlYhT6
         9YWCzhhmVYQwByHLNqOQ+za/Os5iKLzqQZy18ZR/0E/UMFcHTmfLQzLyveHEnpapU0uP
         SI6RG7bvHvi+W3YJ2jRuIqOIB5JjnYX6yQ7aj5zQ4cnTM9U2A8CYy+K0H0U1ABh2cw+m
         TcFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=egjyj8CrtONPNZ893H6+PZ6FHZ0uQpWLQIE3E2zckwI=;
        b=M/oIFaczceUiWsQIIXCsjoDHwUAhjy/57nFmWglC19zU7mpchuuWlh/gJfdMjiys2Z
         xvEiu2Qt7YjvpyOSQ0Hqm+LaGSQ5Feob/QMJzKRZTwIk6IVqXxqUQNeTkg1TUymb/iNa
         Z4XIhzvbm9UtP8djUT9FASPp/QenyEvyxmMSLV/NXFYFczz5jIR9w8ou9g0uiA8NBM9G
         GWx6jo/Odw1TopkPxgawyLcaZzAy5ozW6A1t0F0dPAId/R9Rqveyyih9I+PR2lHd6Lrg
         8yShakut39c6hP3u++X9oLh4QfLPIDe36nNuO7fT/kJZrOq+UqdQYsLHU9eMnREIQW2m
         Q2Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id l16si441100wmg.1.2020.03.22.07.35.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 07:35:18 -0700 (PDT)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 575BEE545;
	Sun, 22 Mar 2020 15:35:18 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHISrqNb7d7r; Sun, 22 Mar 2020 15:35:17 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr [86.234.239.11])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 3D8B8E53A;
	Sun, 22 Mar 2020 15:35:17 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1jG1h6-00GxtT-8P; Sun, 22 Mar 2020 15:35:16 +0100
Date: Sun, 22 Mar 2020 15:35:16 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] Staging: speakup: Use pr_warn() defined in
 <linux/printk.h>.
Message-ID: <20200322143516.wsekmcsreziw5tvo@function>
References: <20200322143322.29098-1-jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200322143322.29098-1-jane.pnx9@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)

Sam Muhammed, le dim. 22 mars 2020 10:33:22 -0400, a ecrit:
> Dropping a user-defined pr_warn() and using the kernel
> message printing functions implemented in <linux/printk.h>.
> 
> Since both have the same functionality, using the standard
> kernel functions is better.
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> ---
>  drivers/staging/speakup/spk_priv.h | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/speakup/spk_priv.h b/drivers/staging/speakup/spk_priv.h
> index ac6a74883af4..c75b40838794 100644
> --- a/drivers/staging/speakup/spk_priv.h
> +++ b/drivers/staging/speakup/spk_priv.h
> @@ -11,13 +11,11 @@
>  #ifndef _SPEAKUP_PRIVATE_H
>  #define _SPEAKUP_PRIVATE_H
> 
> +#include <linux/printk.h>
> +
>  #include "spk_types.h"
>  #include "spk_priv_keyinfo.h"
> 
> -#ifndef pr_warn
> -#define pr_warn(fmt, arg...) printk(KERN_WARNING fmt, ##arg)
> -#endif
> -
>  #define V_LAST_VAR { MAXVARS }
>  #define SPACE 0x20
>  #define SYNTH_CHECK 20030716 /* today's date ought to do for check value */
> ---
> 2.20.1
> 

