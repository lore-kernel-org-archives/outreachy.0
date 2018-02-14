X-GM-THRID: 6522213287288897536
X-Received: by 10.28.192.26 with SMTP id q26mr434987wmf.29.1518594504177;
        Tue, 13 Feb 2018 23:48:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.26.132 with SMTP id a126ls2030919wma.1.canary-gmail; Tue,
 13 Feb 2018 23:48:23 -0800 (PST)
X-Google-Smtp-Source: AH8x225EEsoP9DkHFaQPiOIOLzdvsx2x+i1C624c/UsxWs44x4cuRVtfvEH72nYJNX6/Y8XAu1oK
X-Received: by 10.28.87.194 with SMTP id l185mr441763wmb.9.1518594502998;
        Tue, 13 Feb 2018 23:48:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518594502; cv=none;
        d=google.com; s=arc-20160816;
        b=VYiSp5F1L6nlpY+09azefVsg07zpQeL4jiZaa+tBSRRd9kiPMAfp5ffcT79nXLRmGq
         nDdWkMwu4V8PwPEUdF17UOEgSRCEpuRoBn9UpJ4QqisgbAdQldrTho/XzDDhEmYsf8Kb
         0MBT4kMwDl9x3pUWSFVKnN/D/4u4CdyyvjiT9aoyTpgZOSUSlXbYtD4qItLYRlP6Tn27
         u5/wRJZrvkW4VL9f1ml7JmOnihEWm2DFzbWT7tE9Je2uY5Aj8TjWnVV/VSKv+89hQDcr
         ais5LL2kudPIPpUTBgS3cu3REz5LSq1H62FkOCIIOCexIB3n4KS19lQM8HlADGMDCoRZ
         IQmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=7KMhK6JlJQKFIFEdW/qB9QAKyHRAxGbjCVNb8kZ84Vw=;
        b=KNqzsU65G6DDsHwIDmxaRCdcBDkfC+FEAsnsV2f1zlaHB67meBqaBbmK6L0KcuFbZ7
         Ys5Mlijv/YfO8nu/WweCSnNJxTiGZ2WKK0taG+XKRjb7D1Mm30R/SrOym3PFWDkGf4DK
         FbWi2aOsanUn2WiDIEJlr9lFBOZPweq+EnXmdTx/qQMWTlPyDDTzLYVJjRfU0uSBylr4
         bNGKZWmwp3c/KnjztbtaVbQ2aNpm0shm4KSDTz000b2RF+cO08l9kNuJyz+O2/Nq4MQg
         O+3XvxRZ67Vac9I/YbQHcr+FA2vYK/gwRS3AA8Nkb2/5hA5NLoRKJjU+QOwCrrxqY2os
         4cNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v8si660480wrg.2.2018.02.13.23.48.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Feb 2018 23:48:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,511,1511823600"; 
   d="scan'208";a="313475811"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Feb 2018 08:48:22 +0100
Date: Wed, 14 Feb 2018 08:48:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kedunne@ucsc.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Initial Application
In-Reply-To: <20180214011834.4t7ltqv632mspyy7@kdunne-Inspiron-5566>
Message-ID: <alpine.DEB.2.20.1802140843210.3874@hadrien>
References: <20180214011834.4t7ltqv632mspyy7@kdunne-Inspiron-5566>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Feb 2018, Katie Dunne wrote:

> Hi Vaishali and other mentors,
>
> The introduction message says we need to fill out an initial application
> before contributing. The outreachy website says we must make a
> contribution before applying. There is a Linux Kernel landing page where
> we must 'Record a Contribution' before we are given access to a link to
> submit an application, e.g. 'Once you've recorded at least one
> contribution, you can start your application for the project.' from the
> following link:
>
> https://www.outreachy.org/2018-may-august/communities/linux-kernel/migrate-nand-driver-to-new-exec_op-framework/contributions/

I wasn't able to access this link directly.

I think that there is a problem with the "How to apply" section in
https://kernelnewbies.org/OutreachyApply.  It is quite out of order as
compared to the new process.  We will update this.  With respect to
something on the outreachy.org site, could you send a screenshot rather
than a URL of anything you find confusing?  Then we'll try to resolve it
with the Outreachy administration.  In any case, what you should do is

1. check eligibillity
2. work on the kernel tutorial
3. pick a project (or more than one - two more projects are expected to
be announced)
4. work on the relevant small tasks
5. complete your application with information about your contribution

Thanks very much for the feedback.

julia

>
> I take this to mean we have to have a patch accepted before we can start
> an application. Let me know if that is incorrect.
>
> Thanks,
> Katie
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180214011834.4t7ltqv632mspyy7%40kdunne-Inspiron-5566.
> For more options, visit https://groups.google.com/d/optout.
>

