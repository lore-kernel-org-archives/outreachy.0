X-GM-THRID: 6947609304795971584
X-Received: by 2002:a9d:620a:: with SMTP id g10mr21297002otj.335.1617617004915;
        Mon, 05 Apr 2021 03:03:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:f0d:: with SMTP id m13ls3152279oiw.4.gmail; Mon, 05
 Apr 2021 03:03:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQ/xbYOsg2JoibcMjFQ0XmHajTY/eihL+Ups8TeKerWpKcqwK30vJMGR+XGWqNYaImwBsm
X-Received: by 2002:a05:6808:8c8:: with SMTP id k8mr17362463oij.140.1617617004071;
        Mon, 05 Apr 2021 03:03:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617617004; cv=none;
        d=google.com; s=arc-20160816;
        b=rDSepnKEoaYhU1i0xcShZPgvHRSI5U8YOKmP/GuWqtDF1vxUUji1prm8LyusKLilxV
         9Dwh1SiFbecxSLwvQbD3tVhbIA3ZPkirxMeLOVVlURjlrOyUaySdt03GAWg07moyUUBJ
         crKI120OIpLDdgyuxMKsSuDHwoo9t28WVRGnhe+IWNEpF614PPKhWjz0LBkKnnRkvOKk
         LLI6laft5gYZmvXCieQW7BYp4atBeSpPJQOGJHFEQ8OZ2Hf1PX81GvHdZlxVAdhixQUE
         hubQb6B0BkyM5tiTen1rWA/FcUWmXm98CTTkUJEsSoBROKJn7HRX8g+D2Eg2SsLNtC6C
         i8RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JwPJMSRR++iploXNa5kNP+CjQMmtVb22eqxpLMBYfO8=;
        b=qWjY3p1JKRu1Le/fqg/Kzr7MN3o5pMAORLIQnG6y+4yncGSJaLBeLEIKdmvyP2YOF6
         YN4VKJEHBKbZedsGYIhCF5PxqRuQh7BERmOy0g7nwYlNVknYhLnmLKZtdhMlLa1J4AfP
         LWm9QTr6SqybHQKE/6dH2c0V+97rinM6/PmdM3bxsBooklzPSwtnKb0c9mqtSNNSziIh
         CMhHnEA3fV1TJ5v1USNQgUU5UOY2uC4zl0KRlwWYUCeYMlD+gbNV4XgVMD49c0eXIrCF
         Qo3FjqAGunJ9RGGcW9dQB9NEmLqq9VsC/Tni73yr6z+lhpEwjXjiNreX+AelCTqQHVRq
         eRnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ohJiGI5m;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a12si1206742oid.0.2021.04.05.03.03.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:03:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ohJiGI5m;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9F10A61278;
	Mon,  5 Apr 2021 10:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617617003;
	bh=t3+urecWgEBByuUFtvnHcLqpmgBZ//QpinqVJ+cv5CY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ohJiGI5moBnAg6hfGO8KLtTMjlKQfEIwAVzIbKn9YC7HR7YAXDWnGBqNMTgyTCfQq
	 WrHHAAffB1CbRGOpncdC/TrTYqOVep/hdL0Wu9rLuPia+1dsonmtfhbZh3fvp85KEa
	 ZuvfuzdKUtK3yoUqMJgsEyiCz+5S/r5Hq4xK1N5g=
Date: Mon, 5 Apr 2021 12:03:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jerome.pouiller@silabs.com
Subject: Re: [PATCH] staging: wfx: Replace udelay() by usleep_range() in bh.c
Message-ID: <YGrgaPEwvRpFfdDc@kroah.com>
References: <20210405095213.19615-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210405095213.19615-1-fmdefrancesco@gmail.com>

On Mon, Apr 05, 2021 at 11:52:13AM +0200, Fabio M. De Francesco wrote:
> Replace udelay() by usleep_range() in bh.c according to checkpatch
> message: "CHECK: usleep_range is preferred over udelay"
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/wfx/bh.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> index ed53d0b45592..07ef6732973d 100644
> --- a/drivers/staging/wfx/bh.c
> +++ b/drivers/staging/wfx/bh.c
> @@ -315,7 +315,7 @@ void wfx_bh_poll_irq(struct wfx_dev *wdev)
>  			dev_err(wdev->dev, "time out while polling control register\n");
>  			return;
>  		}
> -		udelay(200);
> +		usleep_range(200, 300);

Do you know that this range is safe to use?  This type of change needs
to be tested on a device itself.

thanks,

greg k-h

