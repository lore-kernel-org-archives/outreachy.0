X-GM-THRID: 2732794576896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9a4efa979c10540c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.183.3.43 with SMTP id bt11mr14166211obd.7.1424722234070;
        Mon, 23 Feb 2015 12:10:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.234 with SMTP id t10ls992140igr.15.gmail; Mon, 23 Feb
 2015 12:10:33 -0800 (PST)
X-Received: by 10.42.62.19 with SMTP id w19mr14187791ich.30.1424722233900;
        Mon, 23 Feb 2015 12:10:33 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x22c.google.com (mail-qa0-x22c.google.com. [2607:f8b0:400d:c00::22c])
        by gmr-mx.google.com with ESMTPS id q2si6449165qcn.2.2015.02.23.12.10.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:10:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22c as permitted sender) client-ip=2607:f8b0:400d:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22c as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f44.google.com with SMTP id n8so23879975qaq.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=Nm1FE7H0Dimsk5UEHM1IRswizProIg9IvZ1uMuCIAtw=;
        b=zVZcA8Ilu1gDXXn7LBOJhFI9/o840t0xjdkjX2Dgh7A1DAs9XCJ8EVO2y1dpOrwv3D
         84NsN2wWmLqcPkfjAbT0y+iBZMOyyvkCtcP3sfQV3zq7WA4Wt9aGwIMXRvwhA8Eu5+Mm
         xe3I+ovUia9LC0nG9H3PsJeJDCwNtbf3/mgWBbZ5uU/aiJu1eED80KWC0jHJsHovpWfA
         L9tCbtSuMzgMkKoUJhkGhNYifybnjeToeNiGLnVOO7wTgLxqle6ii9VMmk5rN3hmAXtC
         6/ZV0tosaZtqRULInPjJ25kbMRdrgITrZNlz6gJUkXtQDWZnXe/Rbn9ixElTUYDs4I11
         ISgg==
X-Received: by 10.140.38.102 with SMTP id s93mr8491027qgs.106.1424722233796;
        Mon, 23 Feb 2015 12:10:33 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id l78sm15768334qhl.34.2015.02.23.12.10.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:10:33 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8938.1030000@gmail.com>
Date: Mon, 23 Feb 2015 15:10:32 -0500
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
>  {
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(Adapter);
>  	 u8 pwrGrpCnt = hal_data->pwrGroupCnt;

It looks like you already started addressing the follow-on issue that I
wanted to raise, but you didn't specify that this patch should go on top
of another patch.

You shouldn't really use u8 for an index, it is better to use int, and
if you pick a shorter name it will help breaking down the lines in the
follow-on code. I would recommend doing something like this:

	int idx = hal_data->pwrGroupCnt;

	if (regaddr == rTxAGC_A_Rate18_06)
		hal_data->MCSTxPowerLevelOriginalOffset[idx][0] = data;
..... do this for all users of hal_data->pwrGroupCnt in this function.

Cheers,
Jes

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


