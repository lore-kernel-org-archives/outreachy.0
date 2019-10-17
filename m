X-GM-THRID: 6748575425662812160
X-Received: by 2002:a92:490f:: with SMTP id w15mr909966ila.187.1571275518906;
        Wed, 16 Oct 2019 18:25:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:db48:: with SMTP id w8ls313000ilq.3.gmail; Wed, 16 Oct
 2019 18:25:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwFgECiXnNKiIpkolltxjdDWmOxB9sZ71XnKTfJ4E0/NlpOBCmG8Du+7o94009Y7U3zpAJX
X-Received: by 2002:a92:5e4d:: with SMTP id s74mr980824ilb.8.1571275517834;
        Wed, 16 Oct 2019 18:25:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571275517; cv=none;
        d=google.com; s=arc-20160816;
        b=E9UF449chzFiMdxa3T2yKfWgCJMeoxJOY4oRVGMbey/BMXRct87JVIo9Fv4gnQH2cu
         EUUZdqZU1PM8RLLcKEIhhlFv1YLimyDwFFyRCHJEz8qYiDPCis3iPLIgxubXStDVoIKk
         2EiJWby96LdIaecOP+mzYux4LkforzKTO5gm6yN32+PBt38KxkU7luDmZNA3G05rR/Pt
         b56djIypx5smqLJum94MzQXIpD231DJlbHCbevXy8Xe7O3ipApeYYb572JtfF+R8FA/O
         rCT9uc0ZdiRVmmwzlqwgna0m7eW1Q4IIZHWJ7yXYywreUbnQiXDTHapLYkbJhV2QUsZ4
         3GMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=gv/VRh25JbZQV0A+0eeM+TeAGlcaRb1tnq4YaJG9kPE=;
        b=YHUZaLugsEvTwKy3U3g9+tbgp1T2VSoUTiUphl4KW9KYf3v8no42Ta8pg7kSuToTrA
         tHWhd4ljP7VrMbxw5djAoxVRQe9vvu+6pPWJPzmm6iNHeie+mIX6mxV92LVSq3VsNrhy
         tmp5fokeiiYdXLJSqOiXLDozf5eWm1Pk3VMCqWprlQbvPG6GkyEFa/8I8JAxBHI0ShxX
         nmnwzibYHjXzUuHmBN7/4/xUUcahpWEuepvp2zG83zITns+sCRSo+CLPyf0BnW/1AAbB
         Yu0he8jv7kLlzolRNAmfowdqL+aZNzPcU3+R65iUg69vzfEnioKOj9d90bwEhjxtYWL6
         E5FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=W67N6dd7;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Return-Path: <rdunlap@infradead.org>
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id h14si31521ilc.0.2019.10.16.18.25.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 18:25:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=W67N6dd7;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Subject:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=gv/VRh25JbZQV0A+0eeM+TeAGlcaRb1tnq4YaJG9kPE=; b=W67N6dd7dSkMcvncpQwxMkwPL
	TOyrZS2j0dKWlaB+WNuXwdFwC5v7jWlIf/ne3H/f5JI4ADBgLbXpAV6g2AqWnZXJnpJdqR6j1Lgmo
	L6SsDXvS789U5sBQ705V3Sh1+JuGe5r0lZ+HFdf2VRF/yunIcpwQJxSvxiQp2f62IEJ0Z+tr04hUC
	OfRx7oIvNPJaP/5ndCFXThR580JdmaBhmeZdWVqnCz16Hlg7WZ4IXyzO6WUPxWuAm+zLyihkpxwBL
	zFu31K8B9JscExhcq4b060R/oWzKi1i90pXHXowzSCGl62Hbd11+rDYRGK76sCH94sFpnqcgChZEB
	N2gSnNemA==;
Received: from [2601:1c0:6280:3f0::9ef4]
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKuXQ-00051e-AJ; Thu, 17 Oct 2019 01:25:12 +0000
Subject: Re: [PATCH] staging: sm750fb: format description of parameters the to
 kernel doc format
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
References: <20191017011849.6081-1-gabrielabittencourt00@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <799632e2-a328-d72b-397d-3ee6b5e87e06@infradead.org>
Date: Wed, 16 Oct 2019 18:25:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191017011849.6081-1-gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 10/16/19 6:18 PM, Gabriela Bittencourt wrote:
> Cluster comments that describes parameters of functions and create one
> single comment before the function in kernel doc format.

Good plan.

How did you test this patch?

> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_accel.c | 65 +++++++++++++++------------
>  1 file changed, 37 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
> index dbcbbd1055da..d5564cd60f3b 100644
> --- a/drivers/staging/sm750fb/sm750_accel.c
> +++ b/drivers/staging/sm750fb/sm750_accel.c
> @@ -130,20 +130,24 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
>  	return 0;
>  }
>  
> -int sm750_hw_copyarea(
> -struct lynx_accel *accel,
> -unsigned int sBase,  /* Address of source: offset in frame buffer */
> -unsigned int sPitch, /* Pitch value of source surface in BYTE */
> -unsigned int sx,
> -unsigned int sy,     /* Starting coordinate of source surface */
> -unsigned int dBase,  /* Address of destination: offset in frame buffer */
> -unsigned int dPitch, /* Pitch value of destination surface in BYTE */
> -unsigned int Bpp,    /* Color depth of destination surface */
> -unsigned int dx,
> -unsigned int dy,     /* Starting coordinate of destination surface */
> -unsigned int width,
> -unsigned int height, /* width and height of rectangle in pixel value */
> -unsigned int rop2)   /* ROP value */
> +/**

Missing function name and short description.  Documentation/doc-guide/kernel-doc.rst says:

The general format of a function and function-like macro kernel-doc comment is::

  /**
   * function_name() - Brief description of function.
   * @arg1: Describe the first argument.
   * @arg2: Describe the second argument.
   *        One can provide multiple line descriptions
   *        for arguments.
   *
   * A longer description, with more discussion of the function function_name()
   * that might be useful to those using or modifying it. Begins with an
   * empty comment line, and may include additional embedded empty
   * comment lines.
   *
   * The longer description may have multiple paragraphs.
   *
   * Context: Describes whether the function can sleep, what locks it takes,
   *          releases, or expects to be held. It can extend over multiple
   *          lines.
   * Return: Describe the return value of function_name.
   *
   * The return value description can also have multiple paragraphs, and should
   * be placed at the end of the comment block.
   */

> + * @sBase: Address of source: offset in frame buffer
> + * @sPitch: Pitch value of source surface in BYTE
> + * @sx, @sy: Starting coordinate of source surface

Those should be on separate lines.

> + * @dBase: Address of destination: offset in frame buffer
> + * @dPitch: Pitch value of destination surface in BYTE
> + * @Bpp: Color depth of destination surface
> + * @dx, @dy: Starting coordinate of destination surface

Ditto.

> + * @width, @height: width and height of rectangle in pixel value
> + * @rop2: ROP value
> + */
> +int sm750_hw_copyarea(struct lynx_accel *accel,
> +		      unsigned int sBase, unsigned int sPitch,
> +		      unsigned int sx, unsigned int sy,
> +		      unsigned int dBase, unsigned int dPitch,
> +		      unsigned int Bpp, unsigned int dx, unsigned int dy,
> +		      unsigned int width, unsigned int height,
> +		      unsigned int rop2)
>  {
>  	unsigned int nDirection, de_ctrl;
>  
> @@ -288,20 +292,25 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
>  	return de_ctrl;
>  }
>  
> -int sm750_hw_imageblit(struct lynx_accel *accel,
> -		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
> -		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
> -		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
> -		 u32 dBase,    /* Address of destination: offset in frame buffer */
> -		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
> -		 u32 bytePerPixel,      /* Color depth of destination surface */
> -		 u32 dx,
> -		 u32 dy,       /* Starting coordinate of destination surface */
> -		 u32 width,
> -		 u32 height,   /* width and height of rectangle in pixel value */
> -		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
> -		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
> -		 u32 rop2)     /* ROP value */
> +/**

Similar comments here...

> + * @pSrcbuf: pointer to start of source buffer in system memory
> + * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
> + * and -ive mean button up
> + * @startBit: Mono data can start at any bit in a byte, this value should be
> + * 0 to 7
> + * @dBase: Address of destination: offset in frame buffer
> + * @dPitch: Pitch value of destination surface in BYTE
> + * @bytePerPixel: Color depth of destination surface
> + * @dx, @dy: Starting coordinate of destination surface
> + * @width, @height: width and height of rectangle in pixel value
> + * @fColor: Foreground color (corresponding to a 1 in the monochrome data
> + * @bColor: Background color (corresponding to a 0 in the monochrome data
> + * @rop2: ROP value
> + */
> +int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
> +		       u32 srcDelta, u32 startBit, u32 dBase, u32 dPitch,
> +		       u32 bytePerPixel, u32 dx, u32 dy, u32 width,
> +		       u32 height, u32 fColor, u32 bColor, u32 rop2)
>  {
>  	unsigned int ulBytesPerScan;
>  	unsigned int ul4BytesPerScan;
> 

Thanks.
-- 
~Randy

