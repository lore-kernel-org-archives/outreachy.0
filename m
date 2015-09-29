X-GM-THRID: 6200019380500168704
X-Received: by 10.129.155.5 with SMTP id s5mr24387989ywg.38.1443555519042;
        Tue, 29 Sep 2015 12:38:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.204 with SMTP id s12ls348641igr.25.canary; Tue, 29 Sep
 2015 12:38:38 -0700 (PDT)
X-Received: by 10.50.20.227 with SMTP id q3mr22409483ige.11.1443555518720;
        Tue, 29 Sep 2015 12:38:38 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k190si2661128ywe.3.2015.09.29.12.38.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 12:38:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.161])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7BF771874;
	Tue, 29 Sep 2015 19:38:37 +0000 (UTC)
Date: Tue, 29 Sep 2015 21:38:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: show() methods should
 use scnprintf()
Message-ID: <20150929193835.GB23361@kroah.com>
References: <1443554495-16338-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443554495-16338-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 29, 2015 at 09:21:35PM +0200, Ksenija Stanojevic wrote:
> snprintf() may return a value that exceeds its second argument,
> show() methods should use scnprintf() instead of snprintf().
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_sysfs.c | 52 +++++++++++++++++++--------------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
> index 44db870..1267318 100644
> --- a/drivers/staging/dgnc/dgnc_sysfs.c
> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> @@ -29,28 +29,28 @@
>  
>  static ssize_t dgnc_driver_version_show(struct device_driver *ddp, char *buf)
>  {
> -	return snprintf(buf, PAGE_SIZE, "%s\n", DG_PART);
> +	return scnprintf(buf, PAGE_SIZE, "%s\n", DG_PART);

Same as my other comment, these are just fine as-is.

thanks,

greg k-h

