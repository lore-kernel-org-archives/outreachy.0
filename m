X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.255.68 with SMTP id ao4mr10160159pad.1.1424992986587;
        Thu, 26 Feb 2015 15:23:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.3.65 with SMTP id a1ls19281iga.10.canary; Thu, 26 Feb 2015
 15:23:06 -0800 (PST)
X-Received: by 10.50.92.10 with SMTP id ci10mr505144igb.8.1424992986364;
        Thu, 26 Feb 2015 15:23:06 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bx1si273050pdb.2.2015.02.26.15.23.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:23:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1933C13;
	Thu, 26 Feb 2015 23:23:06 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:23:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 4/6] Staging: emxx_udc: Replace
 custom printk macro ERR with dev_err
Message-ID: <20150226232305.GA21476@kroah.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>
 <dec707b02efd14b1357872334da1d0134f315aa4.1424786861.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dec707b02efd14b1357872334da1d0134f315aa4.1424786861.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 24, 2015 at 05:36:18PM +0300, Haneen Mohammed wrote:
> This patch removes the other half of ERR macros that uses "printk(KERN_ERR"
> and replace them with dev_err, to fix issue addressed by checkpatch.pl.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v5: Fix spelling mistakes
> 
>  drivers/staging/emxx_udc/emxx_udc.c | 34 +++++++++++++++++-----------------
>  1 file changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index f33980c..ed1d044 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -808,7 +808,7 @@ static int _nbu2ss_ep0_out_transfer(
>  		return 0;		/* Short Packet Transfer End */
>  
>  	if (req->req.actual > req->req.length) {
> -		ERR(" *** Overrun Error\n");
> +		dev_err(udc->dev, " *** Overrun Error\n");
>  		return -EOVERFLOW;
>  	}

As I didn't take your previous patches, this one doesn't apply.  Please
redo the whole series and resend.

thanks,

greg k-h

