X-GM-THRID: 6664818857456173056
X-Received: by 2002:a5d:83c4:: with SMTP id u4mr2753220ior.34.1551863585554;
        Wed, 06 Mar 2019 01:13:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls494043itc.5.canary-gmail; Wed,
 06 Mar 2019 01:13:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqzoHt053FthEwUl+BBuzylaSUOnbuLuyjVClIp2cmAU+0UyLpKwoGuinph/+Y+mYcp1O1NP
X-Received: by 2002:a24:2c48:: with SMTP id i69mr5376755iti.12.1551863584777;
        Wed, 06 Mar 2019 01:13:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551863584; cv=none;
        d=google.com; s=arc-20160816;
        b=J0gDdtRex4uNxCZBowF6cRtDqYEENjtj7kbSR4KIH2Hede6bh5nP4DXNalf1xV05/c
         A9aG12eZZYb0HB34u0QBleSLmDGDjWrA5VNwVvkNsimxE13MX4yVSFmAsy57rwodTWgo
         a0b7l69yRAQ1WHeI/tNDsxqPOIS4SgzdM4lik/DCXqUG5ef1dYaGAXcI60QSVpGfQo/U
         EcalXvo0AD1O5F1QSyqatgVCgYBCnd7C/EigqYUY4wqphD6I5NZdeqmFth5B+azXnb+h
         yrbNKvnQQjo9OJcEFyUJ0qf+3uXcy/gTIrBpRhNeayfcZTOIqCxIaHuvvZ8Ff0eMzunZ
         /Lfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9k/4ofO2CIeQgqlgakfXuP0asE18KSb5bPihTvPBb2U=;
        b=wGRF9DsLD5kML67cMylZyJ84cptumTnwt/uulOnBHCQgqzG+Q7CANcICnKOY9qoVJA
         3Dyb4+M6kqoufZPsxC/qcffvVzDCM+otqArtxfUwlCTR6f5k3VGuePzh3d4Vjt1NLq3C
         Kw0YEFpTFyg6g5ZqQSPTlGEuLGc8PTf4ej4LgDLRwRXZpQi2J4+D1y+qOSzKJZgGPq/H
         VoYbiTud7GQu31PY5ODLzoJoGXfuOw+DxkLs5somy80Q6uBzFqrf+kdJKEIGLmh78Ykg
         IIRryljyNO3WOBeb6FvgQaMQmZ+4xpeI2lTnnNuLjbCmun/uWMaxqZNSM0CWAljB+Hn+
         kLRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C5ocOeqo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j6si135893itb.0.2019.03.06.01.13.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:13:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C5ocOeqo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 69A7C2064A;
	Wed,  6 Mar 2019 09:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551863583;
	bh=pws3NQQc6wpJ8Ge6e7CWWWKSrhfgiW13UbrFKGpjUr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C5ocOeqo22mqlGSIq3wj6Td9e8HcyVSHojpUhHO4auQBUFqWi15nXdqSUZc2yfL0R
	 lYetGJUwTQOh0IagTO5RknoF87prrdPYWsRHh4ReTHGslOTPhjl9UL9xJJZr3VcOQt
	 rQr2/Daca5nedVOGv+42veEocjanTh2hLCWBY7eE=
Date: Wed, 6 Mar 2019 10:13:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: octeon: Delete constant zero preprocessor lines
Message-ID: <20190306091301.GB7927@kroah.com>
References: <20190305081955.5262-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190305081955.5262-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 12:19:55AM -0800, Wentao Cai wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: Consider removing the code enclosed by this #if 0 and its #endif
> 
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-tx.c | 41 ------------------------------------
>  1 file changed, 41 deletions(-)
> 
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
> index 317c9720467c..eea8c5235910 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -587,43 +587,14 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
>  
>  	if (skb->protocol == htons(ETH_P_IP)) {
>  		work->word2.s.ip_offset = 14;
> -#if 0
> -		work->word2.s.vlan_valid = 0;	/* FIXME */
> -		work->word2.s.vlan_cfi = 0;	/* FIXME */
> -		work->word2.s.vlan_id = 0;	/* FIXME */
> -		work->word2.s.dec_ipcomp = 0;	/* FIXME */
> -#endif

These are all things that still need to be fixed in the driver, so I
would leave these alone.  They are a good indication that work needs to
happen here.

thanks,

greg k-h

