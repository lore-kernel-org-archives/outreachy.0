X-GM-THRID: 6250021302893019136
X-Received: by 10.129.159.131 with SMTP id w125mr19755969ywg.26.1455249099498;
        Thu, 11 Feb 2016 19:51:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.22.1 with SMTP id z1ls56736ige.0.canary; Thu, 11 Feb 2016
 19:51:39 -0800 (PST)
X-Received: by 10.107.185.4 with SMTP id j4mr439000iof.21.1455249099239;
        Thu, 11 Feb 2016 19:51:39 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 79si1519136pft.0.2016.02.11.19.51.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:51:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ED029FAC;
	Fri, 12 Feb 2016 03:51:38 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:51:38 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Aybuke Ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: usleep_range is
 preferred over udelay
Message-ID: <20160212035138.GA30306@kroah.com>
References: <1455196470-4026-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455196470-4026-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 11, 2016 at 03:14:30PM +0200, Aybuke Ozdemir wrote:
> This patch fixes the issue:
> 
> CHECK: usleep_range is preferred over udelay; see
> Documentation/timers/timers-howto.txt
> 
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 72f0aaa..ce1471b 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
>  	 * Presumably, this is a bug in this UART.
>  	 */
>  
> -	udelay(10);
> +	usleep_range(10, 100);

As Tejun pointed out, this isn't ok, you can just ignore that checkpatch
warning.  Maybe we don't want to sleep for 100, are you sure about that?
Without the hardware to test with, we don't want to touch stuff like
this, sorry.

greg k-h

