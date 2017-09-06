X-GM-THRID: 6462776611954491392
X-Received: by 10.46.85.140 with SMTP id g12mr40471lje.8.1504732682379;
        Wed, 06 Sep 2017 14:18:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.4.129 with SMTP id a1ls324729ljf.4.gmail; Wed, 06 Sep 2017
 14:18:01 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDTTD+QhNZfy2VJaDEbHXW/lm3m/vA5ZmbTP+I6kI+jl/Vnu/1rIAOheFaZ1+w7037cLiaz
X-Received: by 10.25.201.15 with SMTP id z15mr34953lff.40.1504732681003;
        Wed, 06 Sep 2017 14:18:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504732680; cv=none;
        d=google.com; s=arc-20160816;
        b=oPoKacT0gEXveDPAox+vT+/aeZNN4hsPFX1EdYzFY7eYUtfPDnccVMkAZD6I2SLiph
         EIc955JZt17e+k0JztyW4WX5+Su1VMV4TUws5fIm6YhUoLy+JOSeHn+bxToqnQYCQAoV
         utaNj+UkpVLiFJ+zae3Ivz4rpguMASNnfZ4isIczlQX/VRwUx/a7j76ooN4uCqhHOdmx
         i5ks8PejyAcuw0PmSO5lC3f8tNZkaQGmh+XL9Hqo1ckxfO7ch6NqzmzxLAGp+SsWGezz
         HqsyuJWLqb+S6575TNtIfJaNnQ2pwHfRwQTW+Cd5AC8+x0B+t/qWGlZ6y0c/NJhnFslh
         JouA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=husrqOrY8uooQ1hXsJ440jlr6VstPAQyE4jFJCePLyM=;
        b=x70908A1CW++s2Eg71dywDpBhVNsjs6+2lO9oeNPqsGhcZqeujLvxUlfGf0jHAYjDF
         AziR2ijInAsUrd3B/TmK4xViwYVF6P22SaTBb03Tqck1zgqwwr160sEIEVg5SnDAxil4
         EP89vgv46KkIG5+AJxIQpbGBdN4a+tQQnTmbiv9pG91DJgV5Bann6hZVKlc2MwCODBCU
         2iClUiddzIc8nx8jkij+06XizUmNCwWH2CyQvMcT0qsIeHQQwgiL8DnaUORJIvva8hLc
         rLn8IK3sFS/mJhNYjOgaBsDUATnQ5B6sGgaqdTK+9OG5HhD0FO8+Zo2Nh1OZifXHcNxy
         IrHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s127si222145wme.8.2017.09.06.14.18.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:18:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,355,1500933600"; 
   d="scan'208";a="236573183"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Sep 2017 23:18:00 +0200
Date: Wed, 6 Sep 2017 23:17:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, gilad@benyossef.com, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: ccree: ssi_cipher.c:
 Remove unused variable.
In-Reply-To: <1504732426-9765-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709062316450.2984@hadrien>
References: <1504732426-9765-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Sep 2017, Srishti Sharma wrote:

> Remove local variable inflight_counter ,as it is never used.

"counter ,as" -> "counter, as"

> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
> Changes in v3:
>  - There was no longer a need to make the comment more comprehensible as
>    I have deleted the variable associated with it because it is unused .
>  drivers/staging/ccree/ssi_cipher.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
> index fec2faa..609ebe4 100644
> --- a/drivers/staging/ccree/ssi_cipher.c
> +++ b/drivers/staging/ccree/ssi_cipher.c
> @@ -702,10 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev,
>
>  	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>
> -	/*
> -	 * Save inflight_counter in a local variable.
> -	 */
> -	inflight_counter =  ctx_p->drvdata->inflight_counter;
> +

This is a patch on your previous patch.  It should be a patch on the
original code.  Also, don't add a new blank line.  Just remove the line
completely.

julia

>  	/*Decrease the inflight counter*/
>  	if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
>  		ctx_p->drvdata->inflight_counter--;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504732426-9765-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

