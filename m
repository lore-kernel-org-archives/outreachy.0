X-GM-THRID: 5221884362752
X-Received: by 10.236.4.100 with SMTP id 64mr24660666yhi.43.1425257484835;
        Sun, 01 Mar 2015 16:51:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.74.166 with SMTP id u6ls605132obv.95.gmail; Sun, 01 Mar
 2015 16:51:24 -0800 (PST)
X-Received: by 10.182.163.108 with SMTP id yh12mr18647643obb.43.1425257484590;
        Sun, 01 Mar 2015 16:51:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si1319930pad.1.2015.03.01.16.51.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:51:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4C7C14D3;
	Mon,  2 Mar 2015 00:51:24 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:51:24 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: hamohammed.sa@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: lustre: Fix line over 80
 characters
Message-ID: <20150302005124.GA29200@kroah.com>
References: <20150301144310.GA7807@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150301144310.GA7807@example.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 05:43:10PM +0300, Haneen Mohammed wrote:
> This patch splits line over 80 characters addressing checkpatch.pl
> warning.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v3: fix identation.
> v2: edit subject line.
> 
>  drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 44 ++++++++++++++---------
>  1 file changed, 27 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> index 287da32..ec09c08 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> @@ -98,13 +98,16 @@ int ldlm_expired_completion_wait(void *data)
>  		static unsigned long next_dump, last_dump;
>  
>  		LCONSOLE_WARN("lock timed out (enqueued at "CFS_TIME_T", "
> -			      CFS_DURATION_T"s ago)\n",
> -			      lock->l_last_activity,
> -			      cfs_time_sub(get_seconds(),
> -					   lock->l_last_activity));
> -		LDLM_DEBUG(lock, "lock timed out (enqueued at " CFS_TIME_T ", " CFS_DURATION_T "s ago); not entering recovery in server code, just going back to sleep",
> -			   lock->l_last_activity,
> -			   cfs_time_sub(get_seconds(),
> +						CFS_DURATION_T"s ago)\n",
> +						lock->l_last_activity,
> +						cfs_time_sub(get_seconds(),
> +						lock->l_last_activity));
> +		LDLM_DEBUG(lock,
> +					"lock timed out (enqueued at "

Very odd indentation :(


