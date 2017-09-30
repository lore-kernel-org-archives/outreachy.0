X-GM-THRID: 6471275503571435520
X-Received: by 10.28.157.82 with SMTP id g79mr1255516wme.20.1506811331815;
        Sat, 30 Sep 2017 15:42:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.14 with SMTP id r14ls1313028wme.3.canary-gmail; Sat, 30
 Sep 2017 15:42:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QANLheruuoV2S5jD6TSjzGghzqBxowOM3KQgmmLfGvvZPUSVabGdx8gMDwb/TTOHJEQq85S
X-Received: by 10.28.169.75 with SMTP id s72mr1182647wme.21.1506811330741;
        Sat, 30 Sep 2017 15:42:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506811330; cv=none;
        d=google.com; s=arc-20160816;
        b=hEsk2lOIzukVObXtg27MAWu9bhLL/M20VNRwRskkWnKktFayEhxX6wT+E0xkfuzzPF
         jGTfPa7roUTwZ+u6MQ7kWbwqh4R20tn/TYG1f7JVcUsLltXBm3gOV2msUB6kaNlfQc4t
         qWOCIF4hmcJEtjwCcDQWfEdhkwk11NlhAYCNjpBqTHANc6g23DdGqTuSrNA68fluL4J1
         XPtEf5GjlC8sahNXGdqi+srq/11RLnvyk+C6KcxAKU0SoZJFcQGbzvlhnrApbYsBhIBb
         kpRIAjumR6Vgkhj+DTs1QfGeZMkeAu2Gkk/wXKtB/7BXDWhIF7mTGEn/ax1znyWSNUJv
         426A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :arc-authentication-results;
        bh=hywRaVCFKjw9z10CDNlj+VffGNGoxzTFSHsytXhDipA=;
        b=IJcQZC5z8A8XnR6843pGGdB/fObII2XjW9ctDmi/3Jpp2siLzFC0EmRi5shAx5t1iI
         WZ2aTNwxxRw9+9KTO7cxq/IS7ovlDp1Ht7ZsvlB2KCiGJ5DtjzX9ou0k3PDd8hWUgdwR
         8FQhMxKTSw0BaXtbwF0fqyccdwS/6uUzRWMHXCSzOgH0pIHQkfAGbtazgLYidJwFikcl
         9GMknzg7yZNsYFYx5PhWMLXssvzXs5u8jh4xPIuMoqQHij5zZwFoQV9DXK7k01I5FHEr
         o16U9Uz0LIT+FBRqpKBQZttS8K1/Q8yKKerbcZZvixPRdSoQSNQDDkXXhEJvUWt6Yqw1
         sgeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=jmSvoXu4;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=dArb461Z;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Return-Path: <me@tobin.cc>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id l133si886593wmb.3.2017.09.30.15.42.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 15:42:10 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of me@tobin.cc) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=jmSvoXu4;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=dArb461Z;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 9C18220881;
	Sat, 30 Sep 2017 18:42:09 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
  by compute5.internal (MEProxy); Sat, 30 Sep 2017 18:42:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=fm1; bh=hywRaVCFKjw9z10CDNlj+VffGNGoxzTFSHsytXhDi
	pA=; b=jmSvoXu4DPDhtZXr8qwsdHxxsQtcQSnkaZr08GimReCvPKO81MAMmVc+g
	5+HLlifYJpRBkX41z3lj/6hBaAN+Ciwo/HsgxjurCrfRdKKozoTUKbqH6ShotsBM
	HVMPJ67xx8WsgoX8Co1oz9Z8dmVnBvTwmhVtOhcMc47cUtyQjOm9v0tW8/aMWJu9
	mxjrBAngj92xtjVUnwtZsXtHo7JNeMru0oJrl/0ovcc1mIvT6UkpTQywey0rsp/X
	6v/LUH47+o8P3UM3jfSivADao9kQv7cD5z6l5vK+P9XAYg3qHtr8RIS9D8So6Inz
	hsKlp6+BNxWD6qpAUZTY702yQ8sQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=hywRaVCFKjw9z10CDN
	lj+VffGNGoxzTFSHsytXhDipA=; b=dArb461ZmRpO7INkPel4Hmnc214m7mhPKY
	IbMmmFV4BC+1XUyPTHM8YvZkkX8c4PLG2anfIs0rlvi6FB+jzsM9F1KuU037cIye
	FvvbV6NCw3rCBhbb7eZ9eROcV6EJ2CsowJRp7j5D/CZUI/dfj4kwG3zAoh+MAsDe
	6KZ+JlR+lfdXlo2mDVqh1NcY/I4xlU0zZtXbz/j7RpaXCfS7YvGFmAJJix3oF55k
	gY+eqeT0hZzaYqAVksAVB0IAsEjMFX8h1HVGEfnV7JhHaBKq1w6bSHL2CH5Q4ici
	bs3CNCcnwjVl5waqjbw/9W2q/SNlenWCqywwWsn/jA2UN32lUmNg==
X-ME-Sender: <xms:wR3QWaOHaJ-Aan6oVHO_3dXPKl4n2nhhlFyI_XyuIPDspZTOyOb3xg>
X-Sasl-enc: Hlrzi0Ke/5HyBHJTrGLwpmOvxuPkl+XBA0wPbn2nFUmS 1506811328
Received: from localhost (unknown [124.171.54.49])
	by mail.messagingengine.com (Postfix) with ESMTPA id E340224038;
	Sat, 30 Sep 2017 18:42:08 -0400 (EDT)
Date: Sun, 1 Oct 2017 09:42:05 +1100
From: "Tobin C. Harding" <me@tobin.cc>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] Staging: rtl8723bs: Remove unnecessary comments.
Message-ID: <20170930224205.GA29392@eros>
References: <1506780671-2209-1-git-send-email-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1506780671-2209-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: Mutt 1.5.24 (2015-08-30)
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 30, 2017 at 07:41:11PM +0530, Shreeya Patel wrote:
> Remove unnecessary comments which are there
> to explain why call to memset is in comments. Both of the
> comments are not needed as they are not very useful.
> 
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
> Changes in v2:
>   -Remove some more unnecessary comments and make the
>    commit message more appropriate.
> 
> Changes in v3:
>   -Make the commit message in imperative form.

Well done. You forgot the period on the commit subject. Here is a blog post you might like (it is
not kernel specific but useful still IMO).

Good luck,
Tobin.

>  drivers/staging/rtl8723bs/core/rtw_mlme.c     | 3 ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 3 ---
>  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  | 2 --
>  drivers/staging/rtl8723bs/core/rtw_recv.c     | 4 ----
>  drivers/staging/rtl8723bs/core/rtw_xmit.c     | 3 ---
>  5 files changed, 15 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 6b77820..5b583f7 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -28,9 +28,6 @@ sint	_rtw_init_mlme_priv(struct adapter *padapter)
>  	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
>  	sint	res = _SUCCESS;
>  
> -	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> -	/* memset((u8 *)pmlmepriv, 0, sizeof(struct mlme_priv)); */
> -
>  	pmlmepriv->nic_hdl = (u8 *)padapter;
>  
>  	pmlmepriv->pscanned = NULL;
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index b6d137f..ca35c1c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -474,9 +474,6 @@ int	init_mlme_ext_priv(struct adapter *padapter)
>  	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
>  	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
>  
> -	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> -	/* memset((u8 *)pmlmeext, 0, sizeof(struct mlme_ext_priv)); */
> -
>  	pmlmeext->padapter = padapter;
>  
>  	/* fill_fwpriv(padapter, &(pmlmeext->fwpriv)); */
> diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> index aabdaaf..820a061 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> @@ -1193,8 +1193,6 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
>  
>  void rtw_free_pwrctrl_priv(struct adapter *adapter)
>  {
> -	/* memset((unsigned char *)pwrctrlpriv, 0, sizeof(struct pwrctrl_priv)); */
> -
>  #ifdef CONFIG_PNO_SUPPORT
>  	if (pwrctrlpriv->pnlo_info != NULL)
>  		printk("****** pnlo_info memory leak********\n");
> diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
> index 68a6303..73e6e41 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> @@ -46,9 +46,6 @@ sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
>  	union recv_frame *precvframe;
>  	sint	res = _SUCCESS;
>  
> -	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> -	/* memset((unsigned char *)precvpriv, 0, sizeof (struct  recv_priv)); */
> -
>  	spin_lock_init(&precvpriv->lock);
>  
>  	_rtw_init_queue(&precvpriv->free_recv_queue);
> @@ -65,7 +62,6 @@ sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
>  		res = _FAIL;
>  		goto exit;
>  	}
> -	/* memset(precvpriv->pallocated_frame_buf, 0, NR_RECVFRAME * sizeof(union recv_frame) + RXFRAME_ALIGN_SZ); */
>  
>  	precvpriv->precv_frame_buf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(precvpriv->pallocated_frame_buf), RXFRAME_ALIGN_SZ);
>  	/* precvpriv->precv_frame_buf = precvpriv->pallocated_frame_buf + RXFRAME_ALIGN_SZ - */
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 022f654..8cd05f8 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -51,9 +51,6 @@ s32	_rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  	struct xmit_frame *pxframe;
>  	sint	res = _SUCCESS;
>  
> -	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> -	/* memset((unsigned char *)pxmitpriv, 0, sizeof(struct xmit_priv)); */
> -
>  	spin_lock_init(&pxmitpriv->lock);
>  	spin_lock_init(&pxmitpriv->lock_sctx);
>  	sema_init(&pxmitpriv->xmit_sema, 0);
> -- 
> 2.7.4
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

