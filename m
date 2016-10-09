X-GM-THRID: 6336586801480728576
X-Received: by 10.157.42.168 with SMTP id e37mr7504371otb.24.1476055202621;
        Sun, 09 Oct 2016 16:20:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.106 with SMTP id k39ls8168714otd.3.gmail; Sun, 09 Oct
 2016 16:20:02 -0700 (PDT)
X-Received: by 10.129.137.6 with SMTP id z6mr8004364ywf.122.1476055202342;
        Sun, 09 Oct 2016 16:20:02 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si7793414par.0.2016.10.09.16.20.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 16:20:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id qn10so5924551pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 16:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jj3fF8TpBRJpDuRYX1ZaRx3Qny1f1SsFg1I4cglIvns=;
        b=XD20cWvSXsy55EPUbDt8AxtV+XGLvANu2PfjBs+F7GnU8X0hcqcv1vYW18GLlx7YB9
         zRiCU3xExf9Yn4SwTabHgt0DceWjRBCYVSsNkl5mTRu2jjphB73Hi04N52qSYyhida43
         rf6ML34MHXnXJsrOHtwvhQmdpL6wn5TlPm//O5iNrfwsYb7rvy/Tj4hhlmNQqWEdOAad
         818L5fxuLMFug/yOC+xmET3+uV1/bce/vAEhaCb89nysvdZuuSlx8UV1opiYfRsqh182
         bjUfNekY1IYEE6sEzCwarRNw4ykO0Zn2Vfh55JDNfXunyUQo2iZY+Yz5SMpu43Ng/FOG
         rIOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jj3fF8TpBRJpDuRYX1ZaRx3Qny1f1SsFg1I4cglIvns=;
        b=kBLYCMAHNyg/hinKanglnQsWBK3HMFD8UpHYy0ZVRdej8cPMUwyfAVG0wB9smsYAuJ
         zAbGtLpvlda75gUplVsPKaAaYjLyWBECZGDE6pSWFVxe11CFJNp70xgginAeI6z9deH3
         kM16cSi9SMGyPiQGZjpPoqQa5pRReB9gWVHeYw3I1eVGjCK9LLyPUB5qnuzHRhQUI+C6
         mX9Sb1Bq9HW/FWwOH4svtqULXCD6pXFthW7xvCpMEPce5RT3XmURHar2ugbwjbjYP4R5
         tDy9iQPsmUXd1ALc7iYGw443hn6n288hRs9UG755BuzNeRLt0RMBponltKUEcfGD8udR
         4BXw==
X-Gm-Message-State: AA6/9RnF0pjQCpdJfsGZtPKZ3LSxaS/uoPdcaSH8tqdYv/NMRg6R+VYn7sahO/3IEZ8NLg==
X-Received: by 10.66.131.4 with SMTP id oi4mr49444899pab.66.1476055202115;
        Sun, 09 Oct 2016 16:20:02 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id wd7sm47498245pab.2.2016.10.09.16.20.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 16:20:01 -0700 (PDT)
Date: Sun, 9 Oct 2016 16:19:59 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@intel.com
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
Message-ID: <20161009231959.GA5324@localhost>
References: <20161001195259.GB12284@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161001195259.GB12284@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Oct 01, 2016 at 12:52:59PM -0700, Alison Schofield wrote:
> If you have questions about building the modules in IIO Experimenting
> Task #1, please post here.
> 
> If you can help those who are having troubles, please post that here
> also.
> 
I'm getting errors after running
$ make drivers/iio/dummy/iio_dummy_evgen.ko 

Output:
------------------------------------------------------------
CHK     include/config/kernel.release
CHK     include/generated/uapi/linux/version.h
CHK     include/generated/utsrelease.h
CHK     include/generated/bounds.h
CHK     include/generated/timeconst.h
CHK     include/generated/asm-offsets.h
CALL    scripts/checksyscalls.sh
MODPOST 3015 modules

WARNING: could not open 
drivers/staging/lustre/lustre/llite/llite_close.c:
No such file or directory

WARNING: could not open 
drivers/staging/lustre/lustre/obdclass/linux/linux-obdo.c:
No such file or directory

ERROR: "ftrace_graph_ret_addr" [arch/x86/oprofile/oprofile.ko] 
undefined!

scripts/Makefile.modpost:91: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1643: recipe for target
'drivers/iio/dummy/iio_dummy_evgen.ko' failed
make: *** [drivers/iio/dummy/iio_dummy_evgen.ko] Error 2
----------------------------------------------------------------

I have already enabled the 4 necessary config options in menuconfig.
Any ideas? 
thanks,
liz

> Thanks!
> alisons
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161001195259.GB12284%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

