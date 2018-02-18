X-GM-THRID: 6523850474748116992
X-Received: by 10.28.89.193 with SMTP id n184mr1869281wmb.22.1518961366850;
        Sun, 18 Feb 2018 05:42:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.88.84 with SMTP id m81ls284384wmb.3.gmail; Sun, 18 Feb 2018
 05:42:45 -0800 (PST)
X-Google-Smtp-Source: AH8x227CFHW0S8PgRc5XHx+ofoJBs4RfrVwl0ukAfFSFvq3r1wz3dmhqdzru/Houhyx1kLXqfU31
X-Received: by 10.28.237.21 with SMTP id l21mr1911662wmh.32.1518961365959;
        Sun, 18 Feb 2018 05:42:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518961365; cv=none;
        d=google.com; s=arc-20160816;
        b=kIdhHqSSDcCb7lJQy+PkjanjzF7vwil0opDbpTtO/11O68zeMwWTZlAcsXpR4aG/sA
         vFHpxKtD9GFEWBnMiP2FC5poI7dD3fzb/cD5POWGz4pnqb06MKGx6ZRjdQ1xc+7/oTPM
         SPYhr/7OGRtzyc0Mh07pyPjDeDwBdyHKy/zW9A3OH8RaS+lruUQDZL+MEUOhxqArVocq
         DGJxStNhqRe99Ysr8BE0vm6DmChPrdDUATVuTdGRCRIUTwAE4Lz1e/kKEWygBH5XJWgm
         B6bHCR1KtjOchmDYiIGhmzXId6dbQT6ZWH3bYvcjSXpO1dcRY4ee5HpsgEeT3AYDfMZA
         9GHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=gGjEv2IXxAG6qBcrsTbTzEpAUyOBCGCPvGokzI4vpjI=;
        b=FuCSwka3DZW2vLC8IRn2Acwba6OOzweDvikWS5s+iL23GcFvyw23q7iUYZsPXORm/K
         IWZa8iJL82VGVA/RhUuehfSz6lFj9JFHTe1onXWe+VjaP+MvtadcaeGTW2ltcwCvkdwX
         C+cFTADdotP5lIzJVaZRJ+/WJCaanJWGHizJkFnGuIwWla4qZyszscV+LlpAJcTCRfY9
         EfrBuq/iy5kYgWbrv+ZL5Vyr75EHCKxtcLdTQwkmdrpXWgLdwy1hhYdoFtLRRQQRtfh7
         r6vvkKuChPdMqbg4DOXTN+jmuFFtnSXz6Xfn9Ak8O7xrWFy0VsKDiQoglmN0vDH5yySt
         dFug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si126003wrc.4.2018.02.18.05.42.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 05:42:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,530,1511823600"; 
   d="scan'208";a="314119063"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 14:42:45 +0100
Date: Sun, 18 Feb 2018 14:42:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eisha Chen-yen-su <chenyensu0@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: Use '"%s:",
 __func__' instead of function name
In-Reply-To: <20180218132707.3300-1-chenyensu0@gmail.com>
Message-ID: <alpine.DEB.2.20.1802181442050.2777@hadrien>
References: <20180218132707.3300-1-chenyensu0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Feb 2018, Eisha Chen-yen-su wrote:

> Replace an occurrence of the function name in a string by a reference
> to __func__, to improve robustness. Problem found with checkpatch.
>
> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>

Looks good!

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
>   - Improve the commit message to emphasize on what was done and
>     why. And make use of the imperative.
>
>  drivers/staging/comedi/drivers/s626.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
> index 0b3cfe934e14..ec54dc3e9ad6 100644
> --- a/drivers/staging/comedi/drivers/s626.c
> +++ b/drivers/staging/comedi/drivers/s626.c
> @@ -1700,7 +1700,7 @@ static int s626_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>
>  	if (devpriv->ai_cmd_running) {
>  		dev_err(dev->class_dev,
> -			"s626_ai_cmd: Another ai_cmd is running\n");
> +			"%s: Another ai_cmd is running\n", __func__);
>  		return -EBUSY;
>  	}
>  	/* disable interrupt */
> --
> 2.14.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180218132707.3300-1-chenyensu0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

