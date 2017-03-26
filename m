X-GM-THRID: 6401825299773784064
X-Received: by 10.223.163.206 with SMTP id m14mr1054417wrb.15.1490543123834;
        Sun, 26 Mar 2017 08:45:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.0.141 with SMTP id 135ls959778lfa.3.gmail; Sun, 26 Mar 2017
 08:45:23 -0700 (PDT)
X-Received: by 10.25.198.86 with SMTP id w83mr2218999lff.28.1490543123108;
        Sun, 26 Mar 2017 08:45:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x188si449414wmx.0.2017.03.26.08.45.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 08:45:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,227,1486422000"; 
   d="scan'208";a="266256204"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2017 17:45:22 +0200
Date: Sun, 26 Mar 2017 17:45:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, mawilcox@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH] pid_namespace: Remove externs from
 .c files
In-Reply-To: <20170326151131.GA14870@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.20.1703261744400.2204@hadrien>
References: <20170326151131.GA14870@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Mar 2017, sayli karnik wrote:

> Fix checkpatch issue: Externs should be avoided in .c files
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  include/linux/pid_namespace.h | 1 +
>  kernel/pid_namespace.c        | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/linux/pid_namespace.h b/include/linux/pid_namespace.h
> index c2a989d..5a7e664 100644
> --- a/include/linux/pid_namespace.h
> +++ b/include/linux/pid_namespace.h
> @@ -66,6 +66,7 @@ static inline struct pid_namespace *get_pid_ns(struct pid_namespace *ns)
>  	return ns;
>  }
>
> +extern int pid_max;
>  extern struct pid_namespace *copy_pid_ns(unsigned long flags,
>  	struct user_namespace *user_ns, struct pid_namespace *ns);
>  extern void zap_pid_ns_processes(struct pid_namespace *pid_ns);
> diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
> index de461aa..37e2b52 100644
> --- a/kernel/pid_namespace.c
> +++ b/kernel/pid_namespace.c
> @@ -311,7 +311,6 @@ static int pid_ns_ctl_handler(struct ctl_table *table, int write,
>  	return proc_dointvec_minmax(&tmp, write, buffer, lenp, ppos);
>  }
>
> -extern int pid_max;
>  static int zero = 0;
>  static struct ctl_table pid_ns_ctl_table[] = {

I wondered whether this structure could be const.  It seems that it is not
completely trivial to do that, but there is a structure just below this
one that could be const.

julia

>  	{
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170326151131.GA14870%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

