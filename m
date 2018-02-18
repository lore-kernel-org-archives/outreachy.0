X-GM-THRID: 6523850474748116992
X-Received: by 10.28.194.193 with SMTP id s184mr1740284wmf.7.1518958538304;
        Sun, 18 Feb 2018 04:55:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.206.133 with SMTP id e127ls1002497wmg.10.canary-gmail; Sun,
 18 Feb 2018 04:55:37 -0800 (PST)
X-Google-Smtp-Source: AH8x225DPmcqsS6vN+2u559h3/cj3d2ZmOwPP9kxsnZJ7hoiOeeZh3njHoWLZ1CulTwSLsoJ7zMe
X-Received: by 10.28.156.12 with SMTP id f12mr1898216wme.4.1518958537298;
        Sun, 18 Feb 2018 04:55:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518958537; cv=none;
        d=google.com; s=arc-20160816;
        b=s8UllGobpQ3xBvwjCBu8OBfEWovwZ+uEqKiPUjCV3IeRdsHkJhZ9khOw3mIWKYIxdm
         tlH/RAlp5e7R5Y8A2lcMzpYjvLoB9PNSYTn4Tw0m0lSc6R2LeIBu/gUmYjgbCQt5FpMe
         Gx6+VQrWOXOYTyzMjL67XuCor7mFXb0tkOpnIVNFDdpcD+kNABAxcfjOkEHWgkzCNoST
         4SBW4YSgrg92cGTavbD35G3YXrTLe+5/jfkSpEaExYHRvph0mzknr06pwyicYYQ0zEwG
         jkv0nyoC0efdRZxfcSrr4nBAdb2vQYOb2bULCRpn7MTFgTKjBAYLcLk7fwtFj3tdyiaz
         zLIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=MdvTZR7z3rT7pVjiYqAHljA9dCOvXViOSanoyIdMFaE=;
        b=VeGTztFXIy+SzLwup6+vVWr6qlDto6NZhYwAVr6USMzpJbgOTkrxV1yCkwj106P0Z0
         z956aTihXSLUEPpBNmw/MwRGGPXVsraOLHl0WLRtQ1j8Hu8BKoCDJEtHL01Lqh/GT5tQ
         qN6XCOI22Jkvq93oR51PKoFCb+yAowLqMnPVUkYrIWcEl2L9tiJzkRAh2kjFeahjrSF3
         RpkKSv8LHVvwGNwGPUPdBm5Alrx63YcxgqMjDghI5tz7760X1WDtPbBIbMqaMEk8kKMM
         tka26TCO0YTereh8P+7pdNRl1w+5hyOkhtZPn5WGUZNZb13D+sCd8/UycE3ncOrYr73R
         y+uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i75si854102wmg.1.2018.02.18.04.55.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 04:55:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,530,1511823600"; 
   d="scan'208";a="314117150"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 13:55:11 +0100
Date: Sun, 18 Feb 2018 13:55:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eisha Chen-yen-su <chenyensu0@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Use '"%s:", __func__'
 instead of function name
In-Reply-To: <20180218111041.7762-1-chenyensu0@gmail.com>
Message-ID: <alpine.DEB.2.20.1802181351230.2777@hadrien>
References: <20180218111041.7762-1-chenyensu0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 18 Feb 2018, Eisha Chen-yen-su wrote:

> The script "checkpatch.pl" pointed information out like the following:
> WARNING: Prefer using '"%s...", __func__' to using 's626_ai_cmd',
> this function's name, in a string.

Thank you for the patch.  The change looks fine, but the commit message
could be improved.  It is not clear what is meant by "information like the
following".  It suggests that checkpatch provided some other similar
information, but for some reason you only addressed this case.  The focus
is furthermore too much on checkpatch, and not enough one what you did.
The actual checkpatch message is indeed not very important.  Instead, say
what you did and why.  And it should be stated in the imperative, as
though you are telling git what to do.  So it could be "Replace an
occurrence of the function name in a string by a reference to __func__, to
improve robustness.  Problem found with checkpatch.".

julia

>
> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180218111041.7762-1-chenyensu0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

