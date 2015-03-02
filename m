X-GM-THRID: 4799843008512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,37879575871abf20
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.70.234 with SMTP id p70mr23448842yhd.56.1425256620253;
        Sun, 01 Mar 2015 16:37:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.165 with SMTP id 37ls1051636iok.85.gmail; Sun, 01 Mar
 2015 16:37:00 -0800 (PST)
X-Received: by 10.50.154.41 with SMTP id vl9mr14505343igb.6.1425256620126;
        Sun, 01 Mar 2015 16:37:00 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si1282148pbc.2.2015.03.01.16.37.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:37:00 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D5EA04D3;
	Mon,  2 Mar 2015 00:36:59 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:36:59 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: lustre: default used
 instead of break
Message-ID: <20150302003659.GB20461@kroah.com>
References: <1425072356-1314-1-git-send-email-aysemelikeyurtoglu@gmail.com>
 <1425072356-1314-2-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425072356-1314-2-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 11:25:54PM +0200, Melike Yurtoglu wrote:
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
>  
>  	return rc;
> -- 
> 1.8.3.2

Didn't you already send this?  What changed from the previous version
that caused a resend?

thanks,

greg k-h

