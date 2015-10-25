X-GM-THRID: 6208213403443396608
X-Received: by 10.66.152.230 with SMTP id vb6mr24409828pab.46.1445761689031;
        Sun, 25 Oct 2015 01:28:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.101 with SMTP id wh5ls1317874obc.3.gmail; Sun, 25 Oct
 2015 01:28:08 -0700 (PDT)
X-Received: by 10.182.95.101 with SMTP id dj5mr11894848obb.13.1445761688730;
        Sun, 25 Oct 2015 01:28:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si2993615pbc.1.2015.10.25.01.28.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:28:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EB35A67;
	Sun, 25 Oct 2015 08:28:07 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:51:42 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: lustre: Remove unused
 macros
Message-ID: <20151025015142.GE536@kroah.com>
References: <cover.1445462106.git.ksenija.stanojevic@gmail.com>
 <c283335f7c43aaa0fe8794045742d0be4bae0c18.1445462106.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c283335f7c43aaa0fe8794045742d0be4bae0c18.1445462106.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 21, 2015 at 11:21:53PM +0200, Ksenija Stanojevic wrote:
> Macros LPROCFS_CLIMP_CHECK and LPROCFS_CLIMP_EXIT are not used anymore,
> therefore remove them along with the comment.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/lprocfs_status.h | 13 -------------
>  1 file changed, 13 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
> index 6e41129..532d195 100644
> --- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
> +++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
> @@ -626,19 +626,6 @@ void lprocfs_stats_collect(struct lprocfs_stats *stats, int idx,
>  int lprocfs_single_release(struct inode *, struct file *);
>  int lprocfs_seq_release(struct inode *, struct file *);
>  
> -/* You must use these macros when you want to refer to
> - * the import in a client obd_device for a lprocfs entry */
> -#define LPROCFS_CLIMP_CHECK(obd) do {	   \
> -	typecheck(struct obd_device *, obd);    \

Note, when you turn this into an inline function, you don't need the
typecheck() call anymore, right?

thanks,

greg k-h

