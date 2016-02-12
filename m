X-GM-THRID: 6249584377858097152
X-Received: by 10.66.122.2 with SMTP id lo2mr46292552pab.33.1455248598184;
        Thu, 11 Feb 2016 19:43:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.74 with SMTP id p10ls45028igi.23.gmail; Thu, 11 Feb 2016
 19:43:17 -0800 (PST)
X-Received: by 10.107.138.211 with SMTP id c80mr418295ioj.20.1455248597833;
        Thu, 11 Feb 2016 19:43:17 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tn7si1321697pac.1.2016.02.11.19.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8336DDDC;
	Fri, 12 Feb 2016 03:43:17 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:43:17 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: comedi: drivers:
 comedi_8254: Remove useless statements
Message-ID: <20160212034317.GA12182@kroah.com>
References: <20160210085909.GA14587@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210085909.GA14587@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 10, 2016 at 02:29:09PM +0530, Amitoj Kaur Chawla wrote:
> Drop if conditions that have an unrequired return in a void function.
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
>  drivers/staging/comedi/drivers/comedi_8254.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/comedi_8254.c b/drivers/staging/comedi/drivers/comedi_8254.c
> index 0d5d56b..1feb2af 100644
> --- a/drivers/staging/comedi/drivers/comedi_8254.c
> +++ b/drivers/staging/comedi/drivers/comedi_8254.c
> @@ -241,11 +241,6 @@ void comedi_8254_write(struct comedi_8254 *i8254,
>  {
>  	unsigned int byte;
>  
> -	if (counter > 2)
> -		return;

I don't understand, why did you change the logic of the code here?

> -	if (val > 0xffff)
> -		return;

And here?  This code was doing something useful, why must it be removed?

confused,

greg k-h

