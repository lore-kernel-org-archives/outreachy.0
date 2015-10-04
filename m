X-GM-THRID: 6201691543779147776
X-Received: by 10.67.3.71 with SMTP id bu7mr19966490pad.18.1443949315970;
        Sun, 04 Oct 2015 02:01:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.67 with SMTP id j64ls1384843ioe.3.gmail; Sun, 04 Oct
 2015 02:01:55 -0700 (PDT)
X-Received: by 10.50.66.200 with SMTP id h8mr7086974igt.1.1443949315566;
        Sun, 04 Oct 2015 02:01:55 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id i77si1932366ywg.4.2015.10.04.02.01.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 02:01:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [193.120.146.54])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A7B4121E2;
	Sun,  4 Oct 2015 09:01:52 +0000 (UTC)
Date: Sun, 4 Oct 2015 10:01:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/8] Staging: lustre: obdclass:
 genops: Declare as static
Message-ID: <20151004090148.GB16294@kroah.com>
References: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
 <1443943816-21546-7-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443943816-21546-7-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 04, 2015 at 01:00:14PM +0530, Shraddha Barke wrote:
> Declare obd_export_nid2str and obd_zombie_impexp_cull as static
> since they are used only in this particular file. Also remove the
> corresponding declarations from header file
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/obd_class.h | 3 ---
>  drivers/staging/lustre/lustre/obdclass/genops.c   | 5 ++---
>  2 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
> index 6fb67a6..e73cd00 100644
> --- a/drivers/staging/lustre/lustre/include/obd_class.h
> +++ b/drivers/staging/lustre/lustre/include/obd_class.h
> @@ -92,13 +92,10 @@ struct obd_device *class_num2obd(int num);
>  
>  int class_notify_sptlrpc_conf(const char *fsname, int namelen);
>  
> -char *obd_export_nid2str(struct obd_export *exp);
> -
>  int obd_connect_flags2str(char *page, int count, __u64 flags, char *sep);
>  
>  int obd_zombie_impexp_init(void);
>  void obd_zombie_impexp_stop(void);
> -void obd_zombie_impexp_cull(void);
>  void obd_zombie_barrier(void);
>  
>  struct llog_handle;
> diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
> index c1bffcd..8573e49 100644
> --- a/drivers/staging/lustre/lustre/obdclass/genops.c
> +++ b/drivers/staging/lustre/lustre/obdclass/genops.c
> @@ -1108,14 +1108,13 @@ void class_fail_export(struct obd_export *exp)
>  }
>  EXPORT_SYMBOL(class_fail_export);
>  
> -char *obd_export_nid2str(struct obd_export *exp)
> +static char *obd_export_nid2str(struct obd_export *exp)
>  {
>  	if (exp->exp_connection != NULL)
>  		return libcfs_nid2str(exp->exp_connection->c_peer.nid);
>  
>  	return "(no nid)";
>  }
> -EXPORT_SYMBOL(obd_export_nid2str);
>  
>  #if LUSTRE_TRACKS_LOCK_EXP_REFS
>  void (*class_export_dump_hook)(struct obd_export *) = NULL;
> @@ -1178,7 +1177,7 @@ static int zombies_count;
>  /**
>   * kill zombie imports and exports
>   */
> -void obd_zombie_impexp_cull(void)
> +static void obd_zombie_impexp_cull(void)
>  {
>  	struct obd_import *import;
>  	struct obd_export *export;

This patch now causes a build warning in my tree.  Can you fix it up by
just deleting the function as I don't think anyone uses it anymore.

thanks,

greg k-h

