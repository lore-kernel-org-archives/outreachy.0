X-GM-THRID: 6339053517033963520
X-Received: by 10.98.207.69 with SMTP id b66mr7544160pfg.2.1476021038910;
        Sun, 09 Oct 2016 06:50:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls7844380otf.43.gmail; Sun, 09 Oct
 2016 06:50:38 -0700 (PDT)
X-Received: by 10.159.39.138 with SMTP id b10mr7296914uab.7.1476021038458;
        Sun, 09 Oct 2016 06:50:38 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si7427144par.0.2016.10.09.06.50.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 06:50:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8146578D;
	Sun,  9 Oct 2016 13:50:37 +0000 (UTC)
Date: Sun, 9 Oct 2016 15:50:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] staging: vt6655: Replace BBvClearFOE by bbvclearfoe
Message-ID: <20161009135044.GA30914@kroah.com>
References: <20161008112506.GA12694@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008112506.GA12694@euri>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 04:55:06PM +0530, Varsha Rao wrote:
> This patch fixes the checkpatch issue by replacing BBvClearFOE with bbvclearfoe.
> Avoid CamelCase: <BBvClearFOE>
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> index 6d9a936..a732fba 100644
> --- a/drivers/staging/vt6655/baseband.h
> +++ b/drivers/staging/vt6655/baseband.h
> @@ -58,7 +58,7 @@
>  #define TOP_RATE_2M         0x00200000
>  #define TOP_RATE_1M         0x00100000
>  
> -#define BBvClearFOE(dwIoBase)				\
> +#define bbvclearfoe(dwIoBase)				\
>  	BBbWriteEmbedded(dwIoBase, 0xB1, 0)

As this isn't used at all, why not just remove it?

thanks,

greg k-h

