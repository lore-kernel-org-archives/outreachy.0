X-GM-THRID: 2832175464448
X-Received: by 10.70.18.37 with SMTP id t5mr9674131pdd.7.1424983926131;
        Thu, 26 Feb 2015 12:52:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.163 with SMTP id f32ls358616qgd.84.gmail; Thu, 26 Feb
 2015 12:52:05 -0800 (PST)
X-Received: by 10.236.207.230 with SMTP id n66mr9595153yho.30.1424983925838;
        Thu, 26 Feb 2015 12:52:05 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si257092pdb.1.2015.02.26.12.52.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:52:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 67341BAC;
	Thu, 26 Feb 2015 20:52:05 +0000 (UTC)
Date: Thu, 26 Feb 2015 12:52:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove redundant
 if conditions
Message-ID: <20150226205205.GA30117@kroah.com>
References: <20150223150647.GA12403@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150223150647.GA12403@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Feb 23, 2015 at 08:36:47PM +0530, Vatika Harlalka wrote:
> The if branches are redundant as is2t is declared false
> and is not modified before the if statements.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 20 ++------------------
>  1 file changed, 2 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index e005150..e7ede44 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -471,7 +471,8 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
>  	u32 i = 0, j = 0;
>  	bool is2t = false;

Can't you also just remove this variable?  That way you will notice that
you can get rid of one more chunk of if() in the function.

thanks,

greg k-h

