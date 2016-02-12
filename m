X-GM-THRID: 6249584519546929152
X-Received: by 10.140.155.14 with SMTP id b14mr6000897qhb.5.1455248727702;
        Thu, 11 Feb 2016 19:45:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.81.225 with SMTP id d1ls710434oby.58.gmail; Thu, 11 Feb
 2016 19:45:27 -0800 (PST)
X-Received: by 10.182.120.170 with SMTP id ld10mr46283744obb.30.1455248727388;
        Thu, 11 Feb 2016 19:45:27 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1175667pfb.1.2016.02.11.19.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:45:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1EA5E102C;
	Fri, 12 Feb 2016 03:45:27 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:45:26 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: comedi: drivers: pcmuio:
 Merge if conditions
Message-ID: <20160212034526.GE12182@kroah.com>
References: <20160210085942.GA14651@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210085942.GA14651@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 10, 2016 at 02:29:42PM +0530, Amitoj Kaur Chawla wrote:
> Merge if conditions with the same statements.
> 
> Found using Coccinelle. The semantic patch used to find this is as
> follows:
> 
> //<smpl>
> @@
> statement S;
> expression e,x;
> @@
> 
> * if(e)
> (
> { ... return ...; }
> &
> S
> )
> 
> * if(x)
> (
> { ... return ...; }
> &
> S
> )
> //</smpl>
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/comedi/drivers/pcmuio.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/pcmuio.c b/drivers/staging/comedi/drivers/pcmuio.c
> index 7ea8130..d303b48 100644
> --- a/drivers/staging/comedi/drivers/pcmuio.c
> +++ b/drivers/staging/comedi/drivers/pcmuio.c
> @@ -319,10 +319,7 @@ static void pcmuio_handle_intr_subdev(struct comedi_device *dev,
>  
>  	spin_lock_irqsave(&chip->spinlock, flags);
>  
> -	if (!chip->active)
> -		goto done;
> -
> -	if (!(triggered & chip->enabled_mask))
> +	if (!(chip->active && (triggered & chip->enabled_mask)))
>  		goto done;

This is now harder to read, sorry, I don't like these at all.

greg k-h

