X-GM-THRID: 4608630980608
X-Received: by 10.182.96.131 with SMTP id ds3mr12418215obb.35.1425049168015;
        Fri, 27 Feb 2015 06:59:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.101 with SMTP id i92ls616448qgf.93.gmail; Fri, 27 Feb
 2015 06:59:27 -0800 (PST)
X-Received: by 10.236.53.10 with SMTP id f10mr12892469yhc.17.1425049167834;
        Fri, 27 Feb 2015 06:59:27 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si532238pac.0.2015.02.27.06.59.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 06:59:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7D40C99A;
	Fri, 27 Feb 2015 14:59:27 +0000 (UTC)
Date: Fri, 27 Feb 2015 06:59:26 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Replace printk() with
 dev_info()
Message-ID: <20150227145926.GA19745@kroah.com>
References: <20150227145322.GA19004@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150227145322.GA19004@Inspiron>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 04:53:22PM +0200, Cristina Opriceana wrote:
> This patch replaces printk() with dev_info() in order to avoid the
> suggestion of using a more specific function.
> Warning found by checkpatch.pl
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_driver.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
> index ace2af6..cd349cd 100644
> --- a/drivers/staging/dgnc/dgnc_driver.c
> +++ b/drivers/staging/dgnc/dgnc_driver.c
> @@ -364,7 +364,7 @@ static void dgnc_cleanup_board(struct dgnc_board *brd)
>  
>  		spin_lock_irqsave(&dgnc_global_lock, flags);
>  		brd->msgbuf = NULL;
> -		printk("%s", brd->msgbuf_head);
> +		dev_info(&brd->pdev->dev, "dgnc : %s\n", brd->msgbuf_head);

If you use dev_info, there is no need for the "dgnc : " portion of the
string, it will show up automatically.

And this really looks like debugging information, why not use dev_dbg()
instead?

thanks,

greg k-h

