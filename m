X-GM-THRID: 6672748306065522688
X-Received: by 2002:adf:fc49:: with SMTP id e9mr468541wrs.29.1553700769320;
        Wed, 27 Mar 2019 08:32:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c403:: with SMTP id k3ls93163wmi.2.gmail; Wed, 27 Mar
 2019 08:32:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzmyljJ/q5ZYHkpZLIgXtuevQy7KlULYNy5u0qJsM/9WkIBpygZyWJy5jrpdCM3SAqp+KTA
X-Received: by 2002:a1c:150:: with SMTP id 77mr450927wmb.22.1553700768468;
        Wed, 27 Mar 2019 08:32:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553700768; cv=none;
        d=google.com; s=arc-20160816;
        b=Ac0uf0t9qKaWdpmqZXPIE3VY2Pc8qOn/CdaZQ5jf3HYn7tbgyqxtr7aYXM1zczpGHh
         WYNxqJ98rwE6fg2o4sIR6DXnmCfPAAmtGpvw6kjWAYUC5l6BHWB1BNNY1nWbiIzY0bQz
         bLFw6pABUp3VTqP8M7/gMMVqm99yj/2moTdwegkoIxSEX65U2bO4egbSnIfoJZJ4WoBw
         bcijxcKVh/mPWDmSS7ANJCTQQPAhuQuQIZDEzvaZkMGH/xn0sFOnOSvD22ZDXLEZti/A
         L5qWdUGnKGDydUk1OZrNUWCHr25nDVmyphaHOTKeDQUiwaGvvIrcW1iKjKJlguSTOzgz
         r1OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=J9AW6boO88L6q/gwR+Fa0mdLVB2X3EoG/6u4qGbizr0=;
        b=xfNZKLUSEA1murhkbmHUrFIt8q8ajay6DVYzoqhRgMiyiYx4+QyY5TP5FLMlDaJSdZ
         A60k1NQI1LFZ4YVKLeR417Vy3qta5/sb8uBvoGSsL7YUzB5A98LBOimyyvUBYvS+dShQ
         Jv0owleorzZ/I8rCjIdu1RX5Phgqjh10eOg5ttqAzNJ7+Gx+5Uv/gXS52rSooN/owm8c
         zIkaLqEk6cBM1+vfi3gavOjsxesPkAEOaew2C4KIYrIpQ+giajskXkWFk0nwzKLP4rsd
         3zLJc6ylMn6yV0JaNceNs5vSLZv9zHBg93cvmjxaIKd6RP9rn+qN9EkXQAjEIB7f2XfC
         69YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t137si13907wmt.0.2019.03.27.08.32.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 08:32:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,277,1549926000"; 
   d="scan'208";a="376015799"
Received: from unknown (HELO hadrien) ([109.190.253.13])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2019 16:32:47 +0100
Date: Wed, 27 Mar 2019 16:32:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192e: Remove unncessary
 paranthesis.
In-Reply-To: <20190327151947.7909-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903271629300.2848@hadrien>
References: <20190327151947.7909-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The word is parenthesis, plural parentheses.  Please change both
misspelled occurrences.

On Wed, 27 Mar 2019, Sanjana Sanikommu wrote:

> Challenge suggested by coccinelle.
> Remove unnecessary parathesis around the right hand of
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
> Changes in v2:
> Modify semantic patch to remove unnecessary paranthesis
> around  (OriginalValue) and (~dwBitMask).
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

I think that your added rule unnecessarily switched the expressions around
here.  Actually it matches your new rule backwards.

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

You are going over 80 characters here.  Coccinelle is not always so smart
about whitespace issues, and you have to clean them up by hand.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190327151947.7909-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

