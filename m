X-GM-THRID: 6260868966389907456
X-Received: by 10.140.42.43 with SMTP id b40mr8367501qga.9.1457722151354;
        Fri, 11 Mar 2016 10:49:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.76.3 with SMTP id g3ls1248742obw.60.gmail; Fri, 11 Mar
 2016 10:49:09 -0800 (PST)
X-Received: by 10.182.92.226 with SMTP id cp2mr8344867obb.19.1457722149250;
        Fri, 11 Mar 2016 10:49:09 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yw0-x233.google.com (mail-yw0-x233.google.com. [2607:f8b0:4002:c05::233])
        by gmr-mx.google.com with ESMTPS id i133si536598ywe.7.2016.03.11.10.49.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:49:09 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::233 as permitted sender) client-ip=2607:f8b0:4002:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::233 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yw0-x233.google.com with SMTP id d65so101132311ywb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 10:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6jucCklsT3Y4n+q8kLbkV3rVrXssXFwGAMwgEUOzwyg=;
        b=jmZOHWK2V5kWnAS9Y64y6G4C/WMq2UrsboTJivvzmUU/f1snGta+58qMA+jEWB1QGd
         REVRjNAiY9gbuzhFIaTPY+Nr6KOOakIvZRL8HPgm0bByzLovZvOET9XAFtG/+z4VTZRL
         aP84TiEesbWQu3n1al9tLFKdbCtfREg40xvIdWkEoTEm7aj5x6lvEwPywIY8UVoa+QTz
         ddl6FrMa1mEclhn46/AFUmtevRC1Tl7mcASGpHp7QVdSjicXcq8gJN4kfSRxeFxF2E5x
         MZ6zGEEKwPUz4HAgcZSqyOGa+Wt2Itx/fuKILvg3aT/mJCQ+oECkWuHJq4SEB0EI3XRe
         LJlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=6jucCklsT3Y4n+q8kLbkV3rVrXssXFwGAMwgEUOzwyg=;
        b=JVom3bVHr7evvq77MEQc24iSF7rgyqRhjj1WU5WJHq+tfxZXXs2GpKF5OYYPNXz8uN
         YJo+GBpMohH/+sWCNUcJxkHtUEmHOIzPq989pffj9ODwl1Z1zYx/vst0ts75UfV1Obg0
         S4mNJLsJQqJsybZqyLRzLE4YNLzMlejOHh59Jc9oOnEQTOLAAK2/ZeUlxWS7dmOum7d+
         OGJ3ftuljfVghL+bR/nKsbYGNpUHZ5keM78fux/8RzfcQZMrG4TYOw14aCPj42IzIAM/
         r+WLgHuW1YBwkv+Tp9jkzCVDj8sLpzqz7EwEU5VJ1dO8gsB7fZ6wILGGXlUYtkJfr7Z9
         ItaQ==
X-Gm-Message-State: AD7BkJJ7WHI8JCaX+PU5nNOmURfXBMlQ9LF/je8sIRP93E3h7oZR1Nbl/Dc65z5OGUpoOA==
X-Received: by 10.129.17.142 with SMTP id 136mr5864814ywr.109.1457722149071;
        Fri, 11 Mar 2016 10:49:09 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:180::7ca7])
        by smtp.gmail.com with ESMTPSA id f129sm6180472ywd.10.2016.03.11.10.49.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:49:07 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 11 Mar 2016 13:49:06 -0500
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Conversion questions for create_singlethread_workqueue()
Message-ID: <20160311184906.GN24046@htj.duckdns.org>
References: <20160311175426.GA2055@Socrates-Mint>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160311175426.GA2055@Socrates-Mint>
User-Agent: Mutt/1.5.24 (2015-08-30)

(cc'ing outreachy mailing list)

Hello, Eva.

On Sat, Mar 12, 2016 at 01:54:27AM +0800, Eva Rachel Retuya wrote:
> About the questions to ask covered on the task page, here are my findings:
> http://kernelnewbies.org/Tejun_Heo
> * WQ_MEM_RECLAIM may not need to be set
> * There are work items dealing with temperature throttling (tt_work, ct_enter,
>   ct_exit) -- This is just my opinion but I think setting the WQ_HIGHPRI flag
>   on them may help stabilize the hardware faster.

Hmmm... yeah, that makes sense.

> * I think yes based from my understanding of the workqueue usage.
> * I don't think so unless there is specific order to be followed during
>   submission to the workqueue.
> 
> My questions are:
> * How will I know whether order of execution is important here? What
>   characteristics in the code to look out for?

In a lot of cases, those use cases would be allocating and queueing
work items dynamically and the fact that those dynamic work items need
ordering should be relatively clear from the code and comments.

Here, there are only fixed number of work items per device; however,
it *could* be that different work items working on the same domain
could have ordering dependencies.  For example, it seems plausible
that if ct_enter and ct_exit are queued in certain order, their
execution order shouldn't be swapped.

I think the main thing to look for is whether there are multiple work
items doing similar or related operations.

> * If order of execution is not important, does choosing the default concurrency
>   limit pertain to the minimal attributes if I convert to using
>   alloc_workqueue()?

Yeah, just specify 0 for @max_active.

> * About the flags, what gives the indication that the work item is of high
>   priority or is cpu intensive? Say if I review the function definition of the
>   work item, what piece of code to take note if any.

In most cases, those shouldn't be necessary but as you pointed out
above, latency can be critical for hardware monitor and control
mechanisms, so that's a good example for HIGHPRI.  CPU_INTENSIVE is
for things like en/decrypting IOs for dm-crypt, so stuff which can
really consume a lot of cpu cycles.

> * Will it be possible to use system_wq with that number of work items? I'm
>   having the impression that sending numerous work items would fit a dedicated
>   workqueue rather than sending them globally. I need confirmation about this.

So, concurrency is limited by the number of work items.  Here, it's
only a handful per device.  Shouldn't be a problem.  Cases where one
should avoid using system_wq is are when work items are dynamically
allocated and queued and the concurrency can reach, say, high tens or
hundreds.

> * How do I gauge the time of execution? I have read that I cannot queue works
>   which can run for too long (in the case of system_wq).

As long as it's not a long-running service process which can run in
loop for over minutes, it should be fine.  This restriction is mostly
because of flush_scheduled_work() users which btw need to be converted
too.

> * After the conversion, how do I test this on my hardware?

I usually try to use it and plant some printks and verify that it
behaves as expected in corner cases.  cc'ing maintainers and asking
specific questions about the work items' chracteristics could be very
helpful.

> Right now I am leaning towards converting it to alloc_workqueue().

Thanks.

-- 
tejun

