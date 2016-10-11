X-GM-THRID: 6336586801480728576
X-Received: by 10.66.9.165 with SMTP id a5mr1046637pab.169.1476206655280;
        Tue, 11 Oct 2016 10:24:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls2072290otb.23.gmail; Tue, 11 Oct
 2016 10:24:14 -0700 (PDT)
X-Received: by 10.13.210.129 with SMTP id u123mr1295588ywd.148.1476206654799;
        Tue, 11 Oct 2016 10:24:14 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 203si742628pfw.0.2016.10.11.10.24.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 10:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id qn10so1976429pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 10:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Re+mZS3P5URj5YgLiibT69KmFpCOuskyapf07c1YlqA=;
        b=IfNl6MzzTR/Vg/kZWsTT9BTelxJqrGVIFEt7MI8xistfWCjKFI1BD7i7waqdCLOfrq
         IfbzdlNlnfVjx1sytpvg7PwFlQsOyop4TepCoYY2aehB5ZoJhXy6GcDyV8XpoCgo/OMM
         6JB1wyRQVmxKOEAWqyciFAat7qIQkPTREqrTycMg9CZFWPOk+jXaHrIcd+rOo+Ze0B5g
         y35TGyx6B8v0TnCQCtMUFrXyF+TnVMojQwBuySIfssPMXkUU2GK3QgnvOj1moRFjbTWj
         /6p0HIsF2ujYq8VTf2SBOkTxwQhtydA4CZCgFv1HpMzK7STd52E9loF4AuqtRk/r/QP1
         5enw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Re+mZS3P5URj5YgLiibT69KmFpCOuskyapf07c1YlqA=;
        b=a4oGGrb2yuMmAON5BOEDsFkka4IiNKrYDD9E9+KoRxkNB58EfwBep8MwrqHxivCxkJ
         rqW5RQPhesQessGnobcfe3PpjJ6BBf8YqPATmMxhF38ImF6J1qac6jlkT1K1vd1DOn0y
         7KFOynOBqjs6SMBK/9zH8ykB3zfZP77AED16OumhPWCqRwMwmSnxPsXOoUhuPxI26UTo
         PfUXqn2zLipcaoxAmDmi+TwpRyQ0EntvLLtjiceh4hSQcBFQ7tvmab5dBZu0tLVO1rWO
         IqWlGPMrqSqaY3kUsFN4hbCYpOsusvbU5woJ9bWDIrrzphOnXMwf7X2xB/ugMPREKR3z
         DiCg==
X-Gm-Message-State: AA6/9Rn1Ia0JaGPI0ADaDsEiR4Ln8uPIkxfm4wXBc8itJRn065ktuklEjjNAfbUFitU25A==
X-Received: by 10.66.101.35 with SMTP id fd3mr8659564pab.170.1476206654591;
        Tue, 11 Oct 2016 10:24:14 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id xn11sm5666206pac.38.2016.10.11.10.24.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 10:24:14 -0700 (PDT)
Date: Tue, 11 Oct 2016 10:24:11 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Daniel Baluta <daniel.baluta@intel.com>
Cc: Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
Message-ID: <20161011172410.GA6773@localhost>
References: <20161001195259.GB12284@d830.WORKGROUP>
 <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Oct 11, 2016 at 11:44:04AM +0300, Daniel Baluta wrote:
> 
> 
> On 10.10.2016 02:19, Elizabeth Ferdman wrote:
> >On Sat, Oct 01, 2016 at 12:52:59PM -0700, Alison Schofield wrote:
> >>If you have questions about building the modules in IIO Experimenting
> >>Task #1, please post here.
> >>
> >>If you can help those who are having troubles, please post that here
> >>also.
> >>
> >I'm getting errors after running
> >$ make drivers/iio/dummy/iio_dummy_evgen.ko
> >
> >Output:
> >------------------------------------------------------------
> >CHK     include/config/kernel.release
> >CHK     include/generated/uapi/linux/version.h
> >CHK     include/generated/utsrelease.h
> >CHK     include/generated/bounds.h
> >CHK     include/generated/timeconst.h
> >CHK     include/generated/asm-offsets.h
> >CALL    scripts/checksyscalls.sh
> >MODPOST 3015 modules
> >
> >WARNING: could not open
> >drivers/staging/lustre/lustre/llite/llite_close.c:
> >No such file or directory
> >
> >WARNING: could not open
> >drivers/staging/lustre/lustre/obdclass/linux/linux-obdo.c:
> >No such file or directory
> >
> >ERROR: "ftrace_graph_ret_addr" [arch/x86/oprofile/oprofile.ko]
> >undefined!
> >
> >scripts/Makefile.modpost:91: recipe for target '__modpost' failed
> >make[1]: *** [__modpost] Error 1
> >Makefile:1643: recipe for target
> >'drivers/iio/dummy/iio_dummy_evgen.ko' failed
> >make: *** [drivers/iio/dummy/iio_dummy_evgen.ko] Error 2
> >----------------------------------------------------------------
> >
> >I have already enabled the 4 necessary config options in menuconfig.
> >Any ideas?
> >thanks,
> >liz
> >
> >
> 
> 
> Hi Liz,
> 
> Sorry for the late reply. Could you try to update your tree? It seems
> that was a problem similar with this few days ago.
> 
> http://www.gossamer-threads.com/lists/linux/kernel/2538847?do=post_view_threaded#2538847
> 
> Daniel.
>
Hey Daniel,
Thanks for the reply. I did get fetch origin, but I'm still getting the
same error, plus some more. I pasted the log here: 
http://pastebin.com/WXL5Vxt8

Just to clarify I've been following the tutorial and I chose the 5
config options in menuconfig. I also mounted configfs. 

Thanks,
Liz

> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4%40intel.com.
> For more options, visit https://groups.google.com/d/optout.

