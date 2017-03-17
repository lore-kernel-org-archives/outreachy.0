X-GM-THRID: 6398158236087746560
X-Received: by 10.46.84.84 with SMTP id y20mr1662423ljd.21.1489747526200;
        Fri, 17 Mar 2017 03:45:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls654261lja.32.gmail; Fri, 17 Mar 2017
 03:45:25 -0700 (PDT)
X-Received: by 10.46.76.17 with SMTP id z17mr2056488lja.13.1489747525442;
        Fri, 17 Mar 2017 03:45:25 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id n128si108782wmf.2.2017.03.17.03.45.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 03:45:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id x124so2585054wmf.3
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 03:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Kb9PNXfvLwlruGM89lRFPhSFRfB69IMfW53PoYdoqEU=;
        b=Uk0grWygaWD4ebF0v8xc2o+jV3Zs1rmxSgBcSmvRkvpy9gWwEuSWma/nhXdljdtpNe
         5RYbxDXjoRdUHqQWjluu/xro3JuRpVdjlbi0q53dy4Fyymunvvg41eVq6bA3blKMzboy
         C2iRXFlUFCbAW2uPkWOHQnCXM/KKofU1pJziXDMqX7K/7P9GdmsCwtyUcPHcdRXb+/Av
         7kedqLyh+0sXFuxhXZClnVjKrmKTvi7QCV4Dkv9ap2uZNC4ZQ1r4jwkK7Z6APdXXZrre
         jQQVziyibWzgI5j6p9sAHgk/KN4mmTDXZfIzcD0XMUY1meKTcc434GC/ulxjQLx60e3W
         Qz4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Kb9PNXfvLwlruGM89lRFPhSFRfB69IMfW53PoYdoqEU=;
        b=sztLCMHajjOJ5urVjtGhs7z8yVY6BFe7uEktaCI8qsUARXcSwEutpYJ3TRCF3Ajqvo
         1p6FFWiHxT2m6Qz9d8xTf56FXfiJ+JphZ8/rTrylawmDiL1brbJUiE61g3rvg4+UaayN
         h8aAAzqqasx1GQpZYcyQF2xChEXqjVkefKsyVUwL0q+AIwkJwMrtYOzI8YrFSWnUHj8f
         +5aXFnaB8tWcCQizUueh0cefetl3AHGtklV+ASICCuG9kRP31TGwv2EXG+8W41PcXpdy
         Wd8C/yXiYI/cGSa2sPV59QOcF7XJBd3SBPMbWaPQFkocGPBcDDOI+izwP4qrK8yOZIvM
         V+Dw==
X-Gm-Message-State: AFeK/H0059wCfLsIo2VFAmC52O5F2ZSf39g+yX4eW0BQv7RfcOvXvlck2oAWOjCMNDYK/A==
X-Received: by 10.28.193.193 with SMTP id r184mr2187448wmf.80.1489747525099;
        Fri, 17 Mar 2017 03:45:25 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id z70sm9511206wrc.2.2017.03.17.03.45.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Mar 2017 03:45:24 -0700 (PDT)
Date: Fri, 17 Mar 2017 12:45:23 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: lustre: libcfs: Replace
 printk() with pr_*()
Message-ID: <20170317104522.GB3510@nati-X550JK>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com>
 <3c4911bf09b417670534bd51af9daa60bf2a3329.1489686964.git.narcisaanamaria12@gmail.com>
 <alpine.DEB.2.20.1703161947320.3497@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703161947320.3497@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Mar 16, 2017 at 07:48:15PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 16 Mar 2017, Narcisa Ana Maria Vasile wrote:
> 
> > Convert printk() calls into corresponding pr_*() calls.
> >
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> > ---
> >  drivers/staging/lustre/lnet/libcfs/tracefile.c | 58 ++++++++++++--------------
> >  1 file changed, 26 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/libcfs/tracefile.c b/drivers/staging/lustre/lnet/libcfs/tracefile.c
> > index d7b29f8..c70f36e 100644
> > --- a/drivers/staging/lustre/lnet/libcfs/tracefile.c
> > +++ b/drivers/staging/lustre/lnet/libcfs/tracefile.c
> > @@ -192,9 +192,8 @@ int cfs_trace_refill_stock(struct cfs_trace_cpu_data *tcd, gfp_t gfp,
> >  			if (unlikely(!tage)) {
> >  				if ((!memory_pressure_get() ||
> >  				     in_interrupt()) && printk_ratelimit())
> > -					printk(KERN_WARNING
> > -					       "cannot allocate a tage (%ld)\n",
> > -					       tcd->tcd_cur_pages);
> > +					pr_warn("cannot allocate a tage (%ld)\n",
> > +						tcd->tcd_cur_pages);
> >  				return NULL;
> >  			}
> >  		}
> > @@ -230,8 +229,8 @@ static void cfs_tcd_shrink(struct cfs_trace_cpu_data *tcd)
> >  	 */
> >
> >  	if (printk_ratelimit())
> > -		printk(KERN_WARNING "debug daemon buffer overflowed; discarding 10%% of pages (%d of %ld)\n",
> > -		       pgcount + 1, tcd->tcd_cur_pages);
> > +		pr_warn("debug daemon buffer overflowed; discarding 10%% of pages (%d of %ld)\n",
> > +			pgcount + 1, tcd->tcd_cur_pages);
> >
> >  	INIT_LIST_HEAD(&pc.pc_pages);
> >
> > @@ -358,8 +357,7 @@ int libcfs_debug_vmsg2(struct libcfs_debug_msg_data *msgdata,
> >
> >  		max_nob = PAGE_SIZE - tage->used - known_size;
> >  		if (max_nob <= 0) {
> > -			printk(KERN_EMERG "negative max_nob: %d\n",
> > -			       max_nob);
> > +			pr_emerg("negative max_nob: %d\n", max_nob);
> >  			mask |= D_ERROR;
> >  			cfs_trace_put_tcd(tcd);
> >  			tcd = NULL;
> > @@ -389,8 +387,8 @@ int libcfs_debug_vmsg2(struct libcfs_debug_msg_data *msgdata,
> >  	}
> >
> >  	if (*(string_buf + needed - 1) != '\n')
> > -		printk(KERN_INFO "format at %s:%d:%s doesn't end in newline\n",
> > -		       file, msgdata->msg_line, msgdata->msg_fn);
> > +		pr_info("format at %s:%d:%s doesn't end in newline\n", file,
> > +			msgdata->msg_line, msgdata->msg_fn);
> >
> >  	header.ph_len = known_size + needed;
> >  	debug_buf = (char *)page_address(tage->page) + tage->used;
> > @@ -713,8 +711,8 @@ int cfs_tracefile_dump_all_pages(char *filename)
> >  	if (IS_ERR(filp)) {
> >  		rc = PTR_ERR(filp);
> >  		filp = NULL;
> > -		pr_err("LustreError: can't open %s for dump: rc %d\n",
> > -		       filename, rc);
> > +		pr_err("LustreError: can't open %s for dump: rc %d\n", filename,
> > +		       rc);
> 
> This change is not covered by the log message.
> 
> julia
>
  Sorry about this, I thought this was one of the places where I've made a
  replacement. I'll remove this from this patch.

  Narcisa
> 
> >  		goto out;
> >  	}
> >
> > @@ -739,8 +737,8 @@ int cfs_tracefile_dump_all_pages(char *filename)
> >  		kunmap(tage->page);
> >
> >  		if (rc != (int)tage->used) {
> > -			printk(KERN_WARNING "wanted to write %u but wrote %d\n",
> > -			       tage->used, rc);
> > +			pr_warn("wanted to write %u but wrote %d\n", tage->used,
> > +				rc);
> >  			put_pages_back(&pc);
> >  			__LASSERT(list_empty(&pc.pc_pages));
> >  			break;
> > @@ -894,10 +892,9 @@ int cfs_trace_daemon_command(char *str)
> >  	} else {
> >  		strcpy(cfs_tracefile, str);
> >
> > -		printk(KERN_INFO
> > -		       "Lustre: debug daemon will attempt to start writing to %s (%lukB max)\n",
> > -		       cfs_tracefile,
> > -		       (long)(cfs_tracefile_size >> 10));
> > +		pr_info("Lustre: debug daemon will attempt to start writing to %s (%lukB max)\n",
> > +			cfs_tracefile,
> > +			(long)(cfs_tracefile_size >> 10));
> >
> >  		cfs_trace_start_thread();
> >  	}
> > @@ -933,16 +930,14 @@ int cfs_trace_set_debug_mb(int mb)
> >  	struct cfs_trace_cpu_data *tcd;
> >
> >  	if (mb < num_possible_cpus()) {
> > -		printk(KERN_WARNING
> > -		       "Lustre: %d MB is too small for debug buffer size, setting it to %d MB.\n",
> > -		       mb, num_possible_cpus());
> > +		pr_warn("Lustre: %d MB is too small for debug buffer size, setting it to %d MB.\n",
> > +			mb, num_possible_cpus());
> >  		mb = num_possible_cpus();
> >  	}
> >
> >  	if (mb > limit) {
> > -		printk(KERN_WARNING
> > -		       "Lustre: %d MB is too large for debug buffer size, setting it to %d MB.\n",
> > -		       mb, limit);
> > +		pr_warn("Lustre: %d MB is too large for debug buffer size, setting it to %d MB.\n",
> > +			mb, limit);
> >  		mb = limit;
> >  	}
> >
> > @@ -1010,8 +1005,8 @@ static int tracefiled(void *arg)
> >  			if (IS_ERR(filp)) {
> >  				rc = PTR_ERR(filp);
> >  				filp = NULL;
> > -				printk(KERN_WARNING "couldn't open %s: %d\n",
> > -				       cfs_tracefile, rc);
> > +				pr_warn("couldn't open %s: %d\n", cfs_tracefile,
> > +					rc);
> >  			}
> >  		}
> >  		cfs_tracefile_read_unlock();
> > @@ -1039,8 +1034,8 @@ static int tracefiled(void *arg)
> >  			kunmap(tage->page);
> >
> >  			if (rc != (int)tage->used) {
> > -				printk(KERN_WARNING "wanted to write %u but wrote %d\n",
> > -				       tage->used, rc);
> > +				pr_warn("wanted to write %u but wrote %d\n",
> > +					tage->used, rc);
> >  				put_pages_back(&pc);
> >  				__LASSERT(list_empty(&pc.pc_pages));
> >  				break;
> > @@ -1053,7 +1048,7 @@ static int tracefiled(void *arg)
> >  		if (!list_empty(&pc.pc_pages)) {
> >  			int i;
> >
> > -			printk(KERN_ALERT "Lustre: trace pages aren't empty\n");
> > +			pr_alert("Lustre: trace pages aren't empty\n");
> >  			pr_err("total cpus(%d): ", num_possible_cpus());
> >  			for (i = 0; i < num_possible_cpus(); i++)
> >  				if (cpu_online(i))
> > @@ -1065,8 +1060,8 @@ static int tracefiled(void *arg)
> >  			i = 0;
> >  			list_for_each_entry_safe(tage, tmp, &pc.pc_pages,
> >  						 linkage)
> > -				pr_err("page %d belongs to cpu %d\n",
> > -				       ++i, tage->cpu);
> > +				pr_err("page %d belongs to cpu %d\n", ++i,
> > +				       tage->cpu);
> >  			pr_err("There are %d pages unwritten\n", i);
> >  		}
> >  		__LASSERT(list_empty(&pc.pc_pages));
> > @@ -1123,8 +1118,7 @@ void cfs_trace_stop_thread(void)
> >
> >  	mutex_lock(&cfs_trace_thread_mutex);
> >  	if (thread_running) {
> > -		printk(KERN_INFO
> > -		       "Lustre: shutting down debug daemon thread...\n");
> > +		pr_info("Lustre: shutting down debug daemon thread...\n");
> >  		atomic_set(&tctl->tctl_shutdown, 1);
> >  		wait_for_completion(&tctl->tctl_stop);
> >  		thread_running = 0;
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3c4911bf09b417670534bd51af9daa60bf2a3329.1489686964.git.narcisaanamaria12%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

