X-GM-THRID: 432606806016
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4a6d4a554d90bddd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr181231lbf.21.1424297815003;
        Wed, 18 Feb 2015 14:16:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.134 with SMTP id eu6ls1241237wic.50.canary; Wed, 18
 Feb 2015 14:16:54 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr191504wjc.3.1424297814701;
        Wed, 18 Feb 2015 14:16:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ev8si6274536wib.3.2015.02.18.14.16.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 14:16:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,604,1418079600"; 
   d="scan'208";a="100537676"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 23:16:54 +0100
Date: Wed, 18 Feb 2015 23:16:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Remove braces around
 single if-statement
In-Reply-To: <1424207434-24078-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1502182316160.2248@localhost6.localdomain6>
References: <1424205499-23826-1-git-send-email-hamohammed.sa@gmail.com> <1424207434-24078-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

You need to put [PATCH v2] up in the subject line as well.  Then is 
immediately clear that this is the second version of the patch.

julia

On Wed, 18 Feb 2015, Haneen Mohammed wrote:

> This patch removes unneeded braces around a single if-statement.
> This problem was found using checkpatch.pl.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v2: changed commit message
> 
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424207434-24078-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

