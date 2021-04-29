X-GM-THRID: 6956170409670606848
X-Received: by 2002:a19:ac4d:: with SMTP id r13mr911350lfc.360.1619681185330;
        Thu, 29 Apr 2021 00:26:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b88:: with SMTP id z8ls960452lji.2.gmail; Thu, 29 Apr
 2021 00:26:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfpRiZFmAsa+B7eL4jPCRGywAjuiRMyKkvoueXxEzsrNvB1jzP3DOS2CfUD0CQglJbQZi2
X-Received: by 2002:a05:651c:54d:: with SMTP id q13mr23589768ljp.408.1619681183604;
        Thu, 29 Apr 2021 00:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619681183; cv=none;
        d=google.com; s=arc-20160816;
        b=iwAbEs+PjUok71+qAHDnNT8UB9NgWE6g39YB/TSH1JzWLuBZUG4F2DaPtBRaIvONSd
         RuCtsYijv8s0MLNt4JoTEyYt9ncTmoEjISu0f4QxH6PvujaQZCGLwnfQukB7Pfy+yZCm
         V7kuyPUueEOtCtenxrL1VtDii+5XycOQiTXBjGzs7VlZUfCdx6oNesInbQUkVsqGxO87
         c+XX7uwChpzURLEeh+0HWX7AhbW0+JB+3jlPo5iJphKmFmeBn/B+qXOLcOV5pqUYBReo
         zrm4NpMS2LhdlknahrIVQYlRKFKVjcZAF8oDZ6qRIOfVVFrig8jgAVWEyheLqZWOlOmC
         t0GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fKADZqVqSc0IQida3fCMkFkfc3lO4PjliPGIsHxxals=;
        b=bmnN6omOQTSvw/vi1Fq5SU63qqVbSTb2LZ4mFlzUWi7munIb72hLpc3iZ250YEKEvN
         lIRs9wDV69SA3GOlo/ugZ1QZBCulGJCddiCbQBMbuEyHtfyCjD51u2lASS0W3ffqd45r
         Se9Pt0+SLBxenC0PDQ6LBeAJVB55EjVVAeF9yJwfaDTac4okjtBDIsPdZTA1DecZHxmf
         EOW1QpuPW4D9MC5jkpTtKLQclLkBVNHZp3DdeGAHKGU9qsvS/V2UfPRkS4v11k48A2aq
         DjMxZZbQZdcUctP2njeWVROXlzeVaCS43y0NWSIhoGNk1JLOTfXl7GzDDH6cqTRZF2nr
         ARww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AIjRR4E3;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fabioaiuto83@gmail.com>
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id q13si159834lfm.5.2021.04.29.00.26.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 00:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AIjRR4E3;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x636.google.com with SMTP id zg3so16767857ejb.8
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Apr 2021 00:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fKADZqVqSc0IQida3fCMkFkfc3lO4PjliPGIsHxxals=;
        b=AIjRR4E3nM59Xx7lq22qZifXk7zFyDH16ehnF8+kS+odSosc2HjT9yf6HLsME8yCZN
         3unezDVryQUxBu18wamkoKk96UfqcxfcLUhNgYeKbwhkhxtxokmrHBACYbg0YPmELa8H
         9icRo0oxhbE0Umgz9BWVN75nDycpXP0oF0lEIeZ/SGTHWeN/zOuYRTXwDS7ba9hm1LDo
         aqP4x6kk7eHJsA51LPiPvwNrNzGV/sOnaoNEQLDjPRf5V1IkJmGeZTKPdoH2ev4TbIrV
         pfC6oWgteX5fPnGT6SVvtLd38YPJjbFSq8mUO3pQ0MUwrWvUNgvncDU01gP4DozvxQps
         UjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fKADZqVqSc0IQida3fCMkFkfc3lO4PjliPGIsHxxals=;
        b=cJjIy37OgxCGfjEfapnV/eyKJ/bYDF2XJEUfKDLrE9GnkDp9hYnx0iLFQbJbqTcN4l
         eDftbKIZ45sQ0P8cMjIKMLazEpZqkjIum1iWTnttwP+3J1gcS2Y+BwHkHLT7nm8NleV5
         U6CerWkoykcqZlb69CCP65Vw8UTVXCAROYeXSX2+l4GnEZAAxKdt4Pe8wPVGtIAIqLmc
         Wej5vpngHuPTa6vdftNQ+gztCWuyzk42AUEM0A3OxZHd5ba+eFSkHxwoHJOl+OHqIxXz
         G2KUNCWU96SoF+3zmUcUR2/7iQgx16qg2t3mm/Gi1o44IkiDajclQhLuwiBfbbQZj7V6
         PB+w==
X-Gm-Message-State: AOAM531wEnTImd6hEz1ItLNYERuat5gN8UMJXqHJWxUd3vP3tlnkBa6J
	KZ7Nu2s6lV7KOR+wTe2gwLc=
X-Received: by 2002:a17:906:7f97:: with SMTP id f23mr14673562ejr.74.1619681183343;
        Thu, 29 Apr 2021 00:26:23 -0700 (PDT)
Return-Path: <fabioaiuto83@gmail.com>
Received: from agape.jhs ([5.171.81.14])
        by smtp.gmail.com with ESMTPSA id u11sm1688315edr.13.2021.04.29.00.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 00:26:23 -0700 (PDT)
Date: Thu, 29 Apr 2021 09:26:20 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: hal: Remove
 set but unused variables
Message-ID: <20210429072619.GB1409@agape.jhs>
References: <20210428113346.28305-1-fmdefrancesco@gmail.com>
 <20210428113346.28305-2-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210428113346.28305-2-fmdefrancesco@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Fabio,

On Wed, Apr 28, 2021 at 01:33:45PM +0200, Fabio M. De Francesco wrote:
> Removed four set but unused variables. Issue detected by gcc.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> index 082448557b53..96cb4426a0f4 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> @@ -3900,14 +3900,11 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable, v
>  			u32 cmd;
>  			u32 ra_info1, ra_info2;
>  			u32 rate_mask1, rate_mask2;
> -			u8 curr_tx_rate, curr_tx_sgi, hight_rate, lowest_rate;
>  
>  			cmd = 0x40000100 | mac_id;
>  			rtw_write32(padapter, REG_HMEBOX_DBG_2_8723B, cmd);
>  			msleep(10);
>  			ra_info1 = rtw_read32(padapter, 0x2F0);
> -			curr_tx_rate = ra_info1&0x7F;
> -			curr_tx_sgi = (ra_info1>>7)&0x01;
>  
>  			cmd = 0x40000400 | mac_id;
>  			rtw_write32(padapter, REG_HMEBOX_DBG_2_8723B, cmd);
> @@ -3916,8 +3913,6 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable, v
>  			ra_info2 = rtw_read32(padapter, 0x2F4);
>  			rate_mask1 = rtw_read32(padapter, 0x2F8);
>  			rate_mask2 = rtw_read32(padapter, 0x2FC);
> -			hight_rate = ra_info2&0xFF;
> -			lowest_rate = (ra_info2>>8)  & 0xFF;
>  
>  		}
>  		break;
> -- 
> 2.31.1
> 
>

rate_mask{1,2} and ra_info{1,2} seems to be unused as well.

thank you,

fabio 

