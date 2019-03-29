X-GM-THRID: 6673105418876616704
X-Received: by 2002:ab0:2a08:: with SMTP id o8mr4320174uar.10.1553875589063;
        Fri, 29 Mar 2019 09:06:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2a58:: with SMTP id p24ls212996uar.3.gmail; Fri, 29 Mar
 2019 09:06:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyUXvZQ12IxUThlXttqHGBpLSS7audti6q7mDQxyNSwfls5GsJDgDJ9V1qczhpBsi+UetFk
X-Received: by 2002:ab0:2554:: with SMTP id l20mr3866575uan.4.1553875588410;
        Fri, 29 Mar 2019 09:06:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553875588; cv=none;
        d=google.com; s=arc-20160816;
        b=TU1HtNDhHsEK4i4cj4VuJMpnalPuZ4TTF286u6Mx5xExxpNL1loNmjlvXQfBCKYQp7
         oN/pbpNLv9zPwgPRcV0I4GXgRzrR+b/fzzLowNC5BBZL7ZGe9/NMVUok3pA0EjiPpTsD
         g1NRinoDf+VpUNF7GVljX/QQy+5ojFnZB+A87ihwJGWYx08aAzRwV0hTVnjozohzJBt7
         UbeZygozqPujWfxITIcRm920RAlfEBU+IVfXh8pe9mCGvU615SGvYRp4a5BmLqUKmBXA
         MKvj2uXha9dpW1O+FfumCOL34XmY8EajsHHc0hA6FgFpxkbskt6Q1jZ4NkODIvaenbZB
         hl7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=phOh6wi5x1BvsEGveYPZmCBU4O3bN4lOn5a41r6uN7s=;
        b=KcAzLSvcPQYuzBrXHpwsk11rf304LqV6Wi7eZkpOXjw0hd3dxdVNvmoe6sVs/0eKyN
         NR0Bka/JhqxwACrVgED4bwqjugP6jGg6HMyC2ByEBP55A612lhdyL+qBUwLtM7Bwx0BK
         QzzeFI8nX+LVibbJwuGPg4l6H08XvUtv7ERJ/U2QbDY8JPioDvnx/5ID4URCDTm+lZcg
         UZJBQVLZPZTUB1DBAv0Ph/gMMRPo2P40sDfuSLzoJtWe3VfPU0iBgaV74ds0J+nCnA3H
         ZIhr84eoelDQ397+iN2w8uTDTs9+4zWjt98GlWqXAxEeMHm6i/ppn6N/VWaKp9kmJgIT
         HmdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qYtzmWWH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k68si155374vkg.5.2019.03.29.09.06.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:06:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qYtzmWWH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 166052070B;
	Fri, 29 Mar 2019 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553875586;
	bh=uvgMqToUzCxeVJuNCWp/PLf0z+Tkt0etggDiRXQ8MRU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qYtzmWWHYWWWXTOXvt8RpG8AotDVon1SsWp6LU+xIY4IoAcgMWBnfGeBaKTZufvM2
	 qQ+Zf+WJ6J74kgyTqSxE3i46cDCyu7pyElaiNuXDvHRBtY3WLm3YC4u58UUuKm8mwa
	 e5EaBI0MtyIwTky9pao5wzel0YPzR0LV5HcfYG3M=
Date: Fri, 29 Mar 2019 17:06:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8192e: Line over 80 characters.
Message-ID: <20190329160624.GB6197@kroah.com>
References: <20190327161656.8905-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190327161656.8905-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Wed, Mar 27, 2019 at 09:46:56PM +0530, Sanjana Sanikommu wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> index ae8f44fd4550..389e7406f30b 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> @@ -81,7 +81,8 @@ void rtl92e_set_bb_reg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
>  	if (dwBitMask != bMaskDWord) {
>  		OriginalValue = rtl92e_readl(dev, dwRegAddr);
>  		BitShift = _rtl92e_calculate_bit_shift(dwBitMask);
> -		NewValue = (OriginalValue & ~dwBitMask) | (dwData << BitShift);
> +		NewValue = (OriginalValue & ~dwBitMask) |
> +			    (dwData << BitShift);

This should line up with the ( above it.  Please fix for all of these.

thanks,

greg k-h

