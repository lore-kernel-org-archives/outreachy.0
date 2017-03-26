X-GM-THRID: 6401842104590401536
X-Received: by 10.28.142.134 with SMTP id q128mr245307wmd.7.1490545162653;
        Sun, 26 Mar 2017 09:19:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.227.79 with SMTP id c15ls963808lfk.49.gmail; Sun, 26 Mar
 2017 09:19:21 -0700 (PDT)
X-Received: by 10.25.145.90 with SMTP id y26mr290928lfj.21.1490545161737;
        Sun, 26 Mar 2017 09:19:21 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si831385wmg.0.2017.03.26.09.19.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 09:19:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,227,1486422000"; 
   d="scan'208";a="218088769"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2017 18:19:20 +0200
Date: Sun, 26 Mar 2017 18:19:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: mawilcox@microsoft.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] kernel: pid_namespace: Constify
 ctl_path structure
In-Reply-To: <1490544994-32649-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703261818450.2204@hadrien>
References: <1490544994-32649-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Mar 2017, Gargi Sharma wrote:

> The struct kern_path of the type ctl_path is used as an input
> to the function register_sysctl_paths which registers a sysctl
> hierarchy. ctl_path is simply the path to the directory the sysctl
> table is in and is not modified anywhere.
>
> Done using Coccinelle:
> @r1 disable optional_qualifier@
> identifier s,i;
> position p;
> @@
>
> static struct ctl_path i@p[] ={...};
>
> @ok1@
> identifier r1.i;
> expression e;
> position p;
> @@
> e = i@p
>
> @bad@
> position p != {r1.p,ok1.p};
> identifier r1.i;
> @@
> e@i@p
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> static
> +const
> struct ctl_path i[] = { ... };
>
> text   data    bss    dec    hex filename
>    5462   1698    192   7352   1cb8 kernel/pid_namespace.o
>
> text   data    bss    dec    hex filename
>    5526   1634    192   7352   1cb8 kernel/pid_namespace.o

You should say what these numbers represent (one is the result of size
before the transformation and one after).

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  kernel/pid_namespace.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
> index 071ebd3..f8a5a0c 100644
> --- a/kernel/pid_namespace.c
> +++ b/kernel/pid_namespace.c
> @@ -323,7 +323,7 @@ static struct ctl_table pid_ns_ctl_table[] = {
>  	},
>  	{ }
>  };
> -static struct ctl_path kern_path[] = { { .procname = "kernel", }, { } };
> +static const struct ctl_path kern_path[] = { { .procname = "kernel", }, { } };
>  #endif	/* CONFIG_CHECKPOINT_RESTORE */
>
>  int reboot_pid_ns(struct pid_namespace *pid_ns, int cmd)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1490544994-32649-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

