X-GM-THRID: 1272087314432
X-Received: by 10.236.24.228 with SMTP id x64mr9837373yhx.26.1424985337578;
        Thu, 26 Feb 2015 13:15:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.43.202 with SMTP id y10ls153942obl.61.gmail; Thu, 26 Feb
 2015 13:15:37 -0800 (PST)
X-Received: by 10.182.91.79 with SMTP id cc15mr10354261obb.20.1424985337365;
        Thu, 26 Feb 2015 13:15:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si276403pbc.0.2015.02.26.13.15.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:15:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 15D84B50;
	Thu, 26 Feb 2015 21:15:37 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:15:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Fix line over 80
 characters
Message-ID: <20150226211536.GA30226@kroah.com>
References: <1424434536-8292-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424434536-8292-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 02:15:36PM +0200, Yeliz Taneroglu wrote:
> Fix checkpatch.pl issues with line over
> 80 characters in dgnc_tty.h
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_tty.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_tty.h b/drivers/staging/dgnc/dgnc_tty.h
> index 9d1c284..5efd493 100644
> --- a/drivers/staging/dgnc/dgnc_tty.h
> +++ b/drivers/staging/dgnc/dgnc_tty.h
> @@ -37,6 +37,7 @@ void	dgnc_carrier(struct channel_t *ch);
>  void	dgnc_wakeup_writes(struct channel_t *ch);
>  void	dgnc_check_queue_flow_control(struct channel_t *ch);
>  
> -void	dgnc_sniff_nowait_nolock(struct channel_t *ch, uchar *text, uchar *buf, int nbuf);
> +void	dgnc_sniff_nowait_nolock(struct channel_t *ch, uchar *text,
> +	       uchar *buf, int nbuf);
>  
>  #endif
> -- 
> 1.8.3.2

Also fails to apply, what went wrong here?

