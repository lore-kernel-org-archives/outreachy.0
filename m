X-GM-THRID: 356598677504
X-Received: by 10.180.101.101 with SMTP id ff5mr534920wib.5.1424282221068;
        Wed, 18 Feb 2015 09:57:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.201 with SMTP id m9ls60823lah.6.gmail; Wed, 18 Feb 2015
 09:57:00 -0800 (PST)
X-Received: by 10.112.171.37 with SMTP id ar5mr88892lbc.16.1424282220185;
        Wed, 18 Feb 2015 09:57:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si6222193wia.0.2015.02.18.09.57.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 09:57:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,603,1418079600"; 
   d="scan'208";a="100519254"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 18:56:59 +0100
Date: Wed, 18 Feb 2015 18:56:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Fix code indent
 warning style
In-Reply-To: <1424191566-22467-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1502181854320.2390@hadrien>
References: <1424191566-22467-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 17 Feb 2015, Haneen Mohammed wrote:

> Patch to the rtsx_scsi.c file for the following checkpatch.pl warning:
> WARNING: suspect code indent for conditional statements (8, 8)

Actually, your fix has nothing to do with indentation, even though
indentation is what checkpatch noticed.  It would be better to describe
what you have done.  In this case, it would be something like, remove
unneeded braces around a single-statement if branch.

The commit message also doesn't need to mention the file name, because
that can be found directly in the diffstat.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424191566-22467-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

