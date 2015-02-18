X-GM-THRID: 432606806016
X-Received: by 10.180.89.194 with SMTP id bq2mr281821wib.4.1424291732989;
        Wed, 18 Feb 2015 12:35:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.9 with SMTP id r9ls72199lae.75.gmail; Wed, 18 Feb 2015
 12:35:31 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr161003lbb.14.1424291730981;
        Wed, 18 Feb 2015 12:35:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si6264884wic.1.2015.02.18.12.35.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 12:35:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,604,1418079600"; 
   d="scan'208";a="100531232"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 21:35:30 +0100
Date: Wed, 18 Feb 2015 21:35:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Remove braces around
 single if-statement
In-Reply-To: <1424200549-23115-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1502182135090.2248@localhost6.localdomain6>
References: <1424200549-23115-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 17 Feb 2015, Haneen Mohammed wrote:

> This patch fixes the checkpatch.pl warning:
> 
> WARNING: suspect code indent for conditional statements (8, 8)

Please change the commit message as well.  It should reflect what was 
done.

julia

> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_scsi.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
> index 1161082..42645834 100644
> --- a/drivers/staging/rts5208/rtsx_scsi.c
> +++ b/drivers/staging/rts5208/rtsx_scsi.c
> @@ -519,10 +519,8 @@ static int inquiry(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  #else
>  	if (chip->mspro_formatter_enable)
>  #endif
> -	{
>  		if (!card || (card == MS_CARD))
>  			pro_formatter_flag = 1;
> -	}
>  
>  	if (pro_formatter_flag) {
>  		if (scsi_bufflen(srb) < 56)
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424200549-23115-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

