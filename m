X-GM-THRID: 6466090633212723200
X-Received: by 10.28.15.72 with SMTP id 69mr433626wmp.3.1505504329686;
        Fri, 15 Sep 2017 12:38:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.79 with SMTP id 76ls507328wmj.13.canary-gmail; Fri, 15
 Sep 2017 12:38:48 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDqh22R+RSykJSMxqZV5snBbMm3FDLfTb/SBJbuFYpVlCy+L5CkVv1WDtBnCV7AnR9irQwr
X-Received: by 10.28.23.200 with SMTP id 191mr425003wmx.25.1505504328436;
        Fri, 15 Sep 2017 12:38:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505504328; cv=none;
        d=google.com; s=arc-20160816;
        b=IKg4PgNUXyCcORA0LSu4R/6Hay9/rEPEi5Dg8KZt7FLb3y/CO6yqbaOxJvd5KNvupq
         52lIWgUWUYPmn2K3wDbJcRyQBSvPG0oTXMeyTW+LBJYV7veo6UviD7Bh1KcwSWmg8iKj
         4HpA6GKVFRcyyJnBaGzslZCoui36X7dRmlG7dX+Y+bnzr/vDm1J+Eu6Ih356NNofqjT3
         0um3DD4ey7vOpdqks0HeJytUJoQku2dyySV68fhpJ9SVmwYsV17UqwMEtWjGz7uX8rus
         UwxsBzMUwO3RkiLJfQgL14dzJl8SiGB2z3vqPoOzbFwXl/pkC91nkZKMjJ1eMdOZxauR
         9KYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=B/McGPAfCp8APncvOB/Po8E9jh4RRdlwXwBZFOZyWic=;
        b=saol+WBA9vzmPgzB1+dC0wKVRzPwp1VudLCWwDT2oBbY2cExBVxZvyXVRtTW7dpUh3
         qqZGUPzB1qBnvP/GW08ACosoydu+PwKVXsdJwTe9XHZEO0YtMTLgbAnSUpMdZxE/VVu2
         ICLmZZOjLsexQPYnoQneU4Nns8WtIdV/PRjo025lSYdV+nKCY68mVEzj/+gQKMsTCBSv
         5xr3QLF6XNfF25QmuTAvRxhHuF/VJQULsFubLKxR1ijFRjQG90Q+UOOJKGNbaTzn/Mar
         fuF4z3PPfmXi/unzag7uEWSvIJsj00nSE2rR7ONDYTbvnCValQ60jtwiXjA2dSBFZYB7
         PmOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b62si63838wmd.3.2017.09.15.12.38.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:38:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,398,1500933600"; 
   d="scan'208";a="237680941"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 21:38:47 +0200
Date: Fri, 15 Sep 2017 21:38:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: samuel@sortiz.org, gregkh@linuxfoundation.org, netdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: irda: Don't use assignment
 inside if statement
In-Reply-To: <1505504036-21807-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709152136200.2533@hadrien>
References: <1505504036-21807-1-git-send-email-srishtishar@gmail.com>
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
> +E = F

The line above would need to end in a ;

This ends up with a lot of assignments with () around the right hand side.
Maybe you could make a series removing them afterwards.

julia

> +if(E)
>   S
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505504036-21807-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

