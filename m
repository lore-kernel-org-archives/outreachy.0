X-GM-THRID: 5348584849408
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c3a920c892222546
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.23.226 with SMTP id v62mr23952613yhv.25.1425257411703;
        Sun, 01 Mar 2015 16:50:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.250.164 with SMTP id zd4ls651640obc.82.gmail; Sun, 01 Mar
 2015 16:50:11 -0800 (PST)
X-Received: by 10.182.78.69 with SMTP id z5mr24435481obw.4.1425257411467;
        Sun, 01 Mar 2015 16:50:11 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si23737pac.2.2015.03.01.16.50.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:50:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2B82D4D3;
	Mon,  2 Mar 2015 00:50:11 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:50:10 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/4] staging: lustre: Remove
 unnecessary braces.
Message-ID: <20150302005010.GA23910@kroah.com>
References: <cover.1425200447.git.navyasri.tech@gmail.com>
 <2c2bcdaacfd8142bbfc6f88c3efba38a4b1151e2.1425200447.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c2bcdaacfd8142bbfc6f88c3efba38a4b1151e2.1425200447.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 02:38:02PM +0530, Navya Sri Nizamkari wrote:
> This patch fixes the following checkpatch.pl warning:
> 
> WARNING: braces {} are not necessary for any arm of
> this statement.
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 44d41dd..e0e77cc 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -87,11 +87,10 @@ static struct ll_sb_info *ll_init_sbi(void)
>  
>  	si_meminfo(&si);
>  	pages = si.totalram - si.totalhigh;
> -	if (pages >> (20 - PAGE_CACHE_SHIFT) < 512) {
> +	if (pages >> (20 - PAGE_CACHE_SHIFT) < 512)
>  		lru_page_max = pages / 2;
> -	} else {
> +	else
>  		lru_page_max = (pages / 4) * 3;
> -	}
>  
>  	/* initialize lru data */
>  	atomic_set(&sbi->ll_cache.ccc_users, 0);
> -- 
> 1.9.1

Does not apply :(

