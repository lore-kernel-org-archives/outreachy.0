X-GM-THRID: 6754458440514404352
X-Received: by 2002:a05:6638:a38:: with SMTP id 24mr6914041jao.136.1572784680220;
        Sun, 03 Nov 2019 04:38:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9145:: with SMTP id y5ls1866806ioq.11.gmail; Sun, 03 Nov
 2019 04:37:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqxtNjjvpxn2hgvARERCoPAl0UN61JbhrwmOcOhQaKTZuwrlOrhdOyEqJx98YVZzdtisxuA3
X-Received: by 2002:a6b:b744:: with SMTP id h65mr19957558iof.192.1572784678942;
        Sun, 03 Nov 2019 04:37:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572784678; cv=none;
        d=google.com; s=arc-20160816;
        b=SdSdPjx3lut5zrEFz/0OeWGw54i/iMAWON1pqHrO/7wgg8nPLDjqbCZB/2QYalHGV+
         QdERKGbagM5cvfE6xLsrmz1KVrTrsz6EawWI4KR1ZijdrotD6H820RXT5T5J0VMJ0tbL
         5y2TQhdjti8PpZKtilhPufNpqGc/K/J58b480UVhshqDgfMj+8HcujFX3AbdqIttjaPH
         Eqk2U14ZhF2hRrwoI3R1iEQB+dO14LLctYexfbgz0bvxOcUHyYWs/EZ6X3MUOmOmJe6Z
         qLOEHqEBIkPkryeUSgC9kRB7l3gB0K6IXsyrGN86YAdAHOtwROnoI42BjJLgKFi7Ui3P
         FPSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=ibM1qlGSHqLE4FV7plUoZIDv5fDv6Km98xoEZt0qlik=;
        b=CJDCkCoo3sNOxLs5jONRaaDo8SP7Qp6zvkmttmBX5FCagFvWClq85yyDDnXKApUHXz
         Y/WTjg5zQMgs4NWUSsqQk9A6m7JWYIQCUIdNj5C/C+HgV0KjIvsAVPVmPqpHdeaYkCCJ
         aEgKeWDh6sbLmIofzj1t3tfnOw6jz+0nyMnMTjN0gWsr1qHX3Tmlf8AtVlluyifb+urg
         VcOqRDEzE6sixU9gzYeQ7Awpfuuoxuqjkp/ZUCruOppYx1SCvWvpRitoSgda66I3pgKd
         IE6xAMjIDXRX/V/XAka68dNUj54UcLhEXgssctuqeDvZxmh8n8l5ugZl4cgMMNdkpskd
         nRVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uAxqAemQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si353605iof.1.2019.11.03.04.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 04:37:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uAxqAemQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B6AF82080F;
	Sun,  3 Nov 2019 12:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572784678;
	bh=9VsujOMDCvpJuBOt9NhDcdSC3soONlIaPYquopyUFVw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=uAxqAemQ5/c4Ptz5KU4ZMByKLIvDOPQqjBZU/0+1bKMQWc1x4qhCNbAOy4QVbRlwI
	 JYcBQUJbYUPiSWUzaLIyEUKU1i0VdhwtZg2koQeGaOSO2fYEl8R+/wUJYauNHMcB7Y
	 v5wy8sDHkicv38VIgqUIAAGAz6Ob94KSe5xjJCNA=
Date: Sun, 3 Nov 2019 13:37:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH 1/3] staging: rtl8723bs: Fix multiple assignment
 warning
Message-ID: <20191103123755.GB604630@kroah.com>
References: <a15c64188f02fa419e02ccc2161ebabc0e1b65db.1572734925.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a15c64188f02fa419e02ccc2161ebabc0e1b65db.1572734925.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Nov 02, 2019 at 05:49:08PM -0500, Javier F. Arias wrote:
> This patch splits assignments into multiple lines to solve the
> multiple assignment warning.
> Issue found by checkpatch.
> 
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 24 +++++++++++++++--------
>  1 file changed, 16 insertions(+), 8 deletions(-)

Why is this series a "resend"?  What changed from a previous version?

> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 6d193f137b7e..9a3790091a5e 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -146,7 +146,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  		pxmitbuf->phead = pxmitbuf->pbuf;
>  		pxmitbuf->pend = pxmitbuf->pbuf + MAX_XMITBUF_SZ;
>  		pxmitbuf->len = 0;
> -		pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
> +		pxmitbuf->ptail = pxmitbuf->phead;
> +		pxmitbuf->pdata = pxmitbuf->phead;

The original is usually better here, it makes it more obvious what is
happening.


>  
>  		pxmitbuf->flags = XMIT_VO_QUEUE;
>  
> @@ -225,7 +226,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  		pxmitbuf->phead = pxmitbuf->pbuf;
>  		pxmitbuf->pend = pxmitbuf->pbuf + MAX_XMIT_EXTBUF_SZ;
>  		pxmitbuf->len = 0;
> -		pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
> +		pxmitbuf->ptail = pxmitbuf->phead;
> +		pxmitbuf->pdata = pxmitbuf->phead;

original is fine.

>  
>  		list_add_tail(&pxmitbuf->list, &(pxmitpriv->free_xmit_extbuf_queue.queue));
>  		#ifdef DBG_XMIT_BUF_EXT
> @@ -255,7 +257,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  			pxmitbuf->phead = pxmitbuf->pbuf;
>  			pxmitbuf->pend = pxmitbuf->pbuf + MAX_CMDBUF_SZ;
>  			pxmitbuf->len = 0;
> -			pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
> +			pxmitbuf->ptail = pxmitbuf->phead;
> +			pxmitbuf->pdata = pxmitbuf->phead;

Same here, original code is fine.  Same for other issues like this.

>  			pxmitbuf->alloc_sz = MAX_CMDBUF_SZ+XMITBUF_ALIGN_SZ;
>  		}
>  	}
> @@ -1366,11 +1369,13 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
>  	struct ieee80211_hdr	*pwlanhdr;
>  	u8 MME[_MME_IE_LENGTH_];
>  	u32 ori_len;
> -	mem_start = pframe = (u8 *)(pxmitframe->buf_addr) + TXDESC_OFFSET;
> +	pframe = (u8 *)(pxmitframe->buf_addr) + TXDESC_OFFSET;
> +	mem_start = pframe;
>  	pwlanhdr = (struct ieee80211_hdr *)pframe;
>  
>  	ori_len = BIP_AAD_SIZE+pattrib->pktlen;
> -	tmp_buf = BIP_AAD = rtw_zmalloc(ori_len);
> +	BIP_AAD = rtw_zmalloc(ori_len);
> +	tmp_buf = BIP_AAD;

BIP_AAD is a variable name?  Ick.  well, not your fault...

This change is ok.

thanks,

greg k-h

