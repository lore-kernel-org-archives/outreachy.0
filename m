X-GM-THRID: 6249584492196921344
X-Received: by 10.50.183.39 with SMTP id ej7mr422787igc.3.1455248696947;
        Thu, 11 Feb 2016 19:44:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.138 with SMTP id l132ls702766ioe.63.gmail; Thu, 11 Feb
 2016 19:44:56 -0800 (PST)
X-Received: by 10.66.189.102 with SMTP id gh6mr48725644pac.14.1455248696537;
        Thu, 11 Feb 2016 19:44:56 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si1531720pab.0.2016.02.11.19.44.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:44:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4513E1019;
	Fri, 12 Feb 2016 03:44:56 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:44:55 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: comedi: drivers: dt282x:
 Merge if conditions
Message-ID: <20160212034455.GD12182@kroah.com>
References: <20160210085934.GA14640@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210085934.GA14640@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 10, 2016 at 02:29:34PM +0530, Amitoj Kaur Chawla wrote:
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
>  drivers/staging/comedi/drivers/dt282x.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt282x.c b/drivers/staging/comedi/drivers/dt282x.c
> index 5a536a0..ded985e 100644
> --- a/drivers/staging/comedi/drivers/dt282x.c
> +++ b/drivers/staging/comedi/drivers/dt282x.c
> @@ -887,10 +887,7 @@ static int dt282x_ao_inttrig(struct comedi_device *dev,
>  	if (trig_num != cmd->start_src)
>  		return -EINVAL;
>  
> -	if (!dt282x_ao_setup_dma(dev, s, 0))
> -		return -EPIPE;
> -
> -	if (!dt282x_ao_setup_dma(dev, s, 1))
> +	if (!(dt282x_ao_setup_dma(dev, s, 0) && dt282x_ao_setup_dma(dev, s, 1)))
>  		return -EPIPE;

Still not going to take this, sorry.

greg k-h

