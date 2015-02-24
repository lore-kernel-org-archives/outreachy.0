X-GM-THRID: 3279011446784
X-Received: by 10.194.11.70 with SMTP id o6mr2379763wjb.6.1424806113121;
        Tue, 24 Feb 2015 11:28:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.129 with SMTP id d1ls607178laf.18.gmail; Tue, 24 Feb
 2015 11:28:32 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr2454528lbc.22.1424806112618;
        Tue, 24 Feb 2015 11:28:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si1139140wia.0.2015.02.24.11.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 11:28:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,640,1418079600"; 
   d="scan'208";a="101194441"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2015 20:28:31 +0100
Date: Tue, 24 Feb 2015 20:28:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: hal: Delete space
 before ';'
In-Reply-To: <1424799407-1248-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502242028180.2049@localhost6.localdomain6>
References: <1424799407-1248-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1024839253-1424806112=:2049"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1024839253-1424806112=:2049
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 24 Feb 2015, Hatice ERTÜRK wrote:

> Space prohibited before semicolon.That's why delete space before
> semicolon.It is prohibited by the kernel coding.

Remember to put a space after punctuation.

julia

> 
> This Warning found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8723au/hal/odm_HWConfig.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/hal/odm_HWConfig.c b/drivers/staging/rtl8723au/hal/odm_HWConfig.c
> index fb3cc87..7d923e9 100644
> --- a/drivers/staging/rtl8723au/hal/odm_HWConfig.c
> +++ b/drivers/staging/rtl8723au/hal/odm_HWConfig.c
> @@ -138,16 +138,16 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct dm_odm_t *pDM_Odm,
>  			report = (cck_agc_rpt & 0x60)>>5;
>  			switch (report) {
>  			case 0x3:
> -				rx_pwr_all = -46 - ((cck_agc_rpt & 0x1f)<<1) ;
> +				rx_pwr_all = -46 - ((cck_agc_rpt & 0x1f)<<1);
>  				break;
>  			case 0x2:
>  				rx_pwr_all = -26 - ((cck_agc_rpt & 0x1f)<<1);
>  				break;
>  			case 0x1:
> -				rx_pwr_all = -12 - ((cck_agc_rpt & 0x1f)<<1) ;
> +				rx_pwr_all = -12 - ((cck_agc_rpt & 0x1f)<<1);
>  				break;
>  			case 0x0:
> -				rx_pwr_all = 16 - ((cck_agc_rpt & 0x1f)<<1) ;
> +				rx_pwr_all = 16 - ((cck_agc_rpt & 0x1f)<<1);
>  				break;
>  			}
>  		}
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424799407-1248-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-1024839253-1424806112=:2049--

