X-GM-THRID: 6252907967708921856
X-Received: by 10.13.235.144 with SMTP id u138mr13833163ywe.21.1455910941249;
        Fri, 19 Feb 2016 11:42:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.134 with SMTP id a6ls560617qgf.9.gmail; Fri, 19 Feb
 2016 11:42:20 -0800 (PST)
X-Received: by 10.129.58.16 with SMTP id h16mr13855341ywa.56.1455910940785;
        Fri, 19 Feb 2016 11:42:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id t198si717627ywe.3.2016.02.19.11.42.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 11:42:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id b67so69715666qgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 11:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=aDGEVVpYq9OZLVGiAAhvBHL64RlNwMABgV1F+rQC/64=;
        b=BIwIYliTjxISVSeGmGoTvvF3JIq5+z30hZzwMHaUNlegBKYqidReUwG+c3dbjn70+u
         0wVRyNnJIT+LBH7wq0MMQJARTa1kQrEbW/O3fHsbrZlsP3Vao3vxYSKnaOUg5YgAWK97
         Axe2AtMEp7+zPSWjOyl3BZUokM7Ba5aJUuRtO6mhe29ik3CgiM/gvsohg542pgx35akv
         4YXcNELlG6s/yKTtrw4fMpBkoE9iBD2jStd8CQoLaS/dMjfj7U+WXsAdzu+Hnq9mxyKU
         RSsHsWmanlv/kk1VMOn+nwroUUx6BF9/b6vorUah64dGtj4lbsLpXb4UaFNsUIJqGPLq
         e7pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=aDGEVVpYq9OZLVGiAAhvBHL64RlNwMABgV1F+rQC/64=;
        b=cYmvgmlPB9xm3fgS4XhO1uAMLKV3AOp5MRpx2Tuwzz9AuwG056zHpWUbjy2QlMenlR
         4mFm9sBXoLII6UkAgqQ0RpIYaKUf95oi52nG5hgyP4l5faRbkXqiK5hmmxUPICRDWbTD
         nDOgMOKgVs5BgQH2YMb7a7kEN8DNbGURM7hUBzeOejF7Z9BmfsCWZplJWM0+Ch7KA0rv
         WrcG7NadbBUv/A0c6AhpslsFIhzOiBpMCgDEGUmrvpBpP9Ls8OgvGhmr7GevmSNtMVPn
         XrGGCH+aB3ZohjeN3ZonS3cyt02T7pdzrXzda8oBjzno0Uw7SJMibRWJHjiKveDVg7i1
         k99g==
X-Gm-Message-State: AG10YOTJ7VU43xXfDt+Q+hp8yZLzwBTRIVjZVhPtnJcyZ/BmyBQyT4wTuAgj+XQx3XiyqXg6vf4KOiLxmt/t/g==
X-Received: by 10.140.19.43 with SMTP id 40mr18377471qgg.72.1455910940664;
 Fri, 19 Feb 2016 11:42:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Fri, 19 Feb 2016 11:41:41 -0800 (PST)
In-Reply-To: <20160219160442.GK13177@mtj.duckdns.org>
References: <20160219075654.GA12205@Karyakshetra> <20160219160442.GK13177@mtj.duckdns.org>
From: Bhakti Priya <bhaktipriya96@gmail.com>
Date: Sat, 20 Feb 2016 01:11:41 +0530
Message-ID: <CAFNHFT_XqE1KZryY_f+Uq_H4+AJHE58CpROU8yEPZJRXP=SSzg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Use alloc_ordered_workqueue
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Tejun,

Thank you for your reply.

On Fri, Feb 19, 2016 at 9:34 PM, Tejun Heo <tj@kernel.org> wrote:
> So, this is the mechanical conversion from
> create_singlethread_workqueue() to the new interface; however, that's
> not what we want to do.  Does it *need* to be ordered?  Does it *need*
> to be guaranteed to make forward progress because it's depended upon
> during memory reclaim?  Does it even *need* to be a separate
> workqueue?  You need to actually examine the specific use case and
> answer those questions before converting it and explain and justify
> the decision in the changelog.
>
According to my understanding, with cmwq, there's no need for  octeon/ethernet
driver to use a separate  workqueue.  I have removed the dedicated
workqueue from ethernet and have used system_wq instead.
Please correct me I am wrong.

Thanks,
Bhaktipriya

