X-GM-THRID: 6477098943281889280
X-Received: by 10.28.184.81 with SMTP id i78mr753523wmf.2.1508067375177;
        Sun, 15 Oct 2017 04:36:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.136.40 with SMTP id d37ls2534268wrd.4.gmail; Sun, 15 Oct
 2017 04:36:14 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Snc17LBKOLhedkElwAYeQbeDZSm/fqFtlWBn13dOzWuqtyW/H8un/D46w51H5Dh8l4EWPq
X-Received: by 10.223.176.52 with SMTP id f49mr176094wra.6.1508067374221;
        Sun, 15 Oct 2017 04:36:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508067374; cv=none;
        d=google.com; s=arc-20160816;
        b=IyVEdq6WLP3kZnCoBCW/497L0W3H5EM6j1jEoNI8B5fgG71fmJVx0V6hD/dErcTL1I
         ZZsoAhGJO1T2GRWOIJ/SIVSpncWWH204/Rtl1nUqlcO3LTpNdPMUCtFr0mE5yja034qh
         1maT5bo6+axPavquPoH+FGD3oNhDoL7RwAYnjRlDqMUWFzJBtZLXrBSlG6BG2nI1Z6zV
         dgXQ2rhjtIGzK7Uhu1b/70DkqoL1vycJc56OrYiwtQ65CnCKQ2jmcYU4j/DeIAzznGzJ
         5fqhjLX8olz8nOMj/bC0vKNleWXb4R11teGybVFN01/4Mqfy6AqdFccCqyPYaMdmnUa3
         kKyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=vaQ7kMpZ07GVlaf4qBDnzhEWwUZRzv+9uyd0Ba2a5cI=;
        b=H9O/dcdY9k8wVq2J8uXWNeLIKzYgFxeFNCpwEfCzD6USE8VVq+OTOljlfbOf/3+SJO
         qvV/6CteyZwUdJ6nbHEMOPl8SY/s+JFvwqROOp0/Pf5Wlx3no9PL53hWfOgWFEl4ZE8Q
         BnAbVT7TNRRoxeJqrHi2lyfMMY9ol0ruoNREyzKsXhmbgPtROVnjUhEOMwfGI1p3n7vQ
         Lf9Oe16CWT0J0NaU5ZBtIRLvZC7JqmE38jXcS/4G7qG4Bxo/sKgu/1HcJu/ze3Zvbpoa
         mk3ftTHIRMTXOJ9V3MLOwV32iuxAx4gFyYTeQ24mfdlRJy3/CbDGXil25Ann1L4o12ZV
         cwDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l9si270471wrf.4.2017.10.15.04.36.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 04:36:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,381,1503352800"; 
   d="scan'208";a="241032687"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2017 13:36:13 +0200
Date: Sun, 15 Oct 2017 13:36:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, pablo@netfilter.org
Subject: Re: [Outreachy kernel] [PATCH] iptables: iptables-compat translation
 for TCPMSS
In-Reply-To: <1508067107-13649-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1710151334180.2089@hadrien>
References: <1508067107-13649-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 15 Oct 2017, Aastha Gupta wrote:

> Since path mtu support was added, we can now add
> iptables-compat translation for TCPMSS extension.
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  extensions/libxt_TCPMSS.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/extensions/libxt_TCPMSS.c b/extensions/libxt_TCPMSS.c
> index 4b71e44..7f65298 100644
> --- a/extensions/libxt_TCPMSS.c
> +++ b/extensions/libxt_TCPMSS.c
> @@ -91,6 +91,17 @@ static void TCPMSS_save(const void *ip, const struct xt_entry_target *target)
>  		printf(" --set-mss %u", mssinfo->mss);
>  }
>
> +static int TCPMSS_xlate(struct xt_xlate *xl,
> +						 const struct xt_xlate_tg_params *params)

The argument list seems to be quite oddly formatted.  Line the second line
up with the right side of the (

> +{
> +	const struct xt_tcpmss_info *mssinfo =
> +		(const struct xt_tcpmss_info *)params->target->data;

Is the cast really necessary?  It should not be necessary if the data
field has type void *.

> +	if(mssinfo->mss == XT_TCPMSS_CLAMP_PMTU)

Kernel code requires a space after if

> +		xt_xlate_add(xl, "tcp option maxseg size set rt mtu");
> +
> +	return 1;
> +}
> +
>  static struct xtables_target tcpmss_tg_reg[] = {
>  	{
>  		.family        = NFPROTO_IPV4,
> @@ -104,6 +115,7 @@ static struct xtables_target tcpmss_tg_reg[] = {
>  		.x6_parse      = TCPMSS_parse,
>  		.x6_fcheck     = TCPMSS_check,
>  		.x6_options    = TCPMSS4_opts,
> +		.xlate		   = TCPMSS_xlate,

Follow the same alignment strategy as for the other fields.

julia

>  	},
>  	{
>  		.family        = NFPROTO_IPV6,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1508067107-13649-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

