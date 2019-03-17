X-GM-THRID: 6669317820815245312
X-Received: by 2002:a24:334a:: with SMTP id k71mr7200831itk.14.1552822873703;
        Sun, 17 Mar 2019 04:41:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls2708381itk.4.canary-gmail; Sun,
 17 Mar 2019 04:41:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+TcRLCDfKlfpsVDp1yYj+JXavyCHlfMfPHvVfUNu0AZ0uNcIyiNgw1g0W5mvqbDTBaNBZ
X-Received: by 2002:a24:de45:: with SMTP id d66mr5849321itg.7.1552822872764;
        Sun, 17 Mar 2019 04:41:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552822872; cv=none;
        d=google.com; s=arc-20160816;
        b=XVliNRu4GnjpJB4j5kahCzhQCpkgSlaVA+gwWzeuMWNDgPTZ8w/M4zm48bSxqifmj7
         4VzAZ035KL9oIOHFVTwAhhQMGSX36h0B25SRHM1YJAc250YVGHECjjip7EZwbmxcTsUP
         nn3l7SytQLDwA0+SOOG24VtO93ZWDBfdbn7uOdrPqVWdiz0FZzBNj6LxgxcNFRGElb3O
         TuA6//00FFFepJj9oeCgoigqvJ/AzXxK3MXt1G10DvqFTDV5a3QsxKXWLvNaobZL31sY
         IXOicLCuspD1m8UsEre6LRp8fSYAU36zcRoqohkQHDopHnEvzsAcdsy+nanx+h3MSPDi
         XLKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ODWXQTpXvqPDadES6hatWhk39LoKUMOzOi10PSSRouo=;
        b=0PCJjDn93zO4ybmoK19nZ1PnlvSgslQpu6GeoO055gGx2dgqfpPLlO7SbdsavsoEC+
         K9ftGuF1IS8rB6StxE8hu43j7NUncqHwy7ynshcoB/zHarIGTxOWMkrJ3ctPjuFoi31L
         ZCYOIQUGTM+fCyqOv3gbFXroBiRgqhAxudHVLe7SuLzvUP/YpGYRrIBkBjzlwQiiAAAj
         qLDxQ0yXMUQ2yhBr8AVYRw+4Pj9eMscJE7E1/tag//be9L4VUqM+QJUhvMgJ3gtJ0Xfr
         nH3AkCzYUzoODxT9JAfpVL8s4V89fS+YIxYT9PVJGlncwDdArtb9YkXFVxcQAMuGgh9v
         2g4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Di9ebw6H;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 71si377790ita.0.2019.03.17.04.41.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:41:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Di9ebw6H;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 667222148D;
	Sun, 17 Mar 2019 11:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552822871;
	bh=lpZ5ZJmz7oWB9geJgiP+8cOOdk721zUjtzzwAvpl1i0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Di9ebw6HTM9abOmu4kH+fnckNYZPWJuQeXbTE1dkp3KfQhpRKJRrHwNhYVegGtGc9
	 8IcuI/wizWSceUIRX6jJ98JcxLVUmcjEXEnpaPXWUDo/ZJs62EyxoEqCnsxg3OAnRN
	 UN9tpsC6AwaFA4kCTV+4OEZzJ0d8Ck6VQWrCqhcg=
Date: Sun, 17 Mar 2019 12:41:09 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>,
	Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: [PATCH] Staging: vc04_services: Remove useless parentheses
Message-ID: <20190317114109.GB3160@kroah.com>
References: <20190317111901.5858-1-bhanusreemahesh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317111901.5858-1-bhanusreemahesh@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 04:49:01PM +0530, Bhanusree Pola wrote:
> Remove the parentheses which are not required.
> Issue found using coccinelle.
> The semantic patch that fixes the problem is as follows
> 
> // <smpl>
> @disable paren@
> expression value,e;
> @@
> (
> - value = (e)
> + value = e
> )
> 
> @disable paren@
> identifier fn;
> expression e;
> @@
> 
> - fn((e))
> + fn(e)
> 
> @disable paren@
> expression e;
> @@
> 
> - return (e);
> + return e;
> // </smpl>
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  .../vc04_services/interface/vchiq_arm/vchiq_core.c   | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 53f5a1cb4636..92a4630e57a7 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -1355,7 +1355,7 @@ static void
>  abort_outstanding_bulks(struct vchiq_service *service,
>  			struct vchiq_bulk_queue *queue)
>  {
> -	int is_tx = (queue == &service->bulk_tx);
> +	int is_tx = queue == &service->bulk_tx;

Ick, no, now it's impossible to remember exactly what is going on here.

I do not like the "removed not-needed (" warnings, as those are there
for the developer to understand the code better, not the complier.

Please just leave these alone.

thanks,

greg k-h

