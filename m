X-GM-THRID: 6462776611954491392
X-Received: by 10.46.87.10 with SMTP id l10mr53216ljb.9.1504767253456;
        Wed, 06 Sep 2017 23:54:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.81 with SMTP id g78ls25964lfi.3.gmail; Wed, 06 Sep 2017
 23:54:12 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5fCm4o+fDQz91dAIQqYbhiyTNvxAsS7yjMKbkriCdU8YV7h3YXdB7KDT1+5qSPIZuQOq86
X-Received: by 10.46.85.140 with SMTP id g12mr117415lje.8.1504767251922;
        Wed, 06 Sep 2017 23:54:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504767251; cv=none;
        d=google.com; s=arc-20160816;
        b=hyWTWB5pAhZ6SJOrjscuIl6nyl/3ENCDNtvZItqlr1ht7C6NzBTuULYcHicKF/oCT3
         AmbknNGK2m26EOkS2mhyIW+fpNMxRsoIu6FK0FjXoR+t26QqnIfWjPeicxzcDvG3dbsw
         6z9f0dQ8A031qowlBJ2ECUcyFBBJ85e7mSlqqskd/RvcwxeQp2lExRs6M2rIqOm2Vpb0
         Oogyxq42VIcQQRO8BTN3eHIReecyAwNYcJJuJBrk6+fIaJj5vfYcOezYbOTXVwS3gXAU
         wi+W0HK1Uqblncz5RiDv/3XKOeUOTlzJaWVVh1o9pzh68Q383+HQU6W1dHj7jSqqYEHY
         H5NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=lp1E5XNjQAGTZnFdTn5pvYrl4y/5Qe7U+2r5QwY+fhI=;
        b=ffCt2yXX7MBzC3B74sf4W/NPymlIN4ofE9cAg1R9NnEgs66J1/rnwirBFfJkIRa3iJ
         7XLosEkZI7xPwLk+Kx4E3j+yYjGWjh2h0WE9ne3W44rUsssjM/GfeN455eJKKfsCdYTi
         zyb837ydeFXZIO5LwsdZSDyyeiZ9MA8wIsVINpR2YabFevsQZoRfXpDIgwsnNyMC1G4j
         I9WsT1jg6C5w12y/5ssLkYouMiu6zr0t1tvBMXsfNYBdLP+nBPNzxjteCAru/NOADK20
         EPCMgC2RmuCLMPJUT4D3Iqy9PZbUSItNY7BRc3xNYOt0233ehZuwLY0nniOclYgqqI5+
         lAuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 136si55798wmy.1.2017.09.06.23.54.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 23:54:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,357,1500933600"; 
   d="scan'208";a="236596248"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Sep 2017 08:54:10 +0200
Date: Thu, 7 Sep 2017 08:54:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, gilad@benyossef.com, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: ccree: ssi_cipher.c:
 Remove unused variable.
In-Reply-To: <1504735553-13753-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709070852150.3084@hadrien>
References: <1504735553-13753-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

One last detail.  The subject line above is not in the same format as that
of all of the other subject lines one commits affecting this file.  You
can use git log --oneline to see what others have done.  It is not really
possible to guess correctly.  However, one does not generally include the
extension on a filename.

julia

On Thu, 7 Sep 2017, Srishti Sharma wrote:

> Remove local variable inflight_counter, as it is never used.
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
> Change in v4:
>  -There is no longer a need to make the comment more comprehensible, as I
>   have deleted the variable associated with it. The v3 of this patch was
>   not based on the original patch, hence v4.
>  drivers/staging/ccree/ssi_cipher.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
> index 8d31a93..1ff3c8a 100644
> --- a/drivers/staging/ccree/ssi_cipher.c
> +++ b/drivers/staging/ccree/ssi_cipher.c
> @@ -697,13 +697,10 @@ static int ssi_blkcipher_complete(struct device *dev,
>  				  void __iomem *cc_base)
>  {
>  	int completion_error = 0;
> -	u32 inflight_counter;
>  	struct ablkcipher_request *req = (struct ablkcipher_request *)areq;
>
>  	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>
> -	/*Set the inflight couter value to local variable*/
> -	inflight_counter =  ctx_p->drvdata->inflight_counter;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504735553-13753-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

