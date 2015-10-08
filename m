X-GM-THRID: 6202887067130658816
X-Received: by 10.107.149.4 with SMTP id x4mr5618898iod.20.1444301316417;
        Thu, 08 Oct 2015 03:48:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.81.33 with SMTP id w1ls152932obx.68.gmail; Thu, 08 Oct
 2015 03:48:36 -0700 (PDT)
X-Received: by 10.182.236.225 with SMTP id ux1mr5299640obc.2.1444301316060;
        Thu, 08 Oct 2015 03:48:36 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si5536639pbb.0.2015.10.08.03.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 03:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so51812064pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 03:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=kEJGSmaE1vUX/7F+RJRlZU4YsABcVx76Drzc353fjMI=;
        b=zqVGGeAvTQhmPpiWdMsMAWWZEi39lBxqd5tHiTB3j1fXvSseKBL76CvIKh8Y5hzGQX
         GVKr+KOqwtj3rrdDnz2pF0ChDaXD15ZYncL8o/CNPDZTTSRm7xq56HJFO1han54MGWhf
         hRshkoXmG8n0pFEp9VH93LJq6UsXUzyPwKZrDXfeCvlu7U3+nLk+rRQAQDC4qpzpD/iA
         ypTVi1hQqXwAZ9ve12soJwQ8fDWUDImufEUQzSmjLnMhC8fez8oV3pwIDyXaVq/ng8w9
         KailycvlAaPU/J4HPNq27W3bzqNK3JlTG+HHRavfH7sf0kFv1NqsYLpsvvLply2f5dgr
         HgIA==
X-Received: by 10.68.243.99 with SMTP id wx3mr7344675pbc.33.1444301315883;
        Thu, 08 Oct 2015 03:48:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gi4sm44770504pbc.4.2015.10.08.03.48.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 03:48:35 -0700 (PDT)
Date: Thu, 8 Oct 2015 16:18:15 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Greg KH <gregkh@linuxfoundation.org>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: sm750fb: Use ARRAY_SIZE
 macro
In-Reply-To: <20151008084946.GA4642@kroah.com>
Message-ID: <alpine.DEB.2.11.1510081612500.4550@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1444222177-11153-1-git-send-email-shraddha.6596@gmail.com> <1444222177-11153-2-git-send-email-shraddha.6596@gmail.com> <20151008084946.GA4642@kroah.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.56164A02.0166,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Thu, 8 Oct 2015, Greg KH wrote:

> On Wed, Oct 07, 2015 at 06:19:36PM +0530, Shraddha Barke wrote:
>> ARRAY_SIZE is more concise to use when the size of an array is divided
>> by the size of its type or the size of its first element.
>>
>> Change made using Coccinelle-
>>
>> @@
>> type T;
>> T[] E;
>> @@
>>
>> - (sizeof(E)/sizeof(T))
>> + ARRAY_SIZE(E)
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>>  drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> Doesn't apply to my tree :(

Umm, it applied when I tried it. A change was made recently to this file 
https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=31418e37019ec188f4201587c7234bfb463e7bf4
before this patch was applied. Do you think it's because of that?. I'm 
trying to understand how this works.

Anyways, I'll resend it with suggestions made by Julia.

Thanks,

Shraddha
>



