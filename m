X-GM-THRID: 3489260371968
X-Received: by 10.180.160.176 with SMTP id xl16mr2361533wib.6.1424903527265;
        Wed, 25 Feb 2015 14:32:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.140 with SMTP id ay12ls969838lab.2.gmail; Wed, 25 Feb
 2015 14:32:06 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr816790lbb.10.1424903526839;
        Wed, 25 Feb 2015 14:32:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ev8si1216407wib.3.2015.02.25.14.32.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 14:32:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,647,1418079600"; 
   d="scan'208";a="101340967"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2015 23:32:06 +0100
Date: Wed, 25 Feb 2015 23:32:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Remove spaces at
 the start of a line
In-Reply-To: <1424903168-10197-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502252330300.2029@localhost6.localdomain6>
References: <1424903168-10197-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Melike Yurtoglu wrote:

> WARNING: please, no spaces at the start of a line
> That was found by running checkpatch.
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/rtl8723au/hal/odm.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/hal/odm.c b/drivers/staging/rtl8723au/hal/odm.c
> index 5269b46..a527c33 100644
> --- a/drivers/staging/rtl8723au/hal/odm.c
> +++ b/drivers/staging/rtl8723au/hal/odm.c
> @@ -216,16 +216,16 @@ static void ODM_EdcaTurboInit23a(struct dm_odm_t *pDM_Odm);
>  #define	RxDefaultAnt2		0x569a
>  
>  bool odm_StaDefAntSel(struct dm_odm_t *pDM_Odm,
> - u32 OFDM_Ant1_Cnt,
> - u32 OFDM_Ant2_Cnt,
> - u32 CCK_Ant1_Cnt,
> - u32 CCK_Ant2_Cnt,
> - u8 *pDefAnt
> +u32 OFDM_Ant1_Cnt,
> +u32 OFDM_Ant2_Cnt,
> +u32 CCK_Ant1_Cnt,
> +u32 CCK_Ant2_Cnt,
> +u8 *pDefAnt

This does not seem like a good solution.  I think that the meaning of the 
message is that there should be tabs, not spaces.

>  	);
>  
>  void odm_SetRxIdleAnt(struct dm_odm_t *pDM_Odm,
>  	u8 Ant,
> -   bool   bDualPath
> +bool   bDualPath

Likewise, here all of the arguments should be lines up in some way.  
Perhaps check what is done elsewhere in the file.  One would think that 
there would even be enough room on a single line here, but maybe not 
quite.

julia

>  );
>  
>  /* 3 Export Interface */
> -- 
> 1.8.3.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424903168-10197-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

