X-GM-THRID: 2732794576896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9a4efa979c10540c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.1.5 with SMTP id 5mr1158670lai.4.1424684335590;
        Mon, 23 Feb 2015 01:38:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.74 with SMTP id f10ls506364wij.2.gmail; Mon, 23 Feb
 2015 01:38:55 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr1154523wix.0.1424684335189;
        Mon, 23 Feb 2015 01:38:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si632734wib.3.2015.02.23.01.38.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:38:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="122950344"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 10:38:54 +0100
Date: Mon, 23 Feb 2015 10:38:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Reindent code
 to reduce line size
In-Reply-To: <20150223093501.GA4646@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231038270.2479@hadrien>
References: <20150223093501.GA4646@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Vatika Harlalka wrote:

> Reident code to reduce line size and increase readability.

Spelling mistake :)

julia

>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
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
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150223093501.GA4646%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

