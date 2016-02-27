X-GM-THRID: 6255546141594615808
X-Received: by 10.182.137.193 with SMTP id qk1mr4767580obb.50.1456574443349;
        Sat, 27 Feb 2016 04:00:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.134 with SMTP id l128ls931016ioe.73.gmail; Sat, 27 Feb
 2016 04:00:43 -0800 (PST)
X-Received: by 10.66.160.9 with SMTP id xg9mr4914885pab.38.1456574443031;
        Sat, 27 Feb 2016 04:00:43 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-oi0-x22b.google.com (mail-oi0-x22b.google.com. [2607:f8b0:4003:c06::22b])
        by gmr-mx.google.com with ESMTPS id xh11si482811igb.0.2016.02.27.04.00.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:00:42 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c06::22b as permitted sender) client-ip=2607:f8b0:4003:c06::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c06::22b as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-oi0-x22b.google.com with SMTP id x143so9204105oix.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 04:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GTuub9UPTHjbQ6Lwv43g632TSnrgmH/oepwcwZaitmg=;
        b=qKglVVeXqUHOpBznqxSlqN+opeVb4YT0+WbYI5Vtm88qhW3vc3qq9BIzjIZOzV0yqL
         n1u/Bvyzwt4HzkMim06TC2IIgW+0J+Kim8jc5s712L6JQ5BwLeE1Tj7cy0v5opgRDqUP
         u6j7YjzbnzCp+ytuT9DRlL+ZZXrl57Va/tgdcRfxx/xP80dGH1KcnnrXB7hWPfzoXeUU
         DgKyDUMkZOZ3riCycfCzzEvx5llW8MZVnp+yjLA+8JI91kxncr33KN55AM54xSVmzP+X
         O/anrC3x6cIrLF9Y0GOGFILv32NlP46TqgjO7mrq9nXou7JY2YcDK4dGHfg5a3I0HJmZ
         FeQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=GTuub9UPTHjbQ6Lwv43g632TSnrgmH/oepwcwZaitmg=;
        b=gDzkVBcyLANTl+s7zwGz2xugEv/3+RJUFsxnjkZ2H73YqNpPGfI5I1sJMCqlr5iFOI
         YdFQSyL8+ZVrgUHKDoIgRxx8e11p45fO1QMDWE/JDGgX2WYY50CbZdIiGgInpTodRfE4
         SanPb+1pXLy6F8Rk7/zTlr6dIAOkmsFFBGCSeyRbKEVnuHK4zBkhJthPEn0TzePsFtw+
         m8IjoIeBsiUJl7VcED3yluHTQDbFF3z0HlokNOrKwhyGpss48g5+vS6z0Zr9zpitHEjC
         sGRPze94i9LP7E7VNNXYH2hdkSW1H7S0viZBsn2iirLSgPDm1rHcvtgPvMxmcZarIiFn
         /G0g==
X-Gm-Message-State: AD7BkJKzgirbxPVwhwwG1NAGfdkxc1+jrTJ6AAGlS2gzDRCbBhDM/uurGUcrKJ5X8HSAlQ==
X-Received: by 10.202.56.86 with SMTP id f83mr4787073oia.64.1456574442851;
        Sat, 27 Feb 2016 04:00:42 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost (107-140-218-13.lightspeed.rcsntx.sbcglobal.net. [107.140.218.13])
        by smtp.gmail.com with ESMTPSA id y196sm11554161oia.24.2016.02.27.04.00.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:00:42 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sat, 27 Feb 2016 07:00:42 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: visornic: Remove
 create_singlethread_workqueue()
Message-ID: <20160227120042.GD3965@htj.duckdns.org>
References: <20160226103347.GA14213@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160226103347.GA14213@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 26, 2016 at 04:03:47PM +0530, Amitoj Kaur Chawla wrote:
> With concurrency managed workqueues, use of dedicated workqueues
> can be replaced by using system_wq. 
> Drop visornic_timeout_reset_workqueue by using system_wq.
> 
> Since there is only one work item per devdata and different
> devdatas do not need to be ordered, increase of concurrency
> level by switching to system_wq should not break anything.
> 
> cancel_work_sync() is used to ensure that work is not pending or
> executing on any CPU.
> 
> Lastly, since all devices are suspended, which shutdowns the work item
> before the driver can be unregistered, it is guaranteed that no work
> item is pending or executing by the time exit path runs.

I don't think this paragraph makes sense for this patch.  Ditto for
the other patch too.

For the workqueue part,

Acked-by: Tejun Heo <tj@kernel.org>

The same with the other patch.

Thanks.

-- 
tejun

