X-GM-THRID: 641520893952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3222443d3ba6a4d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr871019wib.5.1424337318987;
        Thu, 19 Feb 2015 01:15:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.101 with SMTP id gt5ls242762wib.28.gmail; Thu, 19 Feb
 2015 01:15:18 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr424344wjb.4.1424337318683;
        Thu, 19 Feb 2015 01:15:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l8si65250wia.0.2015.02.19.01.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 01:15:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,607,1418079600"; 
   d="scan'208";a="122408563"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 10:15:18 +0100
Date: Thu, 19 Feb 2015 10:15:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Removed necessary
 braces {}
In-Reply-To: <1424336983-10853-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502191014280.2589@hadrien>
References: <1424336983-10853-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

In the subject, it should be "removed unnecessary braces".

Also, the focus on braces is a bit misleading.  Actually you are removing
the complete else.

julia

On Thu, 19 Feb 2015, Melike Yurtoglu wrote:

> The following patch fixes the checkpatch.pl warning:
> WARNING: braces {} are not necessary for single statement blocks
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424336983-10853-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

