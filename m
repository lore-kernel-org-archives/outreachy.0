X-GM-THRID: 4799843008512
X-Received: by 10.182.231.199 with SMTP id ti7mr23539473obc.7.1425257305530;
        Sun, 01 Mar 2015 16:48:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.32.134 with SMTP id g128ls1209060iog.49.gmail; Sun, 01 Mar
 2015 16:48:25 -0800 (PST)
X-Received: by 10.66.157.129 with SMTP id wm1mr24276400pab.15.1425257305380;
        Sun, 01 Mar 2015 16:48:25 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q9si449247pds.2.2015.03.01.16.48.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:48:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 21779475;
	Mon,  2 Mar 2015 00:48:25 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:48:24 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove unnecessary
 else after return
Message-ID: <20150302004824.GA12443@kroah.com>
References: <1425185971-22782-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425185971-22782-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 07:59:31AM +0300, Haneen Mohammed wrote:
> This patch fix else is not usefull after break or return.
> Moves declaration to top addressing compiler warning:
> "ISO C90 forbids mixed declarations and code"
> Rename similar named variable in the function.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c | 28 ++++++++++++-------------
>  1 file changed, 13 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> index cd15445..ad68e66 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> @@ -444,28 +444,26 @@ static int ldlm_bl_to_thread(struct ldlm_namespace *ns,
>  			     struct list_head *cancels, int count,
>  			     ldlm_cancel_flags_t cancel_flags)
>  {
> +	struct ldlm_bl_work_item blwi, *pblwi;

Ick, don't use 'p' to define a pointer.

> +
>  	if (cancels && count == 0)
>  		return 0;
>  
>  	if (cancel_flags & LCF_ASYNC) {
> -		struct ldlm_bl_work_item *blwi;
> -
> -		OBD_ALLOC(blwi, sizeof(*blwi));
> -		if (blwi == NULL)
> +		OBD_ALLOC(pblwi, sizeof(*pblwi));
> +		if (pblwi == NULL)
>  			return -ENOMEM;
> -		init_blwi(blwi, ns, ld, cancels, count, lock, cancel_flags);
> +		init_blwi(pblwi, ns, ld, cancels, count, lock, cancel_flags);
>  
> -		return __ldlm_bl_to_thread(blwi, cancel_flags);
> -	} else {
> -		/* if it is synchronous call do minimum mem alloc, as it could
> -		 * be triggered from kernel shrinker
> -		 */
> -		struct ldlm_bl_work_item blwi;

I see what you are trying to do here, but it might be better just to
leave this alone.

thanks,

greg k-h

