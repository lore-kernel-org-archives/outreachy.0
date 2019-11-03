X-GM-THRID: 6754458440514404352
X-Received: by 2002:aed:224f:: with SMTP id o15mr8276605qtc.86.1572784981685;
        Sun, 03 Nov 2019 04:43:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4ac5:: with SMTP id x188ls3761110qka.14.gmail; Sun, 03
 Nov 2019 04:43:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqye0/evHTNs9W6keSB6tc2Y+2K4aRAaqfaZwSXfCiYbxcmLnlXv1VvjM/B/8so6Jm1eT1VX
X-Received: by 2002:a37:c444:: with SMTP id h4mr4330597qkm.350.1572784980283;
        Sun, 03 Nov 2019 04:43:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572784980; cv=none;
        d=google.com; s=arc-20160816;
        b=T/puA8z/ZxhpQoW9vBT0ahaq3CjrH9ZQgH3JmRkR0HR6u/iPdrQlEidC04SXo2Ewsq
         ExP5F+V8q3R+bufX/fnsn/tu7aOU9XmSDD5VoL5ml4Q3PB0E0n3tCnQRR0idS9FD713m
         prz4TZiCbDUgY7MRkCy5q0VVPinywhWda9KmEfkhUaVFKZzKCTI5OTNP1GyrbHH08TlV
         fid7dlOHFYnIxItXrqCJgIvrmmxSfqKog5qeADgDHA0G3eCLFNefsCSFBBNnfqumLQXR
         MW2J4rqvXh/DYXnmOoH55iNs9tkhgNamDRGSAV9d+7j5FuseGFuKI+pe1VYZhJtI3Qni
         xROA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=lUr+jZ/VOTMN6aqild5blW7YQ0ELXWxCGT7b9SgqEvY=;
        b=WJXqN3KT/OHZj7afTKuU01pE5IqQZTp6iX9ZplrwGhBK3cxDZIuHvj/eAAu3MZYl2V
         Vyu6luy1Q8vGLdaS84Va5lJ/Ir8dwFY3aM+wIbTtZ8yj7fo3PaHxslCQmfh1NO3Veqqx
         rjOlMjDBK5RZqy6MMn8lmZ9aKq244zfU+BIzlchtHpp4a2OYEqnIBxsnRjR93G9sjwxJ
         DSLc17/lzZQ1v9HE8gqAtMMlxBKPHt/WOScrDvPVXPiBP9HahY/jDAfvQWuLDdcMN5+G
         hjBh6s87VwB4RMQ0JjoOlLK57C7b3jHP0vJCsA43WtUbwAuqTWL6fBTYj9viIRHJPt3r
         JDeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aN5NkJ5Y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w140si857834qka.6.2019.11.03.04.43.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 04:43:00 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aN5NkJ5Y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 93C4C2080F;
	Sun,  3 Nov 2019 12:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572784979;
	bh=47Pw8ZmTD9VVIzG033iKmFryTiwHAYJgSKUglVbSHzM=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=aN5NkJ5YKyYqKLZSlkBOUqZrt6xA7WyaymCUxOI7l3n67srlOvuNQVhHQt/1KhlD0
	 IKWoYVeLBNySsKZvkSuco1tQnuT03dye6Pw5fbMOLBJ8ziXN8uF84YS/wQPbbs7/2H
	 rS3ab2mUXHO2dFneSsEhFg6qbK/XgC093c2bOtQM=
Date: Sun, 3 Nov 2019 13:42:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH 3/3] staging: rtl8723bs: Fix lines over 80
 characters
Message-ID: <20191103124256.GA619424@kroah.com>
References: <a15c64188f02fa419e02ccc2161ebabc0e1b65db.1572734925.git.jarias.linux@gmail.com>
 <e68ec8ccf81a084d3261541b63fa188654e7eaf7.1572734925.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e68ec8ccf81a084d3261541b63fa188654e7eaf7.1572734925.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Nov 02, 2019 at 05:49:47PM -0500, Javier F. Arias wrote:
> This patch fixes the "lines over 80 characters" warnings in lines
> affected by a previous patch.
> Issue found by Checkpatch.
> 
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index d7eabee36716..f3744f0e6ab4 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -99,7 +99,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  		pxframe->buf_addr = NULL;
>  		pxframe->pxmitbuf = NULL;
>  
> -		list_add_tail(&pxframe->list, &pxmitpriv->free_xmit_queue.queue);
> +		list_add_tail(&pxframe->list,
> +			      &pxmitpriv->free_xmit_queue.queue);
>  
>  		pxframe++;
>  	}
> @@ -151,7 +152,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  
>  		pxmitbuf->flags = XMIT_VO_QUEUE;
>  
> -		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmitbuf_queue.queue);
> +		list_add_tail(&pxmitbuf->list,
> +			      &pxmitpriv->free_xmitbuf_queue.queue);
>  		#ifdef DBG_XMIT_BUF
>  		pxmitbuf->no = i;
>  		#endif
> @@ -189,7 +191,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  
>  		pxframe->ext_tag = 1;
>  
> -		list_add_tail(&pxframe->list, &pxmitpriv->free_xframe_ext_queue.queue);
> +		list_add_tail(&pxframe->list,
> +			      &pxmitpriv->free_xframe_ext_queue.queue);
>  
>  		pxframe++;
>  	}
> @@ -229,7 +232,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  		pxmitbuf->ptail = pxmitbuf->phead;
>  		pxmitbuf->pdata = pxmitbuf->phead;
>  
> -		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmit_extbuf_queue.queue);
> +		list_add_tail(&pxmitbuf->list,
> +			      &pxmitpriv->free_xmit_extbuf_queue.queue);
>  		#ifdef DBG_XMIT_BUF_EXT
>  		pxmitbuf->no = i;
>  		#endif
> @@ -1414,7 +1418,9 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
>  		pmlmeext->mgnt_80211w_IPN++;
>  
>  		/* add MME IE with MIC all zero, MME string doesn't include element id and length */
> -		pframe = rtw_set_ie(pframe, _MME_IE_, 16, MME, &pattrib->pktlen);
> +		pframe = rtw_set_ie(pframe, _MME_IE_,
> +				    16, MME,
> +				    &pattrib->pktlen);

This can be done in 2 lines, not 3.

thanks,

greg k-h

