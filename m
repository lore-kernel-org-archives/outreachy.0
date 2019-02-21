X-GM-THRID: 6660411047048904704
X-Received: by 2002:a67:f70e:: with SMTP id m14mr24494186vso.25.1550748300765;
        Thu, 21 Feb 2019 03:25:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls472015vsc.3.gmail; Thu, 21 Feb
 2019 03:24:59 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZTOX5DkH5biRoYPy49wXHFqVtePwRfED708LW5CAJRnObMZU2EIgwx37lq+iDzCVIY23bR
X-Received: by 2002:a67:8e48:: with SMTP id q69mr25832953vsd.18.1550748299578;
        Thu, 21 Feb 2019 03:24:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550748299; cv=none;
        d=google.com; s=arc-20160816;
        b=jrKajpC4fZ3ZP49Gaf/26oBkRQ3GWHo3F8qR+snJTKjeXRbhzq8e2wHpLtQol5s7LO
         HP3ZzcNIVD8wFLdzWdLp0j3tQ83uj+iL4mUH4+ArirnVqB6NGMPMgE4eLswzyTDeDfFh
         lphcfBb9lE3pIjWWqGdNI+3+TUFu5UE67EIniQybC0nZ1qqd0iSJ93vjxIJYEbPzVldA
         H1fV80mPYNH0SbWikltglOZ6YhIro9lJzKBJN48Ymt3k0Q/jyeNSIUlV9f0Hhr7yEV2e
         XlBHvbWyoKmhcATKL8uuvRGTO7IUB5MwDn/1WXIJWLj8G260HnZy8pYf9BDSpbTkYkuU
         T/Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=swM7QDwUyewqaQIA7x0Rg0edrUbjURy2nEsHU3yR58A=;
        b=YNROhhYMdvMohLFflRN9zI5GzUrBIXZoNlVfMmJgvOg+4HUOK3myRItI3vVm7ym0fl
         DpzQp87LUbq2Mn1gF/3Re4aYyqoKpZw2XvP64rBdbGcZhYFnzB6kHopbqiI0uE0ZnEeR
         2nxGStFV+EJgIzYWtEXQG30fil1Buo3K5L94Lz0aKQI0A/uQ2LRZUOZse94cQsKG8XbB
         /BrUksEIvWbeZTDrCIbRxA7t6jVPM8UL8zd3XIfZjt2IHrxR9hHDgq5rjIAlDShFoMt3
         Ip45vNSFiOu062vTbR6VP9C2L3BLaBviRhLA0B+l6Ekygg8MovlfyYY6+g/53sZ23B/F
         yeow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Sf9Agpy8;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m195si661398vkd.4.2019.02.21.03.24.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:24:59 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Sf9Agpy8;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0F41E2084F;
	Thu, 21 Feb 2019 11:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550748298;
	bh=DcGFoYUUpLlBsf702tYnJND7HTgABPRf0tWXtFrBriQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sf9Agpy83e0TtCRyyeOWmV7HAUfd4qeHwzP6iW/1srRf2l6aiXqRlJY5yvXSjzSY3
	 wN4jRaHMox+6WDV8FjIBf7HAm8O77Gz7iCAxAsu+COQgoyXpKSOjNjCq/QoAYb0jL1
	 9SCU1L+m11VvTgC3KyxqgiebQlSrc45YsOm/PWGA=
Date: Thu, 21 Feb 2019 12:24:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/4] staging: netlogic: Add SPDX license Identifier
Message-ID: <20190221112455.GB17199@kroah.com>
References: <20190221111627.GA29041@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190221111627.GA29041@bhanusree-MacBookAir>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 21, 2019 at 04:46:27PM +0530, Bhanusree Pola wrote:
> adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
> Issue found with checkpatch.pl warning:
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/netlogic/xlr_net.h b/drivers/staging/netlogic/xlr_net.h
> index f76e16cfd15d..de51d64c1f23 100644
> --- a/drivers/staging/netlogic/xlr_net.h
> +++ b/drivers/staging/netlogic/xlr_net.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Wait, no, that is NOT the proper license for this file.  The text below
your added line spells that out in detail.

Never mess with licensing information unless you _REALLY_ know what you
are doing, as doing it wrong (like this), is much more dangerous than
leaving it alone.

So all of these are not correct at all, please be more careful.

thanks,

greg k-h

