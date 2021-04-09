X-GM-THRID: 6948889025177452544
X-Received: by 2002:ac2:5446:: with SMTP id d6mr11016618lfn.527.1618000842802;
        Fri, 09 Apr 2021 13:40:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b54d:: with SMTP id a13ls23711ljn.3.gmail; Fri, 09 Apr
 2021 13:40:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzKKb8lmmspu1SVg0ft+6xPvdxMM1PZirMmXF1waymqq72o7dDrIr48L01/txng1//JiLxc
X-Received: by 2002:a2e:b8d6:: with SMTP id s22mr10341807ljp.252.1618000840908;
        Fri, 09 Apr 2021 13:40:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618000840; cv=none;
        d=google.com; s=arc-20160816;
        b=FEg8X6/1u8noko9hgwWw11mb/xz52GIA8qJktaVx1MLA9rQVm8U40vga/EJbee0xZy
         URmhQ/kl5JYT3P6OiSNvUri44Z6Y+6kojg3aGb5+ceR/VfxgEaCR/PwgJ3mSqDg3VJ2h
         1EAtNisHoZw3VRte16wYXX4stAKXVldwXHzfvmycVXfG/BBetTAyncohz3z1ROFHrzgj
         WfEy3X5vCQ0ACFnb+YW2XKem9VM+dTS44txwweHQTYXt/NuxcmVx9SVdFPW5qAUJmB+l
         FBuUlbeUqfoHmXy9bKB8bPc1qX+84s9tmgQ3iiJpiyzSqwnx22V0pPmYJXiLVKYKsDoz
         ItpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=HxsKwwPYCYeWLFE+qA5jgRTm5aCFwzdEBAsCtTTYVss=;
        b=cu93GdE4nRZt0pY08gdwwQ8oP31Fb2nQYw487GHvIXOUGXbulvE1KLh4t9CxP3LamT
         pT/M/CpAy3lKq8Y3fI2KMp0KOw9lpjtm6JHN4mhBJHdJGgP8QEHHW3pIH1J5iURXBFJ+
         ZRQkoYNc6RhLcVKzGl9X7z6wJAnZ4C7gvy8gadt70s1RTk7xNeUrVzqhE5mf3+9RDSV3
         CkoweH6fvhN7u+FtPb97N83Qpu3QopErSY/xgg0cJvWBTwegvaSC7KxEoIG6pim1/wtw
         4K6cKldv/qgp6Xkf9ejKV7zVK+0OC7zvjSjjCMHxzHGa/QXyNKpQoTI/5RzScfiTl/Ay
         iH5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b12si247592lfb.3.2021.04.09.13.40.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 13:40:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ARjyMx62CzRTl5vtAkckU6wqjBFMkLtp033Aq?=
 =?us-ascii?q?2lEZdDV+dMuEm8ey2MkKzBOcskd0ZFgMkc2NUZPqfVry7phwiLN6AZ6DW03ctH?=
 =?us-ascii?q?KsPMVe6+LZogHIPw3b2qpj2bx7c654YeeAaGRSqcrh+gG3H5IB7bC8kJyAvuvV?=
 =?us-ascii?q?w3dzQQwCUcgJ0y5DBgmWCUFwTgVdbKBJd6a03NZNpDarZB0sAPiTO39tZYT+ju?=
 =?us-ascii?q?HQmImjSRALAANP0njtsRqYrI+/KRSe0xsEOgkj/Z4p+wH+/DDE2g=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378250268"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Apr 2021 22:40:25 +0200
Date: Fri, 9 Apr 2021 22:40:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org, 
    linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] media: zoran: add spaces around
 '<<'
In-Reply-To: <YHCgksbiLv0pFF2F@kali>
Message-ID: <alpine.DEB.2.22.394.2104092239170.23056@hadrien>
References: <YHCgksbiLv0pFF2F@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Mitali Borkar wrote:

> No changes required in this patch.
> In v1:- Added spaces around '<<' operator to improve readability and meet linux kernel coding
> style

The text above would go in the git history.  "No changes required in this
patch." doesn't make sense in that context.  If you want to say something
that relates to the history of the submitted patches, then that should be
under the ---.  The text there will disappear when the patch is applied.

julia


>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>
> Changes from v1:- No changes required in this patch. Below is the git
> diff of v1.
>
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
>
>  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
>
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHCgksbiLv0pFF2F%40kali.
>

