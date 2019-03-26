X-GM-THRID: 6672752996979310592
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr153988wme.5.1553622617000;
        Tue, 26 Mar 2019 10:50:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c243:: with SMTP id b3ls171386wmj.9.canary-gmail; Tue,
 26 Mar 2019 10:50:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzs2mk5MRUyuI8I+GxHlukS0TgTmGasDjPl75YB49kJ46u1JS+iUhzUOcOQIieh4X0Smhx5
X-Received: by 2002:a1c:9c52:: with SMTP id f79mr154668wme.22.1553622616207;
        Tue, 26 Mar 2019 10:50:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553622616; cv=none;
        d=google.com; s=arc-20160816;
        b=Vhhwd8ZLWdb6/ZnMNWSY0+LAGVhOHclAs5VuOjg53UZCj9FzAH9raO58Q205VNuIus
         C18BVc9r2tGXRdvHv+JjBnXb8nYTCJ8+wk4QNTfQLgE8VAq2kSpLjZSe2At/Z22VVtTb
         mofpGgX5wAyHgH4ZI6vQQTwiCqg7Occ/tIhf7mSDOWcI7sZVh+D5MRPgeIeX1kzJ6oXW
         6NrQ/OS/nN+5N9mFRyrze1WgK3FEMzoPvc5IPpxzz2qgNGtowEbsm1DlA29x8Xl/M4DQ
         7RhxCk8YUuFHFFmun5EYteF1pSAeo+qZBapXN63yJLiiDfTZLPwPeBbNKK/ndQDKhXqe
         Xx7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zPiZ2lTZ2D1xUl33lP8htrIPR4xytnmOfkcosZ9bee4=;
        b=UH8Dl27W0fDN5CZ0Z8HmcqrFlRxp5bnd+bZIA9xOTOhkpYofRXQSiKCOgkF5Lvl7DB
         TkeRviwdB6ulLmbDCeGgt7yz213Of8xkmXX7LFEo80kfVdqcn4bNv/qdF7CEF3BRB6yy
         vjceMZf9KE5lo1rfx4yhdTZ3jogTE6CPFd9jIznIPAAKP//MthzvWV6OMIHq6G+PTFez
         VP3BOpgR5FLHlmBYcSWTDaBTKNaOTjF01Wl9/JcmTTC7u5t4B3D7lQKUHI9YsouTud9w
         o9qLlIdI3s671QUL02T4IC0tEu47PPtZCggyHpo8K8UuNRzMOXqYv9QcgQnqwIyvgprr
         9GDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f14si743125wme.2.2019.03.26.10.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:50:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,273,1549926000"; 
   d="scan'208";a="375876252"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2019 18:50:15 +0100
Date: Tue, 26 Mar 2019 18:50:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Branden Bonaby <brandonbonaby94@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: rtl8712: rename variable
 to avoid camelcase
In-Reply-To: <2de19725be83555d1f3983bf4ff7d9925ebd4f1c.1553619382.git.brandonbonaby94@gmail.com>
Message-ID: <alpine.DEB.2.20.1903261849140.6419@hadrien>
References: <cover.1553619382.git.brandonbonaby94@gmail.com> <2de19725be83555d1f3983bf4ff7d9925ebd4f1c.1553619382.git.brandonbonaby94@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Mar 2019, Branden Bonaby wrote:

> Rename variable blnSetTxDescOffset to bln_set_tx_desc_offset
> to align with linux kernel coding style in rtl8712_xmit.c.
> The Warning was produced by checkpatch.pl.

It looks like it is a boolean.  You could add another patch to the series
to change the type and to change the 1s and 0s to the corresponding
boolean values.

julia

>
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_xmit.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
> index d8ff4ba0cfa0..f0933769cd36 100644
> --- a/drivers/staging/rtl8712/rtl8712_xmit.c
> +++ b/drivers/staging/rtl8712/rtl8712_xmit.c
> @@ -418,7 +418,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
>  #ifdef CONFIG_R8712_TX_AGGR
>  	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
>  #endif
> -	u8 blnSetTxDescOffset;
> +	u8 bln_set_tx_desc_offset;
>  	sint bmcst = IS_MCAST(pattrib->ra);
>  	struct ht_priv *phtpriv = &pmlmepriv->htpriv;
>  	struct tx_desc txdesc_mp;
> @@ -429,16 +429,16 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
>  	ptxdesc->txdw0 |= cpu_to_le32(sz & 0x0000ffff);
>  	if (pdvobj->ishighspeed) {
>  		if (((sz + TXDESC_SIZE) % 512) == 0)
> -			blnSetTxDescOffset = 1;
> +			bln_set_tx_desc_offset = 1;
>  		else
> -			blnSetTxDescOffset = 0;
> +			bln_set_tx_desc_offset = 0;
>  	} else {
>  		if (((sz + TXDESC_SIZE) % 64) == 0)
> -			blnSetTxDescOffset = 1;
> +			bln_set_tx_desc_offset = 1;
>  		else
> -			blnSetTxDescOffset = 0;
> +			bln_set_tx_desc_offset = 0;
>  	}
> -	if (blnSetTxDescOffset) {
> +	if (bln_set_tx_desc_offset) {
>  		/* 32 bytes for TX Desc + 8 bytes pending */
>  		ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE + OFFSET_SZ + 8) <<
>  			      OFFSET_SHT) & 0x00ff0000);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2de19725be83555d1f3983bf4ff7d9925ebd4f1c.1553619382.git.brandonbonaby94%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

