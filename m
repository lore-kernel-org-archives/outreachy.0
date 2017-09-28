X-GM-THRID: 6468311343549120512
X-Received: by 10.28.16.8 with SMTP id 8mr131342wmq.31.1506600895643;
        Thu, 28 Sep 2017 05:14:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.27 with SMTP id k27ls1130901wre.0.gmail; Thu, 28 Sep
 2017 05:14:54 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAXJhwqnmJDavPhCXVxjFAtSzczgkIHcmvukX3ZrY2FaZA5/pir3+o3W9ijXOwxK+zbK3Et
X-Received: by 10.28.138.195 with SMTP id m186mr140590wmd.9.1506600894838;
        Thu, 28 Sep 2017 05:14:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506600894; cv=none;
        d=google.com; s=arc-20160816;
        b=UGVkkRDWYhsp7/mBt4LTvBrXgA5cRos5rD771UkAMMRBf6rncsxDXlhgEoXZ6RueND
         g6OAhrcrYV66n8QAsOHOFu1oJ6MNIXlDhVHSm0T+OAP27sSbZoffdd/AaC6VbV5GHY+F
         fLSelH4bduqn9DiA4kk+ydoHCzrpSqSPQOmc+hfA4XNugasuHp0AS6mvdySXDzMDuUnQ
         wB8gtPvDoM/ELE4/9lPJqTIpkuUf1lDLcv76Y2gm6pdnZOskq/EVOG1epdj+88FTEUq+
         lGegiAvHzINqW7TNrbT4jkpfnIAvXN6u+qMRpnM+F9SijJukICW4JUVyTYm5Zw+INr8K
         1JuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=hPX/37gPATCilnFao3NEmfHrVKrxlV4aoJDoPF+hIJI=;
        b=M3S20NYax7aTaQZowvIYFXKiJB/HoCQ/23LVRrkq+EvhzvbYvZwPWFjz1L2s+366v9
         cn7vd3E8ZQt/LiEiDYaUXwmU3Z65ir1c3uZ80VuOHGT2VVSa6IxtErQsEe8LmSm22ioW
         8Mk0nV73iuBeBv7We390d2Kr5KjtCUuLo0BZN/P7dB/Zh1Bt5Y0xHiHbo31K4uPwLOFz
         9KYk0aMZLz5DeFUxRGWrYVbSUgbQAEBM7Eb/QlSy2JBsP9WuSbM4ceeIVY7CMDHPpBm5
         tLCG705UXA+RsQ3dN4CWLcDyQfzLSTHafC64CI+6YWRyK0TugaspW0fgBeGZsPehIQNo
         9o1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b203si64490wmh.4.2017.09.28.05.14.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:14:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,449,1500933600"; 
   d="scan'208";a="239026620"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Sep 2017 14:14:53 +0200
Date: Thu, 28 Sep 2017 14:14:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vc04_services: Remove
 typedef struct
In-Reply-To: <20170928114830.GA12488@ubuntu>
Message-ID: <alpine.DEB.2.20.1709281413540.30797@hadrien>
References: <20170928114830.GA12488@ubuntu>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Sep 2017, Mihaela Muraru wrote:

> This patch removes typedef from struct and renames it from "typedef
> struct vchiq_2835_state_struct" to "struct vchiq_2835_state" as per
> kernel coding standards.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>
> ---
> Changes in v2:
> 	- rewrite log message to have less than 70 characters per line.
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index ee00f51..a96bae0 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -84,7 +84,6 @@ static char *g_free_fragments;
>  static struct semaphore g_free_fragments_sema;
>  static struct device *g_dev;
>
> -

Something went wrong.  The patch just removes a blank line.  Remember to
start from the original version of the code when you send a patch, and not
from the result of your previous patch.

julia

>  static DEFINE_SEMAPHORE(g_free_fragments_mutex);
>
>  static irqreturn_t
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170928114830.GA12488%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

