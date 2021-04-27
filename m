X-GM-THRID: 6955401561206947840
X-Received: by 2002:a2e:9211:: with SMTP id k17mr16569550ljg.495.1619533640456;
        Tue, 27 Apr 2021 07:27:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f815:: with SMTP id a21ls4056646lff.1.gmail; Tue, 27 Apr
 2021 07:27:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJyWAXKHZyNDLh5UB65quoLG/uaNIqzY9cxk9Wapz7OBSCHoF2GPcP6AMBAScs8x16vM1x
X-Received: by 2002:a05:6512:2251:: with SMTP id i17mr9678586lfu.186.1619533638704;
        Tue, 27 Apr 2021 07:27:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619533638; cv=none;
        d=google.com; s=arc-20160816;
        b=JWqenuZ6ARWYxlyMdUycPByJbagEv54mcIEkysoQ4RKdOoXJQA4UJMlXp1lIPgbLXi
         /UTFH8HSH3OYSsDrdkrSSbFra+4Tk6qkNMrh0fAQ+KWep2QLcJ9plINvas+aAApT6vIe
         0YRe71HJXOu4wdWNGuW/wO4Fd1Tv3D9FLscAkTFmjQ+IliCv2cyrEzsRHv0MWk6YyC4i
         yPsKwmXfQ6gxKX1U+JIriHETtH3ozzMqsliTk1zls7ynOTMhJy6qMqkGIbY43ZYsy0+m
         x+ORrTeI6WcFfdEAETURoML+Y4SwkvEclrPYskWTUNVoRZhyX62jEvnvzLgjLvEiIuqI
         3IoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XhBitAfO+lUdqM+KJ5MLv9MizE/aYLsi5KapnflyV6M=;
        b=XAw1sgeDcKP87EAzkX1tIKN5dlznEwxcGst/uY+TrXZEhp522oSWWDeQORM5X85PtD
         3ufnUxkHl9QLsINWBycwQKvnR0HKhMxr7MSSRla8wzOMhSP/AK44u16EYnJ1ZV+Dy0QW
         yxeGI8+puOd6+ZLOswLurYL9cpw7rw9/tVopNfGg6FtbsPYp2Ns5m2g7Yt0NBiTOUQVW
         qschzVGbaeF91JiUxz1tN1pUrntt7EamWwvjlPDkhNQmr8nfwcL5BiT4M1R613s/xJb2
         Fi3moOm5sQfkUOKn/rgEbm19mSVyk2gaq+x+ANhnV7eXbE4HZWqUFiHfVq+0GTUMfbpk
         ecCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KWA947vQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id n10si1311019lft.1.2021.04.27.07.27.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 07:27:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KWA947vQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x536.google.com with SMTP id i24so10602270edy.8
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 07:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XhBitAfO+lUdqM+KJ5MLv9MizE/aYLsi5KapnflyV6M=;
        b=KWA947vQLRv7xZCkUeZaOWisLCCsiTm4TDd55+Pt8S8J+1thJssD1ct2oyhINnY2p5
         L2cE8lYSFhJv+UgLpIG6pXsYHWAZHWJkD4IsYMD0m0G74OwTLwUuh6WXxZjIABbznsEz
         Qlh9TWE1JIHIqrbaIET1a6CENH4VhqsRDjjSU6Lc57vZNGGobICtBPj9vC7MwB7uLDp5
         7bZDjXoZTGwGGCagc1hQ6ddlwvGzv/4kf760ZaLl13kAqjP8A17A+wEAZCqyqOd93OjN
         e8/s/wCFizy5DZnC07tHZEOQP4DL4M7/zwZb9UnSmvmwmbHG6bQXaEEUyDcgweZdcuI7
         /I5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XhBitAfO+lUdqM+KJ5MLv9MizE/aYLsi5KapnflyV6M=;
        b=Tcg7nBCQUCV7o32ny4dcZp1hSeGlLNkb7BXua8b6laNmISeK2LpyjejF5mgEkIV/Qj
         wcBFjdfTyLH9aqgAuTWnWSJ+M7LZBUT0nxJue+D+eUj8DVdENfuS/pPObNEVfSZAOiy9
         L19ALbOSQrzAKFJY/5UK6LKs6GAzfY9SLNHVL4+U3P6QyaiGrkjAnrnLYMnFl35D9NkN
         nmyX4kkdGe5cqBD0Hu1C227btHckAtEQPxHnZ2op3StGVJ+vSSMIy6ROnqn30pd/ezPr
         uLKcZh48IabFgm2q4uOa3ryGOg2FDDu7lBnpmCYcTmpSr/Him4e58+up5grnX93lXm15
         yBqQ==
X-Gm-Message-State: AOAM533SU201M+QALogxsykHDtENXis31s6d3eADdriQyTHqXZXgSYBx
	iOTn/OxRT8ULClu8TfU1USI=
X-Received: by 2002:a05:6402:6cf:: with SMTP id n15mr4612569edy.51.1619533638415;
        Tue, 27 Apr 2021 07:27:18 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id x7sm40122ejc.116.2021.04.27.07.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 07:27:17 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Cc: outreachy-kernel@googlegroups.com, David Kershner <david.kershner@unisys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>, Matthew Wilcox <willy@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Tue, 27 Apr 2021 16:27:16 +0200
Message-ID: <47635779.DuUUcalshs@linux.local>
In-Reply-To: <20210427140755.GC1399@agape.jhs>
References: <20210427132522.14547-1-fmdefrancesco@gmail.com> <20210427140755.GC1399@agape.jhs>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, April 27, 2021 4:07:56 PM CEST Fabio Aiuto wrote:
> Hi Fabio,
> 
> On Tue, Apr 27, 2021 at 03:25:22PM +0200, Fabio M. De Francesco wrote:
> > Converted visorhba from IDR to XArray. The abstract data type XArray is
> > more memory-efficient, parallelisable and cache friendly. It takes
> > advantage of RCU to perform lookups without locking.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> > Changes from v3: Matthew Wilcox found that the XArray was not
> > initialized: now it is. Changed types handles from u64 to u32 because
> > they can't work as arguments of xa_alloc_irq() and u32 is enough large
> > for storing XArray indexes.
> > Changes from v2: Some residual errors from v1 were not fixed in v2. Now
> > they have been removed.
> > Changes from v1: After a first review by Matthew Wilcox, who found a
> > series of errors and gave suggestions on how to fix them, I rewrote a
> > larger part of the patch.
> > 
> >  drivers/staging/unisys/include/iochannel.h    |  4 +-
> >  .../staging/unisys/visorhba/visorhba_main.c   | 89 ++++++-------------
> >  2 files changed, 28 insertions(+), 65 deletions(-)
> > 
> > diff --git a/drivers/staging/unisys/include/iochannel.h
> > b/drivers/staging/unisys/include/iochannel.h index 
9ef812c0bc42..fac89eac148b 100644
> > --- a/drivers/staging/unisys/include/iochannel.h
> > +++ b/drivers/staging/unisys/include/iochannel.h
> > @@ -474,8 +474,8 @@ struct uiscmdrsp_scsitaskmgmt {
> > 
> >  	enum task_mgmt_types tasktype;
> >  	struct uisscsi_dest vdest;
> >  	u64 handle;
> > 
> > -	u64 notify_handle;
> > -	u64 notifyresult_handle;
> > +	u32 notify_handle;
> > +	u32 notifyresult_handle;
> > 
> >  	char result;
> >  
> >  #define TASK_MGMT_FAILED 0
> > 
> > diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c
> > b/drivers/staging/unisys/visorhba/visorhba_main.c index 
4455d26f7c96..2b6cde254f17
> > 100644
> > --- a/drivers/staging/unisys/visorhba/visorhba_main.c
> > +++ b/drivers/staging/unisys/visorhba/visorhba_main.c
> > @@ -6,10 +6,10 @@
> > 
> >  #include <linux/debugfs.h>
> >  #include <linux/kthread.h>
> > 
> > -#include <linux/idr.h>
> > 
> >  #include <linux/module.h>
> >  #include <linux/seq_file.h>
> >  #include <linux/visorbus.h>
> > 
> > +#include <linux/xarray.h>
> > 
> >  #include <scsi/scsi.h>
> >  #include <scsi/scsi_host.h>
> >  #include <scsi/scsi_cmnd.h>
> > 
> > @@ -82,7 +82,7 @@ struct visorhba_devdata {
> > 
> >  	 * allows us to pass int handles back-and-forth between us and
> >  	 * iovm, instead of raw pointers
> >  	 */
> > 
> > -	struct idr idr;
> > +	struct xarray xa;
> > 
> >  	struct dentry *debugfs_dir;
> >  	struct dentry *debugfs_info;
> > 
> > @@ -182,71 +182,40 @@ static struct uiscmdrsp 
*get_scsipending_cmdrsp(struct
> > visorhba_devdata *ddata,> 
> >  	return NULL;
> >  
> >  }
> > 
> > -/*
> > - * simple_idr_get - Associate a provided pointer with an int value
> > - *		    1 <= value <= INT_MAX, and return this int value;
> > - *		    the pointer value can be obtained later by passing
> > - *		    this int value to idr_find()
> > - * @idrtable: The data object maintaining the pointer<-->int mappings
> > - * @p:	      The pointer value to be remembered
> > - * @lock:     A spinlock used when exclusive access to idrtable is needed
> > - *
> > - * Return: The id number mapped to pointer 'p', 0 on failure
> > - */
> > -static unsigned int simple_idr_get(struct idr *idrtable, void *p,
> > -				   spinlock_t *lock)
> > -{
> > -	int id;
> > -	unsigned long flags;
> > -
> > -	idr_preload(GFP_KERNEL);
> > -	spin_lock_irqsave(lock, flags);
> > -	id = idr_alloc(idrtable, p, 1, INT_MAX, GFP_NOWAIT);
> > -	spin_unlock_irqrestore(lock, flags);
> > -	idr_preload_end();
> > -	/* failure */
> > -	if (id < 0)
> > -		return 0;
> > -	/* idr_alloc() guarantees > 0 */
> > -	return (unsigned int)(id);
> > -}
> > -
> > 
> >  /*
> >  
> >   * setup_scsitaskmgmt_handles - Stash the necessary handles so that the
> >   *				completion processing logic for 
a taskmgmt
> >   *				cmd will be able to find who to 
wake up
> >   *				and where to stash the result
> > 
> > - * @idrtable: The data object maintaining the pointer<-->int mappings
> > - * @lock:     A spinlock used when exclusive access to idrtable is needed
> > + * @xa:       The data object maintaining the pointer<-->int mappings
> > 
> >   * @cmdrsp:   Response from the IOVM
> >   * @event:    The event handle to associate with an id
> >   * @result:   The location to place the result of the event handle into
> >   */
> > 
> > -static void setup_scsitaskmgmt_handles(struct idr *idrtable, spinlock_t 
*lock,
> > -				       struct uiscmdrsp *cmdrsp,
> > +static void setup_scsitaskmgmt_handles(struct xarray *xa, struct 
uiscmdrsp *cmdrsp,
> > 
> >  				       wait_queue_head_t *event, 
int *result)
> >  
> >  {
> > 
> > -	/* specify the event that has to be triggered when this */
> > -	/* cmd is complete */
> > -	cmdrsp->scsitaskmgmt.notify_handle =
> > -		simple_idr_get(idrtable, event, lock);
> > -	cmdrsp->scsitaskmgmt.notifyresult_handle =
> > -		simple_idr_get(idrtable, result, lock);
> > +	int ret;
> > +	u32 *id;
> > +
> > +	/* specify the event that has to be triggered when this cmd is 
complete */
> > +	id = &cmdrsp->scsitaskmgmt.notify_handle;
> > +	ret = xa_alloc_irq(xa, id, event, XA_LIMIT(1, INT_MAX), 
GFP_KERNEL);
> > +	id = &cmdrsp->scsitaskmgmt.notifyresult_handle;
> > +	ret = xa_alloc_irq(xa, id, result, XA_LIMIT(1, INT_MAX), 
GFP_KERNEL);
> > 
> >  }
> >  
> >  /*
> >  
> >   * cleanup_scsitaskmgmt_handles - Forget handles created by
> >   *				  setup_scsitaskmgmt_handles()
> > 
> > - * @idrtable: The data object maintaining the pointer<-->int mappings
> > + * @xa: The data object maintaining the pointer<-->int mappings
> > 
> >   * @cmdrsp:   Response from the IOVM
> >   */
> > 
> > -static void cleanup_scsitaskmgmt_handles(struct idr *idrtable,
> > +static void cleanup_scsitaskmgmt_handles(struct xarray *xa,
> > 
> >  					 struct uiscmdrsp 
*cmdrsp)
> >  
> >  {
> > 
> > -	if (cmdrsp->scsitaskmgmt.notify_handle)
> > -		idr_remove(idrtable, cmdrsp-
>scsitaskmgmt.notify_handle);
> > -	if (cmdrsp->scsitaskmgmt.notifyresult_handle)
> > -		idr_remove(idrtable, cmdrsp-
>scsitaskmgmt.notifyresult_handle);
> > +	xa_erase(xa, cmdrsp->scsitaskmgmt.notify_handle);
> > +	xa_erase(xa, cmdrsp->scsitaskmgmt.notifyresult_handle);
> > 
> >  }
> 
> why were the conditions removed before each entry deletion?
>
No reason at all. I unwittingly removed them while deleting idr_remove() 
calls.  I'll restore them.
> 
> >  /*
> > 
> > @@ -273,8 +242,7 @@ static int forward_taskmgmt_command(enum 
task_mgmt_types tasktype,
> > 
> >  	if (devdata->serverdown || devdata->serverchangingstate)
> >  	
> >  		return FAILED;
> > 
> > -	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE,
> > -					   NULL);
> > +	scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE, 
NULL);
> > 
> >  	if (scsicmd_id < 0)
> >  	
> >  		return FAILED;
> 
> this is a code format change, maybe this go in a separate patch?
>
Yes, I forgot to restore the previous format. Julia also pointed it out a few 
days ago.

Thanks,

Fabio
> 
> > @@ -284,8 +252,7 @@ static int forward_taskmgmt_command(enum 
task_mgmt_types tasktype,
> > 
> >  	/* issue TASK_MGMT_ABORT_TASK */
> >  	cmdrsp->cmdtype = CMD_SCSITASKMGMT_TYPE;
> > 
> > -	setup_scsitaskmgmt_handles(&devdata->idr, &devdata->privlock, 
cmdrsp,
> > -				   &notifyevent, &notifyresult);
> > +	setup_scsitaskmgmt_handles(&devdata->xa, cmdrsp, &notifyevent, 
&notifyresult);
> > 
> >  	/* save destination */
> >  	cmdrsp->scsitaskmgmt.tasktype = tasktype;
> > 
> > @@ -311,14 +278,14 @@ static int forward_taskmgmt_command(enum 
task_mgmt_types
> > tasktype,> 
> >  	dev_dbg(&scsidev->sdev_gendev,
> >  	
> >  		"visorhba: taskmgmt type=%d success; result=0x%x\n",
> >  		
> >  		 tasktype, notifyresult);
> > 
> > -	cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
> > +	cleanup_scsitaskmgmt_handles(&devdata->xa, cmdrsp);
> > 
> >  	return SUCCESS;
> >  
> >  err_del_scsipending_ent:
> >  	dev_dbg(&scsidev->sdev_gendev,
> >  	
> >  		"visorhba: taskmgmt type=%d not executed\n", tasktype);
> >  	
> >  	del_scsipending_ent(devdata, scsicmd_id);
> > 
> > -	cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
> > +	cleanup_scsitaskmgmt_handles(&devdata->xa, cmdrsp);
> > 
> >  	return FAILED;
> >  
> >  }
> > 
> > @@ -654,13 +621,12 @@ DEFINE_SHOW_ATTRIBUTE(info_debugfs);
> > 
> >   * Service Partition returned the result of the task management
> >   * command. Wake up anyone waiting for it.
> >   */
> > 
> > -static void complete_taskmgmt_command(struct idr *idrtable,
> > -				      struct uiscmdrsp *cmdrsp, 
int result)
> > +static void complete_taskmgmt_command(struct xarray *xa, struct uiscmdrsp 
*cmdrsp,
> > int result)> 
> >  {
> >  
> >  	wait_queue_head_t *wq =
> > 
> > -		idr_find(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
> > +		xa_load(xa, cmdrsp->scsitaskmgmt.notify_handle);
> > 
> >  	int *scsi_result_ptr =
> > 
> > -		idr_find(idrtable, cmdrsp-
>scsitaskmgmt.notifyresult_handle);
> > +		xa_load(xa, cmdrsp->scsitaskmgmt.notifyresult_handle);
> > 
> >  	if (unlikely(!(wq && scsi_result_ptr))) {
> >  	
> >  		pr_err("visorhba: no completion context; cmd will time 
out\n");
> >  		return;
> > 
> > @@ -708,8 +674,7 @@ static void visorhba_serverdown_complete(struct 
visorhba_devdata
> > *devdata)> 
> >  			break;
> >  		
> >  		case CMD_SCSITASKMGMT_TYPE:
> >  			cmdrsp = pendingdel->sent;
> > 
> > -			complete_taskmgmt_command(&devdata->idr, 
cmdrsp,
> > -						  
TASK_MGMT_FAILED);
> > +			complete_taskmgmt_command(&devdata->xa, 
cmdrsp, TASK_MGMT_FAILED);
> > 
> >  			break;
> >  		
> >  		default:
> >  			break;
> > 
> > @@ -905,7 +870,7 @@ static void drain_queue(struct uiscmdrsp *cmdrsp,
> > 
> >  			if (!del_scsipending_ent(devdata,
> >  			
> >  						 cmdrsp-
>scsitaskmgmt.handle))
> >  				
> >  				break;
> > 
> > -			complete_taskmgmt_command(&devdata->idr, 
cmdrsp,
> > +			complete_taskmgmt_command(&devdata->xa, 
cmdrsp,
> > 
> >  						  cmdrsp-
>scsitaskmgmt.result);
> >  		
> >  		} else if (cmdrsp->cmdtype == CMD_NOTIFYGUEST_TYPE)
> >  		
> >  			dev_err_once(&devdata->dev->device,
> > 
> > @@ -1053,7 +1018,7 @@ static int visorhba_probe(struct visor_device *dev)
> > 
> >  	if (err)
> >  	
> >  		goto err_debugfs_info;
> > 
> > -	idr_init(&devdata->idr);
> > +	xa_init(&devdata->xa);
> > 
> >  	devdata->cmdrsp = kmalloc(sizeof(*devdata->cmdrsp), GFP_ATOMIC);
> >  	visorbus_enable_channel_interrupts(dev);
> > 
> > @@ -1096,8 +1061,6 @@ static void visorhba_remove(struct visor_device 
*dev)
> > 
> >  	scsi_remove_host(scsihost);
> >  	scsi_host_put(scsihost);
> > 
> > -	idr_destroy(&devdata->idr);
> > -
> > 
> >  	dev_set_drvdata(&dev->device, NULL);
> >  	debugfs_remove(devdata->debugfs_info);
> >  	debugfs_remove_recursive(devdata->debugfs_dir);
> 
> thank you,
> 
> fabio





