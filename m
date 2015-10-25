X-GM-THRID: 6207016662523183104
X-Received: by 10.66.142.138 with SMTP id rw10mr7485191pab.0.1445761752393;
        Sun, 25 Oct 2015 01:29:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.41 with SMTP id w38ls3041630qgw.0.gmail; Sun, 25 Oct
 2015 01:29:11 -0700 (PDT)
X-Received: by 10.140.144.215 with SMTP id 206mr24813941qhq.6.1445761751764;
        Sun, 25 Oct 2015 01:29:11 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si2993796pbc.1.2015.10.25.01.29.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:29:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1579467;
	Sun, 25 Oct 2015 08:29:10 +0000 (UTC)
Date: Sat, 24 Oct 2015 19:02:22 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: sm750fb: Remove volatile
 modifier
Message-ID: <20151025020222.GA4293@kroah.com>
References: <cover.1445183494.git.amitoj1606@gmail.com>
 <916e1321dc223d94f8793f4d402ab8922adfe3f3.1445183495.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <916e1321dc223d94f8793f4d402ab8922adfe3f3.1445183495.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 18, 2015 at 09:30:13PM +0530, Amitoj Kaur Chawla wrote:
> 'volatile' is not needed for regular variable. Problem found using checkpatch.pl
> WARNING: Use of volatile is usually wrong: see Documentation/volatile-considered -harmful.txt
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
> index 52fe945..68eef34 100644
> --- a/drivers/staging/sm750fb/sm750.h
> +++ b/drivers/staging/sm750fb/sm750.h
> @@ -15,9 +15,9 @@ extern int smi_indent;
>  
>  struct lynx_accel {
>  	/* base virtual address of DPR registers */
> -	volatile unsigned char __iomem *dprBase;
> +	unsigned char __iomem *dprBase;
>  	/* base virtual address of de data port */
> -	volatile unsigned char __iomem *dpPortBase;
> +	unsigned char __iomem *dpPortBase;
>  
>  	/* function fointers */
>  	void (*de_init)(struct lynx_accel *);
> @@ -79,7 +79,7 @@ struct lynx_cursor {
>  	char __iomem *vstart;
>  	int offset;
>  	/* mmio addr of hw cursor */
> -	volatile char __iomem *mmio;
> +	char __iomem *mmio;

Have you verified that the code is still working properly?  Sometimes
this isn't as simple as just deleting the modifier :(

thanks,

greg k-h

