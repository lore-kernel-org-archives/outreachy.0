X-GM-THRID: 6260868966389907456
X-Received: by 10.50.154.2 with SMTP id vk2mr952823igb.9.1457886537449;
        Sun, 13 Mar 2016 09:28:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.142 with SMTP id o14ls1770844ioi.29.gmail; Sun, 13 Mar
 2016 09:28:57 -0700 (PDT)
X-Received: by 10.107.128.217 with SMTP id k86mr14781835ioi.12.1457886537131;
        Sun, 13 Mar 2016 09:28:57 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id h69si1410223pfj.0.2016.03.13.09.28.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 09:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id td3so110838369pab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 09:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=setMII6wX+J8gjZoSZ9Y/hZkdFs1Ytqlia7HgWBlub4=;
        b=Bkb8WiI2W940yR7vMPZ0j2RkNnAE/P2Zucw+rbx3soXLxP9GF3CIJr58efs+2C40Io
         r5NCEqO+YVOkzN6pa3DWtM0fHSLMvzc2ZcuY6bRiX9AA1d5UukHaUcrKDk63DqklASlF
         CWJI+Ye6f9tyKfbOfygsyhoad8KmghCequ1C2niK40TbCPLbjTo1us983leK33+2rsja
         YFPYukLTyQyCpHko8XS9yMvpaece339+5kZW+zhnISnhy10RPsl8GghObmi2M06BEMHc
         nZODYr+Vo8GV/DvOnykkKp5V23zBfbtzofIDWVxc1QzCPo1GZqpSsJDyhaLV/hJ5COBB
         acxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=setMII6wX+J8gjZoSZ9Y/hZkdFs1Ytqlia7HgWBlub4=;
        b=DyAqwmly8awH+ZIngIGcHY9b4J5Gi/1GqZ2+4qd8/F8lKu2gW8jlcZSN/tXBM2QY3X
         uzu2tuWO/dG4xEufPpLK8oMvtGWjXquKzovTNSZE3yxTioV0lNh7HdeRUbIGGdDyFK8T
         5N/lYcn78E+5EqvF5LQlx/l8k5F3K83Jot0v9IbA6OoV11GAtJjNrCWWovj2wzQTPpxv
         kpwnuRmv5Bw8WjOOrPSI9yQgnT8BKnH1qyXWEpdBoEiNd9pjym4TudKp2a49dhK9eB4W
         YpRFt1GLBgMXiBJSBc2mz17MeHz6k3t1YUeclt0mmLh/gOAMdJm00EhEQoiaWtasqg1J
         7iWg==
X-Gm-Message-State: AD7BkJJUrSkvy27zWgw3TOrb07BazOW+kL3Utb0mpz4Szxo8J/ZIdpIywSysIyVuJaiKJA==
X-Received: by 10.66.192.195 with SMTP id hi3mr31091289pac.149.1457886536969;
        Sun, 13 Mar 2016 09:28:56 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.238])
        by smtp.gmail.com with ESMTPSA id 82sm26094790pfb.64.2016.03.13.09.28.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 09:28:56 -0700 (PDT)
Date: Mon, 14 Mar 2016 00:28:54 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Conversion questions for create_singlethread_workqueue()
Message-ID: <20160313162850.GA14609@Socrates-Mint>
Mail-Followup-To: Tejun Heo <tj@kernel.org>,
	outreachy-kernel@googlegroups.com
References: <20160311175426.GA2055@Socrates-Mint>
 <20160311184906.GN24046@htj.duckdns.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160311184906.GN24046@htj.duckdns.org>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Mar 11, 2016 at 01:49:06PM -0500, Tejun Heo wrote:
> (cc'ing outreachy mailing list)
> 
> Hello, Eva.
> 
> On Sat, Mar 12, 2016 at 01:54:27AM +0800, Eva Rachel Retuya wrote:
> > About the questions to ask covered on the task page, here are my findings:
> > http://kernelnewbies.org/Tejun_Heo
> > * WQ_MEM_RECLAIM may not need to be set
> > * There are work items dealing with temperature throttling (tt_work, ct_enter,
> >   ct_exit) -- This is just my opinion but I think setting the WQ_HIGHPRI flag
> >   on them may help stabilize the hardware faster.
> 
> Hmmm... yeah, that makes sense.
> 
> > * I think yes based from my understanding of the workqueue usage.
> > * I don't think so unless there is specific order to be followed during
> >   submission to the workqueue.
> > 
> > My questions are:
> > * How will I know whether order of execution is important here? What
> >   characteristics in the code to look out for?
> 
> In a lot of cases, those use cases would be allocating and queueing
> work items dynamically and the fact that those dynamic work items need
> ordering should be relatively clear from the code and comments.
> 
> Here, there are only fixed number of work items per device; however,
> it *could* be that different work items working on the same domain
> could have ordering dependencies.  For example, it seems plausible
> that if ct_enter and ct_exit are queued in certain order, their
> execution order shouldn't be swapped.
> 
> I think the main thing to look for is whether there are multiple work
> items doing similar or related operations.
> 
> > * If order of execution is not important, does choosing the default concurrency
> >   limit pertain to the minimal attributes if I convert to using
> >   alloc_workqueue()?
> 
> Yeah, just specify 0 for @max_active.
> 
> > * About the flags, what gives the indication that the work item is of high
> >   priority or is cpu intensive? Say if I review the function definition of the
> >   work item, what piece of code to take note if any.
> 
> In most cases, those shouldn't be necessary but as you pointed out
> above, latency can be critical for hardware monitor and control
> mechanisms, so that's a good example for HIGHPRI.  CPU_INTENSIVE is
> for things like en/decrypting IOs for dm-crypt, so stuff which can
> really consume a lot of cpu cycles.
> 
> > * Will it be possible to use system_wq with that number of work items? I'm
> >   having the impression that sending numerous work items would fit a dedicated
> >   workqueue rather than sending them globally. I need confirmation about this.
> 
> So, concurrency is limited by the number of work items.  Here, it's
> only a handful per device.  Shouldn't be a problem.  Cases where one
> should avoid using system_wq is are when work items are dynamically
> allocated and queued and the concurrency can reach, say, high tens or
> hundreds.
> 
> > * How do I gauge the time of execution? I have read that I cannot queue works
> >   which can run for too long (in the case of system_wq).
> 
> As long as it's not a long-running service process which can run in
> loop for over minutes, it should be fine.  This restriction is mostly
> because of flush_scheduled_work() users which btw need to be converted
> too.
> 
> > * After the conversion, how do I test this on my hardware?
> 
> I usually try to use it and plant some printks and verify that it
> behaves as expected in corner cases.  cc'ing maintainers and asking
> specific questions about the work items' chracteristics could be very
> helpful.
> 
> > Right now I am leaning towards converting it to alloc_workqueue().
> 
> Thanks.
> 
> -- 
> tejun

Thank you for the guidance. I just submitted a patch regarding this
conversion I worked on. Please have a look and let me know if there are
workqueue-related functions I need to modify other than this. I reviewed
the workqueue header file and found the usage still aligns with the
change I propose unless there is something I missed.

Eva

