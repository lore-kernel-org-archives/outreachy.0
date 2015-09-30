X-GM-THRID: 6200054151412449280
X-Received: by 10.107.165.5 with SMTP id o5mr1805839ioe.5.1443579204429;
        Tue, 29 Sep 2015 19:13:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.4 with SMTP id p4ls1334150igg.11.canary; Tue, 29 Sep
 2015 19:13:24 -0700 (PDT)
X-Received: by 10.50.112.104 with SMTP id ip8mr23789655igb.6.1443579204062;
        Tue, 29 Sep 2015 19:13:24 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id i77si2844428ywg.4.2015.09.29.19.13.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 19:13:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.184])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F3DE412F3;
	Wed, 30 Sep 2015 02:13:22 +0000 (UTC)
Date: Wed, 30 Sep 2015 04:02:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging:dgnc: Fixed checkpatch warning
Message-ID: <20150930020252.GA14929@kroah.com>
References: <1443562568-42880-1-git-send-email-cristina.moraru09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443562568-42880-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 29, 2015 at 02:36:08PM -0700, Cristina Moraru wrote:
> Fixed 'suspect code indent for conditional statements (8, 24)' Warning
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index a629a78..a2cfe35 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -632,9 +632,10 @@ static void cls_param(struct tty_struct *tty)
>  		(ch->ch_c_cflag & CRTSCTS) ||
>  		!(ch->ch_digi.digi_flags & DIGI_FORCEDCD) ||
>  		!(ch->ch_c_cflag & CLOCAL))
> -			ier |= UART_IER_MSI;
> +
> +		ier |= UART_IER_MSI;
>  	else
> -			ier &= ~UART_IER_MSI;
> +		ier &= ~UART_IER_MSI;

Technically your change is correct, but ugh, the code is ugly now and
it's not obvious at all that the assignment of ier is what happens here
due to the indentation of the lines above it, right?

Can you please fix this to move the if statement lines to the left
correctly, so that the tab indentation of the ier line is now obvious?

Just do it all in one patch, I don't want to take this patch as-is.

thanks,

greg k-h

