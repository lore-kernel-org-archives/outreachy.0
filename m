X-GM-THRID: 6257131864000036864
X-Received: by 10.194.92.232 with SMTP id cp8mr661880wjb.6.1456852543283;
        Tue, 01 Mar 2016 09:15:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.0.144 with SMTP id 138ls660560lfa.19.gmail; Tue, 01 Mar
 2016 09:15:42 -0800 (PST)
X-Received: by 10.112.16.34 with SMTP id c2mr2566335lbd.19.1456852542288;
        Tue, 01 Mar 2016 09:15:42 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si43303wmd.1.2016.03.01.09.15.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:15:42 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,524,1449529200"; 
   d="scan'208";a="205297350"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2016 18:15:41 +0100
Date: Tue, 1 Mar 2016 18:15:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] Staging: rtl8188eu: rtw_efuse:
 Do not print message if kzalloc() failed.
In-Reply-To: <7d9d1f27039f195d3f31bd061307e67470d38334.1456822984.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.10.1603011815170.2624@hadrien>
References: <cover.1456822984.git.bankarsandhya512@gmail.com> <7d9d1f27039f195d3f31bd061307e67470d38334.1456822984.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 1 Mar 2016, Sandhya Bankar wrote:

> Do not print message if kzalloc() failed.
> kzalloc() has its own messages. So no need to add extra one.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_efuse.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
> index fd8cf47..34d789c 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
> @@ -104,8 +104,7 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
>  	u8 u1temp = 0;
>
>  	efuseTbl = kzalloc(EFUSE_MAP_LEN_88E, GFP_KERNEL);
> -	if (efuseTbl == NULL) {
> -		DBG_88E("%s: alloc efuseTbl fail!\n", __func__);
> +	if (!efuseTbl) {
>  		return;
>  	}

Now there is only one statement in the branch and the braces are not
needed.

julia

