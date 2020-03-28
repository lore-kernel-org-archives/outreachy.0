X-GM-THRID: 6809045974031269888
X-Received: by 2002:adf:f0c5:: with SMTP id x5mr4203946wro.415.1585390528015;
        Sat, 28 Mar 2020 03:15:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls5154654wrr.4.gmail; Sat, 28 Mar
 2020 03:15:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsmyB/DCKdV2oGTobX9oIqKmOJXWwpEwexs6yyQLNih3g4Cg9uGKFdUfkCRmasZpMJl0DZA
X-Received: by 2002:adf:fd44:: with SMTP id h4mr4226161wrs.177.1585390526783;
        Sat, 28 Mar 2020 03:15:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585390526; cv=none;
        d=google.com; s=arc-20160816;
        b=oHnT1SrgXa33ZmK1td2JsL6kxZUM+udLPxxMGVq/PFzY51KUEZzyIzpUAQrYBBmTKH
         AWyzih4OCdyfLx9zlolo22WIx83mCHaJR/ehUzkJo9UuggPskguCdLhM4qi/gblLn1Bm
         gOVIogX87lnBsB3jS6KJ/5W/NgtEfdqqMN94txAvEpSgEnQtiWe5KGal7Gx9Fr9i2drN
         RUPADsdJ0EHnOKbl50mqN74bE5/jnvrqLGq6kNVTWudm7laP5ua0jf3qdxAETfTnXv8i
         4GyKWa9wTFHj1HNwTZEMFnCbC/L4Fh+zdPPUd4PA3YIqeXKqQXV/pe4Ajb3SGJFoC2i/
         2t2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9npCFPSMR3ctH+1ZEgDXpXIiYt3b3+N8xQcR2xlUQRw=;
        b=AVCTEffxLOe6vuelIXDAIrO3tTzeKeUOxhMLYiADNDbPL6ATQ84sSy4ZWGinlJSb6p
         IByIdQvdfjbbjhZSDpfwyrisoPvi3SHJiB9oUcSk6h/rex5v3fPBB+oqt0j3ANW7Hfe1
         r5aF3YPkJpvYC68UHAkQSMeTgxXII3Zdbg6CGuI6xPiM4QrGyajdAhebjjWA76i8zRus
         QBRzAB85+Xe7tUMOkg8bImoYQ6lXgsNfx26Mk3ahvU2dV23Z12KpUtDTKfG+skT6D9ut
         I0A4lHknJ/7cCxRw4fVcEHYQOoaf4FcdXA9uBJZm63idMwOV+52DSpqHpyDvKnkATHJ0
         KESw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d16si349452wrv.4.2020.03.28.03.15.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2020 03:15:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,316,1580770800"; 
   d="scan'208";a="344121157"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2020 11:15:26 +0100
Date: Sat, 28 Mar 2020 11:15:25 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: line over 80
 characters
In-Reply-To: <20200328001552.GA14914@siyah2>
Message-ID: <alpine.DEB.2.21.2003281112420.3005@hadrien>
References: <20200328001552.GA14914@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 28 Mar 2020, Gokce Kuler wrote:

> Line is split from comma and add bottom line for 80 characters rule.

"from comma" is not an important piece of information.  Since comments
aren't code, they can be split anywhere.

From the log message, it looks like you are doing two different things.
But the second one is actually necessary because you have converted a
single line comment to a multiline comment.

It would probably be clear enough just to say:

Convert a single line comment to a multiline comment to respect the 80
character rule.

Problem found using checkpatch. (if that was the case)

julia


>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 8f305c9..092f1c6 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -711,7 +711,9 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
>  		} else {
>  			output->paths = sm750_crt;
>  			crtc->channel = sm750_primary;
> -			/* not consider of padding stuffs for oScreen,need fix */
> +			/* not consider of padding stuffs for oScreen,
> +			 * need fix
> +			 */
>  			crtc->oScreen = sm750_dev->vidmem_size >> 1;
>  			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
>  		}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200328001552.GA14914%40siyah2.
>

