X-GM-THRID: 6391853165907542016
X-Received: by 10.107.6.231 with SMTP id f100mr2354828ioi.57.1488355681536;
        Wed, 01 Mar 2017 00:08:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.193 with SMTP id c62ls345815ioj.3.gmail; Wed, 01 Mar
 2017 00:08:00 -0800 (PST)
X-Received: by 10.99.178.74 with SMTP id t10mr2343227pgo.45.1488355680874;
        Wed, 01 Mar 2017 00:08:00 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h79si518608pfh.2.2017.03.01.00.08.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 00:08:00 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 05C51B76;
	Wed,  1 Mar 2017 08:07:59 +0000 (UTC)
Date: Wed, 1 Mar 2017 09:07:50 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: dgnc: replace usleep_range with udelay
Message-ID: <20170301080750.GA5554@kroah.com>
References: <20170227181436.GA5704@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170227181436.GA5704@aishwarya>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Feb 27, 2017 at 11:44:36PM +0530, Aishwarya Pant wrote:
> Replace usleep_range by udelay in function cls_flush_uart_write as it
> called under a channel lock
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index c20ffdd..f116ce1 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
>  
>  	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
>  	       &ch->ch_cls_uart->isr_fcr);
> -	usleep_range(10, 20);
> +	udelay(10);

Please comment why you can not use usleep_range() here, otherwise
someone else will come along and change it later.

thanks,

greg k-h

