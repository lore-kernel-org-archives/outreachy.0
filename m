X-GM-THRID: 6671538849653456896
X-Received: by 2002:a63:4e57:: with SMTP id o23mr16691697pgl.368.1553418069243;
        Sun, 24 Mar 2019 02:01:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:461d:: with SMTP id t29ls5713377pfa.1.gmail; Sun, 24 Mar
 2019 02:01:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxNH4ItdllGPw+KOh+aWcvw9PwR16iyCA9i5DZuvKJK7yRPzN4e9EV6CyTbfV5EAlIhbYYn
X-Received: by 2002:a63:2141:: with SMTP id s1mr17720563pgm.430.1553418068481;
        Sun, 24 Mar 2019 02:01:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553418068; cv=none;
        d=google.com; s=arc-20160816;
        b=gD+9rsD/f6eMDpYLFnPfl7cPFqBn0M8ZFfkpXQur9sUDnBGDZMaIepyFSzNzOrquIl
         ncwvKcC9ePdwOYy0qNPa+dsey3W6ujASllVfaWw1AkXJGQNkMYqTFDidcuTxiBzXOEI8
         YFIFfcDkh8vhku5NnK1UDYhRxcjJM0hd0zPkWTW7SSGKfF6a6K0q9rgruVdXC10EelJX
         VWvmnBu6lfbE1J0W2g+Jd6iX1Q6NM5jS/GtlBtGXq6Jrc6q+a07HKIArwvidHLZ4kX/y
         7j4d4NzXfv+dE9CCoF9JZdLbaEsJg8YPlWZKz/P243LWS6x6u+vXF9BaFcU6PHPMi3nt
         PGOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cVj2Zh7ImWyIM+wzYQXxXl/6t23rk7ZBrllOtow4rXg=;
        b=f4UlXBDaJLG9uqzZYNIjV1kfSPU/BoKEcF1eh+4sRwdgO76DRb1cmlMmBH1x0VJ2HL
         dpsbxtL0p51XYtL6bKrv4zbAGsMnYDn8HO3MEK8t/tMzcSPWV9W2A2lnvnyjx6uS4K8M
         cpcZyKL/XZ6VIvvoHuzMV4j7AAWVRJ90KK0Drbmf6pkkiMv1E4AdYdKgoDrv4/cCCo1E
         zD8OUOABTdyuDk38YFdyKda02/9VlSm/Fab0zqM8ebmHS5SXj1dxBjjd2iCnDHsJbAxB
         IPrWFeFs/MtAEytjNUP+UjQjex52W2W2xa37ZD7cM205XipyDaxG+JE59WGhah7mZ2Xk
         Gk1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KLvTaa4a;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cu1si167414plb.4.2019.03.24.02.01.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:01:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KLvTaa4a;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.248.140.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CB0672171F;
	Sun, 24 Mar 2019 09:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553418068;
	bh=T44O1a/XR7zfxpFA4Y7XMtxCOuzlCBj/Al29HOENqwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KLvTaa4aJM6JjG9LKEr8bi5+jKmR0y4q8E0zAcbW+jV8fzQHk2pDSLJVJkwaQicVV
	 Cdz15Zs4N+ZC9e1pV3TfntAYtdHT5KSWvVD/hc9Ggen07+00HekcPcxauGEwuDEz76
	 TxfHoEESd/IMLP28okVPsj61VYgvAWv1z7m4SBl4=
Date: Sun, 24 Mar 2019 10:01:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8723bs: include: Replace 'int16_t' with
 's16_t'
Message-ID: <20190324090101.GA32228@kroah.com>
References: <20190323105745.31401-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190323105745.31401-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 23, 2019 at 04:27:45PM +0530, Vatsala Narang wrote:
> Prefer kernel type 's16_t' over 'int16_t' to get rid of checkpatch
> warning

What warning?  What is "s16_t"?  Ick, that's not a "real" kernel type at
all.

> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/rtl8723bs/include/wifi.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
> index e729ecd5e9ab..d3deb18d3267 100644
> --- a/drivers/staging/rtl8723bs/include/wifi.h
> +++ b/drivers/staging/rtl8723bs/include/wifi.h
> @@ -1142,7 +1142,7 @@ struct rtw_regulatory {
>  	u32 tp_scale;
>  	u16 current_rd;
>  	u16 current_rd_ext;
> -	int16_t power_limit;
> +	s16_t power_limit;

You might have just changed the type of this variable, are you _sure_
about this?

greg k-h

