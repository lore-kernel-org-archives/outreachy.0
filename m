X-GM-THRID: 6200081911391453184
X-Received: by 10.107.170.104 with SMTP id t101mr1850144ioe.3.1443579200177;
        Tue, 29 Sep 2015 19:13:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.231 with SMTP id c100ls119939ioj.109.gmail; Tue, 29
 Sep 2015 19:13:19 -0700 (PDT)
X-Received: by 10.66.162.7 with SMTP id xw7mr1075353pab.25.1443579199903;
        Tue, 29 Sep 2015 19:13:19 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k190si2846286ywe.3.2015.09.29.19.13.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 19:13:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.184])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A16B91240;
	Wed, 30 Sep 2015 02:13:18 +0000 (UTC)
Date: Wed, 30 Sep 2015 03:59:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: visorbus:
 visorchipset: Converted arrays to static const
Message-ID: <20150930015931.GA14259@kroah.com>
References: <20150929232413.GA16457@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150929232413.GA16457@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 30, 2015 at 04:54:13AM +0530, Shivani Bhardwaj wrote:
> Replaced the declaration of character array from char * to
> static const char * const as the array is not intended to be used
> anywhere outside the function plus the values in array and the pointer
> to it don't have to be changed.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmaail.com>
> ---
>  drivers/staging/unisys/visorbus/visorchipset.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/unisys/visorbus/visorchipset.c b/drivers/staging/unisys/visorbus/visorchipset.c
> index 4b76cb4..073b45b 100644
> --- a/drivers/staging/unisys/visorbus/visorchipset.c
> +++ b/drivers/staging/unisys/visorbus/visorchipset.c
> @@ -1411,7 +1411,7 @@ static int
>  visorchipset_chipset_selftest(void)
>  {
>  	char env_selftest[20];
> -	char *envp[] = { env_selftest, NULL };
> +	static const char * const envp[] = { env_selftest, NULL };

The compiler didn't complain when you did this?  That's really strange,
it should have.

Think about what you just turned envp into, and how env_selftest could
ever be correct now, given that the scope lifetime rules just changed
between the two variables.

I would leave this one alone, it's tricky and odds are, something is
going to be wrong with changing it, there's nothing wrong with the
original code as-is.

thanks,

greg k-h

