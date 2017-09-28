X-GM-THRID: 6470761478432489472
X-Received: by 10.223.168.41 with SMTP id l38mr469584wrc.24.1506594941919;
        Thu, 28 Sep 2017 03:35:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.167.85 with SMTP id q82ls131691wme.10.canary-gmail; Thu, 28
 Sep 2017 03:35:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDzuYV9hA9vrl44kSlq1pWyqAomwZ0eL1+jasbBsrkuzR6K3jY3OD1FJ7LF4KGfCJXfDH06
X-Received: by 10.28.22.4 with SMTP id 4mr92464wmw.13.1506594941010;
        Thu, 28 Sep 2017 03:35:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506594940; cv=none;
        d=google.com; s=arc-20160816;
        b=0JGZk7gHL81bxdWndQMikBb4vU+CaIDzPvE923M2OPCKgQacD42zwwjYyuvMnCXPU6
         NEg+p83LR9r50fxqhZPDC96AkirxBWWvznIcr6F0a4jEHmAg+qparOU7gPZtyS3lVbNV
         UH7gTKL/RD76Iw0Ah5QI52qtGoKO9klWoAgptL++kjCUJcPeGI66JVUus0UKrQBiIZkG
         rcPi9+ejIc22jgQWfyal1aBx4zUwI8l0IykipddOprmZcS1sFSbavcIAlgVUt8dEEoTc
         nnGaTty/p7AV3z77OUTNMoVAdCwxwC4qgvwr3yvMvRQpKrHE5y5IlsHH/yw59ydJHpaf
         G11w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=WIa0hTnxxi6p8kT9TKsqhVJ/qE4P5pKsBj3TBqRu/+c=;
        b=F/Sl/itVQBsqwSoTjIYuI0cMo0engu6gY5DFCqYzWgoEcGQmZbxApF3ouFVENbh/JU
         vfq9LLohu7oSkdsUoWPL6Rxg0QJf60+VAxwLvKnK9Lcc+VmvaQ2WrOIQybaktYsU2msU
         ZSUuG/q79iXo49FjIgZmL2QjTfdQpvMY4qs1VuLIG33v/B9h+KQtqzyUO9bBFbUFb3Js
         DfZLfSS1Tk3e65+4HhWsbHW3kvd4a9zCam0OsbDJnT/9QWqJklbL6gtR/xTQYDNQXQkQ
         BHn3Kq5Mz2vmfS3s/idu7Y2MyVudG54WjRrMQI6dRLPL8UwAwEywVLJBjTj+yFYirOg/
         PgEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t65si110519wmg.3.2017.09.28.03.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 03:35:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,449,1500933600"; 
   d="scan'208";a="293110277"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Sep 2017 12:35:40 +0200
Date: Thu, 28 Sep 2017 12:35:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Remove
 duplicate extern variable
In-Reply-To: <20170928093917.GA5023@ubuntu>
Message-ID: <alpine.DEB.2.20.1709281235030.2865@hadrien>
References: <20170928093917.GA5023@ubuntu>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Sep 2017, Mihaela Muraru wrote:

> This patch removes the extern vchiq_arm_log_level variable from
> vchiq_2835_arm.c.The variable is also declared in vchiq_arm.h header.
>
> Issue found by checpatch.pl

checpatch.pl -> checkpatch.pl

>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index 0159ca4..12b0e0d 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -84,7 +84,6 @@ static char *g_free_fragments;
>  static struct semaphore g_free_fragments_sema;
>  static struct device *g_dev;
>
> -extern int vchiq_arm_log_level;
>

You're going to end up with two blank lines here.

julia

>  static DEFINE_SEMAPHORE(g_free_fragments_mutex);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170928093917.GA5023%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

