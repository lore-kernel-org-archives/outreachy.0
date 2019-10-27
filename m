X-GM-THRID: 6752322786481405952
X-Received: by 2002:a92:db0c:: with SMTP id b12mr13191584iln.33.1572159901670;
        Sun, 27 Oct 2019 00:05:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9c1a:: with SMTP id 26ls2189026ioe.12.gmail; Sun, 27 Oct
 2019 00:05:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzPisD7bTaBreJ761Ssnpe5D29vhXRILZMneatnkQCxsy5zrn3iwRt7nzDwXTKBTd5fJ5Sl
X-Received: by 2002:a5e:950e:: with SMTP id r14mr12696301ioj.171.1572159900254;
        Sun, 27 Oct 2019 00:05:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572159900; cv=none;
        d=google.com; s=arc-20160816;
        b=iVN1pGGqd6FfGXshHup+9nSEB/aJYUjc1RvsD/HN11G8BNxi2F8rtYzSudOr1BYZQe
         rehLdn/SDcQQpkWVxfsCQwzxsMSS/W87TE6X2r6CuaCYTAKs/qIc024H2sQu9xF3gbrP
         K40Y/tAMvnWLbizjj5WDYRqnVoId4YUtGQCFevLptix9AgcO3PyvgF0QoYmLssSLTiyz
         zcWNZ8jNfnPcFtRDACMi5ppe/Xm2YwTZhPDpcytNL5CD+1hIJEflOXzmmaRHVlrfEtI5
         SNvhHhVnqV1qiGeIEdNEq3A7+B5eenL+NMsA7uiTiHIeU3Gf+zMILg4Gt0q5czSyR0iY
         DZMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VUM6ylbJOSp5u/JPoOis1H43OzE1xcedIP1c538JPnE=;
        b=y5cQk+fVYQLUxqc37CVm4/bQI0EQsuhldjJ2856rjzmfMoVxk9Rq6DsJveAzRlD1Mn
         YtiVTghA7hvbp0AQrbxoL7xSC2lJp/F4wnBW+OqR2QU//z6WU627emJwB2qJOprJbt35
         JpMr1NBm3aO2s82peWyzzdoqU2pUMh8J16p3KIsHjWspF7asB2TnY9M+W6Ague0AdyhQ
         QHWDZrEpGPzw1n6r6vILlQ3TnFKdIDBYlZBwEf8DRjsbERjQW7NpfMXCXv3Ee/kX6VUs
         JmMsFt0AwFxgqvT7fgYLaOLEaCrwqO+0LNDGCY74vZz6OOzzbglv4dFpoeWHcIousz2I
         LkBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iZqvOT4K;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g1si332727ilh.1.2019.10.27.00.05.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 00:05:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iZqvOT4K;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DFD3420873;
	Sun, 27 Oct 2019 07:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572159899;
	bh=2p5ON40eZ4yhOX556Oa3uklxL2ue85C2N8YJLJRK6Ow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iZqvOT4K7BL81opHkF64soUtXf7JO+OY90FNrzOkNgTQAM3ZcS/Atgo2nEGp7DGQI
	 v8OTPXBM1hgIf0aiXqT0elOc2HM80Afc23iQLP8thY5eT+25tfTcc/hYuA61hqTyMo
	 0JwUmFDK/f836RoHW6Ag8R2bAmNbJ7zFB5sTQ3oU=
Date: Sun, 27 Oct 2019 08:04:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: Re: [PATCH] staging: ks7010: Fix unnecessary long lines
Message-ID: <20191027070456.GA1703830@kroah.com>
References: <20191027034056.GA20613@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191027034056.GA20613@linux-kernel-dev>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 27, 2019 at 03:40:56AM +0000, Frank A. Cancio Bello wrote:
> checkpatch message: "WARNING:LONG_LINE: line over 80 characters"
> 
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
> 
> This is the first patch that I send for "Outreachy December 2019 to
> March 2020". My plan is to keep these first patches very simple.
> Once they get approved I will move to less trivial fixes ;)
> 
>  drivers/staging/ks7010/ks7010_sdio.c | 3 ++-
>  drivers/staging/ks7010/ks_hostif.c   | 9 ++++++---
>  drivers/staging/ks7010/ks_wlan_net.c | 3 ++-
>  3 files changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index 4b379542ecd5..c7ba658e234e 100644
> --- a/drivers/staging/ks7010/ks7010_sdio.c
> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> @@ -446,7 +446,8 @@ static void ks_wlan_hw_rx(struct ks_wlan_private *priv, size_t size)
>  				     DUMP_PREFIX_OFFSET,
>  				     rx_buffer->data, 32);
>  #endif
> -		ret = ks7010_sdio_writeb(priv, READ_STATUS_REG, REG_STATUS_IDLE);
> +		ret = ks7010_sdio_writeb(priv,
> +					 READ_STATUS_REG, REG_STATUS_IDLE);

Why not just wrap the last parameter?  That's the normal way to do
something like this.

thanks,

greg k-h

