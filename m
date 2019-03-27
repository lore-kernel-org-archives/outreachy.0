X-GM-THRID: 6672748306065522688
X-Received: by 2002:a17:906:a417:: with SMTP id l23mr1177994ejz.4.1553704329078;
        Wed, 27 Mar 2019 09:32:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3d62:: with SMTP id r2ls4506117ejf.2.gmail; Wed, 27
 Mar 2019 09:32:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGhRssZ9iiYLWdPTEynkX0aSqaQhaxH4iLV9OYqKyYRn8P7c7yFG94JnuVF9xE+eGdfMAH
X-Received: by 2002:a17:906:4aca:: with SMTP id u10mr181890ejt.3.1553704328344;
        Wed, 27 Mar 2019 09:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553704328; cv=none;
        d=google.com; s=arc-20160816;
        b=qTfMI17s6YS+Jiro/BBmWyL0kRp9kXLRZ4BppRr1w0CdxZdgI+P2zlj53vDUUvIZJG
         fUAuNGh/qdvqS4AjbROqPIB/ox58iCk+43vAjDGCKpPOWQNiOljvtA6eyku09RJ6AFmU
         H+3aooiUXtYF8i1FaJq+hv+i5Nn3tL3W1D+LlPjGLClaC+Xo2E3yElF6l88MFmbuTaKm
         72f9l+qdbFUDaZAw9d+DmeTvlDo2isFYhfRFSuIqo1DV0THpQA0UyM/4XvMH+a6SAG3K
         eKGceAZqShmsMq3d/EMiIfQqwlCIuXorxFiiPciodR9dr2fsz12TpSKRErAtZhL+uzTJ
         yEbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zYbxCixB89yIHCTGJ7FLBt4CZnJIdCABHjjv/3Khvuo=;
        b=BUuiDPrGFLDrsgk7NEMtv5Y70mnY6Z3bdF+kpcIGnid0dNeYw65ReRiTDwmGW73U+v
         EyIRzOUGiIySFOCPRBAo3vG1GaGTI5JVQS+tgYkRfYIvuW0pnslNaGU8uxSKHWYQ4hRV
         QFt0zcx4uroKGcQsTH8/W4p6xyn7GcN9D07FSMQZ0XfqpwTJEy931347OHtLSIVV4JJE
         jUkQZpiDyee29NiGDPqmQoj/L69wTHs1nxGlJIVkAtunAPIfbVgsV0cQksx2SPLEM+CQ
         uDpPO5M6LYRQItn7hNgClrmu7vx2UphRxxQSYA0EkJaabWij4qdeBWvM2Z2xstBy4R5C
         zZZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r37si914079edd.2.2019.03.27.09.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 09:32:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,277,1549926000"; 
   d="scan'208";a="376026950"
Received: from unknown (HELO hadrien) ([109.190.253.13])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2019 17:31:48 +0100
Date: Wed, 27 Mar 2019 17:31:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192e: Remove unnecessary
 parantheses.
In-Reply-To: <20190327163003.9622-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903271731250.2848@hadrien>
References: <20190327151947.7909-1-sanjana99reddy99@gmail.com> <20190327163003.9622-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Mar 2019, Sanjana Sanikommu wrote:

> Challenge suggested by coccinelle.
> Remove unnecessary parantheses around the right hand of

Parentheses.  Not parantheses.

julia

> assignment using the below script.
>
> @@
> local idexpression id;
> expression e;
> @@
>
> id =
> -(
> e
> -)
>
> @@ expression e, e1, e2,e3,e4; @@
> e =
> -(((e1) & (e2)) |
> -(e3 << e4))
> +(e1 & e2) |
> +(e3 << e4)
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v3:
> Correct the spelling of paranthesis.
>
> Changes in v2:
> Add new rule to semantic patch to remove unnecessary paranthesis
> around  (OriginalValue) and (~dwBitMask).
> New rule rewrites (Data<<16) | (NewOffset&0x3f) backwards but adjusts
> space around operators.
>  .../staging/rtl8192e/rtl8192e/r8192E_phy.c    | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> index 73497d559b77..5603570f6dda 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> @@ -81,8 +81,7 @@ void rtl92e_set_bb_reg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
>  	if (dwBitMask != bMaskDWord) {
>  		OriginalValue = rtl92e_readl(dev, dwRegAddr);
>  		BitShift = _rtl92e_calculate_bit_shift(dwBitMask);
> -		NewValue = (((OriginalValue) & (~dwBitMask)) |
> -			    (dwData << BitShift));
> +		NewValue = (OriginalValue & ~dwBitMask) | (dwData << BitShift);
>  		rtl92e_writel(dev, dwRegAddr, NewValue);
>  	} else
>  		rtl92e_writel(dev, dwRegAddr, dwData);
> @@ -188,7 +187,7 @@ static void _rtl92e_phy_rf_write(struct net_device *dev,
>  		NewOffset = Offset;
>  	}
>
> -	DataAndAddr = (Data<<16) | (NewOffset&0x3f);
> +	DataAndAddr = (NewOffset & 0x3f) | (Data << 16);
>
>  	rtl92e_set_bb_reg(dev, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);
>
> @@ -223,8 +222,7 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
>  			Original_Value = _rtl92e_phy_rf_fw_read(dev, eRFPath,
>  								RegAddr);
>  			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
> -			New_Value = (((Original_Value) & (~BitMask)) |
> -				    (Data << BitShift));
> +			New_Value = (Original_Value & ~BitMask) | (Data << BitShift);
>
>  			_rtl92e_phy_rf_fw_write(dev, eRFPath, RegAddr,
>  						New_Value);
> @@ -237,8 +235,7 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
>  			Original_Value = _rtl92e_phy_rf_read(dev, eRFPath,
>  							     RegAddr);
>  			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
> -			New_Value = (((Original_Value) & (~BitMask)) |
> -				     (Data << BitShift));
> +			New_Value = (Original_Value & ~BitMask) | (Data << BitShift);
>
>  			_rtl92e_phy_rf_write(dev, eRFPath, RegAddr, New_Value);
>  		} else
> @@ -571,9 +568,9 @@ static bool _rtl92e_bb_config_para_file(struct net_device *dev)
>
>  	if (priv->IC_Cut  > VERSION_8190_BD) {
>  		if (priv->rf_type == RF_2T4R)
> -			dwRegValue = (priv->AntennaTxPwDiff[2]<<8 |
> +			dwRegValue = priv->AntennaTxPwDiff[2]<<8 |
>  				      priv->AntennaTxPwDiff[1]<<4 |
> -				      priv->AntennaTxPwDiff[0]);
> +				      priv->AntennaTxPwDiff[0];
>  		else
>  			dwRegValue = 0x0;
>  		rtl92e_set_bb_reg(dev, rFPGA0_TxGainStage,
> @@ -655,9 +652,9 @@ void rtl92e_set_tx_power(struct net_device *dev, u8 channel)
>  			priv->AntennaTxPwDiff[1] = (u8)(ant_pwr_diff);
>  			priv->AntennaTxPwDiff[0] = 0;
>
> -			u4RegValue = (priv->AntennaTxPwDiff[2]<<8 |
> +			u4RegValue = priv->AntennaTxPwDiff[2]<<8 |
>  				      priv->AntennaTxPwDiff[1]<<4 |
> -				      priv->AntennaTxPwDiff[0]);
> +				      priv->AntennaTxPwDiff[0];
>
>  			rtl92e_set_bb_reg(dev, rFPGA0_TxGainStage,
>  					  (bXBTxAGC|bXCTxAGC|bXDTxAGC),
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190327163003.9622-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

