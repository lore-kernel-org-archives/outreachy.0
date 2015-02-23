X-GM-THRID: 2732794576896
X-Received: by 10.182.246.37 with SMTP id xt5mr13621622obc.25.1424722028638;
        Mon, 23 Feb 2015 12:07:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.10 with SMTP id l10ls1545015qge.73.gmail; Mon, 23 Feb
 2015 12:07:08 -0800 (PST)
X-Received: by 10.140.201.202 with SMTP id w193mr13461952qha.7.1424722028478;
        Mon, 23 Feb 2015 12:07:08 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x236.google.com (mail-qc0-x236.google.com. [2607:f8b0:400d:c01::236])
        by gmr-mx.google.com with ESMTPS id q2si6447335qcn.2.2015.02.23.12.07.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:07:08 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::236 as permitted sender) client-ip=2607:f8b0:400d:c01::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x236.google.com with SMTP id r5so13040003qcx.10
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=1BLgXrta9+uUsqDrydPSO3PFU/LDUGI8JDSbcZqebLQ=;
        b=oR9Gvg4Z4KiLBoQw95z5X+hkAFRZYbj7Kr5pcE4oJoqCb5unca+55HYvUP5sbOfXzr
         M0EKtEcp7Od4KM/k7e6fYmTy/frpnxEk8hE4STZ+N8kBMg9kt8kfNvcTmhaeVc9UnTxT
         FuaL7iwGwJXr0MFXIVcW9A08dJUkQ+OvG9yNFSbi5BncOLB6Ohfw4OUZ914CYmXag+pZ
         xRnhsEjcGb6K3X2nofSQZYfTCVhbWnHEA78kmD/UrbvTe6QSCGl8+9uofqOo4WoYv7IJ
         bop1s3MS3Y2YxaqSi81PpBVcKumsEnOpNepjouNs3jApFU/ngK7UNAJU7U1/xpc0gzod
         b9eQ==
X-Received: by 10.140.22.234 with SMTP id 97mr27278299qgn.52.1424722028347;
        Mon, 23 Feb 2015 12:07:08 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 9sm20663029qgo.38.2015.02.23.12.07.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:07:07 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB886A.2000606@gmail.com>
Date: Mon, 23 Feb 2015 15:07:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8188eu: Reindent code
 to reduce line size
References: <20150223094426.GA4689@gmail.com>
In-Reply-To: <20150223094426.GA4689@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 04:44, Vatika Harlalka wrote:
> Reindent code to reduce line size and increase readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
> Changes in v3: Fixed spelling error in commit message.
> Changes in v2: Changed subject line to imperative form ( "Reindented" to "Reindent" ).
> 
>  drivers/staging/rtl8188eu/hal/bb_cfg.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
> index e1b5437..5ad080a 100644
> --- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
> +++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
> @@ -508,7 +508,8 @@ static u32 array_phy_reg_pg_8188e[] = {
>  
>  };
>  
> -static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitmask, u32 data)
> +static void store_pwrindex_offset(struct adapter *Adapter,
> +				u32 regaddr, u32 bitmask, u32 data)

You need to get the alignment right of you break up lines - the second
line function arguments need to line up with the opening bracket of the
function. This goes for both functions.

Once broken up, the above should look like this:
static void store_pwrindex_offset(struct adapter *Adapter,
				  u32 regaddr, u32 bitmask, u32 data)

Jes


>  {
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(Adapter);
>  	 u8 pwrGrpCnt = hal_data->pwrGroupCnt;
> @@ -553,7 +554,8 @@ static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitm
>  	}
>  }
>  
> -static void rtl_addr_delay(struct adapter *adapt, u32 addr, u32 bit_mask, u32 data)
> +static void rtl_addr_delay(struct adapter *adapt,
> +			u32 addr, u32 bit_mask, u32 data)
>  {
>  	if (addr == 0xfe)
>  		msleep(50);
> 


