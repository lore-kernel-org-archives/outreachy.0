X-GM-THRID: 6251509125461573632
X-Received: by 10.129.145.193 with SMTP id i184mr19725532ywg.32.1455599977630;
        Mon, 15 Feb 2016 21:19:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.42 with SMTP id in10ls1005227igb.13.canary; Mon, 15 Feb
 2016 21:19:37 -0800 (PST)
X-Received: by 10.107.136.160 with SMTP id s32mr20344802ioi.14.1455599977287;
        Mon, 15 Feb 2016 21:19:37 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id yd9si502668pab.1.2016.02.15.21.19.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 21:19:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id x65so98499537pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 21:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9YwC/nID6uXvPWA1Z4Fza+jJ6v5F+Z8mxsFGhRvDPm4=;
        b=Gu8zQ3BUZERJrBDP7HLvmAs+V+w/RGLQTYYZIs7mx84k28a1KmzDMCt5iunElm7K57
         EHJNGENUoC8yBDku6aEFm+Dhqhb0hAEDOMGP6zC8NIeCOnY8IBG6ESxyTviD5MkkLp9Z
         JQDnbdpMF15MJDV0VJUNwFG0EqN4PO7ehojrcdJPFwnK6evKq0+DgiIh9+4LbawfcEe2
         H0wm6rVWgAC5An0uqMiB8NJBojJ43N7XA1xf+hyIaJG97/W2nN147ZA14IlNicBLKHlB
         fGJLQlfb+yYe6vyVTPEkIweS8xSwEufYLhQysUhdYMxl4VXY6UkLKXv+vYYmThL11KEl
         2ZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=9YwC/nID6uXvPWA1Z4Fza+jJ6v5F+Z8mxsFGhRvDPm4=;
        b=SFxL7r+0jSudgdva7ttBUoM/0X3Oy/zg94YzTX53QD0jy677rPV7w5BAUSNyFsboH7
         shJBGt3VZkco6BjX6JNU982xcE+IhG0TIjiOCUaf2McRq5MApi2ZCs7d1GkkWPWscyqs
         jw1pzO/s6ABXP9883jFPnYGRSuu4rSOj64ZpyBjTmm4zZQX5qIN1nqMx6HQwCCQXsEB6
         Saq0GYZnC2flqB+rvNjysoN/XllL2N/aiznub/IJ4GA9r6XCONz9E7miF/1mnRg1SpI1
         3I1qDLIUvg2TO07L92XfjX4qVwEHwKolSmXfiLpIo9ESy/pf/9Nvi+CLkKZ1j6iqAZtK
         ZlkA==
X-Gm-Message-State: AG10YOQaqQUYP3KxUlygTYt6Ws4WZ84RQoEEQZJZk9vUNeBW053UO7KUSyMqehYfJfgGcA==
X-Received: by 10.98.74.202 with SMTP id c71mr28536750pfj.25.1455599977071;
        Mon, 15 Feb 2016 21:19:37 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.207.31])
        by smtp.gmail.com with ESMTPSA id 69sm42198565pfj.20.2016.02.15.21.19.35
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 21:19:36 -0800 (PST)
Date: Tue, 16 Feb 2016 10:49:27 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Remove an error
 initialise statics to false
Message-ID: <20160216051927.GA13052@sudip-pc>
References: <20160215132828.GA24595@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160215132828.GA24595@life-desktop>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Feb 15, 2016 at 06:58:38PM +0530, Anchal Jain wrote:
> Remove the static variable enable initialization.
> because the default value of static is FALSE 
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index 45f70ab..21e79dc 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -329,7 +329,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
>  	return 1;
>  }
>  
> -static bool enabled = false;
> +static bool enabled;

This has already been done by:
d38f5ba48285 ("staging: wilc1000: Remove initialization of static variables")

regards
sudip

