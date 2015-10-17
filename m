X-GM-THRID: 6206327457482539008
X-Received: by 10.31.178.196 with SMTP id b187mr15986673vkf.3.1445058403206;
        Fri, 16 Oct 2015 22:06:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.114 with SMTP id q105ls1608185qgq.14.gmail; Fri, 16 Oct
 2015 22:06:42 -0700 (PDT)
X-Received: by 10.129.157.18 with SMTP id u18mr15438334ywg.28.1445058402586;
        Fri, 16 Oct 2015 22:06:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si2299677pac.2.2015.10.16.22.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 22:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 37F2F67;
	Sat, 17 Oct 2015 05:06:42 +0000 (UTC)
Date: Fri, 16 Oct 2015 22:06:41 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Aybuke Ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: sm750fb: Include
 appropriate KERN_ facility level
Message-ID: <20151017050641.GA3052@kroah.com>
References: <1445033073-10154-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445033073-10154-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 17, 2015 at 01:04:32AM +0300, Aybuke Ozdemir wrote:
> Problem found using checkpatch.pl:
> "WARNING: printk() should include KERN_ facility level"
> 
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> ---
> Changes since v1:
> * used dev_info instead of pr_info.
> ---
>  drivers/staging/sm750fb/ddk750_help.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
> index 9637dd3..d20cd92 100644
> --- a/drivers/staging/sm750fb/ddk750_help.c
> +++ b/drivers/staging/sm750fb/ddk750_help.c
> @@ -11,7 +11,7 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
>  	devId750 = devId;
>  	revId750 = revId;
>  	if (revId == 0xfe)
> -		printk("found sm750le\n");
> +		dev_info("found sm750le\n");
>  }

You obviously did not try to build this patch :(


