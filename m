X-GM-THRID: 5221884362752
X-Received: by 10.236.41.73 with SMTP id g49mr26832346yhb.57.1425257181436;
        Sun, 01 Mar 2015 16:46:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.81 with SMTP id t78ls1140194ioe.21.gmail; Sun, 01 Mar
 2015 16:46:21 -0800 (PST)
X-Received: by 10.68.95.100 with SMTP id dj4mr24078105pbb.9.1425257181267;
        Sun, 01 Mar 2015 16:46:21 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q9si448826pds.2.2015.03.01.16.46.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:46:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0631A4D3;
	Mon,  2 Mar 2015 00:46:21 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:46:20 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/5] Staging: lustre: Fix line over
 80 characters
Message-ID: <20150302004620.GA12374@kroah.com>
References: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>
 <1425169207-20073-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425169207-20073-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 03:20:07AM +0300, Haneen Mohammed wrote:
> This patch splits line over 80 characters addressing checkpatch.pl
> warning.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ldlm/interval_tree.c |  9 +++--
>  drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  3 +-
>  drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 46 +++++++++++++++-------
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 12 ++++--
>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     | 11 +++---
>  drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 12 ++++--
>  6 files changed, 62 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/interval_tree.c b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> index eab2bd6..1b2bf08 100644
> --- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> +++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> @@ -433,7 +433,8 @@ static void interval_erase_color(struct interval_node *node,
>  
>  					o_left = tmp->in_left;
>  					if (o_left)
> -						o_left->in_color = INTERVAL_BLACK;
> +						o_left->in_color =
> +							INTERVAL_BLACK;


This all looks worse now :(

Try reorginizing things to not make this happen.

thanks,

greg k-h

