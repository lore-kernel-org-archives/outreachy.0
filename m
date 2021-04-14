X-GM-THRID: 6950980105413853184
X-Received: by 2002:aa7:86cc:0:b029:24b:8c8c:8fed with SMTP id h12-20020aa786cc0000b029024b8c8c8fedmr17581371pfo.44.1618419646269;
        Wed, 14 Apr 2021 10:00:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls1549669plb.11.gmail; Wed, 14
 Apr 2021 10:00:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJykOArNnAmgr/leUVOOdpfSKk7lr9rGfM/QvGuhikCxTzgnJzkpY+i/JCjnxQjPxK8E1H8g
X-Received: by 2002:a17:902:74c2:b029:e9:a966:2e1b with SMTP id f2-20020a17090274c2b02900e9a9662e1bmr22025959plt.43.1618419644854;
        Wed, 14 Apr 2021 10:00:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618419644; cv=none;
        d=google.com; s=arc-20160816;
        b=REqPLjMu0YpEFzg8/XmhHChbVnrZh4cAugNxJw1/zsW6WvsJb3ZiX3CVshQ9JykICa
         vZAmsamru6tzy9w2JVGMIvIOeW6KwfhLA5X0GvPTStEp42fd8brEyDPAD0WWdYNEe5Je
         M/rfz4SO6+5fLg+0ReeqzwCu7c9AvQ4iKy3O31WTtv89dWp13FHB+v7Ttar+rRhfBliB
         gEUIC9rQDrjI2hpCFs7VZ7WcYwv50q5QCMPpesaxR/cX+pGdKHjRji7yzhQJTE3l/3Ak
         9qujmKMIWoWUy/V0OAyddX0BKQn4MohM7292nETrwTPGTemvMeUDHtzemEviYZAFeD/k
         trWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NAUWvhA3BgGMrrOIQVrgL33of/0hi8fBXpjIevprA1w=;
        b=n86LF/8q81dbr041jqoJtRV33itIjaLPz3ICMw2JIvIFPxhRUZMHsvx4Q/1MIHy1VE
         y7VuE3YXzwwGm7LpPZaEewH+Q7zgwoKioq9XtXd9/mfkA2Wn2C8ZF/af2TCZnfMrZKNz
         FC4YYjIBpSUKC9Llb+PxDnLNZRxci6i60Po+SskauBWHm+hKZaOulm62Ibv9RrhyhQ6j
         mO+oDuFOQtVO0GbM11GWuTzqn+k5WP8qC6Q+cU0AAno0tyjIWhQ+yQjBq299Q+IqgtgH
         JY+Qe9ED+I4tQ9zxP0AH4ZcX0Ed1R8jfvA04cUlwQSBMGjQ2LveOmPwg774EH/KrBqhI
         AgTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EhJPySsN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y17si9052plr.4.2021.04.14.10.00.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 10:00:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EhJPySsN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 006F36100C;
	Wed, 14 Apr 2021 17:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618419644;
	bh=bx3oAhc3i0mDHsdiCnxOJmKJyC0pV+jZkUkWvJEyymM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EhJPySsNEiHohK1eUnPv+7AISSQSolQAOHIf1JcytVGbpll0b7lx57shEbTucdYoA
	 55dNBhifRNpWGxpuPPqJzMFnlaK2LQUu7VJ2zbi2SkmPPolFH88fTTbeJR6YLrjxLi
	 b36Zp+czDap/SLfu/b0fpthifsSAcJxH8LmEBfsY=
Date: Wed, 14 Apr 2021 19:00:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove useless
 led_blink_hdl()
Message-ID: <YHcfud6Fpsi9Weac@kroah.com>
References: <20210414162614.14867-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414162614.14867-1-fmdefrancesco@gmail.com>

On Wed, Apr 14, 2021 at 06:26:14PM +0200, Fabio M. De Francesco wrote:
> Removed useless led_blink_hdl() prototype and definition. In wlancmds[]
> the slot #60 is now set to NULL using the macro GEN_MLME_EXT_HANDLER. This
> change has not unwanted side effects because the code in rtw_cmd.c checks
> if the function pointer is valid before using it.
> 
> Reported-by: Julia Lawall <julia.lawall@inria.fr>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes since v1: Corrected a bad solution to this issue that made use of
> an unnecessary dummy function.
> 
>  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 2 +-
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
>  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
>  3 files changed, 1 insertion(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 0297fbad7bce..f82dbd4f4c3d 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -150,7 +150,7 @@ static struct cmd_hdl wlancmds[] = {
>  
>  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
>  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
> -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/
> +	GEN_MLME_EXT_HANDLER(0, NULL) /*60*/

Better, but you really do not need to keep this here, right?  Remove the
"led blink command" entirely, you didn't do that here.

thanks,

greg k-h

