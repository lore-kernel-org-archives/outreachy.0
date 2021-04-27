X-GM-THRID: 6955860329873014784
X-Received: by 2002:a1c:7f82:: with SMTP id a124mr17965263wmd.170.1619543563135;
        Tue, 27 Apr 2021 10:12:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls6930781wrs.0.gmail; Tue, 27 Apr
 2021 10:12:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDi2Oyd7+8qksazobbgfdW/zrB+Knh8/98z9iV/tXw6c8RoPVaOc3K5jJwXo3jFbjtmyiI
X-Received: by 2002:adf:a119:: with SMTP id o25mr10482272wro.61.1619543561867;
        Tue, 27 Apr 2021 10:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619543561; cv=none;
        d=google.com; s=arc-20160816;
        b=jIcevq+jNo6ZdxT/zc2YS6wR4TGY2JTiolTMnAlIeuV9XDUvjHWqcjGsSafPOUYIJA
         NZRmAubbFsuOSw2EiPnGgn4GAnWgnybUsfIrrR/0DOG49tB7yAfvAYkWiXBl+jzskOSl
         UYHEX09YBBZ0CNNbu91LuaRkZxuVlaMRyt4g+26MmVHgwsiv2P7DPpNuxthxqoUZkbZa
         iAVJygCIJgXdkuTPechfOEJA/yGrZ04+EIPI0jLvY7SL6k5B+V7tt8/pR/7IO0sU//ad
         ig0fttyeNn/YU2ay/tkKGYuBTx6XHEslh+H5LMVjNlMwED9/XTom2Q6rybEHSXP5iQUI
         3lKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zvSR0MRzYzUyEROaBcPPBm5XR+hzC9OMiBjgI6fYxFU=;
        b=0W3dSYTKE1339BvOU2WdKPzHoVstuRjy59b8kUpBsm8h85VD5BztGF4cwn5iaJdpIP
         pkBcLOIXKRr7zwpkqfbdMDn3wnvuBQyhDIlbHZcUXjD/2qv18MRaeqT0vpDcmWTRZk/B
         jbFdltAD2nTP1n1Bfwgs8l9KgpsCywYMTfN3m73+fsHW/KeZx3Mpdh5ZT2IKrixNNFjI
         Rg6ROOTC5rNeGRMbeYR6ispVs88OT0wHFXevnwovmKZfpQD3gt7cS7istP9uWTahi96n
         LoNVhoVjfnx/f3/cx1CLXqfdIc3oK3s6UHGeKd++x1Ce6w2Scsna97sKXn/g/BjUVM+t
         bSfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ss80LBDJ;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id x16si1377008wmi.1.2021.04.27.10.12.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 10:12:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ss80LBDJ;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=zvSR0MRzYzUyEROaBcPPBm5XR+hzC9OMiBjgI6fYxFU=; b=ss80LBDJ+t+7TROnJ9YpSkRqM0
	JbPM9WVBU6zGdkV0dsXvJZ0WqUX9BF21xSxBQl7jIwsjNlvxFcbhrRZVPzPk60JrpyPnZhJbiuS7b
	cIoJ42qM3jgkXgWtkiQdz2Qz62SVGxvR1scRfu+D3SDDFvCykGDWBtXBhlcXlPXKJb/3b0v/gRUXf
	iqFfV5Wfafo3EVo2rrspSOIZpGpDybl2AGoKPNqDDjeSY8+asO9tp5pwBfBM+1PxKrOUtJlLof5Xt
	VyoMmTBUTUyg1l8sfwc8SjbhueUTqrlJdHNql+owegu5tTzYxMdy+IP8POKdNCXr4te3VVr51P7Bs
	HGftaX6A==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lbRFY-007BKA-1c; Tue, 27 Apr 2021 17:12:09 +0000
Date: Tue, 27 Apr 2021 18:11:52 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Tawah Peggy <tawahpeggy98@gmail.com>
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging:greybus: Add () around
 gcam macro.
Message-ID: <20210427171152.GB235567@casper.infradead.org>
References: <20210427170945.GA23366@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210427170945.GA23366@peggy-Lenovo-V130-15IKB>

On Tue, Apr 27, 2021 at 01:09:52PM -0400, Tawah Peggy wrote:
> checkpatch.pl suggested to add parenthesis around the gcam macro
> variable.
> 
> Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>
> 
> ---
> changes in v2:
>   - Add parenthesis around other gcam macro in the same paragraph and
>     also remove previous parenthesis since it was added in the wrong
>     place

Looks like you sent v1 of the patch

>  drivers/staging/greybus/camera.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index cdbb42cd413b..324a26430f71 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
>  
>  #define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
>  #define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> -#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
> +#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
>  
>  static int gb_camera_operation_sync_flags(struct gb_connection *connection,
>  					  int type, unsigned int flags,
> -- 
> 2.17.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210427170945.GA23366%40peggy-Lenovo-V130-15IKB.

