X-GM-THRID: 1427250348032
X-Received: by 10.66.97.10 with SMTP id dw10mr9101050pab.48.1424975123118;
        Thu, 26 Feb 2015 10:25:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.46 with SMTP id k43ls220321qgk.27.gmail; Thu, 26 Feb
 2015 10:25:22 -0800 (PST)
X-Received: by 10.236.104.134 with SMTP id i6mr9036294yhg.48.1424975122882;
        Thu, 26 Feb 2015 10:25:22 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si227826pbc.0.2015.02.26.10.25.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:25:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 93DB3B8A;
	Thu, 26 Feb 2015 18:25:22 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:25:22 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: aybuke ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lustre: fid:
 Remove unnecessary else after return
Message-ID: <20150226182522.GA23634@kroah.com>
References: <1424461139-8191-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424461139-8191-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 09:38:59PM +0200, aybuke ozdemir wrote:
> This patch fixes "else is not generally useful after
> a break or return" checkpatch.pl warning using goto statement in fid_request.c
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
> Changes since v1:
> * removed the "else" block instead of goto statement was used and
> a commit message has been corrected.
> ---
>  drivers/staging/lustre/lustre/fid/fid_request.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
> index 063441a..a3a300e 100644
> --- a/drivers/staging/lustre/lustre/fid/fid_request.c
> +++ b/drivers/staging/lustre/lustre/fid/fid_request.c
> @@ -200,7 +200,7 @@ static int seq_client_alloc_seq(const struct lu_env *env,
>  		if (rc) {
>  			CERROR("%s: Can't allocate new meta-sequence, rc %d\n",
>  			       seq->lcs_name, rc);
> -			return rc;
> +			goto out;

No need for this, just remove the else line below here instead.

>  		} else {
>  			CDEBUG(D_INFO, "%s: New range - "DRANGE"\n",
>  			       seq->lcs_name, PRANGE(&seq->lcs_space));

thanks,

greg k-h

