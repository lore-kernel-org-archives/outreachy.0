X-GM-THRID: 6808322643446464512
X-Received: by 2002:a63:574c:: with SMTP id h12mr13344380pgm.424.1585299848109;
        Fri, 27 Mar 2020 02:04:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:fb46:: with SMTP id iq6ls251976pjb.1.experimental-gmail;
 Fri, 27 Mar 2020 02:04:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtomp5rNRA/IESAc2LXcX9hempDP7QmIPXAzTiRVVw4T1jpwsGsBtXgIYAJdJSDdoVfNuos
X-Received: by 2002:a17:90a:2226:: with SMTP id c35mr4936051pje.2.1585299845838;
        Fri, 27 Mar 2020 02:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585299845; cv=none;
        d=google.com; s=arc-20160816;
        b=VeUvXKHvGhjxvYvdcHAEN2dZVHKjiG/CW6QHRDS7GEDGuaB5ry7E8I0QNPM2jQTmjF
         2P0imKxk5PU11TzE+Uys2c6OsbNrSNwdJPwHNTvsmrcgjkRznGlqh0EUBX01XyeNaBsl
         0iHPOTsQ8KEUWNTp9QAszdwhNF5baF1+t4QGroWE03vnWo9tuW5U0lVRhrlMz0U3JJ4a
         bujypJP7C/o69OTVxPu3rBIV7F2uc2im2Va6ElFMo5Q+AL+9gbooHLE3TPCn9CmCKod5
         LATDLr+7+pWSxtPcGWgoBAv7/qVCtySFjLQzR7e56bpi6LU+ZavDWfZsLoxkdK5Y+qU1
         Z25Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tYHnQt1ynL4eafaqLM6/C0IC8iRikJ0LcKJ45w5axc8=;
        b=HXzl8xlsvaZVddUSMH56RZXD6nc5rhLTMjBQxQvjAWbjmcxok3dUTDu2Y6d88NymXg
         8g52Xza6l3I8vFvE7OosarXgnL7ipZ8lxvAteTWb/MmiHdELRHVyYFUofJ8ZzKn5PbXw
         xzd/zNec1+84RTObjclrpRli3iqYROoJMEL7E5f1MBjkqPCj6Oh2hJMybIwaasSLuOD3
         19ELdCgfAsGGmY37W319W9ZvIMwJ8OvMSsNccs7RvyQaAwg7we4L0ZGb42SMOm+eNMnZ
         ZYYt+EVnz205lmtwk8vLiyjj+1wOKzNFt6v73DDfNb78v4A9GGTNYWmIYHKL9BYUUlJ1
         NQDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iiqrtERV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 74si311309pfy.0.2020.03.27.02.04.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 02:04:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iiqrtERV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1A346206E6;
	Fri, 27 Mar 2020 09:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585299845;
	bh=66sEGwBJ6r6PlP6NeDMH/RLXfp7xwS96jEj23f1CjIY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iiqrtERVcVTh+/DAxh0RyPwAqbee1riF/S44gmFauDsfJuULK1NQBMQRo+IgWDmM9
	 XWjkj2tlS4o/lO6pK6UkJgHJUXpFRC9yzidJfK7AmwNfL65tISXbHrdSv7MaonGidh
	 i6KBfVCMHlevz2w2GoNEbpST42QTnPngVSGqVLHQ=
Date: Fri, 27 Mar 2020 10:04:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: julia.lawall@inria.fr, forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: vt6655: Replace camel case variable names.
Message-ID: <20200327090401.GA1669531@kroah.com>
References: <alpine.DEB.2.21.2003260814590.3019@hadrien>
 <20200326205356.26883-1-briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200326205356.26883-1-briana.oursler@gmail.com>

On Thu, Mar 26, 2020 at 01:53:56PM -0700, Briana Oursler wrote:
> Replaces camel case variable names with snake case in baseband.h and
> dependencies.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
> 
> Changes in v2:
> 	- Align comments, align parentheses, remove Hungarian notation.
> Changes in v3:
> 	- Return rxtx.h dependencies to initial variable name state.
> 
>  drivers/staging/vt6655/baseband.c    | 334 +++++++++++++--------------
>  drivers/staging/vt6655/baseband.h    |  38 +--
>  drivers/staging/vt6655/card.c        |  68 +++---
>  drivers/staging/vt6655/channel.c     |   4 +-
>  drivers/staging/vt6655/device_main.c |  36 +--
>  drivers/staging/vt6655/rf.c          |   4 +-
>  drivers/staging/vt6655/rxtx.c        |  56 ++---
>  7 files changed, 271 insertions(+), 269 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index b4cdc0b7fee7..d87bca52b297 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -12,17 +12,17 @@
>   * Date: Aug.22, 2002
>   *
>   * Functions:
> - *      BBuGetFrameTime        - Calculate data frame transmitting time
> - *      BBvCalculateParameter   - Calculate PhyLength, PhyService and Phy Signal
> - *                               parameter for baseband Tx
> - *      BBbReadEmbedded         - Embedded read baseband register via MAC
> - *      BBbWriteEmbedded        - Embedded write baseband register via MAC
> - *      BBbVT3253Init          - VIA VT3253 baseband chip init code
> + *      bb_get_frame_time	 - Calculate data frame transmitting time
> + *      BBvCalculateParameter	 - Calculate PhyLength, PhyService and Phy Signal
> + *				   parameter for baseband Tx
> + *      bb_read_embedded	 - Embedded read baseband register via MAC
> + *      bb_write_embedded	 - Embedded write baseband register via MAC
> + *      bb_vt3253_init		 - VIA VT3253 baseband chip init code
>   *
>   * Revision History:
>   *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
>   *      08-07-2003 Bryan YC Fan:  Add MAXIM2827/2825 and RFMD2959 support.
> - *      08-26-2003 Kyle Hsu    :  Modify BBuGetFrameTime() and
> + *      08-26-2003 Kyle Hsu:	  Modify BBuGetFrameTime() and

Thy did you change this line?




>   *				  BBvCalculateParameter().
>   *                                cancel the setting of MAC_REG_SOFTPWRCTL on
>   *				  BBbVT3253Init().
> @@ -1695,53 +1695,53 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
>   *
>   * Parameters:
>   *  In:
> - *      byPreambleType  - Preamble Type
> - *      byPktType        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
> - *      cbFrameLength   - Baseband Type
> - *      wRate           - Tx Rate
> + *      by_preamble_type  - Preamble Type
> + *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
> + *      cb_frame_length   - Baseband Type
> + *      w_rate           - Tx Rate

You could have kept the alignment the same for the '-' characters,
right?

> -unsigned int BBuGetFrameTime(unsigned char byPreambleType,
> -			     unsigned char byPktType,
> -			     unsigned int cbFrameLength, unsigned short wRate)
> +unsigned int bb_get_frame_time(unsigned char by_preamble_type,
> +			       unsigned char by_pkt_type,
> +			       unsigned int cb_frame_length,
> +			       unsigned short w_rate)

"wRate" should not be renamed to w_rate, as you do not want to propagate
the crazy hungarian notation here.  Just call it "rate".

>  {
> -	unsigned int uFrameTime;
> -	unsigned int uPreamble;
> -	unsigned int uTmp;
> -	unsigned int uRateIdx = (unsigned int)wRate;
> -	unsigned int uRate = 0;
> +	unsigned int frame_time;
> +	unsigned int preamble;
> +	unsigned int tmp;
> +	unsigned int rate_idx = (unsigned int)w_rate;
> +	unsigned int rate = 0;

But then note that you have another "rate" variable here, which will
mess with that rename above, so things might be more tricky here...

good luck!

greg k-h

