X-GM-THRID: 784492134400
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c97083510a464cd0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.221.65 with SMTP id qc1mr834582wjc.7.1424378114990;
        Thu, 19 Feb 2015 12:35:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.129 with SMTP id d1ls178021laf.18.gmail; Thu, 19 Feb
 2015 12:35:14 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr858657lbc.22.1424378114519;
        Thu, 19 Feb 2015 12:35:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si6487018wif.0.2015.02.19.12.35.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:35:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="100663912"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 21:35:13 +0100
Date: Thu, 19 Feb 2015 21:35:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: dgnc: Removed unnecessary
 braces
In-Reply-To: <1424370082-14359-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192133310.2192@localhost6.localdomain6>
References: <1424370082-14359-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Melike Yurtoglu wrote:

> The following patch fixes the checkpatch.pl warning:
> WARNING: braces {} are not necessary for single statement blocks

I think it would be much clearer to say eg "remove empty else branch".  In 
this case, if you remove the braces and leave the else, you have invalid 
code.  Also, what is in the braces is not a statement, it is only 
comments.  So the checkpatch message is overall more misleading than 
useful.

julia

> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
> 
> v2:changed the subject
> 
>  drivers/staging/dgnc/dgnc_tty.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> index f81a375..9ae1656 100644
> --- a/drivers/staging/dgnc/dgnc_tty.c
> +++ b/drivers/staging/dgnc/dgnc_tty.c
> @@ -887,9 +887,7 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
>  			}
>  		}
>  		/* No FLOW */
> -		else {
>  			/* Empty... Can't do anything about the impending overflow... */
> -		}
>  	}
>  
>  	/*
> @@ -921,9 +919,7 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
>  			ch->ch_bd->bd_ops->send_start_character(ch);
>  		}
>  		/* No FLOW */
> -		else {
>  			/* Nothing needed. */
> -		}
>  	}
>  }
>  
> -- 
> 1.8.3.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424370082-14359-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

