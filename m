X-GM-THRID: 6670322768033087488
X-Received: by 2002:a37:a093:: with SMTP id j141mr13412607qke.21.1553058693449;
        Tue, 19 Mar 2019 22:11:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:444:: with SMTP id 65ls438893qke.1.gmail; Tue, 19 Mar
 2019 22:11:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1ZILgltZXwy8M32UKrL59IQ0tgkZ36JN+qN4lzxuFBezur28g2zG5z0iDLvqVbtIFgjal
X-Received: by 2002:a37:4989:: with SMTP id w131mr13435959qka.54.1553058692703;
        Tue, 19 Mar 2019 22:11:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553058692; cv=none;
        d=google.com; s=arc-20160816;
        b=mywROAojeUmEc21wr5spz9Ks5T5+Lo0fww/1j0c/Z6+wj9ipow2+mL+nuofBm+1t/2
         q3TrmpS6BwlJkwve/zsQ1Ebk5ENGzykzxMSLZk6SVUBj6ob9epD6+zzp0sR/Y2/0Onl4
         NG08+hPl3BARZO9qAV5et92XLzCtebeETdHR0OZ2vToCSxBGdzCttO8wWfqoLMVSu0dj
         n4kLF155J29fgrPYukYMbwz7rbZCflueMuz2T6Uyi1ERqELGce1Zz4P3UBstTReu4D+9
         bZ5yPu+j/D1MtlcYQVvveE9r+y25W3um9pHvl4lTjKO9alf+KUeg4ikW7Qlo3a9uBE/V
         tb4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=urWTNT3EJXWNNcL80xtAQYLGCkk3FUCyqSqLvloLKM0=;
        b=EkA3K3gJIYptzOwmbMWjalNltRQkkLHqsabkwBwiWGewNHvC1cuUdZ44wDCbq1Sg/U
         K8r6ir+2XfubUcXfVxX0A9CDl2lw8/VvZUzUxg83s7Wz5oFFf7QA3nw/ZJiVRAU1Yerg
         zqQ8FObft1KiinURyXdZWRS7DjGJx7oKK1UewWo75sF0KHJGSaUTedT4B72ygWbAJD5R
         Q7RgB0TNwDwgN3we9pjCnu3jq8Ld3H7xlSfVC3zc+Qzq1fUzHcatGzT2KloiRzzRYept
         ElB3MPUcDHQH5A5jPDbIQ8hpwve757iEsIKh0/0ZG7m9wy+XdzMnl+f/3azjRuTXHbeX
         qXew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j2i9sbnh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si54728qkg.3.2019.03.19.22.11.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 22:11:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j2i9sbnh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BA8FD2184E;
	Wed, 20 Mar 2019 05:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553058691;
	bh=jKghkBWPTOEJYDNLBDeSMGEbzrqs4EJyP7pS+/qJB/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j2i9sbnhC+cPBn3Zb0RiiB5G3FFjfgvA+qSe2bWJDpMeN5uUo660EXyp/YdW+Nbfr
	 FeWNPimmlAsTGTNTlh7GkAeFE11YCNk5mDLJuwaeXheKNafx+PMhGyZhy/ixjh1wHj
	 La9r0RqKjfOEV3A3taB3dPSdXNOfV76fNH5uONW8=
Date: Wed, 20 Mar 2019 06:11:28 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: mt7621-dma: Add blank line after declarations
Message-ID: <20190320051128.GA16864@kroah.com>
References: <20190320041854.3829-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190320041854.3829-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 19, 2019 at 09:18:54PM -0700, Wentao Cai wrote:
> Add a blank line after declaration to mute checkpatch.pl warning:
> WARNING: Missing a blank line after declarations
> 
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 97571f1d697b..beeff4258b19 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -157,6 +157,7 @@ struct mtk_hsdam_engine {
>  	struct device_dma_parameters dma_parms;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;

Please look at what you did here and compare it to what the checkpatch
warning said it was doing.  Hint, checkpatch is wrong here...

Always use your brain when dealing with checkpatch as it is just a dumb
perl script :)

thanks,

greg k-h

