X-GM-THRID: 6670691993159467008
X-Received: by 2002:a67:1c82:: with SMTP id c124mr896327vsc.13.1553152793854;
        Thu, 21 Mar 2019 00:19:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls1043585vsc.4.gmail; Thu, 21 Mar
 2019 00:19:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwd9/NT1pFuVZyoInjtguMIKzFYCAkSZPaajXEP59vYhkD7iIsoRdgUbVeiCcSZwQHHJv1u
X-Received: by 2002:a67:fa8e:: with SMTP id f14mr911965vsq.28.1553152793293;
        Thu, 21 Mar 2019 00:19:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553152793; cv=none;
        d=google.com; s=arc-20160816;
        b=Hdur7Q9UES26n07wyl5dKu61/KgZfREYPzqS/EDUc5vZBswQ/jvtbAq8k+815QAUB9
         GJ5NY+EgA7mHaOMwMBOORsBMDLex+GcOsGJ3PJBHZRxVS4SQTFFWd1/H0VKDeu62VjYD
         gnC1psk4L2W69l8yydQnXLli0JTRxmXRzpMCL+wJzOuZ9lfaTxszaHSM0sxAuNmGIu86
         M22ou9gyI/UnBTs9VGDgmZlwjA3451QxCHLk5tPBH8tsmngsfTBOHP1TXdV7CGQoQQeJ
         IfjNNeIapSMvdEWdeKsVdGu0dV8jb7p/zx/FT4n67b8hBuDHow0/WVWEvmVKErEn8nvC
         hhPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oGYnlxnSv1F+fjLakRhQqxFSCCSc9PxCt+FM+zM72uI=;
        b=D7/eYBNlLKceAU8Xrr6ycBBACFpg2GbK3qnUH5XAAuyl8SGLEB7OF/5exLvKx/te97
         YFU1nGErlCZm3n4OlRXd/UsVkOGO25q8Ci+HiJrFk+wyGIOhT80L7gun9zIQG3EisW8P
         8moQNiLrQkyMpEDjP1iLdz3NsykM7Y/Lf4wphedQnLCU9qfNBw2yQbHuI04+MKK1CuT2
         Iff4D/Kijia/l/2s5M6cQqGQuUdrdlS7aji53iIqcdzuI8GF8dJltDeL4r2DuHXU2HTA
         SjBIUgRp66T5DiKQiobqvmOsMXponAk8kKXNV0o9D9JfJ/pF7g8gjDohVSdWJX5Fg2fg
         cP5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dOnLiaE1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k19si337771vsm.0.2019.03.21.00.19.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:19:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dOnLiaE1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BF10D2077B;
	Thu, 21 Mar 2019 07:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553152792;
	bh=dhulU+Bu3LtXAA3QIBdQkpjVlhdsFv8ITeU4baDt1Wo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dOnLiaE1F2Z3wnGMZBdQa9RDfnwXM+f/2imxhlfyFVZ5nBLkAmf/dOQU0OTvxpxi/
	 diYmg3NlDRyIeen0h623S0V7jBMB1cQHOhAvNKQRkLPBY32uuLZQUiTFATOCQEFFvm
	 N4UZb5XqTFdQbDmiIOU2ihjaYrQZ85NAFx+pBDwI=
Date: Thu, 21 Mar 2019 08:19:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: emxx_udc: replace 0 with
 false
Message-ID: <20190321071949.GE28171@kroah.com>
References: <1553141487-3582-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553141487-3582-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 09:41:27AM +0530, Payal Kshirsagar wrote:
> replace 0 with FALSE in file rivers/staging/emxx_udc/emxx_udc.h

Why?

> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index b8c3dee..540e4ca 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -10,7 +10,7 @@
>  
>  /*---------------------------------------------------------------------------*/
>  /*----------------- Default undef */
> -#if 0
> +#if FALSE

Are you sure this is ok?  Why is this change needed at all?

thanks,

greg k-h

