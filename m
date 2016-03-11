X-GM-THRID: 6258679975389429760
X-Received: by 10.50.36.68 with SMTP id o4mr2739238igj.7.1457716890278;
        Fri, 11 Mar 2016 09:21:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.203 with SMTP id e72ls679814ioi.25.gmail; Fri, 11 Mar
 2016 09:21:29 -0800 (PST)
X-Received: by 10.66.139.138 with SMTP id qy10mr7903871pab.46.1457716889633;
        Fri, 11 Mar 2016 09:21:29 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1523898pac.1.2016.03.11.09.21.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 09:21:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4E15CB01;
	Fri, 11 Mar 2016 17:21:29 +0000 (UTC)
Date: Fri, 11 Mar 2016 09:21:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove multiple
 assignments
Message-ID: <20160311172129.GA7885@kroah.com>
References: <20160305210223.GA22841@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160305210223.GA22841@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 02:32:23AM +0530, Bhaktipriya Shridhar wrote:
> This patch removes multiple assignments by factorizing them.
> 
> This was done with Coccinelle.
> 
> @ identifier i1,i2; constant c; @@
> - i1=i2=c;
> + i1=c;
> + i2=c;
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> index b6b714d..6834652 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> @@ -887,8 +887,10 @@ static void _rtl92e_dm_tx_power_tracking_cb_thermal(struct net_device *dev)
>  			tmpCCK40Mindex = CCK_Table_length-1;
>  	} else {
>  		tmpval = ((u8)tmpRegA - priv->ThermalMeter[0]);
> -		if (tmpval >= 6)
> -			tmpOFDMindex = tmpCCK20Mindex = 0;
> +		if (tmpval >= 6) {
> +			tmpOFDMindex = 0;
> +			tmpCCK20Mindex = 0;
> +		}
>  		else

Your brace placement is wrong here :(


