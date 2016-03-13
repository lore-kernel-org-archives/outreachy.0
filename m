X-GM-THRID: 6261339080289681408
X-Received: by 10.182.53.233 with SMTP id e9mr13271257obp.28.1457840854839;
        Sat, 12 Mar 2016 19:47:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.6 with SMTP id q6ls1335478obf.94.gmail; Sat, 12 Mar
 2016 19:47:34 -0800 (PST)
X-Received: by 10.182.91.9 with SMTP id ca9mr13392791obb.7.1457840854394;
        Sat, 12 Mar 2016 19:47:34 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si2258342pfa.2.2016.03.12.19.47.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:47:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [50.34.226.154])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C6645BF3;
	Sun, 13 Mar 2016 03:47:33 +0000 (UTC)
Date: Sat, 12 Mar 2016 18:57:32 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: replaced udelay with
 usleep_range in dgnc_cls.c
Message-ID: <20160313025732.GB11289@kroah.com>
References: <20160313011323.GA10757@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160313011323.GA10757@spock>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 12, 2016 at 10:13:23PM -0300, Juliana Rodrigues wrote:
> This patch replaces udelay with usleep_range fixing a checkpatch.pl issue:
> 
> CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
> +       udelay(10);
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 72f0aaa..51db98b 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
>  	 * Presumably, this is a bug in this UART.
>  	 */
>  
> -	udelay(10);
> +	usleep_range(10000, 11000);

How do you know this range is ok?


