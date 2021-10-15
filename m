X-GM-THRID: 7018941118564794368
X-Received: by 2002:a63:9d8f:: with SMTP id i137mr8548255pgd.323.1634296828565;
        Fri, 15 Oct 2021 04:20:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5963:: with SMTP id j35ls3031131pgm.9.gmail; Fri, 15 Oct
 2021 04:20:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+/EkY2qzwg1Q8t42gNS58GzcuS8KNGSFoHkZLitlms8OZ15NQRjYiAxCPJyrNKjlg7o0q
X-Received: by 2002:a63:85c8:: with SMTP id u191mr2453484pgd.442.1634296827403;
        Fri, 15 Oct 2021 04:20:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634296827; cv=none;
        d=google.com; s=arc-20160816;
        b=FjezcVGPU40igSgpdMZZ39iY+lJcj+9jD6y+a3PtZY9mG80W3hdQ4KZayhxDf1DUsh
         x72nP2msAvZ/CJSfeafi2Qgfk4s7TAaxA8DHv2DjMPxBoJTyCRK7W6y5MolRW41kFBKb
         cKHZs2HgvGBqfQ1SXQmnQrvtntSyJqrcOzuU4LkZ41pucKSQSNEPaqnL3beQL0piZXKR
         HAU5EtNRvHv44SnZxiwoPj8CoutgyG3+HUsCrfFro6dKd9i0w6UofZQsaPVhqNSAeeb2
         uWgIV5ydCBoO2YlUgGqet0eAwaauuHOs7KU2kS/O+xyqMcDmAU23FuRjxdjEPVAIQcwM
         0/sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q+SgL816JFy5giKtb94dEBCOrDCcG0XfoFygh+ecYPQ=;
        b=ThJ7C9cfRP/LBl0WSzNXTXtXy1YyLKfERjOQ9mbjhavi3jGESUbQGMol57S5Sn8jZ6
         wmsjUNbiUUEU0AL01FOyj0cwCF6XPkcT0pQkE0vS+4Du6D1dxUrOxnyXYll2QDRDmBmr
         L/tgZNN4GkGOGGGBHtVjWzxQmC953AOrJbnlzPcydiJ3Q4VTqjd03w5pupFW+cJO93qx
         UgzWEcCDuE4X2h7eXNuvtJ5cNuHWDMrkDw/ECt/VpCpUlBFbISfgEQdsvYsVuU6LcBeC
         fvm2s4vjJAEtizIlLI6Q+ENyprPGzpT58wrozYjsGCecetk9l95nB0OJZfHZJ49ZKhvC
         g5VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qcLpHUyg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y12si482323pfc.1.2021.10.15.04.20.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 04:20:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=qcLpHUyg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E13360EFF;
	Fri, 15 Oct 2021 11:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634296827;
	bh=2W8IGoWcN4dnWhDN155etd5POsGBKisgo5d/iujmmAY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qcLpHUygt2XOZZ6T820MfK+BnyZQsLnaJMeo65TId0P320j7bFtOVFA/lPiRwN//k
	 vCZwCC48swOSmKkYldE+uOv2I3Tnwh8ZHTXutRs8STV1TSxMD6SEl9AKLZlWv7eagq
	 Nl6JNzF1nrdXys3bLEw4Vk4HI1iKSC1Ne4zThSps=
Date: Fri, 15 Oct 2021 13:20:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: vt6655: Rename byPreambleType field
Message-ID: <YWlj9x6kwYUT1jlQ@kroah.com>
References: <20211015102444.90753-1-karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211015102444.90753-1-karolinadrobnik@gmail.com>

On Fri, Oct 15, 2021 at 11:24:44AM +0100, Karolina Drobnik wrote:
> Drop Hungarian notation prefix in `byPreambleType` member of
> struct vnt_private. Change it to use snake case. Update
> comment for `bb_get_frame_time` to reflect that change.
> 
> Fix issue detected by checkpatch.pl:
>   CHECK: Avoid CamelCase: <byPreambleType>
> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c    |  8 ++---
>  drivers/staging/vt6655/baseband.h    |  2 +-
>  drivers/staging/vt6655/device.h      |  2 +-
>  drivers/staging/vt6655/device_main.c |  8 ++---
>  drivers/staging/vt6655/rxtx.c        | 50 ++++++++++++++--------------
>  5 files changed, 35 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index 0bae35af6e0f..7a5f186f2598 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1691,7 +1691,7 @@ static const unsigned short awc_frame_time[MAX_RATE] = {
>   *
>   * Parameters:
>   *  In:
> - *      by_preamble_type  - Preamble Type
> + *      preamble_type     - Preamble Type

This is not part of a structure.

>   *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
>   *      cb_frame_length   - Baseband Type
>   *      tx_rate           - Tx Rate
> @@ -1700,7 +1700,7 @@ static const unsigned short awc_frame_time[MAX_RATE] = {
>   * Return Value: FrameTime
>   *
>   */
> -unsigned int bb_get_frame_time(unsigned char by_preamble_type,
> +unsigned int bb_get_frame_time(unsigned char preamble_type,

Neither is this :(

Do not do multiple different things in the same commit and especially
when you do not describe them in the changelog text.

thanks,

greg k-h

