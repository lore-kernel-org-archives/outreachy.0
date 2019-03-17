X-GM-THRID: 6669443635369476096
X-Received: by 2002:aa7:c64a:: with SMTP id z10mr1568569edr.0.1552853466860;
        Sun, 17 Mar 2019 13:11:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6a98:: with SMTP id p24ls2856549ejr.7.gmail; Sun, 17
 Mar 2019 13:11:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyo0LEDqrwa8+S2+YW7eEoFp7JpCAXMetV+DLU09nLHaweBPn785TyxJQj1xpDXZEcpshzn
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr1372049eja.10.1552853465962;
        Sun, 17 Mar 2019 13:11:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552853465; cv=none;
        d=google.com; s=arc-20160816;
        b=KeFUYimuvd/aeb/GlF6c7JtEAb24wBv6Om/0tap4jcWTQ1d2pPmjFOAUKXMDMGO/A9
         frKmAxMcg9/U1pYuC2i2hpLrI4D/UR2w9zM9ycey4GG457b+LB2sMEikoJY2IL31Ab0r
         E+2iYoaI6HWlsPQJooGiyp/xd37OoShzd1ZQUrdYA0O6K2QfbhOdYduKPHhpAnaY80/8
         CILFlUrGgPbnVhTRUVGOdRlrZqRjkcmZDZ+CsA9bfXyPLeVsxYS3qHIzdmfAs7gZQ7uA
         2UvI2sWlHDTGPEjW/JRwSQH9DTykkDDJ7xRyL0Qe4pGK6tJSqfovuvlTUFJK+O/NUxHO
         iv5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=kQLSmkHpNxu9PMNdfS71F5nip99h4A3Dut+CHq3u5kk=;
        b=Wjks9j9knO5H1H88wWGNB03xmvr4GPsKtcs3U+9Uv1TNdIX82DYrwumXALpM8nKtst
         bSHLftoj0U4kPG4+BSG2IzJihtBxsUEpfyIrz2CslvqjkJATH9ZM/SxVYpJa1blMxBM+
         lhfF29qjlqWu/hLgdSEhJ3D9BsHES8NJUjOIjeF7NqRAoXT1nPSp13x3IEy+ijC8dTgr
         k16zjM+212yTc4lgtKwQ9WdNSBG/R4zDqdV1L47JcZWIcAxywQPM2hJWt69WziyXg4fX
         o0scsGB8K5iqzfr4HR+lnI6hOb4sicN9/N3XGbdmCfOpLMSbD4BkguUBAvNLYwlv/A1S
         O6aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a7si411314edb.1.2019.03.17.13.11.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 13:11:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,491,1544482800"; 
   d="scan'208";a="374411380"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 21:11:05 +0100
Date: Sun, 17 Mar 2019 21:11:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Remove parentheses
 around the right hand side of assignments
In-Reply-To: <20190317192717.13128-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903172109200.2434@hadrien>
References: <20190317192717.13128-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Mar 2019, Bhanusree Pola wrote:

> Avoid useless parentheses to the right hand side of an assignment.
> Issue found using coccinelle.
> The semantic patch that fixes the problem is as follows
>
> // <smpl>
> @r1 disable paren@
> expression value,e;
> @@
>
> (
> - value = (e)
> + value = e
> )
>
> @r2 depends on r1@
> expression value,e;
> constant c;
> @@
>
> (
> - value = (e == c)
> + value = (e == c)
> |
> - value = (e <= c)
> + value = (e <= c)
> |
> - value = (e >= c)
> + value = (e >= c)
> |
> - value = (e != c)
> + value = (e != c)
> )
> // </smpl>
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  .../staging/rtl8192e/rtl8192e/r8192E_dev.c    | 20 ++++++++-----------
>  1 file changed, 8 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
> index 19bb04b3f097..57a32e268839 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
> @@ -338,7 +338,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
>  		priv->eeprom_ChannelPlan = usValue&0xff;
>  		IC_Version = (usValue & 0xff00)>>8;
>
> -		ICVer8192 = (IC_Version&0xf);
> +		ICVer8192 = IC_Version & 0xf;
>  		ICVer8256 = (IC_Version & 0xf0)>>4;
>  		RT_TRACE(COMP_INIT, "\nICVer8192 = 0x%x\n", ICVer8192);
>  		RT_TRACE(COMP_INIT, "\nICVer8256 = 0x%x\n", ICVer8256);
> @@ -420,7 +420,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
>  			if (!priv->AutoloadFailFlag) {
>  				usValue = rtl92e_eeprom_read(dev,
>  					  EEPROM_TxPwDiff_CrystalCap >> 1);
> -				priv->EEPROMAntPwDiff = (usValue&0x0fff);
> +				priv->EEPROMAntPwDiff = usValue & 0x0fff;
>  				priv->EEPROMCrystalCap = (u8)((usValue & 0xf000)
>  							 >> 12);
>  			} else {
> @@ -475,15 +475,13 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
>  			}
>  			priv->LegacyHTTxPowerDiff =
>  					 priv->EEPROMLegacyHTTxPowerDiff;
> -			priv->AntennaTxPwDiff[0] = (priv->EEPROMAntPwDiff &
> -						    0xf);
> +			priv->AntennaTxPwDiff[0] = priv->EEPROMAntPwDiff & 0xf;

It's nice to have the whole thing on one line in these cases.

>  			priv->AntennaTxPwDiff[1] = (priv->EEPROMAntPwDiff &
>  							0xf0) >> 4;
>  			priv->AntennaTxPwDiff[2] = (priv->EEPROMAntPwDiff &
>  							0xf00) >> 8;
>  			priv->CrystalCap = priv->EEPROMCrystalCap;
> -			priv->ThermalMeter[0] = (priv->EEPROMThermalMeter &
> -						 0xf);
> +			priv->ThermalMeter[0] = priv->EEPROMThermalMeter & 0xf;
>  			priv->ThermalMeter[1] = (priv->EEPROMThermalMeter &
>  						     0xf0) >> 4;
>  		} else if (priv->epromtype == EEPROM_93C56) {
> @@ -540,8 +538,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
>  			priv->AntennaTxPwDiff[1] = 0;
>  			priv->AntennaTxPwDiff[2] = 0;
>  			priv->CrystalCap = priv->EEPROMCrystalCap;
> -			priv->ThermalMeter[0] = (priv->EEPROMThermalMeter &
> -						 0xf);
> +			priv->ThermalMeter[0] = priv->EEPROMThermalMeter & 0xf;
>  			priv->ThermalMeter[1] = (priv->EEPROMThermalMeter &
>  						     0xf0) >> 4;
>  		}
> @@ -755,8 +752,7 @@ bool rtl92e_start_adapter(struct net_device *dev)
>  	if (priv->ResetProgress == RESET_TYPE_NORESET) {
>  		ulRegRead = rtl92e_readl(dev, CPU_GEN);
>  		if (priv->LoopbackMode == RTL819X_NO_LOOPBACK)
> -			ulRegRead = ((ulRegRead & CPU_GEN_NO_LOOPBACK_MSK) |
> -				     CPU_GEN_NO_LOOPBACK_SET);
> +			ulRegRead = (ulRegRead & CPU_GEN_NO_LOOPBACK_MSK) | CPU_GEN_NO_LOOPBACK_SET;

On the other hand, this was better off with the CPU_GEN_NO_LOOPBACK_SET on
a line of its own.  Coccinelle is not clever enough in its pretty printing
in this case, so you have to fix it up by hand.

julia


>  		else if (priv->LoopbackMode == RTL819X_MAC_LOOPBACK)
>  			ulRegRead |= CPU_CCK_LOOPBACK;
>  		else
> @@ -1424,7 +1420,7 @@ static u8 _rtl92e_rate_hw_to_mgn(bool bIsHT, u8 rate)
>  			ret_rate = MGN_MCS15;
>  			break;
>  		case DESC90_RATEMCS32:
> -			ret_rate = (0x80|0x20);
> +			ret_rate = 0x80 | 0x20;
>  			break;
>
>  		default:
> @@ -2044,7 +2040,7 @@ bool rtl92e_get_rx_stats(struct net_device *dev, struct rtllib_rx_stats *stats,
>  	}
>
>  	stats->RxDrvInfoSize = pdesc->RxDrvInfoSize;
> -	stats->RxBufShift = ((pdesc->Shift)&0x03);
> +	stats->RxBufShift = (pdesc->Shift) & 0x03;
>  	stats->Decrypted = !pdesc->SWDec;
>
>  	pDrvInfo = (struct rx_fwinfo *)(skb->data + stats->RxBufShift);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317192717.13128-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

