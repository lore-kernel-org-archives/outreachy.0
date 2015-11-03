X-GM-THRID: 6210043703457742848
X-Received: by 10.28.88.135 with SMTP id m129mr4037014wmb.4.1446592997255;
        Tue, 03 Nov 2015 15:23:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.26.74 with SMTP id a71ls90134lfa.30.gmail; Tue, 03 Nov 2015
 15:23:16 -0800 (PST)
X-Received: by 10.112.136.138 with SMTP id qa10mr2607444lbb.22.1446592996579;
        Tue, 03 Nov 2015 15:23:16 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id t2si724717wme.1.2015.11.03.15.23.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 15:23:16 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MgJSU-1a8Ykf1d7G-00NfWf; Wed, 04 Nov
 2015 00:23:15 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] scsi: bfa: bfa_svc: Remove 'struct timeval'
Date: Wed, 04 Nov 2015 00:23:14 +0100
Message-ID: <16723001.uPO9c12F8L@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151026194107.GA23869@amitoj-Inspiron-3542>
References: <20151026194107.GA23869@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:5zYbahZvPYeZItzRJp55HwXPynbwCumkALE8Zi1myi9305xamTv
 9Cnx8tbBEK+61Jv2vX2LSODBVAlz0sQzYHcIGYAqjJzciFnNIVAQs2YGs30WMsPIp4uibeQ
 pu39xExQgkrQKuWeteTBe9oiakLL1wKXnyw1xdsaa4C/RO28AvCzWshNj+P+0h7xahe+1A4
 TRttynx/Oxh/8Csv3espg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:nrRROMrhSTI=:6ZKal8Q69zWD3kNv5CjBEU
 QkhE4kRwbusQLRsj6pbGH2xWOGYfVbagf9b+cC0hI8rITRlNBCppks551ezRgbEfWdspSpS5W
 qeh/ghWcdQ2IpPQXzQfglqmcS8F6QXtfn+uFzkY2JJbom4XnHIoM1MwW3vG8fzoFWFCeD96zb
 ywAeYdUvJScchrI3jKD3jthkL0ZNIHA3VNI4oPxk2U62aDvWetNzhGXLmNutiLt9yGScUlVha
 5ppxxUCYqoGNNqb8AEza6Hsg1Oyfh7i+CVw07+2qBRppcNcj2T0TvK+TH3tcx3LJZGx4Gxr7S
 yp8ztb6KqP9UneXZM+7pmED3HODRq3EPDPjNr+EYMeKnT+/JPQ8w9lJHJs4hI2tTNyJpmDZpS
 Tv7Upjpd1+vYCycNIxkR4UEZaDqFDvy0q9sEDOadXvKefuLnWZYeitwfL0tI3Z+fcEUsNG594
 tx7OQi+kIgc5Blg69KTL6Ws5d+taaKPbBu3Z0xlZFOd0AdiScnVuazSRQgeC9J4omrefx3MEm
 yOfRRzWLwB4plaobiVFOeZLq7UUcxrDANgI817kNj4SEX+6bK4ukB5kPtHKg/ye/Ljy2Zz9MI
 JghynuHFN9UcP4qST+OViXoK/g2kWhJREidumwCTp58QbOrvf/gKJevJEHDYGLzE4frmAutj8
 DnRnhyL9oG5caua+W051i/OsKCTqvWBW5oM7TsRHrPStmxU4ynCTXlQxDVkeeX1ReQc4C+pzL
 TyAsXfizj3ofTSn5

On Tuesday 27 October 2015 01:11:07 Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval' will break in the year 2038, so
> we modify the code appropriately.
> 
> This patch replaces the use of struct timeval and do_gettimeofday()
> with 64 bit ktime_get_real_seconds().
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

It looks like you are doing two different things here, as you replace
two unrelated structures (struct bfa_diag_dport_result_s and
stats_reset_time)

> ---
>  drivers/scsi/bfa/bfa_svc.c | 24 +++++++-----------------
>  1 file changed, 7 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/scsi/bfa/bfa_svc.c b/drivers/scsi/bfa/bfa_svc.c
> index 625225f..a880a7e 100644
> --- a/drivers/scsi/bfa/bfa_svc.c
> +++ b/drivers/scsi/bfa/bfa_svc.c
> @@ -15,6 +15,8 @@
>   * General Public License for more details.
>   */
>  
> +#include <linux/ktime.h>
> +
>  #include "bfad_drv.h"
>  #include "bfad_im.h"
>  #include "bfa_plog.h"
> @@ -306,13 +308,8 @@ plkd_validate_logrec(struct bfa_plog_rec_s *pl_rec)
>  static u64
>  bfa_get_log_time(void)
>  {
> -	u64 system_time = 0;
> -	struct timeval tv;
> -	do_gettimeofday(&tv);
> -
>  	/* We are interested in seconds only. */
> -	system_time = tv.tv_sec;
> -	return system_time;
> +	return ktime_get_real_seconds();
>  }

This part looks good, but you can go further and remove the function
completely.

>  static void
> @@ -3092,7 +3089,6 @@ bfa_fcport_attach(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
>  	struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);
>  	struct bfa_port_cfg_s *port_cfg = &fcport->cfg;
>  	struct bfa_fcport_ln_s *ln = &fcport->ln;
> -	struct timeval tv;
>  
>  	fcport->bfa = bfa;
>  	ln->fcport = fcport;
> @@ -3105,8 +3101,7 @@ bfa_fcport_attach(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
>  	/*
>  	 * initialize time stamp for stats reset
>  	 */
> -	do_gettimeofday(&tv);
> -	fcport->stats_reset_time = tv.tv_sec;
> +	fcport->stats_reset_time = ktime_get_real_seconds();
>  	fcport->stats_dma_ready = BFA_FALSE;
>  

The change here is probably ok, but you are missing the fact that stats_reset_time
is too short and needs to be changed to a time64_t in the header, as part of the
same patch. As mentioned above, this patch should be separate from the
bfa_get_log_time change.

>  	/*
> @@ -3358,10 +3353,6 @@ __bfa_cb_fcport_stats_get(void *cbarg, bfa_boolean_t complete)
>  	union bfa_fcport_stats_u *ret;
>  
>  	if (complete) {
> -		struct timeval tv;
> -		if (fcport->stats_status == BFA_STATUS_OK)
> -			do_gettimeofday(&tv);
> -
>  		list_for_each_safe(qe, qen, &fcport->stats_pending_q) {
>  			bfa_q_deq(&fcport->stats_pending_q, &qe);
>  			cb = (struct bfa_cb_pending_q_s *)qe;
> @@ -3375,7 +3366,8 @@ __bfa_cb_fcport_stats_get(void *cbarg, bfa_boolean_t complete)
>  					bfa_fcport_fcoe_stats_swap(&ret->fcoe,
>  							&fcport->stats->fcoe);
>  					ret->fcoe.secs_reset =
> -					tv.tv_sec - fcport->stats_reset_time;
> +					ktime_get_real_seconds() - 
> +						fcport->stats_reset_time;
>  				}
>  			}
>  			bfa_cb_queue_status(fcport->bfa, &cb->hcb_qe,

Here you have a slight change in behavior: you now call
ktime_get_real_seconds() once per loop iteration, rather than getting the
time once at the start. If there is a good reason for this change, please
explain that reason in the patch description, otherwise leave it alone.

I also note that the stats_reset_time variable is only used to compute
elapsed seconds, so it should be converted to monotonic time in the
process, to avoid suffering from gettimeofday() or leap second changes.

	Arnd

