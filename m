X-GM-THRID: 3455056871424
X-Received: by 10.112.9.65 with SMTP id x1mr839955lba.16.1424901833548;
        Wed, 25 Feb 2015 14:03:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.39 with SMTP id cz7ls1075716wib.36.gmail; Wed, 25 Feb
 2015 14:03:53 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr820103wjb.6.1424901833198;
        Wed, 25 Feb 2015 14:03:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si1218271wib.3.2015.02.25.14.03.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 14:03:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,647,1418079600"; 
   d="scan'208";a="123411859"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2015 23:03:52 +0100
Date: Wed, 25 Feb 2015 23:03:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: remove unnecessary
 break after return
In-Reply-To: <1424901617-9037-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502252302420.2029@localhost6.localdomain6>
References: <1424901617-9037-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Melike Yurtoglu wrote:

> WARNING: break is not useful after a goto or return.
> return after the break value is removed unnecessary. That was found by running checkpatch.

"return after the break value" is confusing, because it is the break that 
is after the return.

Also, break has no value.  It just changes the control flow.

Please check that your commit messages stay within 80 characters.

julia

> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c b/drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c
> index 33777d2..2dc1856 100644
> --- a/drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c
> +++ b/drivers/staging/rtl8723au/hal/HalPwrSeqCmd.c
> @@ -148,7 +148,6 @@ u8 HalPwrSeqCmdParsing23a(struct rtw_adapter *padapter, u8 CutVersion,
>  					 ("HalPwrSeqCmdParsing23a: "
>  					  "PWR_CMD_END\n"));
>  				return true;
> -				break;
>  
>  			default:
>  				RT_TRACE(_module_hal_init_c_, _drv_err_,
> -- 
> 1.8.3.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424901617-9037-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

