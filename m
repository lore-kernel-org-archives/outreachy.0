X-GM-THRID: 6202220318097932288
X-Received: by 10.180.35.132 with SMTP id h4mr2834298wij.5.1444078832368;
        Mon, 05 Oct 2015 14:00:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.38 with SMTP id fl6ls943643wib.35.canary; Mon, 05 Oct
 2015 14:00:31 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr2834687wic.3.1444078831984;
        Mon, 05 Oct 2015 14:00:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w4si406438wiz.0.2015.10.05.14.00.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 14:00:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,640,1437429600"; 
   d="scan'208";a="181213124"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2015 23:00:31 +0200
Date: Mon, 5 Oct 2015 22:00:30 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lnet: klnds: socklnd:
 Missing a blank line after declarations
In-Reply-To: <1444066940-6921-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1510052159510.2608@hadrien>
References: <1444066940-6921-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1099360703-1444078831=:2608"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1099360703-1444078831=:2608
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 5 Oct 2015, Hatice ERTÜRK wrote:

> This patch fixes these warning messages found by checkpatch.pl:
> WARNING : Missing a blank line after declarations.

A better subject would be "Add blank line after a declaration. Problem
found using checkpatch."  That would make more explicit what you did.

julia

>
> Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> index 904d158..1b472f4 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> @@ -2440,6 +2440,7 @@ ksocknal_base_startup(void)
>
>  	for (i = 0; i < *ksocknal_tunables.ksnd_nconnds; i++) {
>  		char name[16];
> +
>  		spin_lock_bh(&ksocknal_data.ksnd_connd_lock);
>  		ksocknal_data.ksnd_connd_starting++;
>  		spin_unlock_bh(&ksocknal_data.ksnd_connd_lock);
> @@ -2705,6 +2706,7 @@ ksocknal_start_schedulers(struct ksock_sched_info *info)
>  		long id;
>  		char name[20];
>  		ksock_sched_t *sched;
> +
>  		id = KSOCK_THREAD_ID(info->ksi_cpt, info->ksi_nthreads + i);
>  		sched = &info->ksi_scheds[KSOCK_THREAD_SID(id)];
>  		snprintf(name, sizeof(name), "socknal_sd%02d_%02d",
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444066940-6921-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1099360703-1444078831=:2608--

