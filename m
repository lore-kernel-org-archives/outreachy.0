X-GM-THRID: 6336810115106078720
X-Received: by 10.25.23.193 with SMTP id 62mr936245lfx.15.1475405410194;
        Sun, 02 Oct 2016 03:50:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls653129lja.43.gmail; Sun, 02 Oct 2016
 03:50:09 -0700 (PDT)
X-Received: by 10.46.5.214 with SMTP id 205mr843085ljf.6.1475405409470;
        Sun, 02 Oct 2016 03:50:09 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u64si356289wmf.0.2016.10.02.03.50.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 03:50:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,284,1473112800"; 
   d="scan'208";a="239065391"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2016 12:50:08 +0200
Date: Sun, 2 Oct 2016 12:50:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru MIhaela <mihaela.muraru21@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging : sm750fb : fix comment block
 coding style issue in ddk750_display.h
In-Reply-To: <20161002101934.GA6899@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610021248510.3327@hadrien>
References: <20161002101934.GA6899@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Normally there is no space before the :s in the subject line.

On Sun, 2 Oct 2016, Muraru MIhaela wrote:

> This is a patch to the ddk750_display.h file that fixes up a comment
> block warning, found by checkpatch.pl tool, by adding a * for each line
> of the comment block.

You need a signed off by line here.

The name should match the From line in your email.  Is it correct that the
second letter of your last name is capitalized?

julia

> ---
>  drivers/staging/sm750fb/ddk750_display.h | 73 +++++++++++++++++---------------
>  1 file changed, 40 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
> index 5fc9f6f..e998f21 100644
> --- a/drivers/staging/sm750fb/ddk750_display.h
> +++ b/drivers/staging/sm750fb/ddk750_display.h
> @@ -1,10 +1,10 @@
>  #ifndef DDK750_DISPLAY_H__
>  #define DDK750_DISPLAY_H__
>
> -/* panel path select
> -	80000[29:28]
> -*/
> -
> +/*
> + * panel path select
> + * 80000[29:28]
> + */
>  #define PNL_2_OFFSET 0
>  #define PNL_2_MASK (3 << PNL_2_OFFSET)
>  #define PNL_2_USAGE	(PNL_2_MASK << 16)
> @@ -12,10 +12,11 @@
>  #define PNL_2_SEC	((2 << PNL_2_OFFSET) | PNL_2_USAGE)
>
>
> -/* primary timing & plane enable bit
> -	1: 80000[8] & 80000[2] on
> -	0: both off
> -*/
> +/*
> + * primary timing & plane enable bit
> + * 1: 80000[8] & 80000[2] on
> + * 0: both off
> + */
>  #define PRI_TP_OFFSET 4
>  #define PRI_TP_MASK BIT(PRI_TP_OFFSET)
>  #define PRI_TP_USAGE (PRI_TP_MASK << 16)
> @@ -23,37 +24,41 @@
>  #define PRI_TP_OFF ((0x0 << PRI_TP_OFFSET) | PRI_TP_USAGE)
>
>
> -/* panel sequency status
> -	80000[27:24]
> -*/
> +/*
> + * panel sequency status
> + * 80000[27:24]
> + */
>  #define PNL_SEQ_OFFSET 6
>  #define PNL_SEQ_MASK BIT(PNL_SEQ_OFFSET)
>  #define PNL_SEQ_USAGE (PNL_SEQ_MASK << 16)
>  #define PNL_SEQ_ON (BIT(PNL_SEQ_OFFSET) | PNL_SEQ_USAGE)
>  #define PNL_SEQ_OFF ((0 << PNL_SEQ_OFFSET) | PNL_SEQ_USAGE)
>
> -/* dual digital output
> -	80000[19]
> -*/
> +/*
> + * dual digital output
> + * 80000[19]
> + */
>  #define DUAL_TFT_OFFSET 8
>  #define DUAL_TFT_MASK BIT(DUAL_TFT_OFFSET)
>  #define DUAL_TFT_USAGE (DUAL_TFT_MASK << 16)
>  #define DUAL_TFT_ON (BIT(DUAL_TFT_OFFSET) | DUAL_TFT_USAGE)
>  #define DUAL_TFT_OFF ((0 << DUAL_TFT_OFFSET) | DUAL_TFT_USAGE)
>
> -/* secondary timing & plane enable bit
> -	1:80200[8] & 80200[2] on
> -	0: both off
> -*/
> +/*
> + * secondary timing & plane enable bit
> + * 1:80200[8] & 80200[2] on
> + * 0: both off
> + */
>  #define SEC_TP_OFFSET 5
>  #define SEC_TP_MASK BIT(SEC_TP_OFFSET)
>  #define SEC_TP_USAGE (SEC_TP_MASK << 16)
>  #define SEC_TP_ON  ((0x1 << SEC_TP_OFFSET) | SEC_TP_USAGE)
>  #define SEC_TP_OFF ((0x0 << SEC_TP_OFFSET) | SEC_TP_USAGE)
>
> -/* crt path select
> -	80200[19:18]
> -*/
> +/*
> + * crt path select
> + * 80200[19:18]
> + */
>  #define CRT_2_OFFSET 2
>  #define CRT_2_MASK (3 << CRT_2_OFFSET)
>  #define CRT_2_USAGE (CRT_2_MASK << 16)
> @@ -61,18 +66,20 @@
>  #define CRT_2_SEC ((0x2 << CRT_2_OFFSET) | CRT_2_USAGE)
>
>
> -/* DAC affect both DVI and DSUB
> -	4[20]
> -*/
> +/*
> + * DAC affect both DVI and DSUB
> + * 4[20]
> + */
>  #define DAC_OFFSET 7
>  #define DAC_MASK BIT(DAC_OFFSET)
>  #define DAC_USAGE (DAC_MASK << 16)
>  #define DAC_ON ((0x0 << DAC_OFFSET) | DAC_USAGE)
>  #define DAC_OFF ((0x1 << DAC_OFFSET) | DAC_USAGE)
>
> -/* DPMS only affect D-SUB head
> -	0[31:30]
> -*/
> +/*
> + * DPMS only affect D-SUB head
> + * 0[31:30]
> + */
>  #define DPMS_OFFSET 9
>  #define DPMS_MASK (3 << DPMS_OFFSET)
>  #define DPMS_USAGE (DPMS_MASK << 16)
> @@ -82,18 +89,18 @@
>
>
>  /*
> -	LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
> -	CRT means crt path DSUB
> -*/
> + * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
> + * CRT means crt path DSUB
> + */
>  typedef enum _disp_output_t {
>  	do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
>  	do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
>  	do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
>  	do_LCD2_SEC = CRT_2_SEC | SEC_TP_ON | DUAL_TFT_ON,
>  	/*
> -	do_DSUB_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
> -	do_DSUB_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
> -	*/
> +	 * do_DSUB_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
> +	 * do_DSUB_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
> +	 */
>  	do_CRT_PRI = CRT_2_PRI | PRI_TP_ON | DPMS_ON | DAC_ON,
>  	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161002101934.GA6899%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

