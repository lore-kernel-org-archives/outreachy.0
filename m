X-GM-THRID: 6955401561206947840
X-Received: by 2002:a2e:bb95:: with SMTP id y21mr16880005lje.510.1619532482155;
        Tue, 27 Apr 2021 07:08:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls3989965lff.0.gmail; Tue, 27 Apr
 2021 07:08:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzUvjZeA6E9UJjSBQwz/Ix0BLzJI8qUhu5bJ/7FDW4ZIwWclVFrNJw1OH72ZD9/QAVilNR
X-Received: by 2002:a19:6b19:: with SMTP id d25mr16522926lfa.406.1619532480081;
        Tue, 27 Apr 2021 07:08:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619532480; cv=none;
        d=google.com; s=arc-20160816;
        b=gop9lNhTm3VbQY9xdNR78oEOCfvVDmVbA/SS6XyypTfA+Uns7TBRbh/YmtVHUM6Qpl
         UA63XiK1U424wUlI34X/6zjqiPl65m0cEPqT0MahDsM/VA+Qei6EN5lC5EAIl6cll1ky
         MnGTbw/7p063r0t3HN9QmeO6dWwE7pY8WTIhUzhpHtWRnllj7zCqeeZ2EU1AXQm4+kRS
         dbmM1niPDVmWmRiet9KTQnoRN76qG9dv7VtSSP1FOD4TPZKcRr8SCMCEFAX6fxbEqv6j
         KsQetKL2xS9PYiaC3bZTEEtoMODDsAXHda3Ylz9dCrbmfbS1YAbvwz05M7stnzbkQ8x4
         EYdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7Q/mc/Y2PzEj5PN7I4tb88G1KP3ZWJC6W+8h1Wpk2zc=;
        b=RWMgbGdlv7J2juw+qDyXGAPsrVtBPMqb3wyvhO+8evuVgpk/p5ETetlLKzICXcruU3
         t16KkKP9+Mc4wEkAN+pbhIeqIYVewqTD33YJ7iY0NLqHG8AiUjA++3Z5pzYIL+d94o6F
         +1SnXZ+YZi4hTyh0ZUSVwzMw7xffxPbMhbcWFB3MnYS2ot+B47WAWXVS4YAZS3s00AbB
         vY6qAiC8w37FqOUhW//AoWs2w+PRyEMrAIs+NhHKmFBWa/y1WrrRuYVWy7YsQFokC+Dz
         5mwQ4mk3GCJMNzZesX7aKn9bIBVwouQORg6eozm71BFhgd13jnDgGv/7NSJiGGHNNop9
         25rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=baqUJSe0;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fabioaiuto83@gmail.com>
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com. [2a00:1450:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id u2si1346382lfo.2.2021.04.27.07.08.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 07:08:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) client-ip=2a00:1450:4864:20::32b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=baqUJSe0;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32b.google.com with SMTP id i129so4945203wma.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 07:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7Q/mc/Y2PzEj5PN7I4tb88G1KP3ZWJC6W+8h1Wpk2zc=;
        b=baqUJSe0fLPvv9QSK+p2gIz7kavSCr6+Yj83eHHyT5zaLeRQvIlRFS19rsLshC+ZSM
         kv+zGMJio0NFyFFJfo6kGJH1iTOxBrrSBDH42qZA1k+/pj9gRsLkA8MlsKQxmvCmNMnw
         esk3Mmxi/HpSyuakgaT4xuB+Mi2VzFGAa7mkGN8E8FXiat2QozC0/hb9i13XfOG0tBIh
         rsD5uZCIetfQicGhurM9NtLZWP4Nu1MtDXw7+P1gSV1Zx6mQM+k/p2KTbE7iiX6IyHUD
         wdzCYPkqY/7a3vRyXE2HR37jJ3DzGYGKhsAJCk5/jEVMGjrYGjLHTS/G6IGKn0ERJI8y
         ZgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7Q/mc/Y2PzEj5PN7I4tb88G1KP3ZWJC6W+8h1Wpk2zc=;
        b=X9UVVbJCQM+lJvdN2fp4jAHPAQDA9PxjnEnxKc3j1jYnb5L6a6vRocxJOeY+XhldFX
         tgZ9oVdCXswTVI7ums+NI0961GZW7/ljxbWUK/Koxy/hENg+G+wu41SasI390xk5PC2h
         vCuRwZFdtn6zenn4f4Y/Hqg7dUWpDejTHRk8MYgBIiJt2Idy363JXvt1w7y5DreGuHG5
         yrOiMmcHWfgSbTKm7zuthsxL4c6qDkwWFnLuiChPK70sSB+wzffdsmpP2U7l0s1qMiDs
         JXaFxlPjKlZCMVkBdVzCTjWoqKvDIpTReYcyaj4jtGTUkPwLbZyNyBykBz62HNNkhykC
         dElA==
X-Gm-Message-State: AOAM532P07oslt88/Nv6XMr8OqiZESIQ2vv9Izq+4XUVYbDDD1nLpL2i
	VvLNnelxdAIaZTBL1wfaXQI=
X-Received: by 2002:a1c:4954:: with SMTP id w81mr4684636wma.49.1619532479530;
        Tue, 27 Apr 2021 07:07:59 -0700 (PDT)
Return-Path: <fabioaiuto83@gmail.com>
Received: from agape.jhs ([5.171.81.92])
        by smtp.gmail.com with ESMTPSA id f4sm4270152wrz.33.2021.04.27.07.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 07:07:59 -0700 (PDT)
Date: Tue, 27 Apr 2021 16:07:56 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	Daniel Vetter <daniel@ffwll.ch>,
	Matthew Wilcox <willy@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: unisys: visorhba: Convert
 module from IDR to XArray
Message-ID: <20210427140755.GC1399@agape.jhs>
References: <20210427132522.14547-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210427132522.14547-1-fmdefrancesco@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Fabio,

On Tue, Apr 27, 2021 at 03:25:22PM +0200, Fabio M. De Francesco wrote:
> Converted visorhba from IDR to XArray. The abstract data type XArray is
> more memory-efficient, parallelisable and cache friendly. It takes
> advantage of RCU to perform lookups without locking.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes from v3: Matthew Wilcox found that the XArray was not
> initialized: now it is. Changed types handles from u64 to u32 because
> they can't work as arguments of xa_alloc_irq() and u32 is enough large
> for storing XArray indexes.
> Changes from v2: Some residual errors from v1 were not fixed in v2. Now
> they have been removed.
> Changes from v1: After a first review by Matthew Wilcox, who found a
> series of errors and gave suggestions on how to fix them, I rewrote a
> larger part of the patch.
> 
>  drivers/staging/unisys/include/iochannel.h    |  4 +-
>  .../staging/unisys/visorhba/visorhba_main.c   | 89 ++++++-------------
>  2 files changed, 28 insertions(+), 65 deletions(-)
> 
> diff --git a/drivers/staging/unisys/include/iochannel.h b/drivers/staging/unisys/include/iochannel.h
> index 9ef812c0bc42..fac89eac148b 100644
> --- a/drivers/staging/unisys/include/iochannel.h
> +++ b/drivers/staging/unisys/include/iochannel.h
> @@ -474,8 +474,8 @@ struct uiscmdrsp_scsitaskmgmt {
>  	enum task_mgmt_types tasktype;
>  	struct uisscsi_dest vdest;
>  	u64 handle;
> -	u64 notify_handle;
> -	u64 notifyresult_handle;
> +	u32 notify_handle;
> +	u32 notifyresult_handle;
>  	char result;
>  
>  #define TASK_MGMT_FAILED 0
> diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
> index 4455d26f7c96..2b6cde254f17 100644
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
> @@ -82,7 +82,7 @@ struct visorhba_devdata {
>  	 * allows us to pass int handles back-and-forth between us and
>  	 * iovm, instead of raw pointers
>  	 */
> -	struct idr idr;
> +	struct xarray xa;
>  
>  	struct dentry *debugfs_dir;
>  	struct dentry *debugfs_info;
> @@ -182,71 +182,40 @@ static struct uiscmdrsp *get_scsipending_cmdrsp(struct visorhba_devdata *ddata,
>  	return NULL;
>  }
>  
> -/*
> - * simple_idr_get - Associate a provided pointer with an int value
> - *		    1 <= value <= INT_MAX, and return this int value;
> - *		    the pointer value can be obtained later by passing
> - *		    this int value to idr_find()
> - * @idrtable: The data object maintaining the pointer<-->int mappings
> - * @p:	      The pointer value to be remembered
> - * @lock:     A spinlock used when exclusive access to idrtable is needed
> - *
> - * Return: The id number mapped to pointer 'p', 0 on failure
> - */
> -static unsigned int simple_idr_get(struct idr *idrtable, void *p,
> -				   spinlock_t *lock)
> -{
> -	int id;
> -	unsigned long flags;
> -
> -	idr_preload(GFP_KERNEL);
> -	spin_lock_irqsave(lock, flags);
> -	id = idr_alloc(idrtable, p, 1, INT_MAX, GFP_NOWAIT);
> -	spin_unlock_irqrestore(lock, flags);
> -	idr_preload_end();
> -	/* failure */
> -	if (id < 0)
> -		return 0;
> -	/* idr_alloc() guarantees > 0 */
> -	return (unsigned int)(id);
> -}
> -
>  /*
>   * setup_scsitaskmgmt_handles - Stash the necessary handles so that the
>   *				completion processing logic for a taskmgmt
>   *				cmd will be able to find who to wake up
>   *				and where to stash the result
> - * @idrtable: The data object maintaining the pointer<-->int mappings
> - * @lock:     A spinlock used when exclusive access to idrtable is needed
> + * @xa:       The data object maintaining the pointer<-->int mappings
>   * @cmdrsp:   Response from the IOVM
>   * @event:    The event handle to associate with an id
>   * @result:   The location to place the result of the event handle into
>   */
> -static void setup_scsitaskmgmt_handles(struct idr *idrtable, spinlock_t *lock,
> -				       struct uiscmdrsp *cmdrsp,
> +static void setup_scsitaskmgmt_handles(struct xarray *xa, struct uiscmdrsp *cmdrsp,
>  				       wait_queue_head_t *event, int *result)
>  {
> -	/* specify the event that has to be triggered when this */
> -	/* cmd is complete */
> -	cmdrsp->scsitaskmgmt.notify_handle =
> -		simple_idr_get(idrtable, event, lock);
> -	cmdrsp->scsitaskmgmt.notifyresult_handle =
> -		simple_idr_get(idrtable, result, lock);
> +	int ret;
> +	u32 *id;
> +
> +	/* specify the event that has to be triggered when this cmd is complete */
> +	id = &cmdrsp->scsitaskmgmt.notify_handle;
> +	ret = xa_alloc_irq(xa, id, event, XA_LIMIT(1, INT_MAX), GFP_KERNEL);
> +	id = &cmdrsp->scsitaskmgmt.notifyresult_handle;
> +	ret = xa_alloc_irq(xa, id, result, XA_LIMIT(1, INT_MAX), GFP_KERNEL);
>  }
>  
>  /*
>   * cleanup_scsitaskmgmt_handles - Forget handles created by
>   *				  setup_scsitaskmgmt_handles()
> - * @idrtable: The data object maintaining the pointer<-->int mappings
> + * @xa: The data object maintaining the pointer<-->int mappings
>   * @cmdrsp:   Response from the IOVM
>   */
> -static void cleanup_scsitaskmgmt_handles(struct idr *idrtable,
> +static void cleanup_scsitaskmgmt_handles(struct xarray *xa,
>  					 struct uiscmdrsp *cmdrsp)
>  {
> -	if (cmdrsp->scsitaskmgmt.notify_handle)
> -		idr_remove(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
> -	if (cmdrsp->scsitaskmgmt.notifyresult_handle)
> -		idr_remove(idrtable, cmdrsp->scsitaskmgmt.notifyresult_handle);
> +	xa_erase(xa, cmdrsp->scsitaskmgmt.notify_handle);
> +	xa_erase(xa, cmdrsp->scsitaskmgmt.notifyresult_handle);
>  }

why were the conditions removed before each entry deletion?

>  
>  /*
> @@ -273,8 +242,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
>  	if (devdata->serverdown || devdata->serverchangingstate)
>  		return FAILED;
>  
> -	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE,
> -					   NULL);
> +	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE, NULL);
>  	if (scsicmd_id < 0)
>  		return FAILED;
>  

this is a code format change, maybe this go in a separate patch?

> @@ -284,8 +252,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
>  
>  	/* issue TASK_MGMT_ABORT_TASK */
>  	cmdrsp->cmdtype = CMD_SCSITASKMGMT_TYPE;
> -	setup_scsitaskmgmt_handles(&devdata->idr, &devdata->privlock, cmdrsp,
> -				   &notifyevent, &notifyresult);
> +	setup_scsitaskmgmt_handles(&devdata->xa, cmdrsp, &notifyevent, &notifyresult);
>  
>  	/* save destination */
>  	cmdrsp->scsitaskmgmt.tasktype = tasktype;
> @@ -311,14 +278,14 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
>  	dev_dbg(&scsidev->sdev_gendev,
>  		"visorhba: taskmgmt type=%d success; result=0x%x\n",
>  		 tasktype, notifyresult);
> -	cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
> +	cleanup_scsitaskmgmt_handles(&devdata->xa, cmdrsp);
>  	return SUCCESS;
>  
>  err_del_scsipending_ent:
>  	dev_dbg(&scsidev->sdev_gendev,
>  		"visorhba: taskmgmt type=%d not executed\n", tasktype);
>  	del_scsipending_ent(devdata, scsicmd_id);
> -	cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
> +	cleanup_scsitaskmgmt_handles(&devdata->xa, cmdrsp);
>  	return FAILED;
>  }
>  
> @@ -654,13 +621,12 @@ DEFINE_SHOW_ATTRIBUTE(info_debugfs);
>   * Service Partition returned the result of the task management
>   * command. Wake up anyone waiting for it.
>   */
> -static void complete_taskmgmt_command(struct idr *idrtable,
> -				      struct uiscmdrsp *cmdrsp, int result)
> +static void complete_taskmgmt_command(struct xarray *xa, struct uiscmdrsp *cmdrsp, int result)
>  {
>  	wait_queue_head_t *wq =
> -		idr_find(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
> +		xa_load(xa, cmdrsp->scsitaskmgmt.notify_handle);
>  	int *scsi_result_ptr =
> -		idr_find(idrtable, cmdrsp->scsitaskmgmt.notifyresult_handle);
> +		xa_load(xa, cmdrsp->scsitaskmgmt.notifyresult_handle);
>  	if (unlikely(!(wq && scsi_result_ptr))) {
>  		pr_err("visorhba: no completion context; cmd will time out\n");
>  		return;
> @@ -708,8 +674,7 @@ static void visorhba_serverdown_complete(struct visorhba_devdata *devdata)
>  			break;
>  		case CMD_SCSITASKMGMT_TYPE:
>  			cmdrsp = pendingdel->sent;
> -			complete_taskmgmt_command(&devdata->idr, cmdrsp,
> -						  TASK_MGMT_FAILED);
> +			complete_taskmgmt_command(&devdata->xa, cmdrsp, TASK_MGMT_FAILED);
>  			break;
>  		default:
>  			break;
> @@ -905,7 +870,7 @@ static void drain_queue(struct uiscmdrsp *cmdrsp,
>  			if (!del_scsipending_ent(devdata,
>  						 cmdrsp->scsitaskmgmt.handle))
>  				break;
> -			complete_taskmgmt_command(&devdata->idr, cmdrsp,
> +			complete_taskmgmt_command(&devdata->xa, cmdrsp,
>  						  cmdrsp->scsitaskmgmt.result);
>  		} else if (cmdrsp->cmdtype == CMD_NOTIFYGUEST_TYPE)
>  			dev_err_once(&devdata->dev->device,
> @@ -1053,7 +1018,7 @@ static int visorhba_probe(struct visor_device *dev)
>  	if (err)
>  		goto err_debugfs_info;
>  
> -	idr_init(&devdata->idr);
> +	xa_init(&devdata->xa);
>  
>  	devdata->cmdrsp = kmalloc(sizeof(*devdata->cmdrsp), GFP_ATOMIC);
>  	visorbus_enable_channel_interrupts(dev);
> @@ -1096,8 +1061,6 @@ static void visorhba_remove(struct visor_device *dev)
>  	scsi_remove_host(scsihost);
>  	scsi_host_put(scsihost);
>  
> -	idr_destroy(&devdata->idr);
> -
>  	dev_set_drvdata(&dev->device, NULL);
>  	debugfs_remove(devdata->debugfs_info);
>  	debugfs_remove_recursive(devdata->debugfs_dir);
> -- 
> 2.31.1
> 
> 

thank you,

fabio

