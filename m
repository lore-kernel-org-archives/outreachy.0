X-GM-THRID: 6806226770839207936
X-Received: by 2002:ac8:470c:: with SMTP id f12mr92992qtp.135.1584783246658;
        Sat, 21 Mar 2020 02:34:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6487:: with SMTP id y129ls4908493qkb.10.gmail; Sat, 21
 Mar 2020 02:34:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuxzPDq9mv2uRhuR8MYrzq6RyeguarsVc1dkZifBCUzYgOCCBUlQ7FU/BGTIB5efhuui7a1
X-Received: by 2002:ae9:ec0c:: with SMTP id h12mr7549487qkg.285.1584783245374;
        Sat, 21 Mar 2020 02:34:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584783245; cv=none;
        d=google.com; s=arc-20160816;
        b=lSE9opkNoplxtmc5NY6ZmwyWyttm8wYbIWebi1foVwtaNJMWNodAoww7cw6ln0g6Be
         +xNBwgeb65jvI9HlRfYt29ZEiNsCHXidXtXqRzTdOQ92mmzeO3ASpJOEdrzyc7nK6auJ
         p0NlYkj7aTjb6rgobtpDXaXa+5TstP/fkWA1gVSLngdxtcaV8NqiFVXYGz+VkexwzNTX
         I43JiXm3XtwLFELdmNPn+KtrOs8fSstLNOgmKLfUHY4fNSEO0LCuqvw3uNHvIwn3iUE+
         hyyWRNFGmJ3OYzUlMFg938jtupgl2jmt4/YYoA62kHHBqDXqjr+LYLmjzsHkcfgD+4i1
         hwFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LtHPBeHfCr+796WSyvr7VTOdufxhKG0nUqYfYWJPrwc=;
        b=N2ju8PX42T2pY68J774+ldb4o4YFa99ux5ZBXYSLARSZdfuT29LAqTVxKrGbGQONrL
         neL3OOLamdoMoH7QcKhxZdGZZyTLBrrqDCvq5N0sMzxg+4iwbiHCuJBpoDTWACWzg7K/
         ac1q2zaXTTCy954rTBRcG9boTZz9uuNlh8bZRiTu8+lksIltzZ7UjDPePNGElg2OlRsH
         0ebfVZsXUkuraiypu3TnJA+XsJ5T1gKsXjoKWygSd1VA9OcPQvQHSJKQgIBmqaGRiOep
         +esi/vFKYKvHGQu/390pDn5HcCbkzLYvP3kZ2UXRzxgUHQMy0eGe8WqzFRIIvt4E7FnQ
         pr2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=An2g7p5e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c194si490478qkb.0.2020.03.21.02.34.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 02:34:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=An2g7p5e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D061D20739;
	Sat, 21 Mar 2020 09:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584783244;
	bh=g8xPQv4BG3UbBIGqu4d9fCXh+Heeb/PEOesTS3HYhY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=An2g7p5ekRGSMhK3qR01qDk8BLf9pp6yT6jdTf9pPW2nBaLFLBk2FHOhmTJ1oCwWK
	 pNo3D36tBQzIlfxgcTetnOuxmz4VAmIHZeJaeNFJfDh1gDdQBXvySZa1mRg2BiYqOt
	 DRKkIxc+1dRUXwhdtgDA0sxCMflmni3iEQjg8uHw=
Date: Sat, 21 Mar 2020 10:34:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Tim Collier <osdevtc@gmail.com>,
	Nikola Jelic <nikola.jelic83@gmail.com>,
	Moritz Muehlenhoff <jmm@debian.org>,
	Stefano Brivio <sbrivio@redhat.com>,
	Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [PATCH v2] staging: wlan-ng: Fix third argument going over 80
 characters
Message-ID: <20200321093402.GD917692@kroah.com>
References: <20200321013905.2422334-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200321013905.2422334-1-jbwyatt4@gmail.com>

On Fri, Mar 20, 2020 at 06:39:05PM -0700, John B. Wyatt IV wrote:
> Create a new 'status' variable to store the value of a long argument
> that goes over 80 characters. The status variable is also used for
> an if check. Replacing that long statement in both places makes the
> code much easier to read.
> 
> Note: the status variable is assigned after a needed byte order
> conversion for usbin->rxfrm.desc.status, which uses a reference.
> 
> Issue reported by checkpatch.
> 
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> v2: Resubmitting after git rebase and comments from Julia Lawall 
> <julia.lawall@inria.fr>
> 
>  drivers/staging/wlan-ng/hfa384x_usb.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index f8485601aead..9016e6b32efc 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -3252,15 +3252,16 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
>  	struct hfa384x *hw = wlandev->priv;
>  	int hdrlen;
>  	struct p80211_rxmeta *rxmeta;
> -	u16 data_len;
> -	u16 fc;
> +	u16 data_len, fc, status;

No need to change data_len, or fc definitions, just add a new line here
instead for status.

thanks,

greg k-h

