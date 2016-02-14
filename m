X-GM-THRID: 6250910328324882432
X-Received: by 10.112.138.98 with SMTP id qp2mr1145758lbb.4.1455435423964;
        Sat, 13 Feb 2016 23:37:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.198 with SMTP id c189ls363911wmh.12.gmail; Sat, 13 Feb
 2016 23:37:03 -0800 (PST)
X-Received: by 10.28.63.19 with SMTP id m19mr513921wma.0.1455435423523;
        Sat, 13 Feb 2016 23:37:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si315571wmd.1.2016.02.13.23.37.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 23:37:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,444,1449529200"; 
   d="scan'208";a="203014778"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 08:37:02 +0100
Date: Sun, 14 Feb 2016 08:37:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Parenthesize complex
 values in macros
In-Reply-To: <20160214034355.GA24997@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602140833030.2039@localhost6.localdomain6>
References: <20160214034355.GA24997@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 13 Feb 2016, Janani Ravichandran wrote:

> Parenthesize complex macro values to suppress checkpatch errors.
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_cursor.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
> index 0a41585..a8d3e96 100644
> --- a/drivers/staging/sm750fb/sm750_cursor.c
> +++ b/drivers/staging/sm750fb/sm750_cursor.c
> @@ -28,33 +28,33 @@ writel((data), cursor->mmio + (addr))
>  
>  /* cursor control for voyager and 718/750*/
>  #define HWC_ADDRESS                         0x0
> -#define HWC_ADDRESS_ENABLE                  31:31
> +#define HWC_ADDRESS_ENABLE                  (31:31)
>  #define HWC_ADDRESS_ENABLE_DISABLE          0
>  #define HWC_ADDRESS_ENABLE_ENABLE           1
> -#define HWC_ADDRESS_EXT                     27:27
> +#define HWC_ADDRESS_EXT                     (27:27)
>  #define HWC_ADDRESS_EXT_LOCAL               0
>  #define HWC_ADDRESS_EXT_EXTERNAL            1
> -#define HWC_ADDRESS_CS                      26:26
> +#define HWC_ADDRESS_CS                      (26:26)
>  #define HWC_ADDRESS_CS_0                    0
>  #define HWC_ADDRESS_CS_1                    1
> -#define HWC_ADDRESS_ADDRESS                 25:0
> +#define HWC_ADDRESS_ADDRESS                 (25:0)
>  
>  #define HWC_LOCATION                        0x4
> -#define HWC_LOCATION_TOP                    27:27
> +#define HWC_LOCATION_TOP                    (27:27)
>  #define HWC_LOCATION_TOP_INSIDE             0
>  #define HWC_LOCATION_TOP_OUTSIDE            1
> -#define HWC_LOCATION_Y                      26:16
> -#define HWC_LOCATION_LEFT                   11:11
> +#define HWC_LOCATION_Y                      (26:16)
> +#define HWC_LOCATION_LEFT                   (11:11)
>  #define HWC_LOCATION_LEFT_INSIDE            0
>  #define HWC_LOCATION_LEFT_OUTSIDE           1
> -#define HWC_LOCATION_X                      10:0
> +#define HWC_LOCATION_X                      (10:0)
>  
>  #define HWC_COLOR_12                        0x8
> -#define HWC_COLOR_12_2_RGB565               31:16
> -#define HWC_COLOR_12_1_RGB565               15:0
> +#define HWC_COLOR_12_2_RGB565               (31:16)
> +#define HWC_COLOR_12_1_RGB565               (15:0)
>  
>  #define HWC_COLOR_3                         0xC
> -#define HWC_COLOR_3_RGB565                  15:0
> +#define HWC_COLOR_3_RGB565                  (15:0)

Are these used anywhere?  Grepping for a few of them didn't turn up 
anything.  But maybe they provide useful information about the device that 
should be preserved.  In summary, I'm missing to see what kind of C 
expression has the form e1:e2, and I wonder if this is intended to be part 
of something else that will break when you add the parentheses.

julia


>  
>  
>  /* hw_cursor_xxx works for voyager,718 and 750 */
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160214034355.GA24997%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

