X-GM-THRID: 6397088114020450304
X-Received: by 10.46.83.76 with SMTP id t12mr6101351ljd.26.1489441512123;
        Mon, 13 Mar 2017 14:45:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.1 with SMTP id 1ls1699532ljh.31.gmail; Mon, 13 Mar 2017
 14:45:11 -0700 (PDT)
X-Received: by 10.25.204.21 with SMTP id c21mr4844452lfg.19.1489441511449;
        Mon, 13 Mar 2017 14:45:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e72si794735wma.0.2017.03.13.14.45.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 14:45:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,161,1486422000"; 
   d="scan'208";a="264401323"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2017 22:45:05 +0100
Date: Mon, 13 Mar 2017 22:44:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] staging: sm750fb: Remove
 typedefs
In-Reply-To: <20170313204853.24675-5-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703132241280.4053@hadrien>
References: <20170313204853.24675-1-arushisinghal19971997@gmail.com> <20170313204853.24675-5-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 14 Mar 2017, Arushi Singhal wrote:

> This patch removes typedefs from structures and renames them as per
> kernel coding standards.

Greg requested that typedef removing patches adjust only one patch at a
time.

The names of the types typically need to be adjusted as compared to what
is in the typedef.  In your cases, the type names begin with _ and end
with _t.  Beginning with _ means that something is sort of internal,
rarely used etc.  That made sense when there was a typedef, but since you
are removing that, the _ at the front should go too.  Likewise, _t is an
extension that indicates a typedef, but you don't have that any more, so
the _t should be dropped too.

Finally, the log message talks about structures, but the changes involve
one structure and one enum.  The log message should describe everything
that has changed.

julia

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_mode.c |  6 +++---
>  drivers/staging/sm750fb/ddk750_mode.h | 20 +++++++++-----------
>  drivers/staging/sm750fb/sm750_hw.c    |  2 +-
>  3 files changed, 13 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index eea5aef2956f..25da678179f7 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -12,7 +12,7 @@
>   * HW only supports 7 predefined pixel clocks, and clock select is
>   * in bit 29:27 of Display Control register.
>   */
> -static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam, unsigned long dispControl)
> +static unsigned long displayControlAdjust_SM750LE(struct _mode_parameter_t *pModeParam, unsigned long dispControl)
>  {
>  	unsigned long x, y;
>
> @@ -72,7 +72,7 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
>  }
>
>  /* only timing related registers will be  programed */
> -static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *pll)
> +static int programModeRegisters(struct _mode_parameter_t *pModeParam, struct pll_value *pll)
>  {
>  	int ret = 0;
>  	int cnt = 0;
> @@ -198,7 +198,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
>  	return ret;
>  }
>
> -int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
> +int ddk750_setModeTiming(struct _mode_parameter_t *parm, clock_type_t clock)
>  {
>  	struct pll_value pll;
>  	unsigned int uiActualPixelClk;
> diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
> index 6d204b8b4a01..5f8347d87800 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.h
> +++ b/drivers/staging/sm750fb/ddk750_mode.h
> @@ -3,37 +3,35 @@
>
>  #include "ddk750_chip.h"
>
> -typedef enum _spolarity_t {
> +enum _spolarity_t {
>  	POS = 0, /* positive */
>  	NEG, /* negative */
> -}
> -spolarity_t;
> +};
>
> -typedef struct _mode_parameter_t {
> +struct _mode_parameter_t {
>  	/* Horizontal timing. */
>  	unsigned long horizontal_total;
>  	unsigned long horizontal_display_end;
>  	unsigned long horizontal_sync_start;
>  	unsigned long horizontal_sync_width;
> -	spolarity_t horizontal_sync_polarity;
> +	enum _spolarity_t horizontal_sync_polarity;
>
>  	/* Vertical timing. */
>  	unsigned long vertical_total;
>  	unsigned long vertical_display_end;
>  	unsigned long vertical_sync_start;
>  	unsigned long vertical_sync_height;
> -	spolarity_t vertical_sync_polarity;
> +	enum _spolarity_t vertical_sync_polarity;
>
>  	/* Refresh timing. */
>  	unsigned long pixel_clock;
>  	unsigned long horizontal_frequency;
> -	unsigned long vertical_frequency;
> +	enum _spolarity_t vertical_frequency;
>
>  	/* Clock Phase. This clock phase only applies to Panel. */
> -	spolarity_t clock_phase_polarity;
> -}
> -mode_parameter_t;
> +	enum _spolarity_t clock_phase_polarity;
> +};
>
> -int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock);
> +int ddk750_setModeTiming(struct _mode_parameter_t *parm, clock_type_t clock);
>
>  #endif
> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> index fab3fc9c8330..4233e0bf12a7 100644
> --- a/drivers/staging/sm750fb/sm750_hw.c
> +++ b/drivers/staging/sm750fb/sm750_hw.c
> @@ -252,7 +252,7 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
>  {
>  	int ret, fmt;
>  	u32 reg;
> -	mode_parameter_t modparm;
> +	struct _mode_parameter_t modparm;
>  	clock_type_t clock;
>  	struct sm750_dev *sm750_dev;
>  	struct lynxfb_par *par;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313204853.24675-5-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

