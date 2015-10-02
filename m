X-GM-THRID: 6201108859850850304
X-Received: by 10.67.3.137 with SMTP id bw9mr14975791pad.4.1443819078007;
        Fri, 02 Oct 2015 13:51:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.238 with SMTP id o101ls2129286qge.32.gmail; Fri, 02 Oct
 2015 13:51:17 -0700 (PDT)
X-Received: by 10.129.33.86 with SMTP id h83mr14455892ywh.29.1443819077322;
        Fri, 02 Oct 2015 13:51:17 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id w5si1877179pbt.1.2015.10.02.13.51.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so115147789pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 13:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=ulNLP3ORvxWaWjxyH7Li0AimDf0aS0BiL5EbB9dBqDk=;
        b=hssxBn32L9PTaHJCRI7DVQb5q2YO2GMo5wuEuo4GCX6F/4gsxgMg+wiz1A4ePcm0Bk
         XB23gAwjbRkWJPptGTjs5boeZiPXuEjFtKpkjy3ZENBR68ZB+4KKMU4T8QueJ4NZ6xjE
         /4cNHrvd5lTaWIP94Q5smC+ZkJ9QVcsbVhm8OrSREDNIa1w1bs2+s2yAtotKM+ASH2Sc
         YfIk8Fk+aEFaNDrsIDRAyOn+KA2zt6iBuqRHTqpZIuZ0pmwixVaN+l72ckYGaw5KCgTJ
         qWEo2kGhyK8kFLfAt8geyait4B6NOMVLFtNNRAe3L58n1UVOybXOpVIW6RjkLLMFgoGd
         QDQQ==
X-Received: by 10.68.163.5 with SMTP id ye5mr22085655pbb.120.1443819077134;
        Fri, 02 Oct 2015 13:51:17 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fe8sm13642643pab.40.2015.10.02.13.51.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 13:51:16 -0700 (PDT)
Date: Sat, 3 Oct 2015 02:21:10 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, 
    Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] Staging: lustre: obdclass: cl_lock:
 Declare as static
In-Reply-To: <4965740.aaLffJxEfT@wuerfel>
Message-ID: <alpine.DEB.2.11.1510030216380.24977@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com> <1443808154-13944-3-git-send-email-shraddha.6596@gmail.com> <4965740.aaLffJxEfT@wuerfel>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.560EEE44.0001,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Fri, 2 Oct 2015, Arnd Bergmann wrote:

> On Friday 02 October 2015 23:19:11 Shraddha Barke wrote:
>> Declare cl_lock_intransit and cl_lock_extransit as static since they
>> are used only in this particular file.
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/obdclass/cl_lock.c | 10 ++++------
>>  1 file changed, 4 insertions(+), 6 deletions(-)
>>
>
> I still see declarations for these functions in cl_object.h, you
> should remove them at the same time.
>
> I would have expected to see a compile-time error as a result of
> your patch, because you have an extern declaration and a static
> definition for the same symbol.

Yes that would normally happen. But the declarations for these were 
removed in another patch 4 days ago.
https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=a83a765d14df24c8fa0fc500d24b0334638ee828

>
> Can you find out what happened?
>
> 	Arnd
>

