X-GM-THRID: 6609994215538556928
X-Received: by 2002:a67:3d92:: with SMTP id p18mr7678911vsi.37.1539089490811;
        Tue, 09 Oct 2018 05:51:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:a291:: with SMTP id l139-v6ls463365vke.5.gmail; Tue, 09
 Oct 2018 05:51:29 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62lsE5ThASdRNhrVM8BHZ+LASNUSzqJCM//Jahv9lgINQGwhjvLdRedP7Du0Wxfv03gHCUL
X-Received: by 2002:a1f:96d6:: with SMTP id y205-v6mr24371323vkd.4.1539089489891;
        Tue, 09 Oct 2018 05:51:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539089489; cv=none;
        d=google.com; s=arc-20160816;
        b=esF3uxi0feEHUdAI+GumOtCspeyL07wPPoVE82xWLrJ4Osh9EH0E/cTqmxAd8R5WxV
         GTRA0KapyVU7PFKg96X/O5vI/HZVXbmDOL2FUt1679knpdE4oZbkaKEVqRX52Vi9n0PR
         Z9zs4ecI5fBfyVbvtWArfRFKgEG84UEHXUSBH4eM5d1LL3F6d+pHc4xGeEj2doYlTukz
         YLs7KOp+T8UQY9JV3KDnXkiK2hlAJA+wHzAXpbMKeunZj60dlmKLELjYzgUjd6ac3fTx
         OhyZhahic0Zt0Q1LSXVNZVWy5UgKWfMB2T7GZTBoKqqgEwugjIgyw/iMZoPUKPuj6NVh
         QkFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=KKcXCJLIAK9dKJpjtcbzF+loD2dxfGfNwCnmie8Go/8=;
        b=GKltBuWuTR/VjgYHoJR6RB4FD4m9pzOSgnSs1lmvR0ph8xAT77lJZy7VZSYq5vzC2e
         N0WwvQayKD5KjpH+8HMAch8ateC2NKFVeymf0FAYxtuDiVRINPtpdnMFhoLPIb2fA4tn
         dyngGeerdfr1dfjbVacKYFNoNVTcmJswVJVTcUeGoTiGLSkcueRl7riG+UeBRtOai2Gc
         ndCPOqwqO1pjg8jmrun+KlREXzV+dWRGbPZMG24K24P14FfD621Fjdrxuxdym7vIAEUv
         y+qwOoRMcKCtLDsEVsr28dWzvpGkwqpOynporgLaNIxL2hofecqkfPZo95D1yBOCFeZ+
         8ddA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=LzzSWjmV;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=cQvQs6DW;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com. [66.111.4.27])
        by gmr-mx.google.com with ESMTPS id y4si1137854vsa.2.2018.10.09.05.51.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Oct 2018 05:51:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) client-ip=66.111.4.27;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=LzzSWjmV;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=cQvQs6DW;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 254CA21FEC;
	Tue,  9 Oct 2018 08:51:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 09 Oct 2018 08:51:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=KKcXCJLIAK9dKJpjtcbzF+loD2d
	xfGfNwCnmie8Go/8=; b=LzzSWjmVU+enI6xiX3qirrziZgHe0TodLksz4MkGcOd
	sBnOSsrAilLl6Deqr1KsiJFv/S0zj3F5s+zvLC9RDDgSbm2zboN4r9+zl/3izrX6
	ekJJgTcdWJ41cbt4U2iSponLj8XnKos6hupniPtSq3re0DPV2BcWa6Oh2EiftVyL
	uTI8yGGwOPqeJ0k5fO+jzFHpwW1y81RUbKHoWcBfqV8h782sCrxyn/5CtzHyYNIR
	YAE0DcwZXFdHtB4i2dzUugfM2KBheh6w7iTb+/c1CvzmfVrikW7b65VarNZUgn5d
	ZoNI7I+XIiNxuY7fAO8DvMUPR1oXtGZ+WnYA/JPzoSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=KKcXCJ
	LIAK9dKJpjtcbzF+loD2dxfGfNwCnmie8Go/8=; b=cQvQs6DWJ4rp5iVeCkPp1u
	bolTAosNP2vov+0PAddypZFiiyr4DvfRl2WgORKzRjC4tnFc8mhoKoTYWvXqqQIN
	ZsjuWet/bwZzp27WSYKqCDpHHgb3pjW5+iq5iL0SykipNFqeM4hLVHGQAEWiW9Ri
	I8Cj6b5Rb8Sc7/KFi2bWQUbIB6sZ5SVgye06u5KaTIAesLLETMMUrmyVDvHamfSh
	BCz5sCKpa8No/q4VTpiqaJATifPOWSTaEXeEs6P0vPl5QBNbL0D6F+4kinsPBOpD
	iMKv7rUI1W0WnPLu2zlneBqzeAZoL6slK37Gb8Cn9pKIbgx0cX3LPkJuHrUStNNw
	==
X-ME-Sender: <xms:UKS8WwQlbQLExwY6HliwlUMXVEVLYW4WQIpHhsc8UIqasSN2yLq1-A>
X-ME-Proxy: <xmx:UKS8WxANe0wPDEO669vn-EOy4ru_jS4NQirP_7us21nX8oqIqGQ3cw>
    <xmx:UKS8WyIQqaTQG4078EZALptvP28I2SN57KdB8ibxbzDQjxlgEIvqyg>
    <xmx:UKS8WxgwJ5XGccRzngNlysNEmIcdeinHjvqLpKn_1-6fViX56gOuMg>
    <xmx:UKS8W-tXdE_SWgmGWHQAt9Uez3jphHtlPmsEf4MnJgSfNhG4zc3Vug>
    <xmx:UKS8WxAmsCVfq1kfV2Need0u18EIDLBOU8MoY4JIEP9KJ5CjTLJeSA>
    <xmx:UaS8W-RPWrn92XpXZqdwJMKLpQWPWEnOU7RptmQW3H4711ZmqgnsQQ>
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5C61CE4307;
	Tue,  9 Oct 2018 08:51:28 -0400 (EDT)
Date: Tue, 9 Oct 2018 14:51:26 +0200
From: Greg KH <greg@kroah.com>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy Kernel][PATCH v2] staging: mt7621-dma: Fix Spelling
Message-ID: <20181009125126.GB2234@kroah.com>
References: <20181008145012.GA13213@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181008145012.GA13213@veda-VGN-CS3AGH-R>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Oct 08, 2018 at 08:20:12PM +0530, Bhanusree Pola wrote:
> Fix Spelling in #define GDMA_REG_CTRL1_CONTINOUS. Perhaps 'CONTINUOUS'
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
> 
> v2: fixed log message in place
> 
>  drivers/staging/mt7621-dma/ralink-gdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-dma/ralink-gdma.c b/drivers/staging/mt7621-dma/ralink-gdma.c
> index 6d9fe175ea52..a430c8afa3d0 100644
> --- a/drivers/staging/mt7621-dma/ralink-gdma.c
> +++ b/drivers/staging/mt7621-dma/ralink-gdma.c
> @@ -47,7 +47,7 @@
>  #define GDMA_REG_CTRL1_REQ_MASK		0x3f
>  #define GDMA_REG_CTRL1_SRC_REQ_SHIFT	16
>  #define GDMA_REG_CTRL1_DST_REQ_SHIFT	8
> -#define GDMA_REG_CTRL1_CONTINOUS	BIT(14)
> +#define GDMA_REG_CTRL1_CONTINUOUS	BIT(14)

Again, why can you not just delete this unused define?

thanks,

greg k-h

