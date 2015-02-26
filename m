X-GM-THRID: 3536544858112
X-Received: by 10.194.221.65 with SMTP id qc1mr1020012wjc.7.1424933272694;
        Wed, 25 Feb 2015 22:47:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.9 with SMTP id ci9ls918578lad.40.gmail; Wed, 25 Feb 2015
 22:47:50 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr1026282laj.6.1424933270713;
        Wed, 25 Feb 2015 22:47:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si53051wid.1.2015.02.25.22.47.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 22:47:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,651,1418079600"; 
   d="scan'208";a="101362680"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2015 07:47:49 +0100
Date: Thu, 26 Feb 2015 07:47:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Removed unnecessary
 braces
In-Reply-To: <1424907936-9368-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502260747320.2109@localhost6.localdomain6>
References: <1424907936-9368-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 26 Feb 2015, Yeliz Taneroglu wrote:

> The following patch fixes the checkpatch.pl warning:
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/i2o/i2o_proc.c | 6 ++----

i2o is going away.  Please try to avoid sending patches on it.

julia

>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/i2o/i2o_proc.c b/drivers/staging/i2o/i2o_proc.c
> index ad84f33..1102cb3 100644
> --- a/drivers/staging/i2o/i2o_proc.c
> +++ b/drivers/staging/i2o/i2o_proc.c
> @@ -85,9 +85,8 @@ static int print_serial_number(struct seq_file *seq, u8 * serialno, int max_len)
>  	switch (serialno[0]) {
>  	case I2O_SNFORMAT_BINARY:	/* Binary */
>  		seq_printf(seq, "0x");
> -		for (i = 0; i < serialno[1]; i++) {
> +		for (i = 0; i < serialno[1]; i++)
>  			seq_printf(seq, "%02X", serialno[2 + i]);
> -		}
>  		break;
>  
>  	case I2O_SNFORMAT_ASCII:	/* ASCII */
> @@ -101,9 +100,8 @@ static int print_serial_number(struct seq_file *seq, u8 * serialno, int max_len)
>  			seq_printf(seq, "%s", &serialno[2]);
>  		} else {
>  			/* print chars for specified length */
> -			for (i = 0; i < serialno[1]; i++) {
> +			for (i = 0; i < serialno[1]; i++)
>  				seq_printf(seq, "%c", serialno[2 + i]);
> -			}
>  		}
>  		break;
>  
> -- 
> 1.8.3.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424907936-9368-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

