X-GM-THRID: 6331277743473295360
X-Received: by 10.46.71.203 with SMTP id u194mr300897lja.29.1474140051934;
        Sat, 17 Sep 2016 12:20:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.208.11 with SMTP id h11ls1146781wmg.10.gmail; Sat, 17 Sep
 2016 12:20:51 -0700 (PDT)
X-Received: by 10.194.172.9 with SMTP id ay9mr2690214wjc.2.1474140051352;
        Sat, 17 Sep 2016 12:20:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si981662wmd.1.2016.09.17.12.20.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 12:20:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,352,1470693600"; 
   d="scan'208";a="193777564"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 21:20:50 +0200
Date: Sat, 17 Sep 2016 21:20:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: i4l: Return NULL instead
 of 0.
In-Reply-To: <20160917071702.GA16260@sandhya>
Message-ID: <alpine.DEB.2.10.1609172120310.3124@hadrien>
References: <20160917071702.GA16260@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, Sandhya Bankar wrote:

> Return NULL instead of 0, if card with given driverId is not found.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v2:
> * Correcting commit message
>  drivers/staging/i4l/act2000/module.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
> index 39a8940..6a6c911 100755
> --- a/drivers/staging/i4l/act2000/module.c
> +++ b/drivers/staging/i4l/act2000/module.c
> @@ -499,7 +499,7 @@ act2000_findcard(int driverid)
>  			return p;
>  		p = p->next;
>  	}
> -	return (act2000_card *) 0;
> +	return NULL;
>  }
>
>  /*
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160917071702.GA16260%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

