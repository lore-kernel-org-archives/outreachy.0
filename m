X-GM-THRID: 6207016662523183104
X-Received: by 10.50.30.37 with SMTP id p5mr10843265igh.11.1445761616807;
        Sun, 25 Oct 2015 01:26:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.136.196 with SMTP id qc4ls622002igb.25.gmail; Sun, 25 Oct
 2015 01:26:56 -0700 (PDT)
X-Received: by 10.50.49.109 with SMTP id t13mr10826336ign.9.1445761616555;
        Sun, 25 Oct 2015 01:26:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si1676660pab.0.2015.10.25.01.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A187090;
	Sun, 25 Oct 2015 08:26:55 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:38:56 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: lustre: ptlrpc: Replace
 seq_printf() with seq_puts()
Message-ID: <20151025013856.GA8425@kroah.com>
References: <cover.1445183494.git.amitoj1606@gmail.com>
 <df74c544b09b3f3205ab904fe879869400af3d5f.1445183495.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <df74c544b09b3f3205ab904fe879869400af3d5f.1445183495.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 18, 2015 at 09:33:37PM +0530, Amitoj Kaur Chawla wrote:
> Replace seq_printf() with seq_puts() since it is more expensive than
> seq_puts(). Problem found using checkpatch.pl
> WARNING: Prefer seq_puts to seq_printf
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> index 6cf9b92..23f1e26 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> @@ -923,7 +923,7 @@ static int ptlrpc_lprocfs_svc_req_history_show(struct seq_file *s, void *iter)
>  			   (long)(req->rq_sent - req->rq_arrival_time.tv_sec),
>  			   (long)(req->rq_sent - req->rq_deadline));
>  		if (svc->srv_ops.so_req_printer == NULL)
> -			seq_printf(s, "\n");
> +			seq_puts(s, "\n");

Shouldn't this really be seq_putc() instead?

thanks,

greg k-h

