X-GM-THRID: 1008142909440
X-Received: by 10.194.86.1 with SMTP id l1mr891899wjz.0.1424384814218;
        Thu, 19 Feb 2015 14:26:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.135 with SMTP id p7ls1495386wic.45.canary; Thu, 19 Feb
 2015 14:26:53 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr891895wjz.0.1424384813905;
        Thu, 19 Feb 2015 14:26:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ev8si6493552wib.3.2015.02.19.14.26.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 14:26:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,611,1418079600"; 
   d="scan'208";a="122583293"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 23:26:53 +0100
Date: Thu, 19 Feb 2015 23:26:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Replace C99 comments
 with C89
In-Reply-To: <20150219213158.GA4844@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.02.1502192325110.2192@localhost6.localdomain6>
References: <20150219213158.GA4844@katie-Inspiron-5748>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Katie Dunne wrote:

> This patch addresses the checkpatch.pl error:
> ERROR: Do not use C99 // comments
> 
> An existing C89 comment is edited by removing an extra blank line
> C99 comments are replaced with C89 comments
> Needlessly multiple comment lines are reduced to one line
> 2 Comments over 80 characters are shortened by removing blank space

This comes across as a bit wordy.  The PatchPhilosophy page 
(http://kernelnewbies.org/PatchPhilosophy) says:

In patch descriptions and in the subject, it is common and preferable to 
use present-tense, imperative language. Write as if you are telling git 
what to do with your patch.

If you search for the above text, you can find some examples.

julia


> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150219213158.GA4844%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.
> 

