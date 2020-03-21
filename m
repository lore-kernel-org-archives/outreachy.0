X-GM-THRID: 6806439797189509120
X-Received: by 2002:a6b:f616:: with SMTP id n22mr10863842ioh.100.1584773686011;
        Fri, 20 Mar 2020 23:54:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9418:: with SMTP id v24ls1367257ion.10.gmail; Fri, 20
 Mar 2020 23:54:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtIZxNrs7jNJuiENW/UmQWTpbIkEzdS9ZadeXO5rE4uE6XvUyeBi2LmjY9MmfzPrqBIf4m5
X-Received: by 2002:a5e:8214:: with SMTP id l20mr10689203iom.168.1584773684793;
        Fri, 20 Mar 2020 23:54:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584773684; cv=none;
        d=google.com; s=arc-20160816;
        b=SdpiyvFFo8CsmFLRMyxIfepmLa8XKK+gg64N5+xpPRQwc9Ke+pk1Oaslei4W6j7i9Z
         ESq8ji+T3sbwHRueAZuSOMZAV5fS+Jo/fs85Txzy6wHZQ+BwSuJFA5vxo2N48HEw2H3O
         RY0QQwQXVBfD0GVbxJVyA6E6NOTddBZBv9tlTtkmGLZpQ+3jQ34cZMo64vyeuvmwnq8l
         r0tRLRWbMrO4livBCOWoaRVc8TFq18xPHemOus+2Wjzjm1Gt+tTxz5oPyNmLpnd9iIP9
         AsfjoYWW/P2tTHe2e0XI8pr+eZQYunyMXw7O1F10sAmmShXEjmlcqqBB+f9VCTEev381
         PuDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dQARWGybATmOo+jENT4RF1jEG2oRU2o43ax19FtXbf0=;
        b=mzbFz2Hx/Vs1DcZ80gG11+nM3s1T+0lb2QsYnjIrZXkZOeC9ocqihU6aIQ+eS53nu3
         gcpNq4gGzutF7xZ3sMPC6r1TFIsAxRtGC46J5Rsf7ZRLRQiZY1tjCEX5aVLYDtR1majq
         8/bqr5FXefWzDjbJ7ArHOZVpu97mEjc5XlBqPwWe2FS1Q+C7YFRitzLS3Y8zorkMUdrO
         Gw3/2e1LJIZjBMe6UxHbOHioQZ7t4big5EUPV715+xePgm1gFxAFT1bLud6y+COm+sGD
         weSktaXWxa4yX8BCmm/F26YXw1IvkoxKrlBb8C2OSO9Gmh8q2BqAsbk0xOcaFzZLmFF3
         V5IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mF7c6B4I;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v13si488610ilg.4.2020.03.20.23.54.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 23:54:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mF7c6B4I;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B5EB9206F9;
	Sat, 21 Mar 2020 06:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584773684;
	bh=j0/LgC5POGeleKBNYZ8hoDudTJGlzpmDcE7EfD0p8pA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mF7c6B4IY6iMIXpGlVUK9il/NAmCzfABRXv9cJ6Fe8FHRnXR4SImmPA9RWWRrGiy7
	 TQ+78ch/sXs6ek5hhkAsXKAi/N2ijvHF3t6/LXxMiyG3DJPdhXdjmwPoW44ev3Ci/j
	 oLvlVEci1hEgsTAdfoc7DydXF1acctQD1xi+rI1A=
Date: Sat, 21 Mar 2020 07:54:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: mt7621-dma: Possible unnecessary 'out of
 memory' message
Message-ID: <20200321065441.GD849159@kroah.com>
References: <20200320234234.GA9861@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200320234234.GA9861@siyah2>

On Sat, Mar 21, 2020 at 02:42:34AM +0300, Gokce Kuler wrote:
> Delete unnecessary 'out of memory' message 
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 47f7784..14a3215 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -467,7 +467,7 @@ static struct dma_async_tx_descriptor *mtk_hsdma_prep_dma_memcpy(
>  
>  	desc = kzalloc(sizeof(*desc), GFP_ATOMIC);
>  	if (!desc) {
> -		dev_err(c->device->dev, "alloc memcpy decs error\n");
> +		dev_err(c->device->dev );

Did you build this file after this change?  I don't think so :(

