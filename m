X-GM-THRID: 6609326471053836288
X-Received: by 2002:a37:9ed0:: with SMTP id h199-v6mr17513524qke.11.1539007299112;
        Mon, 08 Oct 2018 07:01:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:2a48:: with SMTP id q69-v6ls248147qkh.11.gmail; Mon, 08
 Oct 2018 07:01:38 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60SdyoI56Hwk3xnBalOTHyH69L448SnaA+9wdwiL9EBdUWTAPEk2eLJsDSYwegjpFnYQmNk
X-Received: by 2002:a37:4c13:: with SMTP id z19-v6mr17043230qka.61.1539007298479;
        Mon, 08 Oct 2018 07:01:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539007298; cv=none;
        d=google.com; s=arc-20160816;
        b=OyeNhda4JRYOHevuIwBOs9CmBras3m9yVZvLWJKrRW+RB6QhKSJ2H7bvG90MJyOzeZ
         zEolYSDWuNz1/hjUfcFEQcivR4AV2A0aUA+oKqeLLU4gCeLRH6iiJE+JDPS9tq/gI4++
         aF+ddmefGV0wdYOZNNXc7kflE1OD5nMNDriCvQq3xK3JdXwowrJalK9PjCtkJL5Oq4Yj
         DAibfyI4AxXczGL1Ucer06p4f+3kbfykObnnw8YwHqxHwT8ut8lEnASX2UhAVcq7Pwvw
         hfCotwIfivo9FGcCbE/7FOvi86L96Xna9QiI7UuLdLYXm3u54Lrkziq+HBHB97X5U+rM
         5TQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=QL83u0PRwReql7rSxT+T6GfMOY5rsOInMta6JaFyPDw=;
        b=B/NAxt2N4LsMplPmp78/FJrFmnC2XB5HHSU0ZpAbMukaqUyvd1vywraDAPE/j/uIKt
         aPeIQJpIn7sxrWJTIbO8BKypZJHD/W3Tu3CxDN0aUg/folwANt3ZuoItnIPruMHYrzjl
         ySOW1g4lFZaeEEsQ52feAvzbZMuhb853ENX+Q82WU+pR2DZI7XTjjYV6yVDxCSqoZ+Bx
         4+OCUIhawF+T4omHMJcJAlaQqFAgEvOHsrQ0UIGpGzsawDvOjlqpKDWGQOp20880kj69
         mAlyCtU2sbgkQZs9/MmszG9eoVPFQcIdJ8pQNsACgiGPykPqj83oBFXHwH8P2INJOcFX
         /I+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b="A/xkZCeY";
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=O+VYT1M8;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com. [66.111.4.27])
        by gmr-mx.google.com with ESMTPS id 12-v6si902223qkp.1.2018.10.08.07.01.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 07:01:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) client-ip=66.111.4.27;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b="A/xkZCeY";
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=O+VYT1M8;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 185FE221A3;
	Mon,  8 Oct 2018 10:01:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 08 Oct 2018 10:01:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=QL83u0PRwReql7rSxT+T6GfMOY5
	rsOInMta6JaFyPDw=; b=A/xkZCeYUDQLGO9PQVzNRKRMO+2INAx/Uytf7Pdbj7m
	vt5AV/1HXwAHAG8wqiVtXi1z/ylZmQD8znV0P9yq8U7TJSPOJsYIDpKuWm4VBXo4
	a+58pQrIc5rzyYODyPi5mX9pSAjAaW1Eb5IdTXTmmf4GXA14c7mL9ykg5nPyDAKn
	R2VrVpM7e/8bCMGGC5RXrnFbN7wm5HZFk0AdjnJmfehpzmKxPXWEd03gfifTUtza
	gvVH7lNljU4WmpdP/L6xZlA810TAjvrBg5wYw14GS1VOpacfAnICM4c1KgGTOZI8
	p4Rot9mYa0ONFpa2O3qbFA8AvPCLc8NMN+G/wlTAPhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=QL83u0
	PRwReql7rSxT+T6GfMOY5rsOInMta6JaFyPDw=; b=O+VYT1M8wa81hE0OGX1xrC
	lQTw3LZ8hKl//UhRSwxG2iO4dDcyPnwAalJfIfsj9I5rrRg0Bi0f5++63T82YX7L
	V8xprgX80lUBZ7bWO40e1KrRw//s8l/KxL5KlaUAYVLJ5RA1Z1c1ct9oYSEX1UsP
	VEOfN2I2wDuhdtBrt++vhIenWtqwhAYygHDy699V+AnO8jqKDPKD6oP05u+FAwee
	AHeNs/xynfL62u4r7WRlIeUoDaCTCw4+iahN440TU5HbUo4/xDcnmSDhFMpbzn3C
	kKKuLGbR0Dda/Tg3Tjx7i72liZsXjilFI6grNiGwG+RtfRV3Jl4GJA28VaocAQfg
	==
X-ME-Sender: <xms:QWO7W-HsY_NG-f7dnm_OhtOrcnJsREAVeHG6HzVZFImZrPE2fQwlRA>
X-ME-Proxy: <xmx:QWO7W1LaKJKxOe_-NXb4VosLOkgLKGX9oUrjHSL_EkJn4tef9hVQMA>
    <xmx:QWO7W5dX5Q6Lm4Htah_7xTEpW3DmDSYUynEIUsWmzJm1Tz3bVC_YaQ>
    <xmx:QWO7W3t88pjYs045VtC8-Jq-Sbg0iYwf2NPuOh26CXsSz-M4bkbjgA>
    <xmx:QWO7W0Ns4X-TUhAbZzYlkjH5g1qdausv53dkkUIZ7iqMuOZ6TfURYg>
    <xmx:QWO7W-V_pHTA4ta6dnoJCgEmC3nid4gq-L6vdDwy-5UqBHyFmavzbQ>
    <xmx:QmO7W8z4hhdMoTET-3o_5y6_6_PuAbwBNjzUeMMbWdSzaRDyMpZ4LQ>
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	by mail.messagingengine.com (Postfix) with ESMTPA id BC9C1E473B;
	Mon,  8 Oct 2018 10:01:36 -0400 (EDT)
Date: Mon, 8 Oct 2018 15:52:51 +0200
From: Greg KH <greg@kroah.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Dafna Hirschfeld <dafna3@gmail.com>, isely@pobox.com,
	mchehab@kernel.org, helen.koike@collabora.com,
	outreachy-kernel@googlegroups.com,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Outreachy kernel] [PATCH vicodec] media: pvrusb2: replace
 `printk` with `pr_*`
Message-ID: <20181008135251.GB31820@kroah.com>
References: <20181008120647.10271-1-dafna3@gmail.com>
 <20181008130719.GA20351@kroah.com>
 <8882bb79-b4cc-ca79-30b9-2f983cea6f37@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8882bb79-b4cc-ca79-30b9-2f983cea6f37@xs4all.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Oct 08, 2018 at 03:29:03PM +0200, Hans Verkuil wrote:
> On 10/08/2018 03:07 PM, Greg KH wrote:
> > On Mon, Oct 08, 2018 at 03:06:47PM +0300, Dafna Hirschfeld wrote:
> >> Replace calls to `printk` with the appropriate `pr_*`
> >> macro.
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> >> ---
> >>  drivers/media/usb/pvrusb2/pvrusb2-debug.h    |  2 +-
> >>  drivers/media/usb/pvrusb2/pvrusb2-hdw.c      |  8 +++---
> >>  drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c | 28 +++++++++-----------
> >>  drivers/media/usb/pvrusb2/pvrusb2-main.c     |  4 +--
> >>  drivers/media/usb/pvrusb2/pvrusb2-v4l2.c     |  4 +--
> >>  5 files changed, 22 insertions(+), 24 deletions(-)
> >>
> >> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-debug.h b/drivers/media/usb/pvrusb2/pvrusb2-debug.h
> >> index 5cd16292e2fa..1323f949f454 100644
> >> --- a/drivers/media/usb/pvrusb2/pvrusb2-debug.h
> >> +++ b/drivers/media/usb/pvrusb2/pvrusb2-debug.h
> >> @@ -17,7 +17,7 @@
> >>  
> >>  extern int pvrusb2_debug;
> >>  
> >> -#define pvr2_trace(msk, fmt, arg...) do {if(msk & pvrusb2_debug) printk(KERN_INFO "pvrusb2: " fmt "\n", ##arg); } while (0)
> >> +#define pvr2_trace(msk, fmt, arg...) do {if (msk & pvrusb2_debug) pr_info("pvrusb2: " fmt "\n", ##arg); } while (0)
> > 
> > You should not need prefixes for pr_info() calls.
> > 
> >>  
> >>  /* These are listed in *rough* order of decreasing usefulness and
> >>     increasing noise level. */
> >> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> >> index a8519da0020b..7702285c1519 100644
> >> --- a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> >> +++ b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> >> @@ -3293,12 +3293,12 @@ void pvr2_hdw_trigger_module_log(struct pvr2_hdw *hdw)
> >>  	int nr = pvr2_hdw_get_unit_number(hdw);
> >>  	LOCK_TAKE(hdw->big_lock);
> >>  	do {
> >> -		printk(KERN_INFO "pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
> >> +		pr_info("pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
> > 
> > A driver should be using dev_info(), not pr_*.
> 
> pvrusb2 is an exception due to historical reasons. I'd rather not switch
> over to dev_*.

Why should a historical reason be needed to fix up code to be correct?

Why not use the correct functions?  You will just constantly be
rejecting patches like this for the next 20+ years :(

thanks,

greg k-h

