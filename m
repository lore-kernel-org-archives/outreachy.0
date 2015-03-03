X-GM-THRID: 5221884362752
X-Received: by 10.182.171.2 with SMTP id aq2mr313870obc.23.1425408402715;
        Tue, 03 Mar 2015 10:46:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.198 with SMTP id l64ls251178qgd.96.gmail; Tue, 03 Mar
 2015 10:46:42 -0800 (PST)
X-Received: by 10.236.70.100 with SMTP id o64mr336237yhd.9.1425408402335;
        Tue, 03 Mar 2015 10:46:42 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si235759pdc.0.2015.03.03.10.46.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 10:46:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.0.216])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 04C0DB13;
	Tue,  3 Mar 2015 18:46:39 +0000 (UTC)
Date: Tue, 3 Mar 2015 09:04:14 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: lustre: Fix line over 80
 characters
Message-ID: <20150303170414.GB1708@kroah.com>
References: <1425336954-18675-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425336954-18675-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 01:55:54AM +0300, Haneen Mohammed wrote:
> This patch splits line over 80 characters addressing checkpatch.pl
> warning.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v4: reorganizing alignments.
> 
>  drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  3 +-
>  drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 46 +++++++++++++++-------
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 14 ++++---
>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  5 ++-
>  drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  8 ++--
>  5 files changed, 51 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
> index a4c252f..61c1e3d 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
> @@ -622,7 +622,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
>  		return 0;
>  	}
>  
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
> +	LDLM_DEBUG(lock,
> +			  "client-side enqueue returned a blocked lock, sleeping");

This line shouldn't be changed, and you are still over 80 characters
here :(


