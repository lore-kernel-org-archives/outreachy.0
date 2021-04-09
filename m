X-GM-THRID: 6948926928626647040
X-Received: by 2002:a5d:6c62:: with SMTP id r2mr16983533wrz.62.1617953810045;
        Fri, 09 Apr 2021 00:36:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:285:: with SMTP id 5ls3694329wmk.3.gmail; Fri, 09
 Apr 2021 00:36:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4hgWbc0FuVTp8yNk/AONXO1g+1DcMkwkHQhveWzoTDpeugpro2sS/ZWk9Tkdbz92iEVxc
X-Received: by 2002:a05:600c:3553:: with SMTP id i19mr12381231wmq.1.1617953808328;
        Fri, 09 Apr 2021 00:36:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617953808; cv=none;
        d=google.com; s=arc-20160816;
        b=dLgdiBcfAYfsNBFyc2P3K8L4loUOiRnTAD83DyPUVx2WuDiE0c0tn4noGNOERdS82/
         1uwXUW63TtZIDZYz+4yTC12o39BL7LjBTnwvJ1nhwJcI09Xb3gTbJghhe0QzQHtdIWbE
         u0LPHENGSzPufPYL0mhstPJxXQk3sSDa5f0ShDmxt2yS3m7tViIfJhlZ0kDzuV+F69d3
         266nnCWcjgsFgbWi2kh8WT5Iguo0s2WeAMcywk6OiIZ4u0mvSE90IcWgn8mgtAcynJo+
         C6CD21f2k65Uv0fwSfoJhexSA59WyNb2w5dW/mGEd5/zNJGdmhqxEMh1EwQAuRM2z25L
         /fFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=FZKnp+i6ej8wW7s6zhRNv75eOBlfohmpZyzny6z/wZs=;
        b=nWpfQr1R2Q0vI8gaXU4RNfjtIsgfcEIMzslzOsXg2fMAvTmZrU5qoJFsLEomyqFQeX
         Cs7pLb9IOwmYWuWpl5pdMMceYwqvvXVR9gtgNyCSMYbSvrdqTjNgcXp/CnkLdOlUSey4
         3XHoaUwPujYxCHp210Eu1ClMsoijJpwjIZzUiroKGNron4VxFvcTaznouPvPDlIh3r66
         JDFYT1hzC+E6EgDkFDZUcw+W8nHlpS/Ucl25lcd8HT7+iY5TsSlngtd6RaOUl3wdNy91
         wiArAgKc97ICIvdDHRPHZhWLqdiMWXBj8hLBgCN9PHn92COrY3kZT+yTPa7pd/eFDAqx
         5/MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=r1MdFud8;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net. [194.109.24.21])
        by gmr-mx.google.com with ESMTPS id h19si157114wmm.0.2021.04.09.00.36.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 00:36:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) client-ip=194.109.24.21;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=r1MdFud8;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud8.xs4all.net with ESMTPA
	id Ulh6lYoysgIC3Ulh9lBNug; Fri, 09 Apr 2021 09:36:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1617953808; bh=FZKnp+i6ej8wW7s6zhRNv75eOBlfohmpZyzny6z/wZs=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=r1MdFud83e9uP/mY+oNtSG8IU3pVYxydTc8ZwKmjnLVdC4zyjhvyQlkU8p5uQTNAC
	 f4XcjEyMt7gVi0rWkO+umyH8ITqO4Uz0rggKUABSEeP880tDY8/7Lu+KG8qwLcJM2U
	 8C3AfVoYQSjB9Ffm+v1rL/nUM+SBbCsHetmrwN6eE2cesaD83eIxDo6NdIFz6dXxXp
	 +JipX0X1XLOxsQnmaMhO+W73+g9H/0JCrSLcmlqy93TWK86FYt/QTWhMNxDyuiiRrf
	 jNYf/JTV2JQrKuRY5Q7Zmo751oFcH1/tAIS/bf9m04Za0h3jZFH2Lrv1djVRrRHoWO
	 w6Ka4jYbpVjfQ==
Subject: Re: [PATCH] staging: media: zoran: add '*' in subsequent line
To: Mitali Borkar <mitaliborkar810@gmail.com>, clabbe@baylibre.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mitali_s@me.iitr.ac.in
References: <YG+MKk9C/fTd7vj4@kali>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <2e57ea09-ce08-496a-09ec-4b8f72eface5@xs4all.nl>
Date: Fri, 9 Apr 2021 09:36:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <YG+MKk9C/fTd7vj4@kali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfCpCFGd6+94vAGTwesF9ortrOUnAW+aeGlfnIndyxlRwSGGBo3B1xTGI4V3r5nmXnPxxJ5qQpMpbqSvTryr54T4pU1gFRzAsXJ++CTN3ZvyY041Scmtr
 yybtl6ABkV0Q/dqVeh+Q15nHUETxRAxDnYHXguh0pFuBxtqtXT4KEqSqWudtXXrJxc5Syu31xiLIXaishfJxtB1OguCTy+1EImWTu7chvz7RcjJnB4X9jFOG
 OEieqA+MdbPR1lDSuCsWL8nYnRTmwP4g9Qs/QvQhXvLMTt/ptGJCuOvL0CXLIggrycnWLN2GiXBYakHdiM3fzpFAJLzpFDpAL9jrKHIlj79wfPElwY6ocvvi
 OALG3rk2WuAlL0UfqrBtcLTnPZazrbEmPoFEY4wVXPDeBgy1O4UaMslgN3gBSBuHQWLomqdNXJubcyt5oDS9XtUD18PIyw8E9YiVbEY5AmxSy/i7ydZm0IG9
 BFxfUuUul1lB/aYgiKgxE9EBpwBYlVD7c6zflQ==

Hi Mitali,

On 09/04/2021 01:05, Mitali Borkar wrote:
> Added '*' in susbsequent lines for block comments to meet linux kernel
> coding style.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/media/zoran/zr36050.c | 34 +++++++++++++--------------
>  1 file changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
> index 2826f4e5d37b..663ac2b3434e 100644
> --- a/drivers/staging/media/zoran/zr36050.c
> +++ b/drivers/staging/media/zoran/zr36050.c
> @@ -25,7 +25,7 @@
>  #include "videocodec.h"
>  
>  /* it doesn't make sense to have more than 20 or so,
> -  just to prevent some unwanted loops */
> + * just to prevent some unwanted loops */

Use proper coding style for long comments:

/*
 * text
 * text
 */

checkpatch.pl warns about that, so did you run checkpatch.pl after your modifications
were made? After fixing checkpatch issues, always run it again to make sure the issue
is really fixed and not just replaced by another issue.

Regards,

	Hans

>  #define MAX_CODECS 20
>  
>  /* amount of chips attached via this driver */
> @@ -43,7 +43,7 @@ MODULE_PARM_DESC(debug, "Debug level (0-4)");
>  	} while (0)
>  
>  /* =========================================================================
> -   Local hardware I/O functions:
> + *  Local hardware I/O functions:
>  
>     read/write via codec layer (registers are located in the master device)
>     ========================================================================= */
> @@ -80,7 +80,7 @@ static void zr36050_write(struct zr36050 *ptr, u16 reg, u8 value)
>  }
>  
>  /* =========================================================================
> -   Local helper function:
> + *  Local helper function:
>  
>     status read
>     ========================================================================= */
> @@ -95,7 +95,7 @@ static u8 zr36050_read_status1(struct zr36050 *ptr)
>  }
>  
>  /* =========================================================================
> -   Local helper function:
> + *  Local helper function:
>  
>     scale factor read
>     ========================================================================= */
> @@ -112,7 +112,7 @@ static u16 zr36050_read_scalefactor(struct zr36050 *ptr)
>  }
>  
>  /* =========================================================================
> -   Local helper function:
> + *  Local helper function:
>  
>     wait if codec is ready to proceed (end of processing) or time is over
>     ========================================================================= */
> @@ -133,7 +133,7 @@ static void zr36050_wait_end(struct zr36050 *ptr)
>  }
>  
>  /* =========================================================================
> -   Local helper function:
> + *  Local helper function:
>  
>     basic test of "connectivity", writes/reads to/from memory the SOF marker
>     ========================================================================= */
> @@ -174,7 +174,7 @@ static int zr36050_basic_test(struct zr36050 *ptr)
>  }
>  
>  /* =========================================================================
> -   Local helper function:
> + *  Local helper function:
>  
>     simple loop for pushing the init datasets
>     ========================================================================= */
> @@ -192,7 +192,7 @@ static int zr36050_pushit(struct zr36050 *ptr, u16 startreg, u16 len, const char
>  }
>  
>  /* =========================================================================
> -   Basic datasets:
> + *  Basic datasets:
>  
>     jpeg baseline setup data (you find it on lots places in internet, or just
>     extract it from any regular .jpg image...)
> @@ -294,7 +294,7 @@ static const char zr36050_decimation_h[8] = { 2, 1, 1, 0, 0, 0, 0, 0 };
>  static const char zr36050_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
>  
>  /* =========================================================================
> -   Local helper functions:
> + *  Local helper functions:
>  
>     calculation and setup of parameter-dependent JPEG baseline segments
>     (needed for compression only)
> @@ -303,7 +303,7 @@ static const char zr36050_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
>  /* ------------------------------------------------------------------------- */
>  
>  /* SOF (start of frame) segment depends on width, height and sampling ratio
> -			 of each color component */
> + *			 of each color component */
>  
>  static int zr36050_set_sof(struct zr36050 *ptr)
>  {
> @@ -334,7 +334,7 @@ static int zr36050_set_sof(struct zr36050 *ptr)
>  /* ------------------------------------------------------------------------- */
>  
>  /* SOS (start of scan) segment depends on the used scan components
> -			of each color component */
> + *			of each color component */
>  
>  static int zr36050_set_sos(struct zr36050 *ptr)
>  {
> @@ -378,7 +378,7 @@ static int zr36050_set_dri(struct zr36050 *ptr)
>  }
>  
>  /* =========================================================================
> -   Setup function:
> + *  Setup function:
>  
>     Setup compression/decompression of Zoran's JPEG processor
>     ( see also zoran 36050 manual )
> @@ -531,13 +531,13 @@ static void zr36050_init(struct zr36050 *ptr)
>  }
>  
>  /* =========================================================================
> -   CODEC API FUNCTIONS
> + *  CODEC API FUNCTIONS
>  
>     this functions are accessed by the master via the API structure
>     ========================================================================= */
>  
>  /* set compression/expansion mode and launches codec -
> -   this should be the last call from the master before starting processing */
> + *  this should be the last call from the master before starting processing */
>  static int zr36050_set_mode(struct videocodec *codec, int mode)
>  {
>  	struct zr36050 *ptr = (struct zr36050 *)codec->data;
> @@ -707,7 +707,7 @@ static int zr36050_control(struct videocodec *codec, int type, int size, void *d
>  }
>  
>  /* =========================================================================
> -   Exit and unregister function:
> + *  Exit and unregister function:
>  
>     Deinitializes Zoran's JPEG processor
>     ========================================================================= */
> @@ -732,7 +732,7 @@ static int zr36050_unset(struct videocodec *codec)
>  }
>  
>  /* =========================================================================
> -   Setup and registry function:
> + *  Setup and registry function:
>  
>     Initializes Zoran's JPEG processor
>  
> @@ -813,7 +813,7 @@ static const struct videocodec zr36050_codec = {
>  };
>  
>  /* =========================================================================
> -   HOOK IN DRIVER AS KERNEL MODULE
> + *  HOOK IN DRIVER AS KERNEL MODULE
>     ========================================================================= */
>  
>  static int __init zr36050_init_module(void)
> 


