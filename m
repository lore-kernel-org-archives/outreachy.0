X-GM-THRID: 6803435195586314240
X-Received: by 2002:aa7:95a1:: with SMTP id a1mr4854873pfk.279.1584445578672;
        Tue, 17 Mar 2020 04:46:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls5021616pjo.0.gmail; Tue, 17
 Mar 2020 04:46:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtDSbneGvDFMhu2vVk/WAbJiyO/0gHCLUf6CQy4J+7U3su2V90yemkWgEFsB5FU3ZeSdFrp
X-Received: by 2002:a17:902:a40e:: with SMTP id p14mr3979020plq.295.1584445577064;
        Tue, 17 Mar 2020 04:46:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584445577; cv=none;
        d=google.com; s=arc-20160816;
        b=DA6W4EBUuOQoXjW6wuDooBETNUEjOpo4KWMwXhdnAb+e/FsCbYzlzdKX2H9Bs/0QQd
         EfENPiC2ZfPUDqe64sDmVbNlHc4TE4bSmq4DousV1suQ/uwatBn5qhe7N6F6KBlr5gLW
         n1bZF91qMCuiat0Bp9B7oKUSkCP57N0j0CswdYOCAFWkGIEezbX7oDtBxWj+P2QjDqYw
         1GK8rtDQs0D2HG/2M+GXqZgchYoEcu2TN9CiFdR9CwiytcMPTbYg3YbD0+1cTSwFQJms
         LaRePWLD5YEKID01MULhoFh42Iyh9xVFHyb66Uz4yj2BO1d2Ae05Fk2f9FMvamoBnLhY
         FzZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7rDyLpiRzsefTYFXl/q7SS+x+IVykNS2yPLZWGcgajc=;
        b=YwLZKHxzfZ2xB/WVe1+H86DfDKVPXyUt4NTgVfBuEnEUNh+eNaaNXuSS8MAnZSjWIe
         giG8nvaRyPMfc1GnkUIvNGX8F0tnYvJTw0q5duEVTtfUYB7JGj9JizGCj2vSC8hXsDJd
         LFygaiSHCYS4eRxLe7yCp73eNB34rH7uSXNZFefB18NHwRgIoi0gHdBJPOUaSDUXqEdu
         GhMvCEpgUEL79eXmf1ojh5wowb9hPbC3+oxCh3zjZGUCQ4VSqmfrKFKBrDib6Hx2DRZn
         hpueccxb6l+fLFe+a4m+wi1qoebtNoxucuLaxBZy2kEx64JbRSCiNIIUtrpxE9h5T69i
         dyhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PxSbe4VJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j44si624651pje.0.2020.03.17.04.46.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 04:46:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PxSbe4VJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5346D206EC;
	Tue, 17 Mar 2020 11:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584445576;
	bh=cHNo5A/eTclTeH39V+3/m2mmmyNzR7rDY1N3zHLZlIE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PxSbe4VJxoYKA91RrXJS4X1TKokL/0x3+J1OiizCqwr5kBkF6/k7eMTCSYKPHa8o0
	 bFiqFWXyV/v0yOU/wUvSkXHWCUvfkkyrg47DzfxtjeZYqxtOM2ywhxBKv2AmiCh0L7
	 hcztgKkEqQvgQCm8TpUtXMe9KIj1TtCRGvcP4BQo=
Date: Tue, 17 Mar 2020 12:46:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com
Subject: Re: [PATCH 4/4] staging: fbtft: Avoid potential precedence issues
Message-ID: <20200317114614.GA1233256@kroah.com>
References: <cover.1584314603.git.mh12gx2825@gmail.com>
 <5c8520a5c3da453460608deee9a25232d52f4513.1584314604.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5c8520a5c3da453460608deee9a25232d52f4513.1584314604.git.mh12gx2825@gmail.com>

On Mon, Mar 16, 2020 at 05:12:32AM +0530, Deepak R Varma wrote:
> Put parentheses around uses of macro parameters to avoid possible
> precedence issues. Problem detected by checkpatch.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
> ---
>  drivers/staging/fbtft/fbtft.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 81da30f4062e..76f8c090a837 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -406,8 +406,8 @@ do {                                                         \
>  
>  #define fbtft_par_dbg(level, par, format, arg...)            \
>  do {                                                         \
> -	if (unlikely(par->debug & level))                    \
> -		dev_info(par->info->device, format, ##arg);  \
> +	if (unlikely((par)->debug & (level)))                    \
> +		dev_info((par)->info->device, format, ##arg);  \

"precedence issues" are impossible to happen here, it's a pointer that
we are dealing with, not some other type of expression.

So I'll take this, just to shut checkpatch up, but note that this is
_NOT_ a real issue at all.

And what about all of the other macros like this in this file?  Does
only this one need the changes?

thanks,

greg k-h

