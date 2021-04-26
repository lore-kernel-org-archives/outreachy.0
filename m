X-GM-THRID: 6955401561206947840
X-Received: by 2002:a19:ad41:: with SMTP id s1mr13848398lfd.306.1619464872353;
        Mon, 26 Apr 2021 12:21:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f815:: with SMTP id a21ls1958750lff.1.gmail; Mon, 26 Apr
 2021 12:21:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyIXKh6tNqeDofuGE1/mQ9MG3KdNEubwskZ4jrUlvPVFIvJK3zvLwPsc+UC9DvMNwVCLSSH
X-Received: by 2002:a05:6512:3d93:: with SMTP id k19mr13397836lfv.488.1619464870716;
        Mon, 26 Apr 2021 12:21:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619464870; cv=none;
        d=google.com; s=arc-20160816;
        b=dHtosxDT8QbcH2bU96K46OzTX6bHrelm3kQOcKFQzZoEkjpf/BxKgu53grE647ga0W
         GDQvfkwis1AsYcyAFEopTXwBY4eeukMdh/5NcA0JXiTgHrZJuKp1BgiU+NK0YCgKEEb4
         yGQQ2WX4jcvAH/aB3eIMq4UEzyfC71qMnw9A184+R2VspHgh8iwopa80ZXqjdTzRR+Ro
         qHfrorTFgNe6pHXG7pDz4RlFg//ZqDH0K3LovvYIICG0UaVaIgZm8nS2lnU+X+o2Kn13
         23ofG/ZQS/4o0Wixt+UVEKquF+xuHHdGEuQY71m7pLLljH4Fbn+LWzNHhpZox+y+L1Mz
         boIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5LaqQeBsNBHU9D9jZgjWkNwbT7whKdIcOp7Scece9yQ=;
        b=MinL7DUt2vVKRAM0BokiK+xU2nvUBBNTDg4DLXVjHXLTD9Xj8HnQxrIG8qYjz5FaXV
         zWpujyZqPVaS2DpBZ5LfULBy8lwaCaLv+uZdi+gIVtgTkyeksn4hJhpDTby1/1lAdYUv
         A8Llqiy+UovWWw89ccb+/598AB1GvmYKK5QhZpnVCJSpZbas61dN5ykTBoYLAPYDSZp/
         d+5JP0jNJEHJwxgloM2Z9ldtUdPn+9wJ2IERzz8N9mWxA6ocQKH4086dJyJJP7TY6Bdw
         gipSraCzUApeyMVwh/nldzTZkoYMadBnHSW/CR+OVikjLdTkUuztB4yNeQrsHFbJKsWa
         ZBEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ZlCvedhh;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id q13si1134743lfm.5.2021.04.26.12.21.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 12:21:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ZlCvedhh;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=5LaqQeBsNBHU9D9jZgjWkNwbT7whKdIcOp7Scece9yQ=; b=ZlCvedhhe+0hN8sK0mbS6kAgvL
	+GPvZWgvOyaFM8lynXHsvjoIOKX0H3LR0Rw/IHh4vf/MDNJbypiFUjVTUWXbA+dti2wnCzteYyOf5
	NFRCWV+oAX0yzXfXp+S33CFFw5uTtlbRMOmKki+D89ne/gzmrfeWzFIYrlfJSvTAYVbnLOia0ghnw
	7Xf3wp8J2YMpgp0N756wucqRhoRlku1NqP5CVVKyGQMfmVXVnMCOV2rd3/TzD1UI6K098/yUksab/
	sx9wdnbzinoSkEj3GB48lsRBDHlFgVIJkyoYRwXHui3yBDqNSgZOld8MDNhP2DSziy/Hbi+Voh3rQ
	QV7ZfNbw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lb6mz-0060Kk-Fr; Mon, 26 Apr 2021 19:21:05 +0000
Date: Mon, 26 Apr 2021 20:21:01 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: unisys: visorhba: Convert
 module from IDR to XArray
Message-ID: <20210426192101.GQ235567@casper.infradead.org>
References: <20210426184245.12269-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210426184245.12269-1-fmdefrancesco@gmail.com>

On Mon, Apr 26, 2021 at 08:42:45PM +0200, Fabio M. De Francesco wrote:
> +static void setup_scsitaskmgmt_handles(struct xarray *xa, struct uiscmdrsp *cmdrsp,
>  				       wait_queue_head_t *event, int *result)
>  {
> -	/* specify the event that has to be triggered when this */
> -	/* cmd is complete */
> -	cmdrsp->scsitaskmgmt.notify_handle =
> -		simple_idr_get(idrtable, event, lock);
> -	cmdrsp->scsitaskmgmt.notifyresult_handle =
> -		simple_idr_get(idrtable, result, lock);
> +	u32 id;
> +	int ret;
> +
> +	/* specify the event that has to be triggered when this cmd is complete */
> +	id = (u32)cmdrsp->scsitaskmgmt.notify_handle;
> +	ret = xa_alloc_irq(xa, &id, event, XA_LIMIT(1, INT_MAX), GFP_KERNEL);

OK, think this one through a bit.  When xa_alloc_irq() stores the ID that
it assigned into 'id', what happens to it next?

> +	id = (u32)cmdrsp->scsitaskmgmt.notifyresult_handle;
> +	ret = xa_alloc_irq(xa, &id, result, XA_LIMIT(1, INT_MAX), GFP_KERNEL);
>  }

> @@ -1053,8 +1018,6 @@ static int visorhba_probe(struct visor_device *dev)
>  	if (err)
>  		goto err_debugfs_info;
>  
> -	idr_init(&devdata->idr);

You still need to initialise the XArray, either with xa_init() or by
using DEFINE_XARRAY.  Since it's dynamically allocated, the former is
correct.


