X-GM-THRID: 5152931053568
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,711868de202b757d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.196.209 with SMTP id r200mr24208091qha.0.1425257018723;
        Sun, 01 Mar 2015 16:43:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.138 with SMTP id 10ls1493329qgx.47.gmail; Sun, 01 Mar
 2015 16:43:38 -0800 (PST)
X-Received: by 10.236.47.136 with SMTP id t8mr24039737yhb.44.1425257018522;
        Sun, 01 Mar 2015 16:43:38 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si1329718pdc.0.2015.03.01.16.43.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:43:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2BAA3475;
	Mon,  2 Mar 2015 00:43:38 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:43:37 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] Staging: lustre: lustre: ldlm:
 Fix externs should be avoided in .c
Message-ID: <20150302004337.GA27722@kroah.com>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>
 <1425151315-31031-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425151315-31031-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 28, 2015 at 10:21:55PM +0300, Haneen Mohammed wrote:
> This patch moves extern declaration to ldlm_internal.h.
> Remove prototype from ldlm_pool.c.
> Issue addressed by checkpatch.pl.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 2 ++
>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> index 5bf9488..a694f01 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> @@ -208,6 +208,8 @@ struct ldlm_state {
>  	struct ldlm_bl_pool *ldlm_bl_pool;
>  };
>  
> +/* l_lock.c */
> +extern struct proc_dir_entry *ldlm_ns_proc_dir;
>  /* interval tree, for LDLM_EXTENT. */
>  extern struct kmem_cache *ldlm_interval_slab; /* slab cache for ldlm_interval */
>  extern void ldlm_interval_attach(struct ldlm_interval *n, struct ldlm_lock *l);
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> index 3af2687..54e2478 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> @@ -141,8 +141,6 @@
>   */
>  #define LDLM_POOL_SLV_SHIFT (10)
>  
> -extern struct proc_dir_entry *ldlm_ns_proc_dir;
> -

This variable isn't used in this file, so this line can just be removed,
and the variable make static in the file it is created in, don't make it
global.

thanks,

greg k-h

