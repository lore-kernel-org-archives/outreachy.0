X-GM-THRID: 6670759463317667840
X-Received: by 2002:a63:fb47:: with SMTP id w7mr128636pgj.80.1553162503917;
        Thu, 21 Mar 2019 03:01:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4554:: with SMTP id s81ls2162007pfa.3.gmail; Thu, 21 Mar
 2019 03:01:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwiX+MkYQJ+NWs3jTcFXnuHuUDSlMk2q0PEMeGBhHXLk09T5fSfQNKBvddPEGdIDpeChhZo
X-Received: by 2002:a63:8a4b:: with SMTP id y72mr135140pgd.84.1553162503070;
        Thu, 21 Mar 2019 03:01:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553162503; cv=none;
        d=google.com; s=arc-20160816;
        b=PXdevK6smd0IdOZ+8BwsX+7zhWQwhieYDv5jYUbL24wawRz2kMEO62GXtu7IYvy7vv
         KbGNFYMVdXVNxAyAHixvNNiNI28GK8G+h/ulAYZxoOsGS5wibI4Bcy+Gkfj3a6R+WY5r
         HnDo+McDEWHwsTMT+VcjEVepsgXek/5XRCu7UAX3rEVaoo6CusSKEfj8P11s/qC+lGDy
         zJ1zEhDqo8cTG4685cCtRsMAkz/Ab1zZJe8AY1ADSxn9x682uN1OewAzJOnt0aJXQk7M
         KdsW6U4xsSgKEsIPxRA0GsoRZ86DQ9NKqEvgWUPnkP4hm25M6v3I8bH7J5l5z1WmcpU2
         pABg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=od3ospEBAoNcMszED8CU/03pmno5bZX2SSlodH5i0po=;
        b=Ruip91fMtIdbx8VIeAdyetEe4y0ZGiQJ38WCTKjoQGeWY7Psyp46LuAUduHf7vsH/m
         Gu2uzxNBCBA97Ak63FP2S2JgFLG2DxlKKYOq6pTziHqx/QJnFq6B3iaNf3mvPUBvNldT
         EvGprsiY9XTUA6l2Jd+p26gXbN5Uq7qCEEB1IxZfdoXr5Hkwkw0dRUb6DCkUh3Jlg6bW
         tDLiPUv/lUACYEcJ4T8ASPPWZzbtWXwcB4VdW2pY8WbPBxikvDLO0/J1D/aYEB4r870O
         DRAvmOlBSMUG+0mFMqVumNqva4Si1cTuUBDkSuGk2ZiC1q3mzfEBzqrGKWRSDcs3p000
         wTgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AlMlyr6w;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k13si206125pll.0.2019.03.21.03.01.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 03:01:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AlMlyr6w;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [95.98.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 051A8218B0;
	Thu, 21 Mar 2019 10:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553162502;
	bh=+mZ04uLk5BHn4lsiz2ABV29JmwUBv5oQa+17vNw43N0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AlMlyr6wYCx88jZb+3RNp4S+LFtFV3MCFeHTsbIfqcBFBL9c/wq8KThIZscD/2Mn+
	 QS30bAQEZjQQ26NYAa1CYqSwX90uOXbkx1pfYPwCx+g4uF9rJSR2NAfD1Lyt1dAx39
	 X/NsVan98CwSU49F40Q3r105Soa8iDSW1xYR3dog=
Date: Thu, 21 Mar 2019 11:01:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: mxx_udc: remove unused code
Message-ID: <20190321100139.GD2836@kroah.com>
References: <1553157183-2879-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553157183-2879-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 02:03:03PM +0530, Payal Kshirsagar wrote:
> Remove the code enclosed by #if 0 and its #endif because that code never
> going to be run
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index 540e4ca..212aded 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -8,13 +8,6 @@
>  #ifndef _LINUX_EMXX_H
>  #define _LINUX_EMXX_H
>  
> -/*---------------------------------------------------------------------------*/
> -/*----------------- Default undef */
> -#if FALSE
> -#define DEBUG
> -#define UDC_DEBUG_DUMP
> -#endif

The reason this is here is to make it "easy" for a developer to enable
debugging for the driver.

Now we should just rely on the in-kernel dynamic debugging support, so
we should be able to get rid of this, but before you do that, you need
to remove the use of those two #defines on the codebase.

So for now, please leave this as-is.

thanks,

greg k-h

