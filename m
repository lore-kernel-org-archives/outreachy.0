X-GM-THRID: 7020422968837668864
X-Received: by 2002:a05:622a:44b:: with SMTP id o11mr23740132qtx.359.1634569955870;
        Mon, 18 Oct 2021 08:12:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:318d:: with SMTP id bi13ls242050qkb.9.gmail; Mon,
 18 Oct 2021 08:12:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyt251eGgyKCLqK8niBe5GJEJsXTLYShfy3rS55BHRyccjXuyHJA8re77etoo7fVsw1yRzZ
X-Received: by 2002:ae9:df45:: with SMTP id t66mr22730411qkf.335.1634569954909;
        Mon, 18 Oct 2021 08:12:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634569954; cv=none;
        d=google.com; s=arc-20160816;
        b=Zo3hVcV8yg9VG/6HDiqxt2b2D5lOsCsIXnJe2JCk8vTJeN+m1kERN0g2t5TUhU265u
         CJc2Nu2IUf1x5SwA7RQhKGB7Bk5DMqrs625fW+N5/qr5Rn2E2ysYqXyDG7O07T1k0PJW
         bkO/+80kC6vPmBj/6O70nO6OlEH+1Xq5z6HrgysmU38YU9bxoLeOMgXBDLP6ZcxJzYER
         dyVgB+irkrrE4+piO3Tpep24pA9QUCzezEPvBMQT6gINHBPb79/sdOrDdO6KJZqtKDBT
         pUCVBg7dCd80tsFiSYSgwM1v4l4rqUNOKvZ613RLsnTR5CVIwZlVgATH+8ptxDkzpDa6
         /ICw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vP6DuAU0GFk9eccZ2ApP0KZa99+FmnD7HdWb0qFEDpo=;
        b=ZCSs4Aod7DHXbXl8ZqQKvbZSF3XCIiahLIEcjyidpuhSBkEfG5PyNLHFMdWn8zukdI
         NTWEbUhe/O4bW4LpMf8+dettPAUsT42FaHzW/YLelNJEGuxWYpDDKoM4ZB7A4WyfUBLN
         NbpFUX+XBlavuTkmvOEkyvtXow/h967OvAu0kCrpfRv8au6vwfpOA+YXBdSyAxbm+1A3
         HQwYL8H8hG+EuiMDEmtBB7UIN5s/7ZCHMoucnBpRm9y/KhH6mWqaTM8s9OxQ4kuABRIl
         /AOUSOkWuGJGogzBtuWomF2EwNbUf041vD5ls0UJVFJ+dLGHLqaQWPIIKGF9lpZ2dWrr
         5O0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CYkyL3rf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i13si88779qkp.1.2021.10.18.08.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 08:12:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CYkyL3rf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D3D060F22;
	Mon, 18 Oct 2021 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634569953;
	bh=pqgf0b2infPHvF1hEZ3I0eVHSrDJKa5zOrYnSSNObZI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CYkyL3rfJCrhqojP1ocfsK+OCBjOljn2iXpKXopRPivYa8rwVfZPRAaUvnSRaMr0R
	 KJkHIz08r7RMtPlWlMwIZSGHmZJclxVu2HR77dCbg96P4h0gYiLWNGZnbgVO8daL17
	 zLl+vCvjRilyes/ckMs9WuF8CuMkUiIxkBNxB2bA=
Date: Mon, 18 Oct 2021 17:12:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: vt6655: Fix line wrapping in rf.c file
Message-ID: <YW2O3wC8wMEKS3Ub@kroah.com>
References: <20211018150526.9718-1-karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211018150526.9718-1-karolinadrobnik@gmail.com>

On Mon, Oct 18, 2021 at 04:05:26PM +0100, Karolina Drobnik wrote:
> Fix line length warnings raised by checkpatch.pl in
> rf.c file for `RFvWriteWakeProgSyn`,`RFbRawSetPower`
> and `RFbAL7230SelectChannelPostProcess`functions.
> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 66 +++++++++++++++++++++++++++----------
>  1 file changed, 49 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index a6f17162d017..206d34b555bc 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -699,11 +699,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  			return false;
>  
>  		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
> -			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
> +			MACvSetMISCFifo(priv,
> +					(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +					dwAL2230InitTable[ii]);
>  
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel - 1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				dwAL2230ChannelTable0[uChannel - 1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel - 1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				dwAL2230ChannelTable1[uChannel - 1]);
>  		break;
>  
>  		/* Need to check, PLLON need to be low for channel setting */
> @@ -716,17 +722,28 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  
>  		if (uChannel <= CB_MAX_CHANNEL_24G) {
>  			for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
> -				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTable[ii]);
> +				MACvSetMISCFifo(priv,
> +						(unsigned short)(MISCFIFO_SYNDATA_IDX
> +						+ ii), dwAL7230InitTable[ii]);

You shouldn't put the "+" on the start of a new line.

Also, these are all just fine as-is for now.  A better way to make these
lines smaller is to use better variable and function names that are
shorter and make sense :)

thanks,

greg k-h

