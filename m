X-GM-THRID: 6330303746353922048
X-Received: by 10.194.104.230 with SMTP id gh6mr1495295wjb.7.1473943849162;
        Thu, 15 Sep 2016 05:50:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.230.146 with SMTP id e18ls292563wmi.16.canary; Thu, 15 Sep
 2016 05:50:48 -0700 (PDT)
X-Received: by 10.28.193.198 with SMTP id r189mr504418wmf.7.1473943848376;
        Thu, 15 Sep 2016 05:50:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v132si153179wmf.1.2016.09.15.05.50.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:50:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,339,1470693600"; 
   d="scan'208";a="193544710"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 14:50:47 +0200
Date: Thu, 15 Sep 2016 14:50:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v4 6/6] staging: xgifb: fix alignment
 for if arguments
In-Reply-To: <940f51ac0ff58da6ff9a9b7b296ef8cfdda8907d.1473942527.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609151449000.3045@hadrien>
References: <cover.1473942527.git.gs051095@gmail.com> <940f51ac0ff58da6ff9a9b7b296ef8cfdda8907d.1473942527.git.gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Gargi Sharma wrote:

> Reduce indentation of multi-line if-test
> arguments for better readability.

You can use more horizontal space for the commit message.  Just don't go
over 80 characters.

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 8488612..068f422 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -1740,7 +1740,7 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
>  		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
>  				(unsigned short) (0x10 * i));
>  		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
> -				!(pVBInfo->VBInfo & SetInSlaveMode)) {
> +			!(pVBInfo->VBInfo & SetInSlaveMode)) {

Actually, this doesn't work out so well, because now the test is lined up
with the then branch, and one may misread it.  Could you pull the second
part of the test back to be aligned with the first part?  It's ok to use
spaces rather than tabs at the end, if this is needed.

julia

>  			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
>  			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
>  		} else {
> @@ -4132,8 +4132,7 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
>  					| TVSetHiVision))) {
>  				temp |= 0x0001;
>  				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
> -						!(pVBInfo->TVInfo
> -								& TVSimuMode))
> +					!(pVBInfo->TVInfo & TVSimuMode))
>  					temp &= (~0x0001);
>  			}
>  		}
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/940f51ac0ff58da6ff9a9b7b296ef8cfdda8907d.1473942527.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

