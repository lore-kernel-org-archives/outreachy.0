X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr2074576lbb.6.1425048033886;
        Fri, 27 Feb 2015 06:40:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.163 with SMTP id dt3ls117643wib.34.canary; Fri, 27 Feb
 2015 06:40:33 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr2112389wjc.3.1425048033563;
        Fri, 27 Feb 2015 06:40:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si129623wib.2.2015.02.27.06.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 06:40:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,660,1418079600"; 
   d="scan'208";a="123678286"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 15:40:15 +0100
Date: Fri, 27 Feb 2015 15:40:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Add blank line after
 declarations
In-Reply-To: <1425041831-15572-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271539410.2670@hadrien>
References: <1425041831-15572-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1181789470-1425048015=:2670"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1181789470-1425048015=:2670
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 27 Feb 2015, Hatice ERTÜRK wrote:

> The following patch fixes the checkpatch.pl warning:
> drivers/staging/lustre/lustre/osc/lproc_osc.c WARNING: Missing a blank
> line after declarations
>
> Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/lustre/lustre/osc/lproc_osc.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> index 9f719bc..9c151dd 100644
> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> @@ -345,6 +345,7 @@ static int osc_checksum_type_seq_show(struct seq_file *m, void *v)
>  {
>  	struct obd_device *obd = m->private;
>  	int i;
> +
>  	DECLARE_CKSUM_NAME;

The above line is probably a declaration too, so the blank line would not
be appropriate.

julia

>
>  	if (obd == NULL)
> @@ -367,6 +368,7 @@ static ssize_t osc_checksum_type_seq_write(struct file *file, const char *buffer
>  {
>  	struct obd_device *obd = ((struct seq_file *)file->private_data)->private;
>  	int i;
> +
>  	DECLARE_CKSUM_NAME;
>  	char kernbuf[10];
>
> @@ -461,6 +463,7 @@ LPROC_SEQ_FOPS(osc_lockless_truncate);
>  static int osc_destroys_in_flight_seq_show(struct seq_file *m, void *v)
>  {
>  	struct obd_device *obd = m->private;
> +
>  	return seq_printf(m, "%u\n",
>  			atomic_read(&obd->u.cli.cl_destroy_in_flight));
>  }
> @@ -602,6 +605,7 @@ static int osc_rpc_stats_seq_show(struct seq_file *seq, void *v)
>  	for (i = 0; i < OBD_HIST_MAX; i++) {
>  		unsigned long r = cli->cl_read_page_hist.oh_buckets[i];
>  		unsigned long w = cli->cl_write_page_hist.oh_buckets[i];
> +
>  		read_cum += r;
>  		write_cum += w;
>  		seq_printf(seq, "%d:\t\t%10lu %3lu %3lu   | %10lu %3lu %3lu\n",
> @@ -625,6 +629,7 @@ static int osc_rpc_stats_seq_show(struct seq_file *seq, void *v)
>  	for (i = 0; i < OBD_HIST_MAX; i++) {
>  		unsigned long r = cli->cl_read_rpc_hist.oh_buckets[i];
>  		unsigned long w = cli->cl_write_rpc_hist.oh_buckets[i];
> +
>  		read_cum += r;
>  		write_cum += w;
>  		seq_printf(seq, "%d:\t\t%10lu %3lu %3lu   | %10lu %3lu %3lu\n",
> @@ -648,6 +653,7 @@ static int osc_rpc_stats_seq_show(struct seq_file *seq, void *v)
>  	for (i = 0; i < OBD_HIST_MAX; i++) {
>  		unsigned long r = cli->cl_read_offset_hist.oh_buckets[i];
>  		unsigned long w = cli->cl_write_offset_hist.oh_buckets[i];
> +
>  		read_cum += r;
>  		write_cum += w;
>  		seq_printf(seq, "%d:\t\t%10lu %3lu %3lu   | %10lu %3lu %3lu\n",
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425041831-15572-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1181789470-1425048015=:2670--

