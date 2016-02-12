X-GM-THRID: 6250289163666456576
X-Received: by 10.129.84.6 with SMTP id i6mr2464652ywb.6.1455297646885;
        Fri, 12 Feb 2016 09:20:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.94 with SMTP id j91ls866345ioi.12.gmail; Fri, 12 Feb
 2016 09:20:46 -0800 (PST)
X-Received: by 10.107.18.216 with SMTP id 85mr3585352ios.16.1455297646448;
        Fri, 12 Feb 2016 09:20:46 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x230.google.com (mail-yk0-x230.google.com. [2607:f8b0:4002:c07::230])
        by gmr-mx.google.com with ESMTPS id w126si1010931ywe.6.2016.02.12.09.20.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 09:20:46 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) client-ip=2607:f8b0:4002:c07::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x230.google.com with SMTP id u9so36809193ykd.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 09:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RpsK61nmNBvoWI+c9v2g5sSGzXN8ukqvsKGiNDTq3as=;
        b=PDQk0+blAj4WWUY8Gj2shjRu880/pRIxKmTlufpyaQTouH9t02QTDkX9x9U6zzy1TI
         PqyJz5npsNHOiUnkHEb2rDna/gMfyJ0suYoUOdMf7Sv6wO3IPSs4GJHG74ZBdyf7niDu
         P6KBvSwsJLfYmS4ML2lkbOpK8qbTki4yS8ZBnHQHuhFd1mjs/xjSEe2MV3prutGChHTO
         mgYs5mNdgbHdBBVx3KG3JkgGRFMu8DUlcKFSIrFx0ytcWJnLTuSOe/89RpIaJ49B1MUA
         JwNsIpyFulXiHL24iNWOd06JrcWXI1nbcxxSTpORuqDqdHGBSN7rMGeBahePQWexmcVO
         +BhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=RpsK61nmNBvoWI+c9v2g5sSGzXN8ukqvsKGiNDTq3as=;
        b=H1PjiM5NLv+a5uB9JEjAouPu/Og1EaKvMkLiCM7rSw2fucct+EnDAfo589/JzYAbyp
         R58IMphCDHql7Lu5ewfC1b30laQP6Uwc5NC3J1pQ0q912F8kVMgAh+PmFZCbh5T9KYtM
         rUymiLgxJol2yWbfvoNEN4ECrdbVrHqMO8PlYGmqK0TyhdTKWx7UG8X6yW+ftsZV/N0W
         Q4Ams6Lifg9h0vDz5rDChhOdWqWwm/JfNnyX5ytRr0cQt+keCZYCmWdNFufNfbbtCXKD
         rqarklZ7fP1C5jV1Q2WKJPQq5Rtt7nrzldBKBjwph+XwxcrDvbK9SvtRk1p/iVpm+uH1
         ypog==
X-Gm-Message-State: AG10YOQILCuvbqW8ZG9MMdlUBdTS+gInyl/Hh9oMhuWj/VrEarTJ0pEr5dtfC9HU3Xphxw==
X-Received: by 10.37.21.5 with SMTP id 5mr1674063ybv.22.1455297646252;
        Fri, 12 Feb 2016 09:20:46 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::a:8dab])
        by smtp.gmail.com with ESMTPSA id 204sm10578029ywz.39.2016.02.12.09.20.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 09:20:45 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 12 Feb 2016 12:20:45 -0500
From: Tejun Heo <tj@kernel.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace kzalloc with
 kmalloc
Message-ID: <20160212172045.GK3741@mtj.duckdns.org>
References: <20160212063353.GA12041@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160212063353.GA12041@d830.WORKGROUP>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Thu, Feb 11, 2016 at 10:34:05PM -0800, Alison Schofield wrote:
> All fields of allocated structure are filled in directly following
> the allocate, so no need to initialize it to zero.
> 
> Use preferred kmalloc() sizeof style to silence:
> CHECK: Prefer kmalloc(sizeof(*priv->rcb[ii])...)
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index a2f23ae..74ff707 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -449,7 +449,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
>  	}
>  
>  	for (ii = 0; ii < priv->num_rcb; ii++) {
> -		priv->rcb[ii] = kzalloc(sizeof(struct vnt_rcb), GFP_KERNEL);
> +		priv->rcb[ii] = kmalloc(sizeof(*priv->rcb[ii]), GFP_KERNEL);

I don't know.  It's on the init path which is extremely cold and
zeroing followed by inits are extremely cheap as the inits end up
hitting the same cachelines (sometimes even cheaper than not doing it
as zeroing often doesn't even need to read in the cachelines, so it
just becomes cacheline allocation).  It's nice to zero this type of
structures as later field additions or code modifications may lead to
surprises.

This doesn't mean kzalloc is always better than kmalloc or vice-versa
and what to use when can be a surprisingly tricky question.  I'd
suggest staying away from mechanical conversions between kmalloc and
kzalloc.

Thanks.

-- 
tejun

