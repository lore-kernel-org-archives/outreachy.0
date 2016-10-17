X-GM-THRID: 6341982237152509952
X-Received: by 10.194.126.69 with SMTP id mw5mr1051020wjb.20.1476717598317;
        Mon, 17 Oct 2016 08:19:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.166.210 with SMTP id p201ls1806wme.26.gmail; Mon, 17 Oct
 2016 08:19:57 -0700 (PDT)
X-Received: by 10.28.199.74 with SMTP id x71mr673942wmf.13.1476717597614;
        Mon, 17 Oct 2016 08:19:57 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id i63si1643wmg.0.2016.10.17.08.19.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 08:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-lf0-x241.google.com with SMTP id b75so27039414lfg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 08:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=q+7xT7Xk6YcAsvEKRC2OgmRHJDxxMfqc5B494NEaDw4=;
        b=moocCTB50lY9brmmUAIX/26st2ezqzXLQwRBRIeUYLK8KtobL1fDO8iH3JZlOGzeOd
         ZwBdOuUd56niX2UfmL7QLVZ5Ub+EY73baD1/5JKNhDQNf6Yf9DiUMafrjHZwRLc1BIHG
         ypoDCcsN1ZYdZuhJJIr1kQ/GmZFpFA1/DbsfneqPnzJsfhHQDYZwGcltmnpyfRbSiK6C
         PU23K3v/JVMD/z6oC7589KAE98UrmwSCRroX5kyDscKxjEO3tQSurLNCKd+/1ojo+Jxb
         INT2L9Dfs4rhxcBKcfvZ2M1W3uYaejUWJrJkuwoQ7nb/rk77jxVE5vUwsq8YWfqVJEs4
         wqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=q+7xT7Xk6YcAsvEKRC2OgmRHJDxxMfqc5B494NEaDw4=;
        b=gQLTBmOsH5kCSxWQrC/ZPVOONOLiC7rKuXJG9m13zPvreKCJa2pVMr+dwWTuPwMq9p
         gkRD4nQiMKiHb/q4rp5vQILFDayi/aihOeZAJOugt4DM9rOzQmMux2SM4JcUvhNHPNxx
         +5QK1uwV7cEcgHt4sB9T2hhMTbLZjnac8cUrzY29eUqs9XheV4wzJzyhdelJXBhHsPv7
         /k7WtlRtRKGDW+AaJ5hEKkSidD4vjntA7+vjKjaRiSPi3T/Ig0Q3csQTD5MvFsL/xc6q
         Ktu3mxZoG7gkGLZG8gzVaGKdttngKvURLcDBDBxjlehA5dP4c9kSNpBagQ/gJkRqAf7c
         j4+Q==
X-Gm-Message-State: AA6/9Rn0Zrha0jX3Q+k7Yhsz0gqDW3Byz4JsLZ+C292lk5DVskDeb4+MvMU9JkdXC+hyag==
X-Received: by 10.25.92.152 with SMTP id u24mr14007242lfi.114.1476717595869;
        Mon, 17 Oct 2016 08:19:55 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra (c-04aadb54.07-184-6d6c6d4.cust.bredbandsbolaget.se. [84.219.170.4])
        by smtp.gmail.com with ESMTPSA id h68sm7978207lji.20.2016.10.17.08.19.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 08:19:55 -0700 (PDT)
Sender: Johan Hovold <jhovold@gmail.com>
Received: from johan by xi.terra with local (Exim 4.87)
	(envelope-from <johan@kernel.org>)
	id 1bw9hh-0007Bu-PV; Mon, 17 Oct 2016 17:19:54 +0200
Date: Mon, 17 Oct 2016 17:19:53 +0200
From: Johan Hovold <johan@kernel.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Subject: Re: [PATCH] staging: greybus: es2: Use kmemdup instead of kmalloc
 and memcpy
Message-ID: <20161017151953.GC23255@localhost>
References: <20161016084948.GA25576@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161016084948.GA25576@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.5.24 (2015-08-30)

[+CC: staging list ]

On Sun, Oct 16, 2016 at 02:19:48PM +0530, sayli karnik wrote:
> This patch replaces kmalloc and memcpy with kmemdup for duplication of
> memory.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Acked-by: Johan Hovold <johan@kernel.org>

> ---
>  drivers/staging/greybus/es2.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
> index 071bb1c..8eabc71 100644
> --- a/drivers/staging/greybus/es2.c
> +++ b/drivers/staging/greybus/es2.c
> @@ -175,10 +175,9 @@ static int output_sync(struct es2_ap_dev *es2, void *req, u16 size, u8 cmd)
>  	u8 *data;
>  	int retval;
>  
> -	data = kmalloc(size, GFP_KERNEL);
> +	data = kmemdup(req, size, GFP_KERNEL);
>  	if (!data)
>  		return -ENOMEM;
> -	memcpy(data, req, size);
>  
>  	retval = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
>  				 cmd,

Thanks,
Johan

