X-GM-THRID: 6801815686837436416
X-Received: by 2002:ae9:dc04:: with SMTP id q4mr11095537qkf.216.1583671693026;
        Sun, 08 Mar 2020 05:48:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls282862qtd.1.gmail; Sun, 08 Mar
 2020 05:48:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvZhpzBjF/7A+JTcEk1fPCZyddiKXl7x4K3Er7oQgRFnyFpjZsRUidZWNjEhbneGISSTP+y
X-Received: by 2002:ac8:7290:: with SMTP id v16mr10788084qto.197.1583671691962;
        Sun, 08 Mar 2020 05:48:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583671691; cv=none;
        d=google.com; s=arc-20160816;
        b=w6hfnSEH3MDFl7/2HAy8CCJ7gWtlzUcx/LFQpFtU6HpOncn5Mle0Y7sP0jUzCpn4HN
         obbh4zTOU8pnRNXhsd7EcKKXWvDZ0c+zjPWfFvVVSyVDadPiB44oiAEnDhRcCNRwfhUb
         Vh6HweD9+z96HL+YCbtlsiFqE4s9dTGBNnuTnC7eqyHb5cZX8U8RJF6pc4SAGa07aYrU
         KOxQBWqrqWtzYMRnLCXIpYSJZS3LmxkZlMkbel0zLBeUPJ13WCEZLjIJy+8omL3GZFfS
         w6FbYrMDdNgnFGN8bQQyVM8sbJHGaupYrAyEyfoJCQxM1298Q/CpXvcBy5/V+zv6/vul
         mKWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=TWfq5nd2GY4wK8xVUE1iWnaaw+LNfYVytkWf/WyD8gE=;
        b=ptsspOlIU4C3eqe5/EaDuzc2gzPly+67fo51w0LsodrB41P8HKbD761R+um7ndMTFL
         Kg/3sybhfrDhAE7mOfPJ5fzVxdYcmd+ycIulU/ox+rSq8em2g4nkSGi75PdHlVVTTcWx
         jh8WLnwcTo7ridbyHG/d6GrWVAe9EEb8tfAzt8FNL5sA0gw3qVSmXOyqVnvu8WCOmQ6d
         Oiij3V3Sx4TNxt4UHSkUXAaCppil2CWKEZXkw/0AR1N6fIWJ41cJjMGfYv/AL//wvN9P
         /3dMdshvTEpaKk8fs2bzG8sO+2XKqYPp6QDA2UaZBMxTpakN18Xpfc4MN0geRJlQx34Y
         wkQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NPKIJyVS;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id w10si406437qtn.1.2020.03.08.05.48.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 05:48:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NPKIJyVS;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583671691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TWfq5nd2GY4wK8xVUE1iWnaaw+LNfYVytkWf/WyD8gE=;
	b=NPKIJyVSygbNGZHCVdRJ1eJhX0r3A4sWj9lGk1BsNbkPa+qSjo7WmzCe1ce/zwdRZxhBel
	KRE0izpPNiuH6uKqEdqqb69sA3wLtv7YuqLu+NuU7H5iGoj2AovKAOzjoNiGFCEwhOsysf
	xz1vh5xh8NWelVvIxAPhMg2PyBHIMAs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-392-6lXIaiXtPFWKbMetEp8hXg-1; Sun, 08 Mar 2020 08:48:10 -0400
X-MC-Unique: 6lXIaiXtPFWKbMetEp8hXg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1748018A5510;
	Sun,  8 Mar 2020 12:48:09 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B39A360BFB;
	Sun,  8 Mar 2020 12:48:07 +0000 (UTC)
Date: Sun, 8 Mar 2020 13:48:01 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: ks7010: remove line over 80
 characters
Message-ID: <20200308134801.349af232@elisabeth>
In-Reply-To: <20200308123834.3377-1-payalskshirsagar1234@gmail.com>
References: <20200308123834.3377-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun,  8 Mar 2020 18:08:34 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Remove line over 80 characters.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/ks7010/ks7010_sdio.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index 4b379542ecd5..6b2660c94f4e 100644
> --- a/drivers/staging/ks7010/ks7010_sdio.c
> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> @@ -446,7 +446,8 @@ static void ks_wlan_hw_rx(struct ks_wlan_private *priv, size_t size)
>  				     DUMP_PREFIX_OFFSET,
>  				     rx_buffer->data, 32);
>  #endif
> -		ret = ks7010_sdio_writeb(priv, READ_STATUS_REG, REG_STATUS_IDLE);
> +		ret = ks7010_sdio_writeb(priv, READ_STATUS_REG,
> +					 REG_STATUS_IDLE);
>  		if (ret)
>  			netdev_err(priv->net_dev, "write READ_STATUS_REG\n");
>  

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


