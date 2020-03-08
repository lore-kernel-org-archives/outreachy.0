X-GM-THRID: 6801809120095633408
X-Received: by 2002:adf:bb4a:: with SMTP id x10mr12125479wrg.178.1583674865720;
        Sun, 08 Mar 2020 06:41:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a444:: with SMTP id n65ls5243654wme.3.canary-gmail; Sun,
 08 Mar 2020 06:41:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvq+3rlAGbWE89ELPYCp871JffGNZ77nQh+0goziFKr+T4FWYterJsHvbeYovTQJ3Ociq+9
X-Received: by 2002:a7b:cd11:: with SMTP id f17mr15573517wmj.6.1583674864197;
        Sun, 08 Mar 2020 06:41:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583674864; cv=none;
        d=google.com; s=arc-20160816;
        b=iX/acitpjAwHAA5FUEh6wmvlmLEyxuiljG+4o057bn0ypyoVp6fdTM4qEjaPxHDVZ3
         nSZvqMb18D+IRaj1EbB0t6FdLxT3DBgUO9ops/t73w4z2qTE3pI0zzD1Ioh0xckOal/S
         JyPWjIODbamDDtzqjTRr6LGOxa8LDsjOeMelrk6af1qR01x7XEg0ckS9W4Ioz5l28ec9
         Hxv12n+3nJ7DTUMauxhZ6+pe/5PxE9J3Z25V9iNbnBsVmHgUXT+iOQTH7xWy0/7Za0Sg
         RS98XJinhBa8zafH6s+iG1w4VQtHJ03MVnarkM8edyaZZYI2s7Z/RiZTD7iKy/9709As
         6fmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YCMOf8sczusGHkT+veMUeJsjQOu8IoYwo2uTE1JG6k8=;
        b=j4Kgo3WGlY5VTD5aoteijSjHW5ea3kJVacCIroH9tcFPGqAgmd8Hnb4k+x1Ifb5KUJ
         J1YLmMecc1xCUCuGhbPwcF/IJ/r+CJw5I3vH7jZFAfqWFvri8ifAu9I0Lk9fXJiHmBZ5
         fC6+ElawxEIt+5xyFr7qd4KITXfSAigUWWysw2MaurS443o+RlGnU0dJ5tuLWEW3GgY1
         cDUzXbq1EEWUdrbMRw9X8HeMwCdf03RgPTJQkAj7N2BCK4COcd+Rsxgg43QM7vQnyKKg
         Ero10nCwSo5+q1F3zX64apz4x4kuxSFT9bOS89B1pu20j1nZ9dxuVghTSgJjOy1ClB3E
         TWLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o194si619987wme.2.2020.03.08.06.41.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 06:41:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,530,1574118000"; 
   d="scan'208";a="341663450"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2020 14:41:03 +0100
Date: Sun, 8 Mar 2020 14:41:03 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] [Outreachy kernel] staging: greybus: remove line over
 80 characters
In-Reply-To: <20200308132643.4256-1-payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003081437400.2400@hadrien>
References: <20200308132643.4256-1-payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 8 Mar 2020, Payal Kshirsagar wrote:

> Remove line over 80 characters.
> In this version-2, comment and field are grouped together.
> A whitespace is added after "bi-dir,".

This is not the correct way to present the revision of a patch.  Put a log
message that would be appropriate if there were no version 1.  The patch
will ultimately go in the git history where there is no trace of version
1.

Then under the --- write v2: and then describe what you have changed.

See https://kernelnewbies.org/Outreachyfirstpatch and search for v2.

julia

>
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index eebf0deb39f5..cc5a52fc926f 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -47,7 +47,8 @@ struct arche_platform_drvdata {
>  	struct gpio_desc *svc_reset;
>  	bool is_reset_act_hi;
>  	struct gpio_desc *svc_sysboot;
> -	struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
> +	/* bi-dir, maps to WAKE_MOD & WAKE_FRAME signals */
> +	struct gpio_desc *wake_detect;
>
>  	enum arche_platform_state state;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200308132643.4256-1-payalskshirsagar1234%40gmail.com.
>

