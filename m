X-GM-THRID: 6806960507457634304
X-Received: by 2002:a05:6602:1c5:: with SMTP id w5mr15046342iot.64.1584876376578;
        Sun, 22 Mar 2020 04:26:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:ba17:: with SMTP id z23ls638860jan.3.gmail; Sun, 22 Mar
 2020 04:26:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtZjZsraZnOhAxr2ZI6kMOWE9h+fmdScobdeZ01dG+3s9qeXGHft/cyH6WiHGwmpPQBN/fm
X-Received: by 2002:a05:6638:3a4:: with SMTP id z4mr4329429jap.141.1584876375050;
        Sun, 22 Mar 2020 04:26:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584876375; cv=none;
        d=google.com; s=arc-20160816;
        b=uuTy2bzE9K7w4PkPtnsc2ttSFwNOb6mLs/EhwCQGosf2DGL7spf+El44VZK4wYC/mI
         UTcMCHezv/4qQZbihnKlT8J/5Nn4z5Uc6vxf5WeEwe54A8saJbP7Cs5PnVbrFFvB1koe
         3xzcuftxwGQmrFq8vfpO7yHx+QUII6pa+AKWlS/HgPs39yovCh9Z20UF4KrapGFrRYHG
         NapkHVK/XGVviPuSn/Dxozeh8bnzXQVtCfkkUgx8xo+B84hWHN4gLLDV2/AQ3DOcKQF1
         HxaFrstWWv86BOGlWzLt6srUGI9ltB5qN0AfAEN/NOqDTZncejotJFh61ezfmzzSIPUt
         4k5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=okylhigwq30QsSb2hwxF68U8Sb2w7/qE2UdKl+qqoyI=;
        b=tNqg5EgFGNgo5KDc6PNNkDyMyUtpXL7LUZmsyOVgKZ80q817Zbzj3cR350+/A5uBbA
         VGAHeYmOMXoHy8UB4IMweyEI2A1zpaEQpLzr/si1yr9giQOvnoPCuU1Ljg4kH0imhmjl
         MtI0hDi1j1fH8LbHVb+w7GnEvndVpu4V1jw3AJhkN37tbJ0JnEdYuhFr+YiGZJCrrqw/
         bzNTl8fap+l66GF92C6t4r9KIUIpzhnveTXfHhbKma15+S6Yr3ew/fBdK1S6VeKvZJUp
         Yr3YoRYRAoWJLW3wd3DYpx/kt2PjqtwwjmJo6HgIxOLHKrF4AT7cSRFcBIjSBvQzSqYq
         BdTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tw1uBt6A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d207si221396iof.3.2020.03.22.04.26.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 04:26:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tw1uBt6A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C2D5B20714;
	Sun, 22 Mar 2020 11:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584876374;
	bh=OiEurEKKZLz5Mz/S8byIrRQLkbRiNo+3AQ/w5bAcbtc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tw1uBt6AVm9fR0Xz7qaVF5w0nKkfyu1KIAtPS2JdW9IsDUdJb3E9L3+SzE4mvVqeq
	 t9WBALmeuagUxTf8sL7Ooa3/rwIqa2VtVRONMjEhNAHhw8ut6LINCWsqzoduin2/rH
	 m7NuJdJ2b+D3JvG2RRxYywWxTR0EonV6Tw59cXY8=
Date: Sun, 22 Mar 2020 12:26:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
	Forest Bond <forest@alittletooquiet.net>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: vt6656: remove unneeded variable: ret
Message-ID: <20200322112611.GB75383@kroah.com>
References: <20200322092303.2518033-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200322092303.2518033-1-jbwyatt4@gmail.com>

On Sun, Mar 22, 2020 at 02:23:03AM -0700, John B. Wyatt IV wrote:
> Remove unneeded variable ret; replace with 0 for the return value.
> 
> Update function documentation (comment) on the return status as
> suggested by Julia Lawall <julia.lawall@inria.fr>.
> 
> Issue reported by coccinelle (coccicheck).
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/vt6656/card.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index dc3ab10eb630..05b57a2489a0 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -716,13 +716,11 @@ int vnt_radio_power_off(struct vnt_private *priv)
>   *  Out:
>   *      none
>   *
> - * Return Value: true if success; otherwise false
> + * Return Value: 0

If this always returns something, why have it return anything at all?

Why not make this a patch series, doing this, and then fixing up the
callers and the function to not return anything.

thanks,

greg k-h

