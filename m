X-GM-THRID: 6462940414905155584
X-Received: by 10.25.80.9 with SMTP id e9mr141058lfb.3.1504772459822;
        Thu, 07 Sep 2017 01:20:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.11.203 with SMTP id 194ls8361wml.6.canary-gmail; Thu, 07
 Sep 2017 01:20:58 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5Hu/Vk4OntYunysB5XoGcj4Ct7UD9ZcV7Jm8dMSmlSKS9besJ6OH7b4lx6g6KtGT8ME1KP
X-Received: by 10.28.30.67 with SMTP id e64mr3183wme.24.1504772458875;
        Thu, 07 Sep 2017 01:20:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504772458; cv=none;
        d=google.com; s=arc-20160816;
        b=FJS2wOk4q38OC6rJ/Un8zFiE1my0VGjw1Y95Rq/cbBlbzmuZeTlO3SMyBshYqs495R
         1fKqe/9lwwLWkwNEdfA7CXTZDbApNtPXM+7EI6RoCA1baqsFA9RX6S0Ycn1ZWv3GEyG/
         NbBTyxZbm9FQYItBWbw8vL6LgsQ27cSSgkxxgaTm8ZQt+MKYL1BNOEcFWS+3g/nriGmn
         6ohqWowalv5B7F06jYj5eVb8qUvhRY+08FqJKVpTSGG4fomhbMxni3JNMdW4OBeMMb60
         3bzjeXqOm0QlZNtqDDvxn+u0wd6X3vZ2tVAjuldFJqbWTIcrMVu/cx2BN2EF5gDnLGfb
         Js8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=gC/bupA5bomW7lX4DYhqQ6190710yR5Rw63pSWkpRuk=;
        b=0OJq0nQ6H+hFLi6HjmzUAPsBR+o9k3GrhLF2ZDTZKq1reFrr9uNMB/QFHn308EN+G7
         HiAVoMsPp93jeab6qMJkyUgE4Fm5LZAtMua4JFoM1zqWE12mqqOfcjzj3LAjjXT7b8CQ
         yxODw4jc83D9I7waL9RbjIcgdkfABuw39rx8G2EHpYlVVhqhDbXNTpOY12cuSdqO1u8j
         xIzYCn8D5VXy/TR67Eab0Ss6ZssLS48iGor+rEtEflWXY+PmVJteOLudmrxDjY0ChHWP
         mIF131O6qmWHkDh1BKrP0+136TGHoIOAOULO386xA0zouuq+mC1olcybDT19ML2cgHt6
         REDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q129si1039wme.3.2017.09.07.01.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 01:20:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,357,1500933600"; 
   d="scan'208";a="236610468"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Sep 2017 10:20:58 +0200
Date: Thu, 7 Sep 2017 10:20:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, gilad@benyossef.com, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5] Staging: ccree: Remove unused
 variable.
In-Reply-To: <1504770561-5554-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709071020360.3084@hadrien>
References: <1504770561-5554-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Sep 2017, Srishti Sharma wrote:

> Remove the local variable inflight_counter as it is never used.
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v5:
>  - Correct the format of the subject.
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504770561-5554-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

