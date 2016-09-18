X-GM-THRID: 6331266648892243968
X-Received: by 10.36.65.41 with SMTP id x41mr1772372ita.20.1474195296239;
        Sun, 18 Sep 2016 03:41:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.209 with SMTP id z200ls2679628iod.22.gmail; Sun, 18
 Sep 2016 03:41:35 -0700 (PDT)
X-Received: by 10.98.65.5 with SMTP id o5mr2642999pfa.35.1474195295762;
        Sun, 18 Sep 2016 03:41:35 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si4040449pfw.1.2016.09.18.03.41.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:41:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F120F997;
	Sun, 18 Sep 2016 10:41:34 +0000 (UTC)
Date: Sun, 18 Sep 2016 12:41:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 4/4] staging: vt6655: device_main: Break up multiple
 assignments
Message-ID: <20160918104140.GB10846@kroah.com>
References: <cover.1474187686.git.namrataashettar@gmail.com>
 <7452f9668c5132d600519456ac4f627ba94cad9a.1474187686.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7452f9668c5132d600519456ac4f627ba94cad9a.1474187686.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Sep 18, 2016 at 02:35:53PM +0530, Namrata A Shettar wrote:
> Break up multiple assignments on the same line to resolve checkpatch
> issue.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/vt6655/device_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index f109eea..86532ca 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -669,7 +669,8 @@ static void device_init_td1_ring(struct vnt_private *priv)
>  
>  	if (i > 0)
>  		priv->apTD1Rings[i-1].next_desc = cpu_to_le32(priv->td1_pool_dma);
> -	priv->apTailTD[1] = priv->apCurrTD[1] = &priv->apTD1Rings[0];
> +	 priv->apCurrTD[1] = &priv->apTD1Rings[0];
> +	 priv->apTailTD[1] = priv->apCurrTD[1];

Same problem here, please be careful with your indentation, always run
your patches through checkpatch.pl before sending them out so that
people don't have to remind you to run your patches through
checkpatch.pl before sending them out.

thanks,

greg k-h

