X-GM-THRID: 6477997622457008128
X-Received: by 10.46.101.7 with SMTP id z7mr200486ljb.38.1508335384886;
        Wed, 18 Oct 2017 07:03:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.93.79 with SMTP id r76ls634965ljb.7.gmail; Wed, 18 Oct 2017
 07:03:03 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+S4bYnINhU5Ytie97EHlwQavCthLUs4DXuIDsC8Xm4E1dDPr6ar62o6KG7HG6Xa8DNVYHoT
X-Received: by 10.46.18.17 with SMTP id t17mr211914lje.33.1508335383723;
        Wed, 18 Oct 2017 07:03:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508335383; cv=none;
        d=google.com; s=arc-20160816;
        b=05HywwrBlQjTm3DZa+U/1f1VUV+4n7BrN9pz9HXS5WMTLz1JQ7rde6VO9sXa5toJHZ
         I+zokBYo0v/l3S9aLAeXOuDrLgxAiX7XMScN3964A+f6UY1g4RdG4/gLeMT9diwgscpe
         LadcU8pQW9ASl4PXWswNgYhdtrv9juzpDQr9P9B6CNdwtF12ZdZVw9LVy0j5hnORve8z
         qpzpWH4PgS6g7fhnqTipeJU5UClkp3t3mGPkCKkAsKs30/s5fVRK35WB31qYioGSysTD
         q1fPY50+IrSuHYvQGeH6DsO/fFgRudrUMqHpk2h1EelkjKeKY6vsBck7yi/h8y60b28R
         WObg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=tkrSXXPWgY+2Ooeysule0C+HhGMkDiO0ehoPkUTsyuA=;
        b=09cRfDItGcUm6IA2+XI3cxE3VvJCCq+DPS26PLKcmXc3MKtZ9ynNpUEgChlep1+3xp
         tgV/tfECYE4HCYH7Gj5oVR7eq+H6esq/jbT8CTYHfP4f5dQ+ss6rWQFY6dr1mhA+OQW/
         9AetgPllbbG2du1wNSgRtLkVi8TbT8KqtiRSs/FzFnkgbkmqN0kqnOmiWv50Lg4s0HIx
         ufma8dLg7WIfD4ByRfA5oy8pXGKL17Fb4kDFM8ztvf/xC9uShucAgZkLz+G6uGtSfI5R
         dqsUFknDSAVWqdKq8iLfpvCp5YjjbRuXzoQUrmzJiU1ZBAEDKrIxhuLpYHszbIl1HNeE
         +qcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l14si634062lje.1.2017.10.18.07.03.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:03:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9F29E8EE;
	Wed, 18 Oct 2017 14:03:01 +0000 (UTC)
Date: Wed, 18 Oct 2017 16:03:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: rtl8723bs: Check sscanf return value
Message-ID: <20171018140310.GB5315@kroah.com>
References: <20171017213911.15653-1-georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017213911.15653-1-georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Wed, Oct 18, 2017 at 12:39:11AM +0300, Georgiana Chelu wrote:
> Check the sscanf return value and handle it. The function returns
> the number of items of the argument list successfully filled.
> 
> Issue found by checkpatch.pl.
> WARNING: unchecked sscanf return value
> 
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> ---
> 
> Changes in v2:
> * compared the return value of scanf to the right value
> * improved the commit message
> 
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 3fca0c2d4c8d..fe538cc088f0 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -2356,7 +2356,11 @@ static int rtw_wx_read32(struct net_device *dev,
>  
>  	bytes = 0;
>  	addr = 0;
> -	sscanf(ptmp, "%d,%x", &bytes, &addr);
> +	ret = sscanf(ptmp, "%d,%x", &bytes, &addr);
> +	if (ret != 2) {
> +		ret = -EINVAL;
> +		goto exit;
> +	}

Are you sure that the code requires 2 values here?

>  
>  	switch (bytes) {
>  		case 1:
> @@ -2393,12 +2397,15 @@ static int rtw_wx_write32(struct net_device *dev,
>  	u32 addr;
>  	u32 data32;
>  	u32 bytes;
> +	int ret;
>  
>  
>  	bytes = 0;
>  	addr = 0;
>  	data32 = 0;
> -	sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
> +	ret = sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
> +	if (ret != 3)
> +		return -EINVAL;

Same here, are you sure that 3 values are required?

thanks,

greg k-h

