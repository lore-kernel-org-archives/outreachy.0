X-GM-THRID: 6209894564031889408
X-Received: by 10.129.57.197 with SMTP id g188mr33528532ywa.18.1445932343412;
        Tue, 27 Oct 2015 00:52:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.116 with SMTP id u107ls4235742qgd.54.gmail; Tue, 27 Oct
 2015 00:52:22 -0700 (PDT)
X-Received: by 10.129.39.65 with SMTP id n62mr27185887ywn.13.1445932342872;
        Tue, 27 Oct 2015 00:52:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si4039740pbb.2.2015.10.27.00.52.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 00:52:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.250])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 09C6F67;
	Tue, 27 Oct 2015 07:52:21 +0000 (UTC)
Date: Tue, 27 Oct 2015 16:52:19 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb:Block comments edited.
Message-ID: <20151027075219.GA18185@kroah.com>
References: <1445853740-8215-1-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445853740-8215-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 26, 2015 at 01:02:20PM +0300, Burcin Akalin wrote:
> Alignment of block comments should be correct.Fix checkpatch.pl
> WARNING: Block comments use a trailing */ on a separate
> line
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index c886dd2..f519fd2 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -1997,8 +1997,10 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
>  				tempbx |= (SetInSlaveMode | SetSimuScanMode);
>  		}
>  
> -		/* LCD+TV can't support in slave mode
> -		 * (Force LCDA+TV->LCDB) */
> +		/* 
> +		 * LCD+TV can't support in slave mode
> +		 * (Force LCDA+TV->LCDB) 

Trailing whitespace :(

Always check your patches with checkpatch.pl before you send them out.

thanks,

greg k-h

