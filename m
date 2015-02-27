X-GM-THRID: 4823613177856
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cca04a5701bd2c31
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.53.71 with SMTP id vp7mr15468806icb.12.1425077275768;
        Fri, 27 Feb 2015 14:47:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.254.129 with SMTP id ai1ls393595igd.33.canary; Fri, 27 Feb
 2015 14:47:55 -0800 (PST)
X-Received: by 10.42.94.135 with SMTP id b7mr15368680icn.1.1425077275552;
        Fri, 27 Feb 2015 14:47:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e11si350739igq.0.2015.02.27.14.47.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 14:47:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,663,1418079600"; 
   d="scan'208";a="101595160"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 23:47:52 +0100
Date: Fri, 27 Feb 2015 23:47:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Change char * array
 type as static const
In-Reply-To: <1425067393-26435-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502272346040.2764@hadrien>
References: <1425067393-26435-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 27 Feb 2015, Melike Yurtoglu wrote:

> WARNING: char * array declaration might be better as static
> const. That was found by running checkpatch.
> After this exchange that can be accessed pointer, without object
> derived from the instance but just just read operation can be done in
> pointer.
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/import.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/import.c b/drivers/staging/lustre/lustre/ptlrpc/import.c
> index 4ceb90d..3a60124 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/import.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/import.c
> @@ -623,7 +623,7 @@ int ptlrpc_connect_import(struct obd_import *imp)
>  	int set_transno = 0;
>  	__u64 committed_before_reconnect = 0;
>  	struct ptlrpc_request *request;
> -	char *bufs[] = { NULL,
> +	static const char const *bufs[] = { NULL,
>  			 obd2cli_tgt(imp->imp_obd),
>  			 obd->obd_uuid.uuid,
>  			 (char *)&imp->imp_dlm_handle,

If a local variable is static, then its value is accumulated from one call
to the next.  It's initializer is only evaluated on the first call.  Is
that going to give the correct behavior here?  For example, does
obd->obd_uuid.uuid have the same value on every call?  If this is the
case, the reason why has to be explained more carefully in the commit
message.

julia

> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425067393-26435-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

