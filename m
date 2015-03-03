X-GM-THRID: 6122635264000
X-Received: by 10.70.55.233 with SMTP id v9mr358834pdp.5.1425408402070;
        Tue, 03 Mar 2015 10:46:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.231 with SMTP id v94ls234127qgd.78.gmail; Tue, 03 Mar
 2015 10:46:41 -0800 (PST)
X-Received: by 10.236.18.232 with SMTP id l68mr363327yhl.16.1425408401859;
        Tue, 03 Mar 2015 10:46:41 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si221883pdb.1.2015.03.03.10.46.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 10:46:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.0.216])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8512DB20;
	Tue,  3 Mar 2015 18:46:39 +0000 (UTC)
Date: Tue, 3 Mar 2015 09:03:42 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: lustre: Remove extern in
 .c file
Message-ID: <20150303170342.GA1708@kroah.com>
References: <1425333780-14728-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425333780-14728-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 01:03:00AM +0300, Haneen Mohammed wrote:
> This patch removes extern from .c file; for The variable is not used
> anywhere else in the file.
> Issue addressed by checkpatch.pl.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v4: remove extern declaration from .h
> 
>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> index d20d277..3d264e9 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> @@ -141,8 +141,6 @@
>   */
>  #define LDLM_POOL_SLV_SHIFT (10)
>  
> -extern struct proc_dir_entry *ldlm_ns_proc_dir;
> -
>  static inline __u64 dru(__u64 val, __u32 shift, int round_up)
>  {
>  	return (val + (round_up ? (1 << shift) - 1 : 0)) >> shift;

Please also mark it static in the one file it is in in the same patch.

thanks,

greg k-h

