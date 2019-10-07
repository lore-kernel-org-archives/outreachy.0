X-GM-THRID: 6744791185682857984
X-Received: by 2002:a17:902:8d84:: with SMTP id v4mr28920327plo.196.1570444058743;
        Mon, 07 Oct 2019 03:27:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9343:: with SMTP id 3ls4370574pfn.15.gmail; Mon, 07 Oct
 2019 03:27:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSv4nxklq6ng8r8zWeqGzIQxwTaV50zwTGEo0jTKkAVVkjVLOpT8JxW/Ey9H2qJmUKGLaj
X-Received: by 2002:a65:508b:: with SMTP id r11mr4580047pgp.59.1570444057728;
        Mon, 07 Oct 2019 03:27:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570444057; cv=none;
        d=google.com; s=arc-20160816;
        b=E9wahWsprSyh7DRedcBxqzA82iJ4v02kIYpweBdJj31eJYNIBVTiq9iAOP2UjwkCs9
         Y7YECyyvgWFl/ySmZZIX86n5yk3+OJI8mo7DlUT2ZCBNSidYiWl9u2aYdjCHCm0iZmQr
         UaEncNyr8GKfWPXMPjerU3heaX/LUDWf0qbt/mcuMyv77QzvBjRsDyEov2zk3+YM2/sv
         qbiE2CC7AE6+0aS1ES/gaLibY36xYMNoh+pQPhrQrWeN0vDSpDINQjI9UUdvq8JuI/ne
         2z48aSJCO1dl7JXm5wjCxhlPYaUGXIuUIfA+nIRgCCQfX4uL0d+WEaByFe4VZaYUZMFC
         bs/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=m0z9sYQa12Fru0rjDo9m5E2e6AAti7z+uXroVZ+Ck+U=;
        b=AB9KkDcwH6qE13CKHC37rm3Usq0LmPQ6LoMxhz2YPMXkQipWG6oD8dSBqv39K+aNja
         qjuGD3Fby+ay3YUwyeXHYobxW5C6GyW4Yr6+4JhZ6fWZSnLMhW3ByPMo1o4JoXjxRx70
         VsIlxFwMaqONudPXUeByPNWopx2L9eykzu8UVL3PNVyumuT/VkMjGUeF0XgauLUtNFsZ
         V0pIS1G3RiQlENZh4Dby0+LagqBWQ9yqn+0QeJc6OCWoLyM/zH9rTf18DTxRqIGybkIe
         O/zij3nlq3laaRO6xOuJxt3SlHJjhEH3XdhkBhKip6TyG1fOsepn4ukF+rlZDWLhz77U
         De1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jVyox7Ty;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id br8si1376305pjb.3.2019.10.07.03.27.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 03:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jVyox7Ty;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 026F7206BB;
	Mon,  7 Oct 2019 10:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570444057;
	bh=o/3HX+sqnNh7vr3SYYCutqGAasG1AMtER1h8gM4+CBo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jVyox7Ty4EgYsSneZb3KoxWcLIsY8yooYV1lyMOfV5nrrDlBzcueVtqupZbxCNCoB
	 iisw6VDNuCnOHbvJg6o76eKW+Q9obYfeXL7yMqsyt0RFDHSewKV8iK+mhdQ+Zy5fOl
	 LtLtslBBAFup2HpSDXzURN8U6U4Zc7S962nKSHMc=
Date: Mon, 7 Oct 2019 12:27:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com, nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org, trivial@kernel.org
Subject: Re: [PATCH] staging: rtl8712: align block comments
Message-ID: <20191007102735.GA345628@kroah.com>
References: <20191006203420.11202-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191006203420.11202-1-gabrielabittencourt00@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 06, 2019 at 05:34:20PM -0300, Gabriela Bittencourt wrote:
> Cleans up warnings of "Block comments should align the * on each line"
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/rtl8712/recv_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
> index 84c4c8580f9a..70a4dcd4a1e5 100644
> --- a/drivers/staging/rtl8712/recv_linux.c
> +++ b/drivers/staging/rtl8712/recv_linux.c
> @@ -115,8 +115,8 @@ void r8712_recv_indicatepkt(struct _adapter *adapter,
>  	skb->protocol = eth_type_trans(skb, adapter->pnetdev);
>  	netif_rx(skb);
>  	recvframe->u.hdr.pkt = NULL; /* pointers to NULL before
> -					* r8712_free_recvframe()
> -					*/
> +				      * r8712_free_recvframe()
> +				      */
>  	r8712_free_recvframe(recvframe, free_recv_queue);
>  	return;
>  _recv_indicatepkt_drop:

This patch did not apply to my tree at all.  Be sure you are working
against the staging-next branch of the staging.git tree, or off of
linux-next which includes this branch as well.

thanks,

greg k-h

