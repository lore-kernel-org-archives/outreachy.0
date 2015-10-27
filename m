X-GM-THRID: 6209894564031889408
X-Received: by 10.141.23.137 with SMTP id z131mr32405238qhd.7.1445932404647;
        Tue, 27 Oct 2015 00:53:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.243 with SMTP id l106ls986040qgd.33.gmail; Tue, 27 Oct
 2015 00:53:22 -0700 (PDT)
X-Received: by 10.129.155.83 with SMTP id s80mr35207627ywg.55.1445932402282;
        Tue, 27 Oct 2015 00:53:22 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si3972543pbb.0.2015.10.27.00.53.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 00:53:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fv9so224364129pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 00:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=lLODKGWQ3ys7H4ukjnskklLGEWZ6L7noUzgwe37il0A=;
        b=OT0zkHbxhrBIos/n0QSLvNQQfe9sxgzyFwmMmLpTtKtuWIoJbErHSLTYKgDQdNQbkx
         oVUWkTIN5qyWjuYP7zjdWmGmQ/A/Nlj4YZo7Fu6LNH5dNDr12dlRs26qLv+qE506cvfS
         7x5+JdnY8UZNftrsJeHblBtj8w3tqvDq8keH4kNp0qQLbkuFEyJCu3YTtSkSdcKvT3ge
         DYay7/SU0qnj3U43oGkJfd7aHYP397QGo6PqWTVkkcfBTvlEAOib4VdIZR4NwtFZqKkd
         IrmnvyI0DBWOYIAcMAuPGrGcQsqRjjkUxKJ18kJq2CuL4iLfZGHqqCFUqcoKZ9ndaQU6
         mBrQ==
X-Received: by 10.66.66.166 with SMTP id g6mr45370017pat.152.1445932402093;
        Tue, 27 Oct 2015 00:53:22 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.137.63])
        by smtp.gmail.com with ESMTPSA id xm4sm38066962pab.27.2015.10.27.00.53.20
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 00:53:21 -0700 (PDT)
Date: Tue, 27 Oct 2015 13:22:59 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb:Block comments edited.
Message-ID: <20151027075259.GB22738@sudip-pc>
References: <1445853740-8215-1-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445853740-8215-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

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
Trailing whitespace		   
> +		 * LCD+TV can't support in slave mode
> +		 * (Force LCDA+TV->LCDB) 
and also here.

regards
sudip

