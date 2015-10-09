X-GM-THRID: 6203392298463526912
X-Received: by 10.68.104.193 with SMTP id gg1mr9131051pbb.3.1444363087236;
        Thu, 08 Oct 2015 20:58:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.6 with SMTP id x6ls352506igw.39.gmail; Thu, 08 Oct 2015
 20:58:05 -0700 (PDT)
X-Received: by 10.66.249.169 with SMTP id yv9mr9000265pac.1.1444363085905;
        Thu, 08 Oct 2015 20:58:05 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q133si3784972ywb.1.2015.10.08.20.58.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 20:58:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (mobile-166-176-186-92.mycingular.net [166.176.186.92])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C8904FBB;
	Fri,  9 Oct 2015 03:58:04 +0000 (UTC)
Date: Thu, 8 Oct 2015 23:58:02 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lent: add missing
 __user __user annotation
Message-ID: <20151009035802.GA30302@kroah.com>
References: <1444339813-12063-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444339813-12063-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 09, 2015 at 12:30:13AM +0300, Ioana Ciornei wrote:
> Add missing __user annotation when using copy_{to/from}_user() to indicate that is
> a pointer from userspace and that it should not be derefenced.
> Also, remove sparse warnings such as:
> 
> drivers/staging/lustre/lnet/selftest/console.c:1474:26: warning: incorrect type in argument 1 (different address spaces)
>   1 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    expected void [noderef] <asn:1>*to
>   2 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    got struct sfw_counters_t [usertype] *[assigned] sfwk_stat
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/lustre/lnet/selftest/console.c | 44 +++++++++++++-------------
>  1 file changed, 22 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
> index 024aaee..7ba9022 100644
> --- a/drivers/staging/lustre/lnet/selftest/console.c
> +++ b/drivers/staging/lustre/lnet/selftest/console.c
> @@ -384,9 +384,9 @@ lstcon_sesrpc_readent(int transop, srpc_msg_t *msg,
>  	case LST_TRANS_SESQRY:
>  		rep = &msg->msg_body.dbg_reply;
>  
> -		if (copy_to_user(&ent_up->rpe_priv[0],
> +		if (copy_to_user((void __user *)&ent_up->rpe_priv[0],
>  				     &rep->dbg_timeout, sizeof(int)) ||
> -		    copy_to_user(&ent_up->rpe_payload[0],
> +		    copy_to_user((void __user *)&ent_up->rpe_payload[0],
>  				     &rep->dbg_name, LST_NAME_SIZE))
>  			return -EFAULT;
>  

The __user annotation in the lustre code is a mess, lots of work needs
to be done here, but it's complex and tricky, and in the end is going to
probably require some API changes to do correctly.  I strongly recommend
just leaving it alone and letting the lustre developers fix it up
properly sometime in the future, papering over the warnings with these
casts just gives the impression that the issue is fixed, when it really
isn't.

sorry, but I can't take this change.

greg k-h

