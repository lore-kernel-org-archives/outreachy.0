X-GM-THRID: 6466169958600540160
X-Received: by 10.28.136.12 with SMTP id k12mr566276wmd.10.1505561010941;
        Sat, 16 Sep 2017 04:23:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.83 with SMTP id m80ls753622wmg.4.canary-gmail; Sat, 16
 Sep 2017 04:23:30 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4VvRYr8+O6g5WExpXU/bJ6nBczFDrQu/fOKzOV+Vy96wpfxYvOfRb11oVuhuPndVqa70/1
X-Received: by 10.223.152.12 with SMTP id v12mr1753422wrb.12.1505561010008;
        Sat, 16 Sep 2017 04:23:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505561009; cv=none;
        d=google.com; s=arc-20160816;
        b=ZRY5rX8ikcjatkv+dJ7vClnVYj0z16fx9wEN7hbp0lgTvWix1unDeaqE4kIx1ts7X+
         WGDf8BydFGwZKVnSHGGU/nXpd75I/EBPutBYC1322HzHz644YuHqWGVEXHDfcG6fijcw
         uoKdTftwTpeDN7+xZ6kV9Z+wGmhS3BFOafq/awvtISLmJZCBdqV4OWWdXQBaXZn+ey9o
         cVWjBrgAF3HJ+ytEcTOe46enM54pgueR6yJgA1r60nvCbnIKwAWLgwwk+2Naa9qbnt/l
         UlRLq6uOzoEL1AQOAZNWq+s8SFgRNv+uN4HCcrHWMLCTuiCQB6Ku1olltvbCImWHI5if
         hIEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=XuZwQfqccEP7Q914HMwb/wx2YXgRORJ/2+dYIGhaqT4=;
        b=oL3t1hypjjpONW223eRCWR9rtsm2HugKjCTtXpvEzjhw24qhHdfeOzOCNZ/2lLjGDS
         SoFctAr4hAKohR68hAynpmmCMCNGxB4EvjtP2+QEia52rNWkIYQYUebkb9FQMe+i8x77
         yr4HF6tTXm9BMTTNUGPa59qygH8GO8C/MLIlnXRF4dF4SQOFqRQHOw+5xyI6LjuT1ssP
         B14IvhxTyVB6fdXPS+zUipMEm5IP9tHNJ5/dRPigxG6ws1kvPBJlljOxl12GEwTNrdu/
         LmH9Smer7rISi/fvSWiar/6mMzBvRD9YYDKlXH5gdPgr7keqCDdaWVm4MXCJ6ff56szm
         1Wbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t142si111255wmt.2.2017.09.16.04.23.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:23:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="237719602"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 13:23:29 +0200
Date: Sat, 16 Sep 2017 13:23:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Replace
 list_for_each with list_for_each_entry
In-Reply-To: <20170916004148.GA25693@Haneen>
Message-ID: <alpine.DEB.2.20.1709161320250.2943@hadrien>
References: <20170916004148.GA25693@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Haneen Mohammed wrote:

> Replace use of the combination of list_for_each and list_entry
> with list_for_each_entry to simplify the code and remove variables
> that are used only in list_for_each.
> Issue found and corrected using Coccinelle script:
>
> @r@
> expression head, member, e;
> type T1, T2, T3;
> iterator name list_for_each, list_for_each_entry;
> identifier pos, var;
> @@
>
> -T1 *pos;
> ...when!=pos=e;
>
> -list_for_each(pos, head)
> +list_for_each_entry(var, head, member)
> {
> ...when!=pos=e;
>    when!=T3 *var;
> -var = list_entry(pos, T2, member);
> ...when!=pos=e;
> }
> ...when!=pos=e;

Actually, one could consider that there should be when != pos, not when !=
pos=e, because you need that there are no references at all to pos to be
able to delete it.  But it's true that if pos is not initialized then
there should be no other kinds of references either.  The other
possibility for initialization would be eg

f(...,&pos,...)

You could be suspicious of &pos in general.  But anyway there is no &pos
in this code.

julia

> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/lustre/lnet/lnet/router.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
> index 3df101b..b8eba33 100644
> --- a/drivers/staging/lustre/lnet/lnet/router.c
> +++ b/drivers/staging/lustre/lnet/lnet/router.c
> @@ -222,15 +222,12 @@ struct lnet_remotenet *
>  lnet_find_net_locked(__u32 net)
>  {
>  	struct lnet_remotenet *rnet;
> -	struct list_head *tmp;
>  	struct list_head *rn_list;
>
>  	LASSERT(!the_lnet.ln_shutdown);
>
>  	rn_list = lnet_net2rnethash(net);
> -	list_for_each(tmp, rn_list) {
> -		rnet = list_entry(tmp, struct lnet_remotenet, lrn_list);
> -
> +	list_for_each_entry(rnet, rn_list, lrn_list) {
>  		if (rnet->lrn_net == net)
>  			return rnet;
>  	}
> @@ -243,7 +240,6 @@ static void lnet_shuffle_seed(void)
>  	__u32 lnd_type, seed[2];
>  	struct timespec64 ts;
>  	struct lnet_ni *ni;
> -	struct list_head *tmp;
>
>  	if (seeded)
>  		return;
> @@ -254,8 +250,7 @@ static void lnet_shuffle_seed(void)
>  	 * Nodes with small feet have little entropy
>  	 * the NID for this node gives the most entropy in the low bits
>  	 */
> -	list_for_each(tmp, &the_lnet.ln_nis) {
> -		ni = list_entry(tmp, struct lnet_ni, ni_list);
> +	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
>  		lnd_type = LNET_NETTYP(LNET_NIDNET(ni->ni_nid));
>
>  		if (lnd_type != LOLND)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916004148.GA25693%40Haneen.
> For more options, visit https://groups.google.com/d/optout.
>

