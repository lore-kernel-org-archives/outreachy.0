X-GM-THRID: 5348584849408
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c3a920c892222546
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.235.83 with SMTP id g80mr24196776qhc.5.1425257420359;
        Sun, 01 Mar 2015 16:50:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.219 with SMTP id 88ls311171ior.66.gmail; Sun, 01 Mar
 2015 16:50:20 -0800 (PST)
X-Received: by 10.66.90.200 with SMTP id by8mr24521749pab.38.1425257420181;
        Sun, 01 Mar 2015 16:50:20 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q9si449584pds.2.2015.03.01.16.50.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:50:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E66E84D3;
	Mon,  2 Mar 2015 00:50:19 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:50:19 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: lustre: Remove
 whitespace.
Message-ID: <20150302005019.GB23910@kroah.com>
References: <cover.1425200447.git.navyasri.tech@gmail.com>
 <54a6585b45b666d28d6691bcb9d4574bc238d843.1425200447.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54a6585b45b666d28d6691bcb9d4574bc238d843.1425200447.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 02:38:33PM +0530, Navya Sri Nizamkari wrote:
> This patch fixes the following checkpatch.pl warning:
> 
> WARNING: unnecessary whitespace before a quoted newline
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index e0e77cc..727327d 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -620,7 +620,7 @@ int ll_get_max_mdsize(struct ll_sb_info *sbi, int *lmmsize)
>  	rc = obd_get_info(NULL, sbi->ll_md_exp, sizeof(KEY_MAX_EASIZE),
>  			  KEY_MAX_EASIZE, &size, lmmsize, NULL);
>  	if (rc)
> -		CERROR("Get max mdsize error rc %d \n", rc);
> +		CERROR("Get max mdsize error rc %d\n", rc);
>  
>  	return rc;
>  }

Does not apply :(

