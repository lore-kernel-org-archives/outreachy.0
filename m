X-GM-THRID: 6400145922202796032
X-Received: by 10.28.45.139 with SMTP id t133mr148777wmt.9.1490189051491;
        Wed, 22 Mar 2017 06:24:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.201 with SMTP id o192ls1832321wmg.4.canary-gmail; Wed,
 22 Mar 2017 06:24:10 -0700 (PDT)
X-Received: by 10.28.61.86 with SMTP id k83mr150036wma.19.1490189050551;
        Wed, 22 Mar 2017 06:24:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si203428wmg.3.2017.03.22.06.24.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 06:24:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,205,1486422000"; 
   d="scan'208";a="217628110"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2017 14:24:09 +0100
Date: Wed, 22 Mar 2017 14:24:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rts5208: Replace a bit
 shift by a use of BIT.
In-Reply-To: <20170322131757.GA5335@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703221423550.3413@hadrien>
References: <20170322131757.GA5335@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 22 Mar 2017, Arushi Singhal wrote:

> This patch replaces bit shifting on 1 with the BIT(x) macro.
> This was done with coccinelle:
> @@
> constant c;
> @@
>
> -1 << c
> +BIT(c)
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> changes in v2
>  - remove the unnecessary parenthesis.
>
>  drivers/staging/rts5208/rtsx_chip.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> index 3511157a2c78..7f4107bffe31 100644
> --- a/drivers/staging/rts5208/rtsx_chip.c
> +++ b/drivers/staging/rts5208/rtsx_chip.c
> @@ -1490,7 +1490,7 @@ int rtsx_write_register(struct rtsx_chip *chip, u16 addr, u8 mask, u8 data)
>
>  	for (i = 0; i < MAX_RW_REG_CNT; i++) {
>  		val = rtsx_readl(chip, RTSX_HAIMR);
> -		if ((val & (1 << 31)) == 0) {
> +		if ((val & BIT(31)) == 0) {
>  			if (data != (u8)val) {
>  				rtsx_trace(chip);
>  				return STATUS_FAIL;
> @@ -1518,7 +1518,7 @@ int rtsx_read_register(struct rtsx_chip *chip, u16 addr, u8 *data)
>
>  	for (i = 0; i < MAX_RW_REG_CNT; i++) {
>  		val = rtsx_readl(chip, RTSX_HAIMR);
> -		if ((val & (1 << 31)) == 0)
> +		if ((val & BIT(31)) == 0)
>  			break;
>  	}
>
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170322131757.GA5335%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

