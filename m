X-GM-THRID: 6209462121071116288
X-Received: by 10.112.151.9 with SMTP id um9mr6941632lbb.19.1445758606567;
        Sun, 25 Oct 2015 00:36:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.8 with SMTP id f8ls298447lff.31.gmail; Sun, 25 Oct 2015
 00:36:44 -0700 (PDT)
X-Received: by 10.112.145.201 with SMTP id sw9mr5592408lbb.13.1445758604056;
        Sun, 25 Oct 2015 00:36:44 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g9si35341wmd.2.2015.10.25.00.36.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 00:36:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,195,1444687200"; 
   d="scan'208";a="151673694"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Oct 2015 08:36:43 +0100
Date: Sun, 25 Oct 2015 08:36:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: r8723au: remove external
 function declarations from .c file
In-Reply-To: <a039d39e612445309cc6263707209995cb3cc071.1445752141.git.amsfield22@gmail.com>
Message-ID: <alpine.DEB.2.02.1510250836210.2050@localhost6.localdomain6>
References: <cover.1445752141.git.amsfield22@gmail.com> <a039d39e612445309cc6263707209995cb3cc071.1445752141.git.amsfield22@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 24 Oct 2015, Alison Schofield wrote:

> Remove unused external function declarations.
> 
> Addresses checkpatch.pl:
> WARNING: externs should be avoided in .c files
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_efuse.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
> index bf27ea4..906b578 100644
> --- a/drivers/staging/rtl8723au/core/rtw_efuse.c
> +++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
> @@ -274,7 +274,6 @@ u8 EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
>  }
>  
>  /* Copy from WMAC fot EFUSE write 1 byte. */
> -void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value);

Are these really external declarations?

julia

>  void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value)
>  {
>  	u8	Bytetemp = {0x00};
> @@ -502,7 +501,6 @@ int rtw_BT_efuse_map_read23a(struct rtw_adapter *padapter,
>  }
>  
>  /* Read All Efuse content */
> -void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse);
>  void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
>  {
>  	u16	mapLen = 0;
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a039d39e612445309cc6263707209995cb3cc071.1445752141.git.amsfield22%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

