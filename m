X-GM-THRID: 6672748306065522688
X-Received: by 2002:a1c:48c4:: with SMTP id v187mr153635wma.2.1553622857219;
        Tue, 26 Mar 2019 10:54:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:495:: with SMTP id 143ls2633260wme.10.canary-gmail; Tue,
 26 Mar 2019 10:54:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxz7zO6h1EJSULEQS3cC7Yx5W9mzxh3vpyUuN3mGLu+5Db8fEYig2dt33DMeLx2VeAAiDE2
X-Received: by 2002:a1c:7dc3:: with SMTP id y186mr158052wmc.13.1553622856283;
        Tue, 26 Mar 2019 10:54:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553622856; cv=none;
        d=google.com; s=arc-20160816;
        b=B+I1WTbxpVlI1vAip9/1mLl9bedXzcCqZlFPPj/ziK89Xf3jjCrt2GIdiRyT0JN+G1
         X226RXcXlSXWjbCIlMJooMWqdjsNn5ZxqyHiXs1A+PPfnJY8RKL2uiyk0zp47RSiNuQd
         sRB8GmHUj+Z/hrce7JD/gF0ieI0fTScagyUdsMYvNLj47eWiSnm9bS6I1gGtEXhaKPt8
         eMAB/H35tkKmgmjK2Pg3xfDlAPgnFHfNyT6KDGMI6WdNEWB6VwbVcGGyBSKySsLr6JHU
         HPdRBnwOkvLBjG9lDtcBxpttHI4cBq17r0mJagd4vKLI/iIt/7a9nq5fIFBoymiSNKCY
         LSzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2lq8gaPj/8DUtwIm58qnyxU1rPlytOHmwvH6oxxTyHA=;
        b=OjQTpLTY9uWt3EblJpT7WfnWgYwPY9pxIZ8t7QS/K1oAS47kHQhzbic4qIyByB87Pu
         W+YOIIE9Src7t0dc70UFzhkk6eZZJEwp7SujKIqgiF8XmPsUHquxpwuorSjs3GYXXeWk
         9EvDg9yYAA0mPF3142HAy3ic227puAjHBI0M17PpSnGOylJstcBXUlVVG7uURjRCbVTo
         MSHKtBDEOEoBW5ssLxITMDtpV8inFQDoPEhAcx94M/KWfSnYAQj1tGf8ZhtGcJ0JbyN5
         A3BKwo3m5nsCAjhz+hXQZGBrZq1IYjjpzHnXWPdA+THXpOJj4CLtkso3XQUp5vGZ4vZw
         3Rvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s8si490295wme.0.2019.03.26.10.54.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:54:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,273,1549926000"; 
   d="scan'208";a="375876701"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2019 18:54:16 +0100
Date: Tue, 26 Mar 2019 18:54:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove unncessary
 paranthesis.
In-Reply-To: <20190326171111.20036-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.20.1903261852120.6419@hadrien>
References: <20190326171111.20036-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Mar 2019, Sanjana Sanikommu wrote:

> Challenge suggested by coccinelle.
> Remove unnecessary parathesis around the right hand of
> assignment using the below script.
>
> @@
> binary operator op = {==,!=,&&,||,>=,<=,&,|};

It's not relevant to your actual patch, but for == it could be a better
idea to leave things as they are.  x = y == z; is a bit easy to misread.

> expression l, r, t;
> @@
>
> (
> l = (r op t)
> |
> l =
> -(
> r
> -)
> )
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  .../staging/rtl8192e/rtl8192e/r8192E_phy.c    | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> index 73497d559b77..3de07a79b3e0 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> @@ -81,8 +81,8 @@ void rtl92e_set_bb_reg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
>  	if (dwBitMask != bMaskDWord) {
>  		OriginalValue = rtl92e_readl(dev, dwRegAddr);
>  		BitShift = _rtl92e_calculate_bit_shift(dwBitMask);
> -		NewValue = (((OriginalValue) & (~dwBitMask)) |
> -			    (dwData << BitShift));
> +		NewValue = ((OriginalValue) & (~dwBitMask)) |
> +			    (dwData << BitShift);

The parentheses on (OriginalValue) and (~dwBitMask) are not needed and
make the code harder to read (more clutter).  Could you update your
semantic patch to also take this case into account?

julia

>  		rtl92e_writel(dev, dwRegAddr, NewValue);
>  	} else
>  		rtl92e_writel(dev, dwRegAddr, dwData);
> @@ -223,8 +223,8 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
>  			Original_Value = _rtl92e_phy_rf_fw_read(dev, eRFPath,
>  								RegAddr);
>  			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
> -			New_Value = (((Original_Value) & (~BitMask)) |
> -				    (Data << BitShift));
> +			New_Value = ((Original_Value) & (~BitMask)) |
> +				    (Data << BitShift);
>
>  			_rtl92e_phy_rf_fw_write(dev, eRFPath, RegAddr,
>  						New_Value);
> @@ -237,8 +237,8 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
>  			Original_Value = _rtl92e_phy_rf_read(dev, eRFPath,
>  							     RegAddr);
>  			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
> -			New_Value = (((Original_Value) & (~BitMask)) |
> -				     (Data << BitShift));
> +			New_Value = ((Original_Value) & (~BitMask)) |
> +				     (Data << BitShift);
>
>  			_rtl92e_phy_rf_write(dev, eRFPath, RegAddr, New_Value);
>  		} else
> @@ -571,9 +571,9 @@ static bool _rtl92e_bb_config_para_file(struct net_device *dev)
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
> @@ -655,9 +655,9 @@ void rtl92e_set_tx_power(struct net_device *dev, u8 channel)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190326171111.20036-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

