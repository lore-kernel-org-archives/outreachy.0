X-GM-THRID: 6948889025177452544
X-Received: by 2002:a05:6402:10c9:: with SMTP id p9mr14424194edu.268.1617916603642;
        Thu, 08 Apr 2021 14:16:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls1467382edw.2.gmail; Thu, 08
 Apr 2021 14:16:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw60jDHkncCBwI7GmCI/h2cRGTgHlwF+ZRV6pIJlfcP4aRzIGBOephZf/B/6SqVWwz14ysc
X-Received: by 2002:a05:6402:5203:: with SMTP id s3mr14404679edd.79.1617916602134;
        Thu, 08 Apr 2021 14:16:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617916602; cv=none;
        d=google.com; s=arc-20160816;
        b=xCa36iX6QJWtlj4WZqepcEfCsjc+bqxzqIiF7x9gHO64Bsfh1rxlpENiXFEOMq4zaJ
         j2xqKeqTjyGzfISvH1K1UtVn6ljRSmfhY0l16jkobBf9Ehz/tRekl/zYU2mtWGmTbF29
         iT/OvpkpIvT05Yn+v/E4ibC9V5N4tB9vPvkZUh+U0vRmBLxZCf1JB/Ir56BsXAfy7wjG
         K2OmKrMc642LD9hFLYVo80M6VHLbnKaSJ/TzAIyTzDfkbd9XM4JMzwv8t//kdwvRSqG3
         W80zhqoSe1WBUpXMUaLG16IMDDceEITTbi9nJSMlyU84rcrNgWn8NFGIBnzceRhbUtgD
         ZOJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=bL4OJ0rYO2y+9cox4OPTtCJp8+ffZWaan+KrdJpDnkc=;
        b=nE3/jf4A7qCC/F2jxYday5bOTg4giH64yZkQr8YO2HGcUJAJWHyYOq2vPT0jmGwAYt
         J+aDyADZwDCAJTD5Fw/2oskorDo7XfA6O/A2H4myy0lUe3OMUrip9QcnEUz81V65tRcA
         xfP1fELeSbOwvYqdSw1elb/ghVU/ZpY72sMB5pd4Y1VF73+nfzTmTvPMMCNsNmwGpPOo
         UNIVxMXgJYFnOpHSsa14RbDkpmBGHf95ir7QihH27zsq/dF2Mz0Hesg7o0r4d++yAZXk
         +a1ZYSTlw1Pin4sUDoShu6jm+xdAaX8nTp0VG/UrYR92ugO7lLC3mGz2ovRY1E6ltEdp
         tdCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id df6si63708edb.3.2021.04.08.14.16.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 14:16:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ASlvcwKu6vrHd31bb0UzpIfrj7skCn4Aji2hD?=
 =?us-ascii?q?6mlwRA09T+WxjMqunOsW2FvdlV8qKTQdsPqHP7SNRm6Z0JZz75UYM7vKZniUhE?=
 =?us-ascii?q?KDKoZ+4Yz+hwDxAiGWzJ8s6Y5Me7VzYeeAcWRSoMr+4Ba1CNoshOSAmZrJuc7z?=
 =?us-ascii?q?1GxqVhsvVqcI1XYxNi+1CUtzLTM2fKYRNJ3Z3cZfoirlRHJ/VLXLOlAhX/Lf4/?=
 =?us-ascii?q?XRnpPnfhJuPW9k1CCqjSm0rJ/3FgHw5GZQbxprwa0+tUjJ+jaJqpmLlvGg11v7?=
 =?us-ascii?q?yWje9P1t6Zjc4/5CHtHJs84ON1zX+0aVTaFgQaDHhiw/uuu16F0n+eO87SsIGs?=
 =?us-ascii?q?Ro9jfseXuoqgHmwAnq3F8Vmj7f4Hu5pVemnsDjXjI9DKN69PxkWz/U8VApst05?=
 =?us-ascii?q?8I8j5RPli7NvFh/LkCnw4NLFPisa3jv+nVMYneQej2NSXOIlAdc7x+Fyky0lc+?=
 =?us-ascii?q?ZjbUaKj/FALMBUAM7R//pQe1+BBkqpxFVH+9C0W2R2IxHueDl7huWu3z9akGsR?=
 =?us-ascii?q?9TpT+OUkgnwC+JghIqM0k9jsD6IArsA0cuYrd65nQM8OTcyrY1a9Pi7kASa4IU?=
 =?us-ascii?q?fuE68OUki98KLf0fER4ueyEaZ4u6caqdDmS1NXtWk7fgbVD9GU1pEO0imlehT4?=
 =?us-ascii?q?YR3djudE55Z4vbX4AIfsWBfjdHke1+26o/seBcXHW/G8fLJuasWTX1fGKMJz0w?=
 =?us-ascii?q?r3RpVIbUMTS9IYofEyX17mmLOSFqTa8tfWd/7PKKGoKy8tXkn2HmEONQKDfflo?=
 =?us-ascii?q?3wSRVnjxnRTLH0n1ckjE95RqHMHhjq4u4blIDYFKuhUYkhCC/8mOEyBLr6BeRj?=
 =?us-ascii?q?o4HJrX1pm2vXW7+mzFhl8ZTCZ1PwJr6LDhXntWpQkMd0jlGIxzzum3SCRs3GCa?=
 =?us-ascii?q?PFtERcvQFwJTzm4HnJ6fHtiWw2QrENinMn2X5kFj6U63cw=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,207,1613430000"; 
   d="scan'208";a="502294565"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Apr 2021 23:16:41 +0200
Date: Thu, 8 Apr 2021 23:16:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org, 
    linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH 1/2] media: zoran: add spaces around
 '<<'
In-Reply-To: <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1617912177.git.mitaliborkar810@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104082315560.21785@hadrien>
References: <cover.1617912177.git.mitaliborkar810@gmail.com> <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1617912177.git.mitaliborkar810@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 9 Apr 2021, Mitali Borkar wrote:

> Added spaces around '<<' operator to improve readability and meet linux
> kernel coding style.
> Reported by checkpatch
>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/media/zoran/zr36057.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> index 71b651add35a..a2a75fd9f535 100644
> --- a/drivers/staging/media/zoran/zr36057.h
> +++ b/drivers/staging/media/zoran/zr36057.h
> @@ -30,13 +30,13 @@
>  #define ZR36057_VFESPFR_HOR_DCM          14
>  #define ZR36057_VFESPFR_VER_DCM          8
>  #define ZR36057_VFESPFR_DISP_MODE        6
> -#define ZR36057_VFESPFR_YUV422          (0<<3)
> -#define ZR36057_VFESPFR_RGB888          (1<<3)
> -#define ZR36057_VFESPFR_RGB565          (2<<3)
> -#define ZR36057_VFESPFR_RGB555          (3<<3)
> -#define ZR36057_VFESPFR_ERR_DIF          (1<<2)
> -#define ZR36057_VFESPFR_PACK24          (1<<1)
> -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1<<0)
> +#define ZR36057_VFESPFR_YUV422          (0 << 3)
> +#define ZR36057_VFESPFR_RGB888          (1 << 3)
> +#define ZR36057_VFESPFR_RGB565          (2 << 3)
> +#define ZR36057_VFESPFR_RGB555          (3 << 3)
> +#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> +#define ZR36057_VFESPFR_PACK24          (1 << 1)
> +#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)

Are these all aligned in the actual file?

julia

>  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
>
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1617912177.git.mitaliborkar810%40gmail.com.
>

