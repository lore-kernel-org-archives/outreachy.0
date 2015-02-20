X-GM-THRID: 1328454565888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6f1dd75346e94f50
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr230633laj.6.1424452933758;
        Fri, 20 Feb 2015 09:22:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.6 with SMTP id v6ls311947laa.13.gmail; Fri, 20 Feb 2015
 09:22:13 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr1449990lbb.20.1424452933290;
        Fri, 20 Feb 2015 09:22:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si144145wib.2.2015.02.20.09.22.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 09:22:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,615,1418079600"; 
   d="scan'208";a="122722605"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 18:22:12 +0100
Date: Fri, 20 Feb 2015 18:22:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: lustre: lnet: klnds:
 socklnd: Add blank line after declarations
In-Reply-To: <1424446070-14232-4-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502201821110.2375@hadrien>
References: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com> <1424446070-14232-4-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

In the subject line, Staging: lustre: should be enough.  You can look at
other patches on this file using git log --oneline file to see what
subject lines other people have used.

julia

On Fri, 20 Feb 2015, Melike Yurtoglu wrote:

> WARNING: "Missing a blank line after declarations"
> checkpatch.pl warning in o2iblnd_modparams.c
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> index 4e66f2b..49b1b51 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> @@ -2445,6 +2445,7 @@ ksocknal_base_startup(void)
>
>  	for (i = 0; i < *ksocknal_tunables.ksnd_nconnds; i++) {
>  		char name[16];
> +
>  		spin_lock_bh(&ksocknal_data.ksnd_connd_lock);
>  		ksocknal_data.ksnd_connd_starting++;
>  		spin_unlock_bh(&ksocknal_data.ksnd_connd_lock);
> @@ -2709,6 +2710,7 @@ ksocknal_start_schedulers(struct ksock_sched_info *info)
>  		long		id;
>  		char		name[20];
>  		ksock_sched_t	*sched;
> +
>  		id = KSOCK_THREAD_ID(info->ksi_cpt, info->ksi_nthreads + i);
>  		sched = &info->ksi_scheds[KSOCK_THREAD_SID(id)];
>  		snprintf(name, sizeof(name), "socknal_sd%02d_%02d",
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424446070-14232-4-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

