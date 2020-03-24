X-GM-THRID: 6807590102219358208
X-Received: by 2002:a67:2904:: with SMTP id p4mr7383015vsp.101.1585049731525;
        Tue, 24 Mar 2020 04:35:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ae95:: with SMTP id x143ls929022vke.3.gmail; Tue, 24 Mar
 2020 04:35:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvkgjwtoWIvA2x27ogz3RBmcb26zMHiXJ/fzP9OAn+13wdygcMaUIZB61dEUrvIrJRRfKxd
X-Received: by 2002:ac5:cd32:: with SMTP id a18mr7144299vkm.90.1585049729960;
        Tue, 24 Mar 2020 04:35:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585049729; cv=none;
        d=google.com; s=arc-20160816;
        b=oc3FSe70/9v7ZSG5fnAyAcHh+JMsn5QLkbpTxZ1X3PI4ei7kVoJvhRnWx2kfCSAcIO
         MBd4C4F71P8OEx1FmRhE06bfbsBQkAE7EaZ8A/WyBKq58SOhxGKZPq5vLbhmgNjvQUrw
         YidFA4Ts8uKtBt3zebgJcH5X0nY0tkQv6gRt3MM5XNL+t5XdgR0DLmubB3Rbca4yBba8
         BXBw4GLHPuVxip897lXPC75TvUZAnWJWVDlW+6khvexX9qHEpYDDeAF4mOxce7Xptc1g
         0+xI4H+qRV/aKtisBXdymH/mRSEtqoP0uYsE+CvlNd7ZSFhlAQj/D27P98RfAUBl/NAL
         t3SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=n8or1ATUzLh9uvL5XrpPcXPGvmrD5RBp+OjL4vqYhfc=;
        b=QMo6uzYfkN8eM/0oVQUwQCYJeh7TRdTlsur940bD9L60gZDckxbOY7NmwSySpj2omm
         12NpwyScexWP5vCUoNQeaBQ6t3VU18wSGT5tj6v1KVWvxwtfyRLaDxTWuBiG9YUDry+E
         ARDmDgAelaMs3loqXC4Yv/pO5+T1tJMYR9Ecv6pROoeb4eTZBh61twoHngPu/85zxArm
         sfWyqUeCrB47PWaek/ylhp+8TvijjSwf7fSsjsKXjoW2XPPqYVJZSR6ruyOQQXd+zN8p
         RwxoKO8/OFsGjMz+TSb5bju7x5Nvbw95MJ6iVsKKEBKgWBFRaiTpRM1vhn1LJNQ96i1D
         Ykhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nOdXtALk;
       spf=neutral (google.com: 198.145.29.99 is neither permitted nor denied by best guess record for domain of gregkh@linuxfoundation.org) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i13si1339220vkk.5.2020.03.24.04.35.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 04:35:28 -0700 (PDT)
Received-SPF: neutral (google.com: 198.145.29.99 is neither permitted nor denied by best guess record for domain of gregkh@linuxfoundation.org) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nOdXtALk;
       spf=neutral (google.com: 198.145.29.99 is neither permitted nor denied by best guess record for domain of gregkh@linuxfoundation.org) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 515AD2070A;
	Tue, 24 Mar 2020 11:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585049727;
	bh=ZXRxck0/FOXXEIOp3fzQIsl/XDc4JBml036rTKVYmoA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nOdXtALkg9/zIJ/WKlD6UnUGwMTJIuT1pkDk0YSY5VIB55YbvsA7edMEcdzgzDqx+
	 z/wHWYOp0RGEr0GIwbSlOLxovPZwbavWCFb/YGvWJJMBuNoFJiRNbrYx1AngCzHMcP
	 Y22IJNah9m83TLw0ePH/mZRn+eBqQA5ctHUxmbDc=
Date: Tue, 24 Mar 2020 12:35:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vt6655: Break up function call with long line.
Message-ID: <20200324113525.GA2286293@kroah.com>
References: <20200324020619.73702-1-briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200324020619.73702-1-briana.oursler@gmail.com>

On Mon, Mar 23, 2020 at 07:06:19PM -0700, Briana Oursler wrote:
> Update matches style found elsewhere in file.
> Issue found by checkpatch: line over 80 characters.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/vt6655/device_main.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 0442f71494b2..b28f3b28849b 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -443,7 +443,10 @@ static bool device_init_rings(struct vnt_private *priv)
>  
>  	/*allocate all RD/TD rings a single pool*/
>  	vir_pool = dma_alloc_coherent(&priv->pcid->dev,
> -				      priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc) + priv->opts.rx_descs1 * sizeof(struct vnt_rx_desc) + priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc) + priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),
> +				      priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc)
> +				      + priv->opts.rx_descs1 * sizeof(struct vnt_rx_desc)
> +				      + priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc)
> +				      + priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),

The "+" should go on the end of the line, not the front of the line.

thanks,

greg k-h

