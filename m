X-GM-THRID: 6261514369469775872
X-Received: by 10.182.103.138 with SMTP id fw10mr25439302obb.47.1458593999851;
        Mon, 21 Mar 2016 13:59:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.196 with SMTP id o187ls1900118ioo.94.gmail; Mon, 21 Mar
 2016 13:59:59 -0700 (PDT)
X-Received: by 10.107.15.89 with SMTP id x86mr1488217ioi.17.1458593999473;
        Mon, 21 Mar 2016 13:59:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si4214664pfa.2.2016.03.21.13.59.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:59:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 02CC02C;
	Mon, 21 Mar 2016 20:59:58 +0000 (UTC)
Date: Mon, 21 Mar 2016 16:59:57 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: replaced udelay
 with usleep_range
Message-ID: <20160321205957.GA9749@kroah.com>
References: <20160313123337.GA10274@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160313123337.GA10274@spock>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 13, 2016 at 09:33:37AM -0300, Juliana Rodrigues wrote:
> This patch replaces udelay with usleep_range fixing
> a checkpatch.pl issue:
> 
> CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
> +       udelay(10);
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
> Changes in v2:
>    - Fixed range timing
>  
>  drivers/staging/dgnc/dgnc_cls.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 51db98b..7e3cc48 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
>  	 * Presumably, this is a bug in this UART.
>  	 */
>  
> -	usleep_range(10000, 11000);
> +	usleep_range(10, 20);

Your subject does not match this patch :(

