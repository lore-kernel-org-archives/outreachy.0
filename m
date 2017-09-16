X-GM-THRID: 6466273176803344384
X-Received: by 10.25.39.202 with SMTP id n193mr362834lfn.13.1505546896874;
        Sat, 16 Sep 2017 00:28:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.144.147 with SMTP id s141ls689318wmd.20.gmail; Sat, 16 Sep
 2017 00:28:15 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB6dLlZNeVnK5O09nD2STGNkwfRnNC0VhMdoUXzemnvn17G1zchQMV/Q+RCIP1Ob3OG85OW
X-Received: by 10.28.212.14 with SMTP id l14mr534851wmg.11.1505546895806;
        Sat, 16 Sep 2017 00:28:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505546895; cv=none;
        d=google.com; s=arc-20160816;
        b=fFbmyLBWUIH2PD79qUbTOGbo/KdsHjsuFKRHAxtEpRS19MfUYvaL6CHrEXthv9DFYp
         sD60+xmGMRLSiuoGP2ic9hXRTgSXbQuJPAoBaBTHubX7tlDIeZUmjOeacW5KOEAW4F/n
         +mrgDxQaRSLo4IiOFGgvvI5GJ0GAJWS52rLFxd4GwLjW4/VRnrF1JGF9B+Q6yYizmbJD
         s/pf6oaegqWCeG7THvI77reZpgstnf7ExIuSpeI9wofSKcOMSSfyHfakwZdeHdmZOpxu
         9hvUHPur6sHwrp1TLyX/F/sJmtlAkEyJwuUgVd5atyzMVsqTZTp8b8nWcn20fC8NS/tN
         ej9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=9z5qyAqfma47ePiD33VE3P8oM3PtTFtzc5ioK+4pcwU=;
        b=uACVrkKJWRbHMcV2QOHh1n3AnUpgu7MhG57KIuZD1f/T7p82DK1qEHHrvlyOxCB3/g
         bM3YG4lNyi0aSTI0IkBb3XvkZQzIYxXlISyqnnanHZKZKbdRXdduEcHw/3jaXGuZwttO
         M69F9fU7/OcS7PeKxCOD6UTNwS2Rkmq7j8zoYjqVKdxyhcGR8HaLO5V3gwTYrwHa10/3
         WK9er8/BItg7vpBLZsemGjEYkuZW5Viq/rfxaDc0s2Ik5lJ6nRpU3ua0Yr3fF/cZq33I
         SRJT5xQzYodc5W/t3VLM8RLhAtEqo72VOrfD2rnCG6gdKf0cmQ/064xj9nf9WoFO246r
         UkKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 191si138118wmn.2.2017.09.16.00.28.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 00:28:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,400,1500933600"; 
   d="scan'208";a="291360731"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 09:28:15 +0200
Date: Sat, 16 Sep 2017 09:28:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging:r8188eu: fix unnecessary line
 continuations
In-Reply-To: <1505546539-16383-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709160925230.2943@hadrien>
References: <1505546539-16383-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

There should be a space after each : in the subject line.

On Sat, 16 Sep 2017, Aastha Gupta wrote:

> This patch fixes checkpatch.pl warning:
> WARNING: Avoid unnecessary line continuations

I don't think you have compiled the code, because the line continuations
look quite necessary.

Note that it is not easy to compile a .h file.  You have to find a .c file
that includes it and compile that.  There could also be #ifdefs around
your changed code that causes it not to be compiled even when you do find
a relevant .c file to check, but that doesn't seem to be the case here.

julia

>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/pwrseq.h | 180 ++++++++++++++---------------
>  1 file changed, 90 insertions(+), 90 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/include/pwrseq.h b/drivers/staging/rtl8188eu/include/pwrseq.h
> index bd77a50..dbf164c 100644
> --- a/drivers/staging/rtl8188eu/include/pwrseq.h
> +++ b/drivers/staging/rtl8188eu/include/pwrseq.h
> @@ -58,22 +58,22 @@
>  	 * { offset, cut_msk, cmd, msk, value
>  	 * },
>  	 * comment here
> -	 */								\
> -	{0x0006, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), BIT(1)}, \
> -	/* wait till 0x04[17] = 1    power ready*/	\
> -	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0) | BIT(1), 0}, \
> -	/* 0x02[1:0] = 0	reset BB*/				\
> -	{0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)}, \
> -	/*0x24[23] = 2b'01 schmit trigger */				\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0}, \
> -	/* 0x04[15] = 0 disable HWPDN (control by DRV)*/		\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4) | BIT(3), 0}, \
> -	/*0x04[12:11] = 2b'00 disable WL suspend*/			\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), BIT(0)}, \
> -	/*0x04[8] = 1 polling until return 0*/				\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(0), 0}, \
> -	/*wait till 0x04[8] = 0*/					\
> -	{0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
> +	 */
> +	{0x0006, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), BIT(1)},
> +	/* wait till 0x04[17] = 1    power ready*/
> +	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0) | BIT(1), 0},
> +	/* 0x02[1:0] = 0	reset BB*/
> +	{0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)},
> +	/*0x24[23] = 2b'01 schmit trigger */
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0},
> +	/* 0x04[15] = 0 disable HWPDN (control by DRV)*/
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4) | BIT(3), 0},
> +	/*0x04[12:11] = 2b'00 disable WL suspend*/
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), BIT(0)},
> +	/*0x04[8] = 1 polling until return 0*/
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(0), 0},
> +	/*wait till 0x04[8] = 0*/
> +	{0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
>  	/*LDO normal mode*/
>
>  #define RTL8188E_TRANS_ACT_TO_CARDEMU					\
> @@ -81,14 +81,14 @@
>  	 * { offset, cut_msk, cmd, msk, value
>  	 * },
>  	 * comments here
> -	 */								\
> -	{0x001F, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0}, \
> -	/*0x1F[7:0] = 0 turn off RF*/					\
> -	{0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)}, \
> -	/*LDO Sleep mode*/						\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)}, \
> -	/*0x04[9] = 1 turn off MAC by HW state machine*/		\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), 0}, \
> +	 */
> +	{0x001F, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0},
> +	/*0x1F[7:0] = 0 turn off RF*/
> +	{0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)},
> +	/*LDO Sleep mode*/
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)},
> +	/*0x04[9] = 1 turn off MAC by HW state machine*/
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), 0},
>  	/*wait till 0x04[9] = 0 polling until return 0 to disable*/
>
>  #define RTL8188E_TRANS_CARDEMU_TO_SUS					\
> @@ -96,14 +96,14 @@
>  	 * { offset, cut_msk, cmd, msk,
>  	 * value },
>  	 * comments here
> -	 */								\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)}, \
> -	/* 0x04[12:11] = 2b'01enable WL suspend */			\
> -	{0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, BIT(7)}, \
> -	/* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */\
> -	{0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
> -	/*Clear SIC_EN register 0x40[12] = 1'b0 */			\
> -	{0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)}, \
> +	 */
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)},
> +	/* 0x04[12:11] = 2b'01enable WL suspend */
> +	{0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, BIT(7)},
> +	/* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */
> +	{0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
> +	/*Clear SIC_EN register 0x40[12] = 1'b0 */
> +	{0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)},
>  	/*Set USB suspend enable local register  0xfe10[4]=1 */
>
>  #define RTL8188E_TRANS_SUS_TO_CARDEMU					\
> @@ -111,8 +111,8 @@
>  	 * { offset, cut_msk, cmd, msk,
>  	 * value },
>  	 * comments here
> -	 */								\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0}, \
> +	 */
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0},
>  	/*0x04[12:11] = 2b'01enable WL suspend*/
>
>  #define RTL8188E_TRANS_CARDEMU_TO_CARDDIS				\
> @@ -120,16 +120,16 @@
>  	 * { offset, cut_msk, cmd, msk,
>  	 * value },
>  	 * comments here
> -	 */								\
> -	{0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)}, \
> -	/*0x24[23] = 2b'01 schmit trigger */				\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)}, \
> -	/*0x04[12:11] = 2b'01 enable WL suspend*/			\
> -	{0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0}, \
> -	/* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */\
> -	{0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
> -	/*Clear SIC_EN register 0x40[12] = 1'b0 */			\
> -	{0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)}, \
> +	 */
> +	{0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)},
> +	/*0x24[23] = 2b'01 schmit trigger */
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)},
> +	/*0x04[12:11] = 2b'01 enable WL suspend*/
> +	{0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0},
> +	/* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */
> +	{0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
> +	/*Clear SIC_EN register 0x40[12] = 1'b0 */
> +	{0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)},
>  	/*Set USB suspend enable local register  0xfe10[4]=1 */
>
>  #define RTL8188E_TRANS_CARDDIS_TO_CARDEMU				\
> @@ -137,8 +137,8 @@
>  	 * { offset, cut_msk, cmd, msk,
>  	 * value },
>  	 * comments here
> -	 */								\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0}, \
> +	 */
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0},
>  	/*0x04[12:11] = 2b'01enable WL suspend*/
>
>  #define RTL8188E_TRANS_CARDEMU_TO_PDN					\
> @@ -146,10 +146,10 @@
>  	 * { offset, cut_msk, cmd, msk,
>  	 * value },
>  	 * comments here
> -	 */								\
> -	{0x0006, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0}, \
> -	/* 0x04[16] = 0*/						\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)}, \
> +	 */
> +	{0x0006, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0},
> +	/* 0x04[16] = 0*/
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)},
>  	/* 0x04[15] = 1*/
>
>  #define RTL8188E_TRANS_PDN_TO_CARDEMU					\
> @@ -157,8 +157,8 @@
>  	 * { offset, cut_msk, cmd, msk,
>  	 * value },
>  	 * comments here
> -	 */								\
> -	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0}, \
> +	 */
> +	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0},
>  	/* 0x04[15] = 0*/
>
>  /* This is used by driver for LPSRadioOff Procedure, not for FW LPS Step */
> @@ -167,25 +167,25 @@
>  	 * { offset, cut_msk, cmd, msk,
>  	 * value },
>  	 * comments here
> -	 */								\
> -	{0x0522, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x7F},/*Tx Pause*/ \
> -	{0x05F8, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
> -	/*Should be zero if no packet is transmitting*/			\
> -	{0x05F9, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
> -	/*Should be zero if no packet is transmitting*/			\
> -	{0x05FA, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
> -	/*Should be zero if no packet is transmitting*/			\
> -	{0x05FB, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
> -	/*Should be zero if no packet is transmitting*/			\
> -	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0}, \
> -	/*CCK and OFDM are disabled,and clock are gated*/		\
> -	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0,	PWRSEQ_DELAY_US}, \
> -	/*Delay 1us*/ \
> -	{0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x3F}, \
> -	/*Reset MAC TRX*/ \
> -	{0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), 0}, \
> -	/*check if removed later*/\
> -	{0x0553, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(5), BIT(5)}, \
> +	 */
> +	{0x0522, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x7F},/*Tx Pause*/
> +	{0x05F8, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
> +	/*Should be zero if no packet is transmitting*/
> +	{0x05F9, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
> +	/*Should be zero if no packet is transmitting*/
> +	{0x05FA, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
> +	/*Should be zero if no packet is transmitting*/
> +	{0x05FB, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
> +	/*Should be zero if no packet is transmitting*/
> +	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0},
> +	/*CCK and OFDM are disabled,and clock are gated*/
> +	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0,	PWRSEQ_DELAY_US},
> +	/*Delay 1us*/
> +	{0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x3F},
> +	/*Reset MAC TRX*/
> +	{0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), 0},
> +	/*check if removed later*/
> +	{0x0553, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(5), BIT(5)},
>  	/*Respond TxOK to scheduler*/
>
>
> @@ -194,24 +194,24 @@
>  	 * { offset, cut_msk, cmd, msk,
>  	 * value },
>  	 * comments here
> -	 */								\
> -	{0xFE58, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x84}, \
> -	/*USB RPWM*/	\
> -	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0, PWRSEQ_DELAY_MS}, \
> -	/*Delay*/	\
> -	{0x0008, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
> -	/* 0x08[4] = 0 switch TSF to 40M */				\
> -	{0x0109, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(7), 0}, \
> -	/* Polling 0x109[7]=0  TSF in 40M */				\
> -	{0x0029, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(6) | BIT(7), 0}, \
> -	/* 0x29[7:6] = 2b'00  enable BB clock */			\
> -	{0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)}, \
> -	/* 0x101[1] = 1 */						\
> -	{0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0xFF}, \
> -	/* 0x100[7:0] = 0xFF enable WMAC TRX */				\
> -	{0x0002, PWR_CUT_ALL_MSK, \
> -	PWR_CMD_WRITE, BIT(1) | BIT(0), BIT(1) | BIT(0)}, \
> -	/* 0x02[1:0] = 2b'11 enable BB macro */				\
> +	 */
> +	{0xFE58, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x84},
> +	/*USB RPWM*/
> +	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0, PWRSEQ_DELAY_MS},
> +	/*Delay*/
> +	{0x0008, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
> +	/* 0x08[4] = 0 switch TSF to 40M */
> +	{0x0109, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(7), 0},
> +	/* Polling 0x109[7]=0  TSF in 40M */
> +	{0x0029, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(6) | BIT(7), 0},
> +	/* 0x29[7:6] = 2b'00  enable BB clock */
> +	{0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)},
> +	/* 0x101[1] = 1 */
> +	{0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0xFF},
> +	/* 0x100[7:0] = 0xFF enable WMAC TRX */
> +	{0x0002, PWR_CUT_ALL_MSK,
> +	PWR_CMD_WRITE, BIT(1) | BIT(0), BIT(1) | BIT(0)},
> +	/* 0x02[1:0] = 2b'11 enable BB macro */
>  	{0x0522, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0}, /*.	0x522 = 0*/
>
>  #define RTL8188E_TRANS_END						\
> @@ -219,7 +219,7 @@
>  	 * { offset, cut_msk, cmd, msk,
>  	 * value },
>  	 * comments here
> -	 */								\
> +	 */
>  	{0xFFFF, PWR_CUT_ALL_MSK, PWR_CMD_END, 0, 0},
>
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505546539-16383-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

