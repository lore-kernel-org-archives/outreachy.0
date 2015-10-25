X-GM-THRID: 6208213403443396608
X-Received: by 10.129.72.83 with SMTP id v80mr23823795ywa.11.1445761686036;
        Sun, 25 Oct 2015 01:28:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.101 with SMTP id e98ls1355936iod.28.gmail; Sun, 25 Oct
 2015 01:28:05 -0700 (PDT)
X-Received: by 10.66.165.7 with SMTP id yu7mr10379833pab.45.1445761685758;
        Sun, 25 Oct 2015 01:28:05 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si3030288pac.2.2015.10.25.01.28.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:28:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F118967;
	Sun, 25 Oct 2015 08:28:04 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:51:10 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: lustre: Replace
 LPROCFS_CLIMP_EXIT with lprocfs_climp_exit
Message-ID: <20151025015110.GD536@kroah.com>
References: <cover.1445462106.git.ksenija.stanojevic@gmail.com>
 <2f3b181baa7f390b1169b8c8baa3f3cebb92da72.1445462106.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2f3b181baa7f390b1169b8c8baa3f3cebb92da72.1445462106.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 21, 2015 at 11:20:34PM +0200, Ksenija Stanojevic wrote:
> Static inline functions are preferred over macros. The function is
> placed in obd_class.h instead lprocfs_status.h because obd_class.h
> includes header obd.h which contains definition of struct obd_device
> and in that way avoids build error: Dereferencing pointer to incomplete
> type.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/obd_class.h       |  5 +++++
>  drivers/staging/lustre/lustre/mgc/mgc_request.c         |  2 +-
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 12 ++++++------
>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c     |  6 +++---
>  4 files changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
> index 56c2096..ad15a10 100644
> --- a/drivers/staging/lustre/lustre/include/obd_class.h
> +++ b/drivers/staging/lustre/lustre/include/obd_class.h
> @@ -262,6 +262,11 @@ static inline int lprocfs_climp_check(struct obd_device *obd)
>  	return 0;
>  }
>  
> +static inline void lprocfs_climp_exit(struct obd_device *obd)
> +{
> +	up_read(&(obd)->u.cli.cl_sem);
> +}

Why not just use up_read() everywhere instead?  You'll just be removing
this wrapper function in a later patch anyway :)

thanks,

greg k-h

