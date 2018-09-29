X-GM-THRID: 6606665477713297408
X-Received: by 2002:a5d:52c1:: with SMTP id r1-v6mr383710wrv.0.1538237497499;
        Sat, 29 Sep 2018 09:11:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8203:: with SMTP id 3-v6ls4504519wrb.2.gmail; Sat, 29
 Sep 2018 09:11:36 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63LKpf9EHsAe5ZhecK0G1Ogxv9WzKudRAxKW8/kG+fJ5wCUPKwY0ab+f3BF0DyfF6XslDVv
X-Received: by 2002:adf:efcb:: with SMTP id i11-v6mr376004wrp.1.1538237496465;
        Sat, 29 Sep 2018 09:11:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538237496; cv=none;
        d=google.com; s=arc-20160816;
        b=lvso47+2yPKQw10RgeFdd+7aqSFguG0N6rFAfiF2HVeFiqdXwZxeU0NJudKEs8aIFF
         xgowLJ5VCDqSHshBX1yuFR/YjYt50/aq114QvnXtGnskUC+Dns6U0kiNgLirXM6Ptx2f
         OprUONwXV84ELtHm+TfabbMdfayksNYWWBmKGkij3HPD2vwje037I0ffIrOb8QLVT1k3
         9PxXMz2EY2UTxEa3qwC1CW/pqsdpPewSaPtdqWu5hy7ZysPUXvmJtgmVnwZYLcUKAyQ1
         WBfVK9okg8FNZ+QrmL5HxfdK0+ug2NyyQgR0nlKKHJrs+bFRP9UH4RsF+MgKBSeMJfZ1
         5gUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=BVe1gnDgjr/YiyG2tsu9BwlsoN/wx7QdbuXW61rtrhs=;
        b=mb23eEg+66gofBNo6XAVVRriL9fdPYmfQWZubqXzmhdq8ofxPzHdtCAU8HEnBIF2Q6
         F3oaXnH1u0eDDxq4Au9NLTr8lnxJVvb0AHkyYc6QHt8maaOEKCMIcfMnidqgnzbrkqIg
         BVX4j+M1Q6kb8OgIqHccj8VFJbdvTJ+mNTSJiEafgnZoNiJEtUl3guiE+rlRqGiSqkF7
         0QqRibmWkSKrsBVd02BVG3By1o2SNL5kWMhuPinaIVuhr14Cu9reyBK+lDJuc5JfKGUE
         ujYxSFsaMOpiIbF3JkzhEUOMYlxJtgoYtOnMqv/He7RZfDBGYvxAiCUH6VZfYzCUKfP1
         7LEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l184-v6si189524wmb.1.2018.09.29.09.11.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 29 Sep 2018 09:11:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,320,1534802400"; 
   d="scan'208";a="348589521"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Sep 2018 18:11:36 +0200
Date: Sat, 29 Sep 2018 18:11:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Remove unnecessary
 parentheses
In-Reply-To: <20180929155508.26886-1-dafna3@gmail.com>
Message-ID: <alpine.DEB.2.21.1809291811120.2447@hadrien>
References: <20180929155508.26886-1-dafna3@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 29 Sep 2018, Dafna Hirschfeld wrote:

> Remove unnecessary parentheses between 'address-of' operators
> and struct members.
> Issues found with checkpatch.pl
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> Fix small typo in the patch body
>
>  drivers/staging/rtl8712/rtl871x_io.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
> index 3a10940db9b7..1f55704d55fb 100644
> --- a/drivers/staging/rtl8712/rtl871x_io.c
> +++ b/drivers/staging/rtl8712/rtl871x_io.c
> @@ -68,7 +68,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
>  	set_intf_option(&pintf_hdl->intf_option);
>  	set_intf_funs(pintf_hdl);
>  	set_intf_ops(&pintf_hdl->io_ops);
> -	pintf_priv->intf_dev = (u8 *)&(padapter->dvobjpriv);
> +	pintf_priv->intf_dev = (u8 *)&padapter->dvobjpriv;
>  	if (init_intf_priv(pintf_priv) == _FAIL)
>  		goto _init_intf_hdl_fail;
>  	return _SUCCESS;
> @@ -92,7 +92,7 @@ static uint register_intf_hdl(u8 *dev, struct intf_hdl *pintfhdl)
>
>  	pintfhdl->intf_option = 0;
>  	pintfhdl->adapter = dev;
> -	pintfhdl->intf_dev = (u8 *)&(adapter->dvobjpriv);
> +	pintfhdl->intf_dev = (u8 *)&adapter->dvobjpriv;
>  	if (!_init_intf_hdl(adapter, pintfhdl))
>  		goto register_intf_hdl_fail;
>  	return _SUCCESS;
> @@ -135,7 +135,7 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
>  		list_add_tail(&pio_req->list, &pio_queue->free_ioreqs);
>  		pio_req++;
>  	}
> -	if ((register_intf_hdl((u8 *)adapter, &(pio_queue->intf))) == _FAIL)
> +	if ((register_intf_hdl((u8 *)adapter, &pio_queue->intf)) == _FAIL)
>  		goto alloc_io_queue_fail;
>  	adapter->pio_queue = pio_queue;
>  	return _SUCCESS;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180929155508.26886-1-dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

