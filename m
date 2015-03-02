X-GM-THRID: 4945298325504
X-Received: by 10.42.60.132 with SMTP id q4mr25108877ich.5.1425256299025;
        Sun, 01 Mar 2015 16:31:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.195 with SMTP id e64ls1158203ioi.70.gmail; Sun, 01 Mar
 2015 16:31:38 -0800 (PST)
X-Received: by 10.66.119.231 with SMTP id kx7mr24866853pab.14.1425256298831;
        Sun, 01 Mar 2015 16:31:38 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q9si445820pds.2.2015.03.01.16.31.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:31:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 92CC64D3;
	Mon,  2 Mar 2015 00:31:38 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:31:38 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lustre: ldlm: Fix
 line over 80 characters
Message-ID: <20150302003138.GB28507@kroah.com>
References: <1425077868-27905-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425077868-27905-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 28, 2015 at 01:57:48AM +0300, Haneen Mohammed wrote:
> This patch splits line over 80 characters addressing checkpatch.pl
> warning.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 32 +++++++++++++++--------
>  1 file changed, 21 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> index 287da32..a913c01 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> @@ -102,7 +102,10 @@ int ldlm_expired_completion_wait(void *data)
>  			      lock->l_last_activity,
>  			      cfs_time_sub(get_seconds(),
>  					   lock->l_last_activity));
> -		LDLM_DEBUG(lock, "lock timed out (enqueued at " CFS_TIME_T ", " CFS_DURATION_T "s ago); not entering recovery in server code, just going back to sleep",
> +		LDLM_DEBUG(lock,
> +				"lock timed out (enqueued at "
> +				CFS_TIME_T ", " CFS_DURATION_T
> +				"s ago); not entering recovery in server code, just going back to sleep",
>  			   lock->l_last_activity,
>  			   cfs_time_sub(get_seconds(),
>  					lock->l_last_activity));

These are "debugging" lines, and should all be fine.  Please work to get
rid of LDLM_DEBUG() and use the "normal" in-kernel debugging functions
instead.

thanks,

greg k-h

