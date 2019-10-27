X-GM-THRID: 6752344874745331712
X-Received: by 2002:ac8:290f:: with SMTP id y15mr12053197qty.181.1572160395575;
        Sun, 27 Oct 2019 00:13:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:29e6:: with SMTP id 35ls1970387qtt.3.gmail; Sun, 27 Oct
 2019 00:13:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxRsJyCJqMM36I3dgaJfvViVBs08WKDCv5kzZBROPEdgcS2h5cikRQqSmXhqB2RU6iM6A8A
X-Received: by 2002:ac8:6957:: with SMTP id n23mr12002568qtr.305.1572160394360;
        Sun, 27 Oct 2019 00:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572160394; cv=none;
        d=google.com; s=arc-20160816;
        b=HU/3erI/ohHWUs4vH/nk1qIjbb+YcL9j92l90LNdd40xIq0LYXnJLaoBScisO0Z8A9
         3YDJLUsgRnwxeYvJM24g8sVIsBsjvlpwsILtDjJa+yImnmQQaknEDgsfL+LR+TZjcvWr
         fxYGWOrN9YedjbBPAneFjHTIkQrHjLiPwK55bsQPM4PNdQclVXAh8LZo8IENMFUK+mtw
         SSP8gccmWnvX4ZOStIeYwuAuSfGqNWQPoVgBl0630A6QWibqDRomlTkX9v407J0hlmAX
         dYSs0WDm7xg2LgTskRFynAVoEyjF/K9wI2SI9e1TSIjSprybxJWXkhJRsVjB8ksO2JLx
         62TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BVTThUNGM+tTcpmggYvduHF3XlR49+Dc1U1YrMFqoPU=;
        b=pNFm5ZhWh+p9efJWuCrrFxWqO2U37NrI45Anby+LtAPaFj+Joln3UpeGzR8QGH4asz
         73OGDwvveMf4NOiW3vWBvowcAC9jbWqSt8w6uR237MSk7x9Hzl5mj4Ts0PDHnCUf7Uxo
         FuBi+F8Nt8LKddpgMjD0/hInd7X/fa1dfSFGgQst7oZdsNG6Uo0dIHEq51aepJYCsCZq
         biJ076I9fYjyMeA/gkH3MZhcDvUFTkQNYwCBgoe2f1xLriwmbDO0j8kT2muc3muFGzJG
         wbdhlhEif+Bd08rFnoyEZTE4iOBEC1iVgWw2mBr260rivKG3RSoCFOnLPnjCvcphTsva
         4pYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BTED87aM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t187si394054qkd.0.2019.10.27.00.13.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 00:13:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BTED87aM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C6BF420679;
	Sun, 27 Oct 2019 07:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572160393;
	bh=yCNhAumMGpK91g+6CKL9b44HR5CxFlm4f2GtqkBpQRk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BTED87aMQBrzf+JHEBuRFpPSnY8Uy5UI4KraM1Y1TqQPk+Xb2vfoQkWu7rkSze9Un
	 gulTw6mNHqx40vV2PmSGSiz5rBjkBo9am1RGMmAnkpHSTtPaDMMTTfGaCd7+LjXcD0
	 fv2fzNxqqS5aTID9iG0/nhgMnOiAyTwn0ZXnOqDw=
Date: Sun, 27 Oct 2019 08:13:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Fix multiple
 assignments on a single line
Message-ID: <20191027071310.GC1704509@kroah.com>
References: <20191027050640.GA24283@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191027050640.GA24283@linux-kernel-dev>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 27, 2019 at 05:06:40AM +0000, Frank A. Cancio Bello wrote:
> checkpatch message: "multiple assignments should be avoided"
> 
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
> 
> This is the second patch that I send for "Outreachy December 2019 to
> March 2020".
> 
>  drivers/staging/speakup/main.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 488f2539aa9a..6f5a58bd1f81 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -263,9 +263,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
>  
>  static void speakup_date(struct vc_data *vc)
>  {
> -	spk_x = spk_cx = vc->vc_x;
> -	spk_y = spk_cy = vc->vc_y;
> -	spk_pos = spk_cp = vc->vc_pos;
> +	spk_cx = vc->vc_x;
> +	spk_x = spk_cx;
> +	spk_cy = vc->vc_y;
> +	spk_y = spk_cy;
> +	spk_cp = vc->vc_pos;
> +	spk_pos = spk_cp;

As Julia said, the original is better here.

thanks,

greg k-h

