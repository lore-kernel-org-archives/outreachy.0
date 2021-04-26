X-GM-THRID: 6955401561206947840
X-Received: by 2002:a05:6512:25c:: with SMTP id b28mr644574lfo.340.1619433569742;
        Mon, 26 Apr 2021 03:39:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls5630673ljf.8.gmail; Mon, 26 Apr
 2021 03:39:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwu8ENgqW3nGecThikGs5QQe/ypkWZaz+YdvVaSJ+X4CFsdfst/OenIdvLj7M5L1B41s8d0
X-Received: by 2002:a2e:9495:: with SMTP id c21mr12469548ljh.287.1619433567931;
        Mon, 26 Apr 2021 03:39:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619433567; cv=none;
        d=google.com; s=arc-20160816;
        b=I7O3jCDiyi4wT3Ix/mXH3DGL/v1jsKoGvkQEEsMcCol2b+/r4V20vG8BVCav6Xx1GN
         31VPT/54O0RO07UfkqL+8JSuwOOeYgPp+99pOHPo5oVmWVvF6CfAGrXW3GvPfU8mn9Wh
         T71LfV0Co+baXkR5xdMyYj2r0t+bJzeExruMpC6U/QcU/m7JhY7DNSbB2LGOeBbFRliP
         Jug1EezOVtEjjcSsHxMkbBPX6ybvqxCyJdyX838Y+3Av6docxqHRG5PWiU9F6lHjoWfz
         lJqiUHyfE6K83zetMw2tdNCDu0iypEdUMkJnbi6B3sP+C08x3aMTMjJNdZcixzYL2Me7
         5QdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gzHm2Q3m5eV6N16rIWqgxmdmJyqiVMUv0odqYwAOQNQ=;
        b=jqpd4Maig3CaDIAB1DFWC/42tMAncJvBoMnQLzMIW2i1ZOW8LyL9DPkeNcdJZQtueZ
         RgPoYBod12/AHnnlDJ2ccM0G7x04mFl/R8t3wg7AAztdVzu/+aWwlYVMHVinsolVnmKN
         wxaTLdKttJ+Tbse9H89Z8dHmWmKYuZH5DliLi7eqVmk53ohOg1/4S9AAtcrKlnb0BFVT
         U+3IUB6dgZKCpmHEF4wz1OU/3d1r8dCkFOI18XypMWkaHFfRqMfm9NOxXM0Qf90DcGHx
         5LyRMFf0N42uZgmK45uWxc5jFbYKS8WcrORZwEia6f/PQIiyOLbKHTWouiE7pXahykDt
         RCwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UpGKxYZT;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id r2si1039064lji.7.2021.04.26.03.39.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 03:39:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UpGKxYZT;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52f.google.com with SMTP id g14so5437808edy.6
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 03:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gzHm2Q3m5eV6N16rIWqgxmdmJyqiVMUv0odqYwAOQNQ=;
        b=UpGKxYZTYfaT1MCe+bXuvLXU2xxGlwemq1AZuAKSU97jwPrPiYg5ffkj00lGDG1eJw
         GZxESO91tagyp80tGf6ndDaDmRvlfcsVjLw0OvT8qenKcB7lhwyV0ZlQO4RIIUNVE1GK
         TIKMcdf9qIORVpthXZnGZVA4GlkmcSTu5FvzSpoYzUCARVGCRK7Cl5VBCck5AeKQi2hH
         w9ZazKzeyXbMLq2hVRhg3cVi95PKeN9vDH3VQkKxn9PSzlAwA/acazumpND7gl0+YyZy
         /ernYeqfEiJh66J6qOZtGgX77b5eM4mb3PDu3iHoRNd951tEdGpbCnCJaGFS2UrTDISV
         s/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gzHm2Q3m5eV6N16rIWqgxmdmJyqiVMUv0odqYwAOQNQ=;
        b=uVer7ks6UG6Is3NGD5uWKyvc9ebOO+OAsyqEsPGewkA08G4I0umG9k17kAGg3UPIpr
         6Z5GP0kfLG73gFCxxa0suRTnA9plgd2E09ZIgaP8ggEd373R9+6/geXZAnGQVBAB91Le
         Lu5r2YP0Gwmf6CjGCHKcJ+cIqY0T3bn0YmhIARhWzLdtmkBvmwU7g6hEIUilixSMCmXQ
         kvjjuVzG+7o7sP6GA61HLKXFSYpSGvBxG6Jhd3dxIPD/oqLREurm7myhxqm2A/a+DctC
         xeA9rY80wHjv7bKWtPkJACe2c56jYgs/XqKFtGyKbbpd+tOeWwRuyjtXelG1oH1x0cwt
         kgeg==
X-Gm-Message-State: AOAM532so8nWZ6aBdvVjRGojQFm9JTwNQWDkQugz00gpma18ppM1x4Vr
	UHYkTY5Pqwj73f/U+oc7XnA=
X-Received: by 2002:a50:ed0c:: with SMTP id j12mr13505252eds.12.1619433567449;
        Mon, 26 Apr 2021 03:39:27 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id u6sm11251505ejn.14.2021.04.26.03.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 03:39:27 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, David Kershner <david.kershner@unisys.com>, Matthew Wilcox <willy@infradead.org>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [RFC PATCH] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Mon, 26 Apr 2021 12:39:25 +0200
Message-ID: <70412520.S8q5jszebs@linux.local>
In-Reply-To: <YIaORY3B6+6vMvFj@kroah.com>
References: <20210426095015.18556-1-fmdefrancesco@gmail.com> <YIaORY3B6+6vMvFj@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, April 26, 2021 11:56:21 AM CEST Greg Kroah-Hartman wrote:
> On Mon, Apr 26, 2021 at 11:50:15AM +0200, Fabio M. De Francesco wrote:
> > Converted visorhba from IDR to XArray. The abstract data type XArray is
> > more memory-efficient, parallelisable and cache friendly. It takes
> > advantage of RCU to perform lookups without locking.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  .../staging/unisys/visorhba/visorhba_main.c   | 107 +++++++-----------
> >  1 file changed, 44 insertions(+), 63 deletions(-)
> > 
> > diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c
> > b/drivers/staging/unisys/visorhba/visorhba_main.c index 
4455d26f7c96..851e60ab0c46
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
> > @@ -23,6 +23,8 @@
> > 
> >  #define MAX_PENDING_REQUESTS (MIN_NUMSIGNALS * 2)
> >  #define VISORHBA_ERROR_COUNT 30
> > 
> > +static DEFINE_XARRAY_ALLOC(xa_dtstr);
> > +
> > 
> >  static struct dentry *visorhba_debugfs_dir;
> >  
> >  /* GUIDS for HBA channel type supported by this driver */
> > 
> > @@ -78,12 +80,6 @@ struct visorhba_devdata {
> > 
> >  	unsigned int max_buff_len;
> >  	int devnum;
> >  	struct uiscmdrsp *cmdrsp;
> > 
> > -	/*
> > -	 * allows us to pass int handles back-and-forth between us and
> > -	 * iovm, instead of raw pointers
> > -	 */
> > -	struct idr idr;
> > -
> > 
> >  	struct dentry *debugfs_dir;
> >  	struct dentry *debugfs_info;
> >  
> >  };
> > 
> > @@ -183,32 +179,16 @@ static struct uiscmdrsp 
*get_scsipending_cmdrsp(struct
> > visorhba_devdata *ddata,> 
> >  }
> >  
> >  /*
> > 
> > - * simple_idr_get - Associate a provided pointer with an int value
> > - *		    1 <= value <= INT_MAX, and return this int value;
> > - *		    the pointer value can be obtained later by passing
> > - *		    this int value to idr_find()
> > - * @idrtable: The data object maintaining the pointer<-->int mappings
> > - * @p:	      The pointer value to be remembered
> > - * @lock:     A spinlock used when exclusive access to idrtable is needed
> > - *
> > - * Return: The id number mapped to pointer 'p', 0 on failure
> > + * simple_xa_dtstr_get - Store a pointer to xa_dtstr xarray
> > + * @id: Pointer to ID
> > + * @entry: New entry
> > 
> >   */
> > 
> > -static unsigned int simple_idr_get(struct idr *idrtable, void *p,
> > -				   spinlock_t *lock)
> > +static int simple_xa_dtstr_get(u32 *id, void *entry)
> 
> What are you trying to really "get" here?  We shouldn't name the
> function based on the data type being used.  All we want is some sort of
> "token" or hash or something else?  It's hard to tell...
> 
Sorry, I am so lazy that I just substituted the _idr_ in the old name with 
_xa_dtstr_. Perhaps simple_entry_get() would be better. it deserves a v2.
>
> >  {
> > 
> > -	int id;
> > -	unsigned long flags;
> > +	int ret = xa_alloc_irq(&xa_dtstr, id, entry, xa_limit_32b, 
GFP_NOWAIT);
> > +	/* TODO: check for and manage errors */
> 
> That's a nice TODO, which means we really should not be considering this
> patch to be merged, right?
>
Right, lazy again :)

The fact is that I was just interested in conversion from IDR to XArray 
because this would be the main subject of the project I applied for the DRM 
subsystem. Therefore, where I didn't find proper error checking and management 
in the old code, I simply wrote some TODO. 

I suppose that some more knowledge of both Linux device drivers programming 
and of that specific driver is needed to do proper management of errors in 
order to unwind what is already done by the code and leave everything in a 
consistent state. I'd left that work to Unisys developers, if you don't mind. 
I'd prefer to simply remove those TODO from where I placed them. I hope that 
you agree with me.

Thanks for your review,

Fabio 
> 
> thanks,
> 
> greg k-h





