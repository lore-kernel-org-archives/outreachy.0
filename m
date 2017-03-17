X-GM-THRID: 6398158236087746560
X-Received: by 10.25.195.206 with SMTP id t197mr1873312lff.11.1489747352230;
        Fri, 17 Mar 2017 03:42:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.6 with SMTP id i6ls620893ljb.3.gmail; Fri, 17 Mar 2017
 03:42:31 -0700 (PDT)
X-Received: by 10.25.201.198 with SMTP id z189mr1858557lff.15.1489747351262;
        Fri, 17 Mar 2017 03:42:31 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id q207si119075wme.3.2017.03.17.03.42.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 03:42:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u132so2556326wmg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 03:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eJ6gyJ0yGg6tJ7O6Tul2ENtoJSZr3FF/olaz6ZJuZc0=;
        b=QwXi1AD9y4J5y7ppxI8rlwtnnEpKXQh3HYzhFxhU5v1T1rmaapK2U1BZ2wlPoXB60n
         Vv/9uLezDOOW36gUA/ZGubcnzNIHN34/O3sct8WxOLVQS4xteD6nJhYTokC2AwZdKUeF
         60gR43mrABfbg4rg7FEDBioRQfmYD1cO2H1+vq2CnYu/3kspY9KMmIk6OmGot1mDa6xp
         eoqDlnHqYcp9SAH+ZSWtEjl4DPxnKwoq6GKSquE6/iFaJ7+flvMmrituHfJJJgrTS/Rt
         iuqPN5CsyKFawAq+n1QpqnaKUN1CixcsIuwAa8ToTcJQ68zLxgPOpx8CRTGDS47+HmyQ
         5uaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eJ6gyJ0yGg6tJ7O6Tul2ENtoJSZr3FF/olaz6ZJuZc0=;
        b=HbkzAlbCvhHke84Apii05DWl9VzSEMkgD1Pe6JnPmdHxsFVO8Pt0Tfg6J9E+3fPXcR
         JL88k6dvH6AHI+f0+ERxad03+AI6DxGiNsQvQWreAtgW7rdbyb8onybzuOuaWveyf5bi
         0JmQzsWIQGlzWRpwzsz22iW11MESLNO93XILjkz77uzjW5TUwyWqvBjmGs3yMJAKO5KX
         S2wyHRmwkvoqcuZpIqCAHFfhAkUstlbLaYhyd7cc6cFxuql0TagBTL0/rcqh/+7oTd2y
         owV8rmyPQuDTL5+kWOtsdW4y7gnTCFmET4bEPmHa0gDE+w0j2lzWMgqG+HLMlwLGN/Pd
         ppOg==
X-Gm-Message-State: AFeK/H3Hu/8tQjdjHoR992UlWwUEKMdkW0phaYF5f97kwJzs4mlOh8baqqz76iC5xFoH6g==
X-Received: by 10.28.148.195 with SMTP id w186mr2131596wmd.35.1489747350968;
        Fri, 17 Mar 2017 03:42:30 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id i203sm2191988wmf.12.2017.03.17.03.42.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Mar 2017 03:42:30 -0700 (PDT)
Date: Fri, 17 Mar 2017 12:42:29 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Oleg Drokin <oleg.drokin@intel.com>
Cc: Julia Lawall <Julia.Lawall@lip6.fr>, andreas.dilger@intel.com,
	jsimmons@infradead.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: lustre: libcfs: Define
 pr_fmt() to include relevant name
Message-ID: <20170317104228.GA3510@nati-X550JK>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com>
 <c9dc3ba5eb0d36a8ac8bef36d007d9715075af5b.1489686964.git.narcisaanamaria12@gmail.com>
 <alpine.DEB.2.20.1703161945080.3497@hadrien>
 <77411B13-6C39-4106-8BE3-76678931D89F@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <77411B13-6C39-4106-8BE3-76678931D89F@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Mar 17, 2017 at 12:29:15AM -0400, Oleg Drokin wrote:
> 
> On Mar 16, 2017, at 2:45 PM, Julia Lawall wrote:
> 
> > 
> > 
> > On Thu, 16 Mar 2017, Narcisa Ana Maria Vasile wrote:
> > 
> >> Define a pr_fmt() for tracefile.c
> >> Remove redundant prefix 'Lustre' from pr_*() calls.
> >> 
> >> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> >> ---
> >> drivers/staging/lustre/lnet/libcfs/tracefile.c | 13 +++++++------
> >> 1 file changed, 7 insertions(+), 6 deletions(-)
> >> 
> >> diff --git a/drivers/staging/lustre/lnet/libcfs/tracefile.c b/drivers/staging/lustre/lnet/libcfs/tracefile.c
> >> index c70f36e..72fd0c5 100644
> >> --- a/drivers/staging/lustre/lnet/libcfs/tracefile.c
> >> +++ b/drivers/staging/lustre/lnet/libcfs/tracefile.c
> >> @@ -37,6 +37,7 @@
> >> 
> >> #define DEBUG_SUBSYSTEM S_LNET
> >> #define LUSTRE_TRACEFILE_PRIVATE
> >> +#define pr_fmt(fmt) "Lustre: " fmt
> >> #include "tracefile.h"
> >> 
> >> #include "../../include/linux/libcfs/libcfs.h"
> >> @@ -711,7 +712,7 @@ int cfs_tracefile_dump_all_pages(char *filename)
> >> 	if (IS_ERR(filp)) {
> >> 		rc = PTR_ERR(filp);
> >> 		filp = NULL;
> >> -		pr_err("LustreError: can't open %s for dump: rc %d\n", filename,
> >> +		pr_err("Error: can't open %s for dump: rc %d\n", filename,
> >> 		       rc);
> > 
> > Maybe you don't really need the word Error.  It is not so common in pr_err
> > calls.
> 
> In a way it does make one's life easier.
> Typically when examining a log from a bugreport, first thing I do is
> search for "LustreError" in it.
> I guess I can search for just Lustre too, but that tends to hit a bunch of false
> positives esp. if it's a long syslog with all sorts of other messages intermixed.
> 
  Taking this into consideration, I'm thinking I should keep 'LustreError'
  just like it was, even though it will cause a little redundancy with
  the preceding 'Lustre: ' word, in order to make search faster in case
  of examining bugreports. In the version that it is now (Lustre: Error:)
  it might not be so helpful, since people are used to search
  for 'LustreError' instead.
  Do you think this is a good idea?

  Narcisa
> > 
> > julia
> > 
> >> 		goto out;
> >> 	}
> >> @@ -892,7 +893,7 @@ int cfs_trace_daemon_command(char *str)
> >> 	} else {
> >> 		strcpy(cfs_tracefile, str);
> >> 
> >> -		pr_info("Lustre: debug daemon will attempt to start writing to %s (%lukB max)\n",
> >> +		pr_info("debug daemon will attempt to start writing to %s (%lukB max)\n",
> >> 			cfs_tracefile,
> >> 			(long)(cfs_tracefile_size >> 10));
> >> 
> >> @@ -930,13 +931,13 @@ int cfs_trace_set_debug_mb(int mb)
> >> 	struct cfs_trace_cpu_data *tcd;
> >> 
> >> 	if (mb < num_possible_cpus()) {
> >> -		pr_warn("Lustre: %d MB is too small for debug buffer size, setting it to %d MB.\n",
> >> +		pr_warn("%d MB is too small for debug buffer size, setting it to %d MB.\n",
> >> 			mb, num_possible_cpus());
> >> 		mb = num_possible_cpus();
> >> 	}
> >> 
> >> 	if (mb > limit) {
> >> -		pr_warn("Lustre: %d MB is too large for debug buffer size, setting it to %d MB.\n",
> >> +		pr_warn("%d MB is too large for debug buffer size, setting it to %d MB.\n",
> >> 			mb, limit);
> >> 		mb = limit;
> >> 	}
> >> @@ -1048,7 +1049,7 @@ static int tracefiled(void *arg)
> >> 		if (!list_empty(&pc.pc_pages)) {
> >> 			int i;
> >> 
> >> -			pr_alert("Lustre: trace pages aren't empty\n");
> >> +			pr_alert("trace pages aren't empty\n");
> >> 			pr_err("total cpus(%d): ", num_possible_cpus());
> >> 			for (i = 0; i < num_possible_cpus(); i++)
> >> 				if (cpu_online(i))
> >> @@ -1118,7 +1119,7 @@ void cfs_trace_stop_thread(void)
> >> 
> >> 	mutex_lock(&cfs_trace_thread_mutex);
> >> 	if (thread_running) {
> >> -		pr_info("Lustre: shutting down debug daemon thread...\n");
> >> +		pr_info("shutting down debug daemon thread...\n");
> >> 		atomic_set(&tctl->tctl_shutdown, 1);
> >> 		wait_for_completion(&tctl->tctl_stop);
> >> 		thread_running = 0;
> >> --
> >> 1.9.1
> >> 
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c9dc3ba5eb0d36a8ac8bef36d007d9715075af5b.1489686964.git.narcisaanamaria12%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >> 
> 

