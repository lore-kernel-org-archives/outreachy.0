X-GM-THRID: 6253096427237408768
X-Received: by 10.28.47.211 with SMTP id v202mr4060wmv.3.1455917070024;
        Fri, 19 Feb 2016 13:24:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.142.213 with SMTP id q204ls89570lfd.15.gmail; Fri, 19 Feb
 2016 13:24:29 -0800 (PST)
X-Received: by 10.112.189.104 with SMTP id gh8mr2138815lbc.12.1455917069383;
        Fri, 19 Feb 2016 13:24:29 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w10si435768wmw.3.2016.02.19.13.24.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 13:24:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F237F1012;
	Fri, 19 Feb 2016 21:24:27 +0000 (UTC)
Date: Fri, 19 Feb 2016 13:24:27 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH]Staging:tty:amiserial:Add space before
 open parenthesis and fix indent warning.
Message-ID: <20160219212427.GA3991@kroah.com>
References: <20160219120741.GA5755@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160219120741.GA5755@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 19, 2016 at 05:37:41PM +0530, Sandhya wrote:
> Add space before open parenthesis of "if" statement and fix indent warning.
> The checkpatch.pl script reported  error and warning.
> 
> diff --git a/drivers/tty/amiserial.c b/drivers/tty/amiserial.c
> index 2caaf5a..9a5c584 100644
> --- a/drivers/tty/amiserial.c
> +++ b/drivers/tty/amiserial.c
> @@ -262,10 +262,10 @@ static void receive_chars(struct serial_state *info)
>  	custom.intreq = IF_RBF;
>  	mb();
>  
> -	if((serdatr & 0x1ff) == 0)
> -	    status |= UART_LSR_BI;
> -	if(serdatr & SDR_OVRUN)
> -	    status |= UART_LSR_OE;
> +	if ((serdatr & 0x1ff) == 0)
> +		status |= UART_LSR_BI;
> +	if (serdatr & SDR_OVRUN)
> +		status |= UART_LSR_OE;
>  
>  	ch = serdatr & 0xff;
>  	icount->rx++;
> 

We can't accept Outreachy application patches outside of the
drivers/staging/ portion of the kernel, sorry.

Also you forgot a signed-off-by: line, please go read the tutorial again
for all of the proper steps needed to create a patch.

thanks,

greg k-h

