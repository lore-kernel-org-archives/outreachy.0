X-GM-THRID: 6387642607582838784
X-Received: by 10.36.135.204 with SMTP id f195mr4283584ite.8.1487268657891;
        Thu, 16 Feb 2017 10:10:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.231 with SMTP id t100ls727673ioi.25.gmail; Thu, 16 Feb
 2017 10:10:57 -0800 (PST)
X-Received: by 10.107.36.199 with SMTP id k190mr226642iok.37.1487268657229;
        Thu, 16 Feb 2017 10:10:57 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si194666pfd.3.2017.02.16.10.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 10:10:57 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.55.107.4])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9208189E;
	Thu, 16 Feb 2017 18:10:56 +0000 (UTC)
Date: Thu, 16 Feb 2017 10:10:55 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org
Subject: Re: [PATCH] staging: xgifb: add braces around if statement
Message-ID: <20170216181055.GA21857@kroah.com>
References: <1487238803-24600-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1487238803-24600-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Thu, Feb 16, 2017 at 03:23:23PM +0530, Gargi Sharma wrote:
> add braces around if statment to fix the checkpatch issue, braces {}
> should be used on all arms of this statement.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/xgifb/XGI_main_26.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index 6930f7e..6d8120d 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -178,8 +178,9 @@ static int XGIfb_mode_rate_to_ddata(struct vb_device_info *XGI_Pr,
>  		*sync |= FB_SYNC_HOR_HIGH_ACT;
>  
>  	*vmode = FB_VMODE_NONINTERLACED;
> -	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080)
> +	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080) {
>  		*vmode = FB_VMODE_INTERLACED;
> +	}
>  	else {

That line really should look like:
	} else {
right?

Can you please fix that up and send a "v2" of this patch?

thanks,

greg k-h

