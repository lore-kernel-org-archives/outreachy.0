X-GM-THRID: 6462748484201086976
X-Received: by 10.25.80.92 with SMTP id z28mr31612lfj.17.1504730397159;
        Wed, 06 Sep 2017 13:39:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.211.207 with SMTP id k198ls2556894wmg.21.canary-gmail; Wed,
 06 Sep 2017 13:39:56 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7a57V98FgUgiW1TOkFld0RyxTBV1BWEgZ05RdwawQbd8jWnszJd9yNSy6qdKw3b9oWRqBV
X-Received: by 10.28.54.30 with SMTP id d30mr79506wma.6.1504730396075;
        Wed, 06 Sep 2017 13:39:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504730396; cv=none;
        d=google.com; s=arc-20160816;
        b=loG+QT3HwUJkTvdVZH4SAam64HP9X73iX8m1ulkPrt+n9+GwlM+vcQQrmeWmt6pnQ1
         efeppV9Ta4d0wCcw4FkvROypb31noo+623s1IY23ESbFzRKUvsamVKl+1u7Kh2b//oMV
         fwwaCWEEvQ69Dsq4V6XRo9XIYZgyWIOWUfg0Y2Jv9f8El0XpmVR+yoVRJxucDLOa0APG
         X93uIUZOB7X4XvrkNjqX3sgoAf3CX3kmDVHBAN5fp9UPfBt63LIV81rGpYmnhD+6clP+
         y2YXrJ4IOCIY3/F4eyghSCb93HlRpnaf9PsTLa6ufiLQlZymNyuU6uWlujv4iVNx6pIh
         rp1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=NymM5TRmLU/ybZ26mP1I8I4pEHCt9sIgQbaZktfKxEs=;
        b=KuWbhCQmwffRU6vtU/tOo2UaT7QanP4xHikcWRR87cwbFAWYIhZYtHE+Y7JjTEVbjd
         MTi7TMZ8cFz/UhGC4cF1kjN0MnrdShaG+317TmEi7SlK33ALTIL1UAsHeAIeXYav7knR
         Ibncly8eAvSoSEfp1t6v/RrLIxHoT4nSGzcuIcRBlukEEZEfTM8WGBkOtRUieJrFCB2s
         qQ02OrikkHyGzidY5TF+6pLl96bdnOIMaoZvpislMnTyHytJSg2bVQ6+1NZj622wYrER
         /A20lfsOt4BoNuntaPUUnFxBglwmsbSfGO8THG73UP95YdueWddEf6nljOxnwoqeq/3J
         nCdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si185737wmb.3.2017.09.06.13.39.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 13:39:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,355,1500933600"; 
   d="scan'208";a="236571203"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Sep 2017 22:39:55 +0200
Date: Wed, 6 Sep 2017 22:39:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, gilad@benyossef.com, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: ccree: ssi_cipher.c:
 Correct spelling mistake.
In-Reply-To: <2b8bde9c-6e84-48c5-ab93-76127f314429@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709062235350.2984@hadrien>
References: <1504725863-8495-1-git-send-email-srishtishar@gmail.com> <2b8bde9c-6e84-48c5-ab93-76127f314429@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1658514752-1504730395=:2984"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1658514752-1504730395=:2984
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 6 Sep 2017, Srishti Sharma wrote:

>
>
> On Thursday, September 7, 2017 at 12:54:49 AM UTC+5:30, Srishti Sharma
> wrote:
>       Correct spelling of counter in comment .
>
>       Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>       ---
>        drivers/staging/ccree/ssi_cipher.c | 2 +-
>        1 file changed, 1 insertion(+), 1 deletion(-)
>
>       diff --git a/drivers/staging/ccree/ssi_cipher.c
>       b/drivers/staging/ccree/ssi_cipher.c
>       index 8d31a93..99232b2 100644
>       --- a/drivers/staging/ccree/ssi_cipher.c
>       +++ b/drivers/staging/ccree/ssi_cipher.c
>       @@ -702,7 +702,7 @@ static int ssi_blkcipher_complete(struct
>       device *dev,
>
>                ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx,
>       ivsize, src, dst);
>
>       -        /*Set the inflight couter value to local variable*/
>       +        /*Set the inflight counter value to local variable*/
>                inflight_counter =  ctx_p->drvdata->inflight_counter;
>                /*Decrease the inflight counter*/
>                if (ctx_p->flow_mode == BYPASS &&
>       ctx_p->drvdata->inflight_counter > 0)
>       --
>       2.7.4
>
>
>   Hey,
>
>   Can I say , /* store the value of inflight_counter variable from  driver
> private data context to a local variable */  , to make it more
> comprehensible ? 

I think it could be a bit of overkill.  The "driver private data context"
part can be seen from a quick glance at the code.  Also, it could be good
to bring out the purpose rather than just what the code does.  So "save
inflight_counter in a a local variable" could be better, because it
focuses on the idea of saving some information for later use.  Good job on
figuring out the formatting problem.

julia

>
> Regards,
> Srishti 
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/2b8bde9c-6e84-48c5-ab93-
> 76127f314429%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1658514752-1504730395=:2984--

