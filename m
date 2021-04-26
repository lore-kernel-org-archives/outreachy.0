X-GM-THRID: 6955401561206947840
X-Received: by 2002:a25:bc8b:: with SMTP id e11mr24337737ybk.115.1619430986371;
        Mon, 26 Apr 2021 02:56:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls7412229ybc.2.gmail; Mon, 26
 Apr 2021 02:56:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwgi9tSNiKkz2EeF4A/iOunnldq7MnZlHqNoQPn61YDfpC++zY9HjlQQ7kUCInP66PGgoMJ
X-Received: by 2002:a25:778d:: with SMTP id s135mr13523470ybc.21.1619430985408;
        Mon, 26 Apr 2021 02:56:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619430985; cv=none;
        d=google.com; s=arc-20160816;
        b=pNH87M0HT//AuaQBEiTKBGw5TRc9xUCzol8eYta5Lz5vdd0K52WPuP6zGMcuvyVE9e
         9FXi4+UVtsdTT9tjo9bq++tm9Z4AyuDcEjix1MbKCaQN170wcGqqh/ohg21+aNDQDGiv
         Ca1a+uqIc9ohO2FbIXHibgpW0uzFi8Cb9Bz+YUKjYr8f4f1XFYGbX1df/Px5Knyxi0uX
         a8xdDrct9bzKdATgB6muR+HohRLfBZH8KJ+zHkmPXBxQqcgiXmQ/Ib33aqaUkofjNVCE
         UhplseEme30a3HY9DPzi7Zi84+BR6CXAv9i32FwvPbvOOh9R05cPtC4L8Ghq+EUqseiD
         0JYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vdTKxhzcQGcxgsrA2I0onNh2S4Pzo0LQoXBiDX0Ldf8=;
        b=NICMoO27EB8pzJzUiPxXdEZFQRdwswT/4ki6Qi5aA+ZQnhqUcbSxn6l4ErEOwQW+7w
         b+6oOSEM2ckI/8W27IxELGnSRaNfV2H7IzPf3heDRw69JjVm0Bc7AezFQj1cQqL9Y+Bf
         5VVB08QYB50NgtNqX0g0usgLLyWTElxXs+zd/9IMUNLy8I6szJbCu8MMPPOh7P4Ibznw
         oVDR7sgvML8ciFp5Jd1rgQKVyqu4SSaHgyBWLnpvgt8+n4pdk+8CAxwfmQKCR6yk1HW5
         OFSEt0hDbxXEMMy9wGSMXq1ZNiHKhQI6N/MlScXpolE3h5NIneCFayl/3TaOL6I1fiBt
         aRdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="n/EWF+O1";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 188si243061ybb.3.2021.04.26.02.56.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 02:56:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="n/EWF+O1";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B309B61103;
	Mon, 26 Apr 2021 09:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1619430984;
	bh=5dnhKqlnt1tMhdnaH2csD5e6d46+28b304GMJrShDZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n/EWF+O158O52xru7jbhVdaReN3VQQ1nLVOD5Dnol9yOMo4VVPH3n+1VHmWU1xacG
	 SohYr+hiM4kxnTYM/JA9X8OSJWmbrPRWvViaCLNSFrznvyHOOmYwR//iUTflcSWCay
	 18AukQMhdzQXarPjo9rltxSYX1+9Axpf8YSMrMOg=
Date: Mon, 26 Apr 2021 11:56:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	David Kershner <david.kershner@unisys.com>,
	Matthew Wilcox <willy@infradead.org>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [RFC PATCH] staging: unisys: visorhba:
 Convert module from IDR to XArray
Message-ID: <YIaORY3B6+6vMvFj@kroah.com>
References: <20210426095015.18556-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210426095015.18556-1-fmdefrancesco@gmail.com>

On Mon, Apr 26, 2021 at 11:50:15AM +0200, Fabio M. De Francesco wrote:
> Converted visorhba from IDR to XArray. The abstract data type XArray is
> more memory-efficient, parallelisable and cache friendly. It takes 
> advantage of RCU to perform lookups without locking.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  .../staging/unisys/visorhba/visorhba_main.c   | 107 +++++++-----------
>  1 file changed, 44 insertions(+), 63 deletions(-)
> 
> diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
> index 4455d26f7c96..851e60ab0c46 100644
> --- a/drivers/staging/unisys/visorhba/visorhba_main.c
> +++ b/drivers/staging/unisys/visorhba/visorhba_main.c
> @@ -6,10 +6,10 @@
>  
>  #include <linux/debugfs.h>
>  #include <linux/kthread.h>
> -#include <linux/idr.h>
>  #include <linux/module.h>
>  #include <linux/seq_file.h>
>  #include <linux/visorbus.h>
> +#include <linux/xarray.h>
>  #include <scsi/scsi.h>
>  #include <scsi/scsi_host.h>
>  #include <scsi/scsi_cmnd.h>
> @@ -23,6 +23,8 @@
>  #define MAX_PENDING_REQUESTS (MIN_NUMSIGNALS * 2)
>  #define VISORHBA_ERROR_COUNT 30
>  
> +static DEFINE_XARRAY_ALLOC(xa_dtstr);
> +
>  static struct dentry *visorhba_debugfs_dir;
>  
>  /* GUIDS for HBA channel type supported by this driver */
> @@ -78,12 +80,6 @@ struct visorhba_devdata {
>  	unsigned int max_buff_len;
>  	int devnum;
>  	struct uiscmdrsp *cmdrsp;
> -	/*
> -	 * allows us to pass int handles back-and-forth between us and
> -	 * iovm, instead of raw pointers
> -	 */
> -	struct idr idr;
> -
>  	struct dentry *debugfs_dir;
>  	struct dentry *debugfs_info;
>  };
> @@ -183,32 +179,16 @@ static struct uiscmdrsp *get_scsipending_cmdrsp(struct visorhba_devdata *ddata,
>  }
>  
>  /*
> - * simple_idr_get - Associate a provided pointer with an int value
> - *		    1 <= value <= INT_MAX, and return this int value;
> - *		    the pointer value can be obtained later by passing
> - *		    this int value to idr_find()
> - * @idrtable: The data object maintaining the pointer<-->int mappings
> - * @p:	      The pointer value to be remembered
> - * @lock:     A spinlock used when exclusive access to idrtable is needed
> - *
> - * Return: The id number mapped to pointer 'p', 0 on failure
> + * simple_xa_dtstr_get - Store a pointer to xa_dtstr xarray
> + * @id: Pointer to ID
> + * @entry: New entry
>   */
> -static unsigned int simple_idr_get(struct idr *idrtable, void *p,
> -				   spinlock_t *lock)
> +static int simple_xa_dtstr_get(u32 *id, void *entry)

What are you trying to really "get" here?  We shouldn't name the
function based on the data type being used.  All we want is some sort of
"token" or hash or something else?  It's hard to tell...

>  {
> -	int id;
> -	unsigned long flags;
> +	int ret = xa_alloc_irq(&xa_dtstr, id, entry, xa_limit_32b, GFP_NOWAIT);
> +	/* TODO: check for and manage errors */

That's a nice TODO, which means we really should not be considering this
patch to be merged, right?

thanks,

greg k-h

