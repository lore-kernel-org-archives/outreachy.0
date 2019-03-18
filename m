X-GM-THRID: 6669762778998243328
X-Received: by 2002:aa7:920a:: with SMTP id 10mr6985775pfo.145.1552930810608;
        Mon, 18 Mar 2019 10:40:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8216:: with SMTP id x22ls9135739pln.3.gmail; Mon, 18
 Mar 2019 10:40:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPtfLX2KjwF2xt0knano6qGU2CCmpuo9JQzFqz7E+gFcodTADPdhXcdUxVFxyE6ASWUPJJ
X-Received: by 2002:a17:902:8a98:: with SMTP id p24mr6005978plo.18.1552930809909;
        Mon, 18 Mar 2019 10:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552930809; cv=none;
        d=google.com; s=arc-20160816;
        b=vTvHutYounnIuAVlhC6+c/VTXPm/ZI1ePFxLWW4cfLy6oVGBK2vrXu1y6jU/xYtW+o
         PFFrxRvUhZX7fvzHxUvq/9sdtYAPwpRPViI1IrORzjkekPQSlUK5dhkwx8XkK5xViUml
         A6D/ea2CfOqloMm2yIk76/UXM3TaUsARhVjb9R6cg7aXhnBZRCuFetFfNBYRqzARIlsm
         4DeCfXL3nL7R3CBI4uEdGyDlffBHIXTNfZB0VaCEtfcl5yNCrsFRkb2hMbFcab8JixIa
         hYkx0PK6H9haLvsElJKama+y7cRhaFWnDg5SDxNJIKRcFTL/HFhJBZTZLsYdyMA4CyfX
         01hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zlmNItRe3I2SlgqYNrZqZP6Br0R5DtVKX4x6AoHEtko=;
        b=WpqITWiX5FZUG5A1HuvTtvrxQsaZt4kFOMB3ZLRY2MICCg/VaIl7CGcinVj/5s1bSS
         cLx6MkdJJknvgNLXFp9c41PNnVMxlrRO1RL87AUXMAu1c01YdLPsbeX2ypX+PHdZjn3x
         2SCOkJtBLy1eLcthNiG9C7pNONEvjr00CdF55VKjMsWyID5ypN1YgpUCVM/CJyuQthe6
         WWeA9ArQPIgyd/ibH/EBso6I7+fV4438Mqf5RMPquivteUjkEDgHuPDzg6nPW5Izj3du
         uov/dliADjnE5v2eIyzIDs4RlyfX36lm6yyN7jkbtDsBT0taM1CvWY8UCR/xHLZnJem+
         ODQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1KOdoETT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r133si622357pgr.4.2019.03.18.10.40.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1KOdoETT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2291B20989;
	Mon, 18 Mar 2019 17:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552930809;
	bh=/iy9wFortoVIV62mSqxRnFvKA6KUp17g7fW2ExZFOQg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1KOdoETTO+8ghpEiqzS/f9EUba3/8bA6kkvTfjLXpGBWcL1KyWlIrkAByWAOEx1J2
	 f5NK99JeBxGGPAs+067XJ5HXNi5oU89YZGJ+SWwmf8SmBQCm1sK5BLyqork2lJblr6
	 fcBxnfSoC9PjTZAnD0X2865CAXbIc9WJb+Ujyb2w=
Date: Mon, 18 Mar 2019 18:40:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rtl8188eu: core: rtw_efuse.c: Line over 80
 characters.
Message-ID: <20190318174007.GA22001@kroah.com>
References: <20190318160542.2803-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190318160542.2803-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 09:35:42PM +0530, Sanjana Sanikommu wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_efuse.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
> index 51c3dd6d7ffb..a5d34b85d9c5 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
> @@ -794,13 +794,16 @@ bool Efuse_PgPacketWrite(struct adapter *pAdapter, u8 offset, u8 word_en, u8 *pD
>  
>  	hal_EfuseConstructPGPkt(offset, word_en, pData, &targetPkt);
>  
> -	if (!hal_EfusePartialWriteCheck(pAdapter, efuseType, &startAddr, &targetPkt))
> +	if (!hal_EfusePartialWriteCheck(pAdapter, efuseType,
> +					&startAddr, &targetPkt))

Why not use the full line:
	if (!hal_EfusePartialWriteCheck(pAdapter, efuseType, &startAddr,
					&targetPkt))

Only wrap where you _have_ to wrap, don't make lines shorter than they
have to unless it makes a lot of sense to.

thanks,

greg k-h

