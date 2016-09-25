X-GM-THRID: 6333985713664557056
X-Received: by 10.66.20.97 with SMTP id m1mr4175800pae.120.1474800134936;
        Sun, 25 Sep 2016 03:42:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.202 with SMTP id e68ls12335351ote.47.gmail; Sun, 25 Sep
 2016 03:42:14 -0700 (PDT)
X-Received: by 10.159.36.87 with SMTP id 81mr3620065uaq.8.1474800134579;
        Sun, 25 Sep 2016 03:42:14 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si3411788pab.2.2016.09.25.03.42.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 03:42:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 98B4478D;
	Sun, 25 Sep 2016 10:42:13 +0000 (UTC)
Date: Sun, 25 Sep 2016 12:42:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org
Subject: Re: [PATCH] staging: xgifb: compress return logic
Message-ID: <20160925104217.GA30512@kroah.com>
References: <20160924193836.8824-1-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160924193836.8824-1-gs051095@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Sep 25, 2016 at 01:08:36AM +0530, Gargi Sharma wrote:
> compress return logic into a single statement, using
> semantic patch:
> @@
> local idexpression ret;
> expression e;
> @@
> 
> -ret =
> +return
>      e;
> -return ret;
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/xgifb/vb_init.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
> index 062ece2..661dd98 100644
> --- a/drivers/staging/xgifb/vb_init.c
> +++ b/drivers/staging/xgifb/vb_init.c
> @@ -576,8 +576,7 @@ static unsigned char XGINew_CheckFrequence(struct vb_device_info *pVBInfo)
>  
>  	if ((data & 0x10) == 0) {
>  		data = xgifb_reg_get(pVBInfo->P3c4, 0x39);
> -		data = (data & 0x02) >> 1;
> -		return data;
> +		return (data & 0x02) >> 1;

I'm going to argue that the original code is easier to read and
understand.  The output of the compiler will be the same, so can we
leave this as-is?

thanks,

gre k-h

