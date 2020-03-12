X-GM-THRID: 6802850530437627904
X-Received: by 2002:a17:902:ba94:: with SMTP id k20mr6980104pls.267.1584001663025;
        Thu, 12 Mar 2020 01:27:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:3851:: with SMTP id nl17ls2572577pjb.1.canary-gmail;
 Thu, 12 Mar 2020 01:27:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuPPffZFqqbvgiIgbS0fz6zOHHNEeriT2fbkhxNSStF/Zfn2JHZDEa+zHLc9Z+RRKkFSOLN
X-Received: by 2002:a17:90a:e38a:: with SMTP id b10mr82172pjz.137.1584001661529;
        Thu, 12 Mar 2020 01:27:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584001661; cv=none;
        d=google.com; s=arc-20160816;
        b=txoPFhmcc/lzJEA7RiuOUrpZBW+frywDB20O/4fs8xtUc9IMBwMmSrQ8dGECEfEJvU
         lmcGMrevLOMIgsOtTHRGoE5CLixmsUgoqf3RLwybNyXJfTcrj4RZh81LtlH7k1NWaafJ
         gTv6N/7H3IEH0T8l6upZ0cL38kMQDpB7W4lM4nmUh2Ad9Fsiz/HxYD2OmIcmP48MpuC+
         WOrGPL168Zzczg8xAbb2ybL6i+G2KeZ+tJPBSJFhSzfkhcTw2aRoDD3vvxZ203BWCRYz
         pIB5D42+olmSawddy4I4gXT+3hkXTWOMY9zIVgIcYceMYAdcR9P5BQP/k7CyDFQlO8SJ
         vEIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6vmDFUGZeYKGSRT0MgEogjsSsNr56jorShJvu85T52E=;
        b=HHFpYPTCp02M5XeY0OpKqPucUWNHYraXMGQCQqvr3NXOrtbqvT8ucnMWfifB33gOD2
         vPVUiwH01iXct+V+ZbW6lxEo6FzX0oY1VlZnKMMy9mWFDGFVizIIbnqpnn8I/vBU4STk
         9CloMfpiuhKHuj0gauQ8Y3da9dvBklfz0p6aiO93LOGhwkt33dC+6ac1HifXPgpna0f+
         Tj1jo/I90cOcu4WjBFb0/IUlvRb9GqDm0hwPHTkepaK4R9sirkBfJXKriAhS+gNbYw86
         HhGmK8gGA+UXggYr6P80csd907N+FqFvnzXJm9cY5G7a4t8cSGVkif6/xI4GJ69KCHch
         Jc/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZGSmonHM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h10si315123pju.1.2020.03.12.01.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:27:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZGSmonHM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C7DA7206EB;
	Thu, 12 Mar 2020 08:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584001661;
	bh=1AXlxQ6/nxmGl45ixdrTmaU8T069nLrtHDBk+CEC/bc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZGSmonHMM0/Z95uQBgr3BGVpqd4+ZAM5pYbh7hgyzwvd0JhYxbulOjoV1bktBW9qN
	 3tsVhJZvA7DliQzKEDihdz8ktEHhKME4UN4f/TNwrh+3szHnvZ3AR/sJTHfLRpAosZ
	 88pn/P3Z/0Z0HrQTh5Sb5WFHZYHHE6mjE6Qf56Pk=
Date: Thu, 12 Mar 2020 09:27:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: Larry.Finger@lwfinger.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8188eu: hal: remove an
 unneeded variable
Message-ID: <20200312082739.GA54601@kroah.com>
References: <20200311073418.7476-1-payalskshirsagar1234@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311073418.7476-1-payalskshirsagar1234@gmail.com>

On Wed, Mar 11, 2020 at 01:04:18PM +0530, Payal Kshirsagar wrote:
> Remove unneeded temporary local variable, cleanup suggested by coccinelle.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
> v2: Change in commit message and changelog.
> 
>  drivers/staging/rtl8188eu/hal/usb_halinit.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> index 16a57b31a439..aa6354b9ffa2 100644
> --- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
> +++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> @@ -40,8 +40,6 @@ static void _ConfigNormalChipOutEP_8188E(struct adapter *adapt, u8 NumOutPipe)
>  
>  static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPipe, u8 NumOutPipe)
>  {
> -	bool			result		= false;
> -
>  	_ConfigNormalChipOutEP_8188E(adapt, NumOutPipe);
>  
>  	/*  Normal chip with one IN and one OUT doesn't have interrupt IN EP. */
> @@ -52,9 +50,7 @@ static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPip
>  
>  	/*  All config other than above support one Bulk IN and one Interrupt IN. */
>  
> -	result = hal_mapping_out_pipe(adapt, NumOutPipe);
> -
> -	return result;
> +	return hal_mapping_out_pipe(adapt, NumOutPipe);
>  }
>  
>  void rtw_hal_chip_configure(struct adapter *adapt)
> -- 
> 2.17.1
> 

Always test-build your patches so that you do not get grumpy kernel
maintainers telling you to test-build your patches to prevent the build
from breaking.

Are you _SURE_ you used coccinelle for this?  If so, something is really
broken as this patch is totally incorrect :(

The suggestion might be correct, but the implementation is broken.

thanks,

greg k-h

