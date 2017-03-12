X-GM-THRID: 6396125246226694144
X-Received: by 10.99.1.207 with SMTP id 198mr4849582pgb.136.1489326025343;
        Sun, 12 Mar 2017 06:40:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls828645ota.23.gmail; Sun, 12 Mar 2017
 06:40:25 -0700 (PDT)
X-Received: by 10.157.45.198 with SMTP id g64mr12717177otb.136.1489326024993;
        Sun, 12 Mar 2017 06:40:24 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a3si2676265pfb.2.2017.03.12.06.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 900F18A6;
	Sun, 12 Mar 2017 13:40:22 +0000 (UTC)
Date: Sun, 12 Mar 2017 14:40:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: rw26: Remove
 unused function definition
Message-ID: <20170312134000.GE27791@kroah.com>
References: <20170311063153.GA6625@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170311063153.GA6625@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 11, 2017 at 12:01:53PM +0530, sayli karnik wrote:
> The patch removes unused function definition ll_get_user_pages().
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/rw26.c | 26 --------------------------
>  1 file changed, 26 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/rw26.c b/drivers/staging/lustre/lustre/llite/rw26.c
> index d89e795..420f296 100644
> --- a/drivers/staging/lustre/lustre/llite/rw26.c
> +++ b/drivers/staging/lustre/lustre/llite/rw26.c
> @@ -156,32 +156,6 @@ static int ll_releasepage(struct page *vmpage, gfp_t gfp_mask)
>  
>  #define MAX_DIRECTIO_SIZE (2 * 1024 * 1024 * 1024UL)
>  
> -static inline int ll_get_user_pages(int rw, unsigned long user_addr,
> -				    size_t size, struct page ***pages,
> -				    int *max_pages)
> -{
> -	int result = -ENOMEM;
> -
> -	/* set an arbitrary limit to prevent arithmetic overflow */
> -	if (size > MAX_DIRECTIO_SIZE) {
> -		*pages = NULL;
> -		return -EFBIG;
> -	}
> -
> -	*max_pages = (user_addr + size + PAGE_SIZE - 1) >> PAGE_SHIFT;
> -	*max_pages -= user_addr >> PAGE_SHIFT;
> -
> -	*pages = libcfs_kvzalloc(*max_pages * sizeof(**pages), GFP_NOFS);
> -	if (*pages) {
> -		result = get_user_pages_fast(user_addr, *max_pages,
> -					     (rw == READ), *pages);
> -		if (unlikely(result <= 0))
> -			kvfree(*pages);
> -	}
> -
> -	return result;
> -}
> -

Should this be deleted?  Given that ll_free_user_pages() is used, that
implies that this function should also be used somewhere.  Why isn't it?

thanks,

greg k-h

