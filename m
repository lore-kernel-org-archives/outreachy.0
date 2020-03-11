X-GM-THRID: 6803023005726277632
X-Received: by 2002:a05:651c:502:: with SMTP id o2mr3153780ljp.150.1583959874552;
        Wed, 11 Mar 2020 13:51:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c213:: with SMTP id l19ls517062lfc.1.gmail; Wed, 11 Mar
 2020 13:51:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsreBiGrQuwdlDzZbYs4d7e2yz/9fn34jrfQ5uzqPOYnFH7hyt0lNMEyBIHMobn+mKQLbSH
X-Received: by 2002:ac2:4c14:: with SMTP id t20mr3106813lfq.193.1583959872267;
        Wed, 11 Mar 2020 13:51:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583959872; cv=none;
        d=google.com; s=arc-20160816;
        b=p38A/wQNw1SrJHj2uTRCez9QrE7AhuUZnz4YAmGDzJhAcnIaTMA6oJXtI0Adsqvqa0
         Ry3aSF8aGcwvl7KGfsW5+wGg5MaI3UYBVCyVqQ0SGPLMyY/L3AkTDc26OgzsqW0qYgFK
         wgsr2Ulwm2zWtUFCjVCOtewz33W0Qw7pXvKHxhjxmV1178dAJSWi+lZtaxi5pN6baoMI
         KVwOmckwoaUPl1UOKV17A2mIMp91zbzxFoWqEXjOX3A6H3Vm5eGnk1xG0splnyg31RS5
         RzpFbqEDOUHkWihVpE7kmZX9wcrtFxb2sIOdgLax7K9mdHOukSs8ufq9cQCZYEjxqiz2
         AQQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7tPEuRy4aNPsn71YQGgl50/CDX4D2mJhphMlz3kMX5Y=;
        b=ub3h3OxCbpRbojH3pwvAAltlPvaDNdqXp9GgwF62udWYvYyxUHI/3C8Ow72ka7VSdE
         ECVDWKMb/9tNkyp22fUx8j+GHQ1xyYyqLRedyh3T6ULhotJ2sVcsrgtx4IKOnMe+y22S
         5Lz1wEiDDGyam58DYkflPVjrI+GxMMwnqy4EB9uR2owwYRe9BTtQlzmY5if4hLH8KoKk
         +cNI5u180RC0hBg/qu6LH31DgAxGdHOsRm3PVibUewsqtg7uVTUXawMOUlTN3R+Ko5vs
         sHIPwnFAPRELxaufyrUU6fLULmqZCay3uGdpX5nv1dfmJEBZ7MQAlFn2q/yvV4nQASKQ
         6ZfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r6si166337ljk.1.2020.03.11.13.51.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 13:51:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,542,1574118000"; 
   d="scan'208";a="439904135"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 21:51:11 +0100
Date: Wed, 11 Mar 2020 21:51:10 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: comedi: drivers: use
 unsigned int
In-Reply-To: <20200311184327.25338-6-kgupta@es.iitr.ac.in>
Message-ID: <alpine.DEB.2.21.2003112150260.6093@hadrien>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in> <20200311184327.25338-6-kgupta@es.iitr.ac.in>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Mar 2020, Kaaira Gupta wrote:

> Change i's type to unsigned instead of signed. It's always positive.
> Reported by coccinelle.
>
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/drivers/ni_mio_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> index 06ed4b1dd875..034cf8dafaf0 100644
> --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> @@ -888,7 +888,7 @@ static void ni_sync_ai_dma(struct comedi_device *dev)
>  static int ni_ai_drain_dma(struct comedi_device *dev)
>  {
>  	struct ni_private *devpriv = dev->private;
> -	int i;
> +	unsigned int i;

I'm not sure this is useful.  The value is not going to b lare enough to
require an unsigned.  And loop indices often have type int.

julia

>  	static const int timeout = 10000;
>  	unsigned long flags;
>  	int retval = 0;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200311184327.25338-6-kgupta%40es.iitr.ac.in.
>

