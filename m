X-GM-THRID: 6466090633212723200
X-Received: by 10.46.4.198 with SMTP id a67mr1366282ljf.16.1505505617850;
        Fri, 15 Sep 2017 13:00:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.84.17 with SMTP id i17ls516431wmb.20.canary-gmail; Fri, 15
 Sep 2017 13:00:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCm7RkCoJr9RueLDGtGaguwGuBL31IHnXr77e4TVcm33zvd+8dOO+WqMfarXXvfREQXfsU4
X-Received: by 10.28.156.86 with SMTP id f83mr430569wme.5.1505505616629;
        Fri, 15 Sep 2017 13:00:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505505616; cv=none;
        d=google.com; s=arc-20160816;
        b=RKOft7J/ILM1ax6S+S/Pb2UD8MJseS2B2TkSD3mo6XFSptkkTOuVjsO47FO8eBwJRe
         /nPRNO6QUohNIt2+bnksaMAJBqu8kfRBePcIlaU9I0ooSuLV5M+umO8W+lsTihOvm/Ak
         o+KMwJfpnDqTvDNu6gCjxsE6zQSv0n69KuvnRfj38PbpoH3pHdncWiaPGrgx1EoCos0B
         cR8pA18KGdD2gVnHkXFVSMuq6i9ljPV/iQgZANwWfm0ujf+T39sGQFhF5lhxMUAeD5UB
         wSgiZvqBDKrlohbfJLTujS0f7hT7GTl7PnVyxBkK+gy8U/tHv4NySw2EL02xovZcxBsA
         diJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=jrSQKrV0Tf6VWyQfL3FK+jQXaQvH56IZM86J3ujFUU8=;
        b=W0p757IpQhd1vKAwSeT2zK3kG5CkI7Ixn19VgN9wrX1wOxf10jSElK++T8gQs3Wfrf
         LMkqkJohnCRx1z806bNqhQVeA7Jm0pHBlREqDOToRZogRpw0ugvLJx73W1GbJMeTwD7K
         N7HPP5V2gFawEy0UlODqyuSSoBGH/05Cd4hRbRA8y5fMJ+n9BXoQEbr3UQ0hFlCJpnQg
         JTwmWOVdc2Osg13gGVOGHNOutv1B7UAxWYB+mBKr49ts2pCuCuhNx5dScXgjRgm6FHoG
         GEORtrr7yv8UCrh72LuZ7xa+OXIHbJuMgiuaB+1gfrVjbbSnnmRZWsxwA3F+DoOAKnzC
         cxTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si39857wmi.2.2017.09.15.13.00.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 13:00:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,398,1500933600"; 
   d="scan'208";a="291327264"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 22:00:16 +0200
Date: Fri, 15 Sep 2017 22:00:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: samuel@sortiz.org, gregkh@linuxfoundation.org, netdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: irda: Don't use assignment
 inside if statement
In-Reply-To: <1505504680-22167-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709152200030.2533@hadrien>
References: <1505504680-22167-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Srishti Sharma wrote:

> Write assignment statement outside the if statement. Done using
> the following semantic patch by coccinelle.
>
> @@
> identifier E;
> expression F;
> statement S;
> @@
>
> -if((E = F))
> +E = F;
> +if(E)
>   S
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> Changes in v2:
>  -Semicolon was missing in one of the statements of the
>   semantic patch
>
>  drivers/staging/irda/drivers/irda-usb.c | 4 ++--
>  drivers/staging/irda/drivers/mcs7780.c  | 9 ++++++---
>  drivers/staging/irda/net/irqueue.c      | 3 ++-
>  3 files changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/irda/drivers/irda-usb.c b/drivers/staging/irda/drivers/irda-usb.c
> index 723e49b..82bfc05 100644
> --- a/drivers/staging/irda/drivers/irda-usb.c
> +++ b/drivers/staging/irda/drivers/irda-usb.c
> @@ -334,9 +334,9 @@ static void irda_usb_change_speed_xbofs(struct irda_usb_cb *self)
>  	urb->transfer_flags = 0;
>
>  	/* Irq disabled -> GFP_ATOMIC */
> -	if ((ret = usb_submit_urb(urb, GFP_ATOMIC))) {
> +	ret = usb_submit_urb(urb, GFP_ATOMIC);
> +	if (ret)
>  		net_warn_ratelimited("%s(), failed Speed URB\n", __func__);
> -	}
>  }
>
>  /*------------------------------------------------------------------*/
> diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
> index c3f0b25..2b674d5 100644
> --- a/drivers/staging/irda/drivers/mcs7780.c
> +++ b/drivers/staging/irda/drivers/mcs7780.c
> @@ -605,19 +605,22 @@ static int mcs_speed_change(struct mcs_cb *mcs)
>  	if (mcs->new_speed <= 115200) {
>  		rval &= ~MCS_FIR;
>
> -		if ((rst = (mcs->speed > 115200)))
> +		rst = (mcs->speed > 115200);
> +		if (rst)
>  			mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
>
>  	} else if (mcs->new_speed <= 1152000) {
>  		rval &= ~MCS_FIR;
>
> -		if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
> +		rst = !(mcs->speed == 576000 || mcs->speed == 1152000);
> +		if (rst)
>  			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
>
>  	} else {
>  		rval |= MCS_FIR;
>
> -		if ((rst = (mcs->speed != 4000000)))
> +		rst = (mcs->speed != 4000000);
> +		if (rst)
>  			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
>
>  	}
> diff --git a/drivers/staging/irda/net/irqueue.c b/drivers/staging/irda/net/irqueue.c
> index 160dc89..5aab072 100644
> --- a/drivers/staging/irda/net/irqueue.c
> +++ b/drivers/staging/irda/net/irqueue.c
> @@ -217,7 +217,8 @@ static __u32 hash( const char* name)
>
>  	while(*name) {
>  		h = (h<<4) + *name++;
> -		if ((g = (h & 0xf0000000)))
> +		g = (h & 0xf0000000);
> +		if (g)
>  			h ^=g>>24;
>  		h &=~g;
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505504680-22167-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

