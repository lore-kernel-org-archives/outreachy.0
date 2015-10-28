X-GM-THRID: 6210399306923376640
X-Received: by 10.182.24.42 with SMTP id r10mr41681473obf.42.1446072570368;
        Wed, 28 Oct 2015 15:49:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.2 with SMTP id rs2ls1768804igb.24.canary; Wed, 28 Oct
 2015 15:49:28 -0700 (PDT)
X-Received: by 10.50.114.2 with SMTP id jc2mr4437531igb.5.1446072568336;
        Wed, 28 Oct 2015 15:49:28 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x241.google.com (mail-yk0-x241.google.com. [2607:f8b0:4002:c07::241])
        by gmr-mx.google.com with ESMTPS id m7si1482503ywe.1.2015.10.28.15.49.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 15:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::241 as permitted sender) client-ip=2607:f8b0:4002:c07::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by ykdy125 with SMTP id y125so1896276ykd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 15:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=nlau3/dP3bTA4B24Lmo+wyYtrK3Q3rqEl4G39cc6Thk=;
        b=tMuKdhCcBWFUfU6h06qaqunFrDN/IcEJxtsoVPqBAqTv2UJ9w5TV8fbmoCdWIcvOBM
         HiYmesqVqSIc/qpyJuY/rbusHO5wy4EBwxzWdcE+kHDMFpKLldhBtmi8whmOAvY1e37v
         dzGhMW2JqmjoHzN7U0vZXzgDhOb0VGvpD3X30GjQzxX4soBAWwnOQbZrgM9q0hb+naXU
         g86Q8l2lfGtWxrKj5PWgaJsHXhbdqg2r2E8XrgUu27nrfkcMM8EKSoX9/T2VKgKYqiWn
         cV0GLfu9Ur9NtHqM3npjCQwR9SowUO+b2gPiSLp0s7m0IEYfYXllbcjAC0JlyULpoQar
         4nZQ==
MIME-Version: 1.0
X-Received: by 10.129.154.141 with SMTP id r135mr35382475ywg.195.1446072568084;
 Wed, 28 Oct 2015 15:49:28 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 28 Oct 2015 15:49:28 -0700 (PDT)
In-Reply-To: <20151028224722.GA31531@kroah.com>
References: <1445971256-22474-1-git-send-email-ciorneiioana@gmail.com>
	<20151028224722.GA31531@kroah.com>
Date: Thu, 29 Oct 2015 00:49:28 +0200
Message-ID: <CAHWJYFmK1tLUW1EA=dDyGLqiqukOz_4CfL4AMuUdycQ0feTxzA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: dummy: complete IIO
 events delivery to userspace
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: linux-iio@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Cristina Georgiana Opriceana <cristina.opriceana@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 29, 2015 at 12:47 AM, Greg KH <greg@kroah.com> wrote:
> On Tue, Oct 27, 2015 at 08:40:56PM +0200, Ioana Ciornei wrote:
>> Starting with commit fd2bb310ca (Staging: iio: Move evgen interrupt
>> generation to irq_work) event processing is handled by calling
>> both the top half and the threaded part properly simulating real
>> hardware interrupts making use of threaded interrupts.
>> This way the processing is split in 2 parts:
>>
>> * the IRQ handler that runs in IRQ context and only saves the event
>> timestamp
>> * the threaded handler that runs in process context, reads the events
>> and pushes the in the userspace.
>>
>> If the IRQ handler returns IRQ_HANDLED the threaded handler is not
>> even being called since the interrupt is considered to be processed.
>> Because the iio dummy driver processes the events in the threaded
>> handler the IRQ handler must return IRQ_WAKE_THREAD so that the
>> threaded part would be awakened and called.
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> Fixes: fd2bb310ca ("Staging: iio: Move evgen interrupt generation to irq_work")
>> Acked-by: Daniel Baluta <daniel.baluta@intel.com>
>> ---
>> rebased on linux-iio tree
>
> Daniel, can you forward this to the iio developers, I can't take this as
> it doesn't apply to my tree :(
>

I already sent it to the linux-iio list as Daniel suggested in a
previous message.
I hope it's ok.

Thanks,

Ioana

> thanks,
>
> greg k-h

