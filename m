X-GM-THRID: 6330925606572654592
X-Received: by 10.13.199.65 with SMTP id j62mr134700ywd.130.1474034724577;
        Fri, 16 Sep 2016 07:05:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.18 with SMTP id h18ls5669544ote.41.gmail; Fri, 16 Sep
 2016 07:05:24 -0700 (PDT)
X-Received: by 10.200.39.2 with SMTP id g2mr130683qtg.51.1474034724200;
        Fri, 16 Sep 2016 07:05:24 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si2670785pab.2.2016.09.16.07.05.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 07:05:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6606AA19;
	Fri, 16 Sep 2016 14:05:23 +0000 (UTC)
Date: Fri, 16 Sep 2016 16:05:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 4/6] staging: ks7010: Remove unnecessary blank lines
Message-ID: <20160916140528.GA391@kroah.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
 <78d72b736673b2c871b591b694e8cbee35056f93.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <78d72b736673b2c871b591b694e8cbee35056f93.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 07:20:37PM +0530, sayli karnik wrote:
> The patch removes unnecessary blank lines as detected by checkpatch.pl.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
> v2: Code under comments removed as suggested by Julia.
> 
>  drivers/staging/ks7010/ks7010_sdio.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index b0c6f93..bee7504 100644
> --- a/drivers/staging/ks7010/ks7010_sdio.c
> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> @@ -180,8 +180,6 @@ int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
>  
>  	if (priv->reg.operation_mode == MODE_INFRASTRUCTURE &&
>  	    (priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
> -
> -		//DPRINTK(1,"psstatus.status=%d\n",atomic_read(&priv->psstatus.status));

That is not a "unnecessary blank line" :(

Please update your changelog text when you do something else in the
patch...

thanks,

greg k-h

