X-GM-THRID: 1008142909440
X-Received: by 10.182.47.228 with SMTP id g4mr8508574obn.5.1424416870491;
        Thu, 19 Feb 2015 23:21:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.148.84 with SMTP id w81ls619392iod.15.gmail; Thu, 19 Feb
 2015 23:21:10 -0800 (PST)
X-Received: by 10.66.142.170 with SMTP id rx10mr7961270pab.34.1424416870297;
        Thu, 19 Feb 2015 23:21:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z4si69082igl.1.2015.02.19.23.21.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 23:21:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,613,1418079600"; 
   d="scan'208";a="100695808"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 08:21:07 +0100
Date: Fri, 20 Feb 2015 08:21:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vt6655: Replace C99
 comments with C89
In-Reply-To: <20150219234312.GA6364@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.02.1502200820540.2045@localhost6.localdomain6>
References: <20150219234312.GA6364@katie-Inspiron-5748>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Katie Dunne wrote:

> Addresses the checkpatch.pl error:
> ERROR: Do not use C99 // comments
> 
> Remove an unneeded comment line
> Replace C99 comments with C89
> Reduce multiple line comments to one line
> Shorten comments over 80 line by removing blank space
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
> Changes in v2:
>  -Make commit message more concise

It looks much better.

julia

> ---
>  drivers/staging/vt6655/srom.h | 47 ++++++++++++++++++-------------------------
>  1 file changed, 20 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/srom.h b/drivers/staging/vt6655/srom.h
> index 7d3e3ef..fc4b179 100644
> --- a/drivers/staging/vt6655/srom.h
> +++ b/drivers/staging/vt6655/srom.h
> @@ -24,7 +24,6 @@
>   * Author: Jerry Chen
>   *
>   * Date: Jan 29, 2003
> - *
>   */
>  
>  #ifndef __SROM_H__
> @@ -34,56 +33,50 @@
>  
>  #define EEP_MAX_CONTEXT_SIZE    256
>  
> -#define CB_EEPROM_READBYTE_WAIT 900     //us
> +#define CB_EEPROM_READBYTE_WAIT 900     /* us */
>  
>  #define W_MAX_I2CRETRY          0x0fff
>  
> -//
> -// Contents in the EEPROM
> -//
> -#define EEP_OFS_PAR         0x00        // physical address
> +/* Contents in the EEPROM */
> +#define EEP_OFS_PAR         0x00        /* physical address */
>  #define EEP_OFS_ANTENNA     0x16
>  #define EEP_OFS_RADIOCTL    0x17
> -#define EEP_OFS_RFTYPE      0x1B        // for select RF
> -#define EEP_OFS_MINCHANNEL  0x1C        // Min Channel #
> -#define EEP_OFS_MAXCHANNEL  0x1D        // Max Channel #
> -#define EEP_OFS_SIGNATURE   0x1E        //
> -#define EEP_OFS_ZONETYPE    0x1F        //
> -#define EEP_OFS_RFTABLE     0x20        // RF POWER TABLE
> +#define EEP_OFS_RFTYPE      0x1B        /* for select RF */
> +#define EEP_OFS_MINCHANNEL  0x1C        /* Min Channel # */
> +#define EEP_OFS_MAXCHANNEL  0x1D        /* Max Channel # */
> +#define EEP_OFS_SIGNATURE   0x1E
> +#define EEP_OFS_ZONETYPE    0x1F
> +#define EEP_OFS_RFTABLE     0x20        /* RF POWER TABLE */
>  #define EEP_OFS_PWR_CCK     0x20
>  #define EEP_OFS_SETPT_CCK   0x21
>  #define EEP_OFS_PWR_OFDMG   0x23
>  #define EEP_OFS_SETPT_OFDMG 0x24
> -#define EEP_OFS_PWR_FORMULA_OST  0x26   //
> +#define EEP_OFS_PWR_FORMULA_OST  0x26
>  #define EEP_OFS_MAJOR_VER 0x2E
>  #define EEP_OFS_MINOR_VER 0x2F
>  #define EEP_OFS_CCK_PWR_TBL     0x30
>  #define EEP_OFS_CCK_PWR_dBm     0x3F
>  #define EEP_OFS_OFDM_PWR_TBL    0x40
>  #define EEP_OFS_OFDM_PWR_dBm    0x4F
> -//{{ RobertYu: 20041124
> +/*{{ RobertYu: 20041124 */
>  #define EEP_OFS_SETPT_OFDMA         0x4E
>  #define EEP_OFS_OFDMA_PWR_TBL       0x50
> -//}}
> +/*}}*/
>  #define EEP_OFS_OFDMA_PWR_dBm       0xD2
>  
> -//----------need to remove --------------------
> -#define EEP_OFS_BBTAB_LEN   0x70        // BB Table Length
> -#define EEP_OFS_BBTAB_ADR   0x71        // BB Table Offset
> -#define EEP_OFS_CHECKSUM    0xFF        // reserved area for baseband 28h ~ 78h
> +/*----------need to remove --------------------*/
> +#define EEP_OFS_BBTAB_LEN   0x70        /* BB Table Length */
> +#define EEP_OFS_BBTAB_ADR   0x71        /* BB Table Offset */
> +#define EEP_OFS_CHECKSUM    0xFF        /* reserved area for baseband 28h~78h */
>  
> -#define EEP_I2C_DEV_ID      0x50        // EEPROM device address on the I2C bus
> +#define EEP_I2C_DEV_ID      0x50        /* EEPROM device address on I2C bus */
>  
> -//
> -// Bits in EEP_OFS_ANTENNA
> -//
> +/* Bits in EEP_OFS_ANTENNA */
>  #define EEP_ANTENNA_MAIN    0x01
>  #define EEP_ANTENNA_AUX     0x02
>  #define EEP_ANTINV          0x04
>  
> -//
> -// Bits in EEP_OFS_RADIOCTL
> -//
> +/* Bits in EEP_OFS_RADIOCTL */
>  #define EEP_RADIOCTL_ENABLE 0x80
>  #define EEP_RADIOCTL_INV    0x01
>  
> @@ -103,4 +96,4 @@ void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEepromRegs);
>  
>  void SROMvReadEtherAddress(void __iomem *dwIoBase, unsigned char *pbyEtherAddress);
>  
> -#endif // __EEPROM_H__
> +#endif /* __EEPROM_H__*/
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150219234312.GA6364%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.
> 

