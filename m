X-GM-THRID: 6806837634279669760
X-Received: by 2002:a1c:e341:: with SMTP id a62mr21577881wmh.121.1584868582552;
        Sun, 22 Mar 2020 02:16:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls965259wmf.2.gmail; Sun, 22 Mar
 2020 02:16:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtUtzo3BwShNVbdVNnC8tGstAoBZxdbGZJ/wS24fdNJsehd9FFjgJHtd2feBK4KpVsNv8yx
X-Received: by 2002:a7b:cbd0:: with SMTP id n16mr20686877wmi.85.1584868581040;
        Sun, 22 Mar 2020 02:16:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584868581; cv=none;
        d=google.com; s=arc-20160816;
        b=PYd2cRGKbdBkk1lh1NkPHJ8k86CuBw7d7Hua+EgsYnxYs3zh1azoWNEQ4Gtl3mDpCu
         5Bi9uCL6nKNzOxfulRhszqTvQLAKiNsW+vPljcGakWvoQ2+PJvIx+J6f+QeIKzbhBkZt
         hE9/lIS77/8ou1yGItB34VM8XV54vKvL8MBS2dlCxpFBm7OTs6hfDxCKIRUV3N3dxy+/
         FBgaSYYRESB9p4Za006NzPk4QMNkex4MoYKp8wzeiMANkG9w1DhZwjOg6kBPpabaxiYz
         DcZemrR3aipCbVbEwyqa6+kjVy2OSd58Mg8X3TQv0P/yuQCxDPMNJ8xt+HOWJse0s3uu
         CJ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8g7wKNypljxJH2l1B79U/WYFA/3WQod62zdciO6H4Kk=;
        b=0SeRnSPHxSMHyswSG4QWnM+X9UYGOhHle9a1DcvH2h8ofPIVwDEd/DDTpehhsXCl0H
         9AYJLDObiaz/SocNICqUnpetuAM2LG/NtusBvO5lP5X36Tljbzn3U97Dt0/rMzkCqOrh
         vWlFad6qjMxiyAlsrjst93E3RId4j+6qzDONzidjrDeGofm8mW9qrI8M8c0chgFVi5Tl
         Hl45qcYzKAXKk9Xym/yb7gyN876rlmJ7mdro0Uc6HsKs+iCVguXcXZi8N8r1x29ycOJM
         rEcNIfskMN3TDEsauBRVSbti/QKRwHb2iE0NPOPipyooaleoxSQh2ZK2S71PJxoRy1Ox
         d/Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b81si385188wmc.2.2020.03.22.02.16.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 02:16:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="441530242"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 10:16:20 +0100
Date: Sun, 22 Mar 2020 10:16:20 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: braces {} are not
 necessary for single statement blocks
In-Reply-To: <20200322012624.GA5040@siyah2>
Message-ID: <alpine.DEB.2.21.2003221015350.2325@hadrien>
References: <20200322012624.GA5040@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Gokce Kuler wrote:

> Remove unnecessary braces for single statement block
>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 8aadb5b..1b957aa 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -1332,9 +1332,9 @@ static void hp100_rxfill(struct net_device *dev)
>  		   ** Attempt to get a buffer and build a Rx PDL.
>  		 */
>  		ringptr = lp->rxrtail;
> -		if (0 == hp100_build_rx_pdl(ringptr, dev)) {
> +		if (0 == hp100_build_rx_pdl(ringptr, dev))
>  			return;	/* None available, return */
> -		}
> +

There is no need to add a blank line here.  Indeed there is a blank line
already, so I would have thought that checkpatch would have complained.
Do you run checkpatch on your patches?

julia

>
>  		/* Hand this PDL over to the card */
>  		/* Note: This needs performance page selected! */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322012624.GA5040%40siyah2.
>

