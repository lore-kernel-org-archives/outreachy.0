X-GM-THRID: 6250295934225219584
X-Received: by 10.66.100.135 with SMTP id ey7mr2410577pab.15.1455297799859;
        Fri, 12 Feb 2016 09:23:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.98 with SMTP id k89ls1876735qgk.69.gmail; Fri, 12 Feb
 2016 09:23:19 -0800 (PST)
X-Received: by 10.31.11.75 with SMTP id 72mr2487036vkl.2.1455297799108;
        Fri, 12 Feb 2016 09:23:19 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x22a.google.com (mail-yk0-x22a.google.com. [2607:f8b0:4002:c07::22a])
        by gmr-mx.google.com with ESMTPS id l85si917812ywb.2.2016.02.12.09.23.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 09:23:19 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::22a as permitted sender) client-ip=2607:f8b0:4002:c07::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::22a as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22a.google.com with SMTP id u9so36828558ykd.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 09:23:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Z8P/P10lFsnln1YZWDauzStW1C6Mx8tX8+41c+aeJOI=;
        b=DT4wJuy+C5eLf7tECBjEmf7n3phJx4FlhQAuLAsl2ERwuLhgRIS8F4piT1bCRHl64D
         GhhnebQw4yagoSq4zP0IZdl2mXCDHdeN+OTJiE8VQg6CCVNiZQ38a8nkGVsrll1yVmG+
         TlsUlcrlYYHwLGyboPDEDy7vttPyon7siP6Z++X1bIWfjgaWadEyNFHmgE3xA4eiClAp
         YOPQVtiNx7NPEiUWKaFEKe7SeSnmFEUx9lvGWW9Jp/JzOUlThu7w3GuSZBf5+IiUKyoP
         2U0THEVoAF/SYkO4xxlEyEmqlsGcR0ivimjp4FbsXBEucG6T/utzbxnpEZYutVUbRJ9k
         /1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=Z8P/P10lFsnln1YZWDauzStW1C6Mx8tX8+41c+aeJOI=;
        b=RmNeM+PRZ0sr3nIUTbAFg+GCFXiUjFzDRP3HPvbriYu4Y/9QcHH6eLSKOCHYCbvSPD
         OIgjuvdmTfR73ckd+V7v13a12KbqX5/G5geArZZDr+FUC22pwEKZ/OCy8rw3VH5EkNEw
         5SSxGT2/Vcf7FxTNg4D+DlSlwrn0Y/ms3bsLBP0HQwu5X53qefhkoUgw6id9Bl9Zun90
         wyLlDIKCsNihjCDfAKJx+RHHTygCLDafP1EvC1Pmd2RhWQM8CYo2PYg2DdLxZJA3bUzl
         0Wf3HjqmHPmE4itZIuxSASUR446c8bsQW95iAUfTFwKDKyBu5Gg2BmaFPUzyhr8WcZDj
         i8WQ==
X-Gm-Message-State: AG10YOSiEyRJfA1BBriJoigMWLEWr6Cic6EDszvu5S32/TrOAOVvs21cT6O43dYl3UQ7/A==
X-Received: by 10.37.64.214 with SMTP id n205mr1679415yba.43.1455297798978;
        Fri, 12 Feb 2016 09:23:18 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::a:8dab])
        by smtp.gmail.com with ESMTPSA id t76sm10630351ywe.47.2016.02.12.09.23.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 09:23:18 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 12 Feb 2016 12:23:17 -0500
From: Tejun Heo <tj@kernel.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: move local var init
 closer to usage
Message-ID: <20160212172317.GL3741@mtj.duckdns.org>
References: <20160212070014.GA13288@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160212070014.GA13288@d830.WORKGROUP>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Alison.

On Thu, Feb 11, 2016 at 11:00:22PM -0800, Alison Schofield wrote:
> Move init of struct urb to after sk_buf is verified otherwise
> the init is wasted if we exit early.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/vt6656/usbpipe.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> index bec5baf..3648d16 100644
> --- a/drivers/staging/vt6656/usbpipe.c
> +++ b/drivers/staging/vt6656/usbpipe.c
> @@ -209,12 +209,12 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
>  	int status = 0;
>  	struct urb *urb;
>  
> -	urb = rcb->urb;
>  	if (!rcb->skb) {
>  		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
>  		return status;
>  	}
>  
> +	urb = rcb->urb;
>  	usb_fill_bulk_urb(urb,
>  			  priv->usb,
>  			  usb_rcvbulkpipe(priv->usb, 2),

I'd actually go the other way and do

	struct urb *urb = rcb->urb;

Compilers can easily optimize these orderings.  The focus should be on
brevity and readability instead of micro optimizations which don't
really yield anything.

Thanks.

-- 
tejun

