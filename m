X-GM-THRID: 4799843008512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,37879575871abf20
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.126.194 with SMTP id na2mr2929142lbb.18.1425159184111;
        Sat, 28 Feb 2015 13:33:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls301130lah.23.gmail; Sat, 28 Feb
 2015 13:33:02 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr2868505laj.6.1425159182516;
        Sat, 28 Feb 2015 13:33:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si399107wia.0.2015.02.28.13.33.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 13:33:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,668,1418079600"; 
   d="scan'208";a="101654889"
Received: from unknown (HELO hadrien.local) ([207.164.135.98])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2015 22:32:59 +0100
Date: Sat, 28 Feb 2015 16:32:49 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: lustre: Removed space
 prohibited
In-Reply-To: <1425069731-30165-3-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502281632000.2719@hadrien>
References: <1425069731-30165-1-git-send-email-aysemelikeyurtoglu@gmail.com> <1425069731-30165-3-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 27 Feb 2015, Melike Yurtoglu wrote:

> WARNING: space prohibited before that ','
> Removed space prohibited. That was found by running checkpatch.
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> index bc0e8e4..34372cd 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> @@ -54,7 +54,7 @@ static struct ll_rpc_opcode {
>  	{ OST_SETATTR,      "ost_setattr" },
>  	{ OST_READ,	 "ost_read" },
>  	{ OST_WRITE,	"ost_write" },
> -	{ OST_CREATE ,      "ost_create" },
> +	{ OST_CREATE,      "ost_create" },

I think it would be better to improve all of the spacing issues in this
structure.  At least the read and write strings look badly placed.

julia

>  	{ OST_DESTROY,      "ost_destroy" },
>  	{ OST_GET_INFO,     "ost_get_info" },
>  	{ OST_CONNECT,      "ost_connect" },
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425069731-30165-3-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

