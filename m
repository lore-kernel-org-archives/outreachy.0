X-GM-THRID: 6467597635831201792
X-Received: by 10.28.145.82 with SMTP id t79mr247201wmd.20.1505855623178;
        Tue, 19 Sep 2017 14:13:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls4909ljd.12.gmail; Tue, 19 Sep 2017
 14:13:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDrj1134SATHkl6+aNzD5XQtbS7q+n1SrKkH8tu1Lqml3rFucZf1qV+pM7aYZ2qv62yvQF8
X-Received: by 10.25.162.201 with SMTP id l192mr305268lfe.39.1505855621896;
        Tue, 19 Sep 2017 14:13:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505855621; cv=none;
        d=google.com; s=arc-20160816;
        b=AxoFANQr9UYnPtTYO/gyWVgwUedv/cmzxO42bg13UKNNjycaXO340TkbjI7Q7NfnJm
         4hoYJ4OK+5TWUgx8gKp5aqticG8A0RpDsW0eOgM4HPQFtIT2PrePzz1ZmlT4hRkXs5Az
         Pk4i3yiOQ+rP586ySO5sYwdurtR5g0aCMhMABfGsSWgOS+jF+vaZNWtXGAmDDhLIUVG8
         dXBzc3+cDDoh6IaXLyNiUJjvhDHYwbJlqIqZkVPXxD/I7A2dxjG/faS/+/U3SPeBqyU1
         RFtUFVxu0Cn9cXARN+PYt2gRkdA86KCpyFN3z9jqHRX+4R0vDAXV9isgzJFwaj4tqaZ1
         ZuZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=yIRyDCr73SRspTjhJfEmLJO6pdBhwc2Wgeq8LvBlMzg=;
        b=HxYKAnjojW6oLryysmWPM5ybyaOX2EzzZaAY7JnQgGLSsN1TsYtuFNP/eXXVjOmd1H
         J8zGXx3VM4rF1wSXfRaTYOmQuLsVXftE312+PX/P1E1F1vZewaHbu2EZE9ZEf5tt8JF/
         yJ9WtCiMZwEYXfCW7BPm79Lo85o/gylKdnhHwKmghEgjUtjjZQcF2xkmJYGdwbou2as9
         ag094sW9iJRNQJe4QH2bdSTFGkf9s9J4hakBnn8A2wJWuR3EyqTLVx5d+zvh4OrEnZHO
         W9YxDbzhmqfmSmz77F3wwAfFQ+13/6Qrdfj4wXZfS8v4WXeqQl02Al+M+TIdHYbcp/g2
         a4hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b62si9168wmd.3.2017.09.19.14.13.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 14:13:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,418,1500933600"; 
   d="scan'208";a="291840270"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2017 23:13:35 +0200
Date: Tue, 19 Sep 2017 23:13:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtlwifi: halmac: Remove
 unnecessary 'out of memory' messages
In-Reply-To: <20170919210157.44uf4sm27tjshxn6@fireworks>
Message-ID: <alpine.DEB.2.20.1709192312550.2518@hadrien>
References: <20170919210157.44uf4sm27tjshxn6@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Sep 2017, Georgiana Chelu wrote:

> Remove unnecessary messages because OOM (Out Of Memory Manager)
> reports memory allocation fail messages.
>
> Fix issue found by by checkpatch.pl.
> WARNING: Possible unnecessary 'out of memory' message.

Do you need to add the comments?  Looking at the code, it seems pretty
obvious from the few lines above what the problem is.

julia


>
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
> ---
>  drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> index f33024e4d853..269c9e082165 100644
> --- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> +++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> @@ -277,7 +277,7 @@ halmac_dump_efuse_drv_88xx(struct halmac_adapter *halmac_adapter)
>  	if (!halmac_adapter->hal_efuse_map) {
>  		halmac_adapter->hal_efuse_map = kzalloc(efuse_size, GFP_KERNEL);
>  		if (!halmac_adapter->hal_efuse_map) {
> -			pr_err("[ERR]halmac allocate efuse map Fail!!\n");
> +			/* out of memory */
>  			return HALMAC_RET_MALLOC_FAIL;
>  		}
>  	}
> @@ -538,7 +538,7 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
>  	if (!halmac_adapter->hal_efuse_map_valid) {
>  		efuse_map = kzalloc(efuse_size, GFP_KERNEL);
>  		if (!efuse_map) {
> -			pr_err("[ERR]halmac allocate local efuse map Fail!!\n");
> +			/* out of memory */
>  			return HALMAC_RET_MALLOC_FAIL;
>  		}
>
> @@ -554,7 +554,7 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
>  			halmac_adapter->hal_efuse_map =
>  				kzalloc(efuse_size, GFP_KERNEL);
>  			if (!halmac_adapter->hal_efuse_map) {
> -				pr_err("[ERR]halmac allocate efuse map Fail!!\n");
> +				/* out of memory */
>  				kfree(efuse_map);
>  				return HALMAC_RET_MALLOC_FAIL;
>  			}
> @@ -3579,7 +3579,7 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
>  	rsvd_buf = kzalloc(h2c_pkt_verify_size, GFP_KERNEL);
>
>  	if (!rsvd_buf) {
> -		/*pr_err("[ERR]rsvd buffer malloc fail!!\n");*/
> +		/* out of memory */
>  		return HALMAC_RET_MALLOC_FAIL;
>  	}
>
> @@ -3598,7 +3598,7 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
>  			    GFP_KERNEL);
>
>  	if (!rsvd_page) {
> -		pr_err("[ERR]rsvd page malloc fail!!\n");
> +		/* out of memory */
>  		kfree(rsvd_buf);
>  		return HALMAC_RET_MALLOC_FAIL;
>  	}
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170919210157.44uf4sm27tjshxn6%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

