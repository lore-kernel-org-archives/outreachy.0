X-GM-THRID: 4898430124032
X-Received: by 10.43.118.5 with SMTP id fo5mr25122852icc.18.1425256590451;
        Sun, 01 Mar 2015 16:36:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.164 with SMTP id c33ls1515435qga.42.gmail; Sun, 01 Mar
 2015 16:36:30 -0800 (PST)
X-Received: by 10.52.88.67 with SMTP id be3mr24139433vdb.3.1425256590306;
        Sun, 01 Mar 2015 16:36:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si1315862pbc.0.2015.03.01.16.36.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:36:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E4DAB4D3;
	Mon,  2 Mar 2015 00:36:29 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:36:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: default used instead
 of break
Message-ID: <20150302003629.GA20461@kroah.com>
References: <1425071605-31990-1-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425071605-31990-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 11:13:25PM +0200, Melike Yurtoglu wrote:
> WARNING: switch default: should use break.
> That was found by running checkpatch
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c
> index 5268887..44f4e27 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c
> @@ -143,7 +143,7 @@ cleanup:
>  		ptlrpc_hr_fini();
>  		req_layout_fini();
>  		/* Fall through */
> -	default: ;
> +	break;
>  	}

I don't understand, why is this better?  Or even correct?

thanks,

greg k-h

