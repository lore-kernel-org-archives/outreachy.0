X-GM-THRID: 6465198588662120448
X-Received: by 10.129.43.68 with SMTP id r65mr11785721ywr.210.1505303319708;
        Wed, 13 Sep 2017 04:48:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.13 with SMTP id j13ls2868165ioj.39.gmail; Wed, 13 Sep
 2017 04:48:39 -0700 (PDT)
X-Received: by 10.98.32.81 with SMTP id g78mr9479886pfg.53.1505303319200;
        Wed, 13 Sep 2017 04:48:39 -0700 (PDT)
Received: by 10.55.25.10 with SMTP id k10msqkh;
        Wed, 13 Sep 2017 03:05:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCjcDJld2ouGhHoDVMa3urJVIEs1hdO/1JAh/1/KrgDRVFsj/ejMttW9gmQ85DX5rUFcvAE
X-Received: by 10.28.153.6 with SMTP id b6mr234146wme.20.1505297140750;
        Wed, 13 Sep 2017 03:05:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505297140; cv=none;
        d=google.com; s=arc-20160816;
        b=vpVFcery+mvbZVq5R/zCo783zzrawG1kX0Uo3S3cgPNhJfU/NbD6TQuGHls/CBmkdb
         4DSAC/4ZcU5ynj+Jjezpo+8VgYLUUBDuNck8hvf80ParQ86sRehrcJZrQbqPOgsnR8+M
         a+qE7hCbMIvSS/HOiBypsVFVZgmbJezTnp7+j+BJFr3xVa3d2/2tRWC2d0XxrjYeqVBb
         YmVZ95zdZmx7ortMncQqwQ5OWWr7kSi9fucx9EEPiTvcnNsTvBRoBJ7CBJpaSU6RnOX8
         dKcOoR9LC46MELh749KSVlq3KmxyvAxiFHiOyUKIZdx79htYL6hSgH7LlQosNw2anW4D
         f3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject:arc-authentication-results;
        bh=6cHJMMhDUt9IGnD6NAd1WjLKuXpgaixoePVlNKTyBrM=;
        b=ETvt7IBPcqnKWRMHAijvqdrihXzRTYQCbFxtwYFlN4XFLimsF648cT7QeSPe9zvm1T
         xe7BvoZl+m/8ge1dRrryeJOHsUwvR98CnY6ng2oZZQya2vLx359mbnyliz1v89uoCKju
         BFMS6twfwvh4HaVPeu+ZtdMaLHisJj4KCMpSgr1vXVR1W/yeVSy3o1rz2PWLrScrUX+s
         Jpugcv+NjrVLzISZuyhIw0TC2DiEsLfYmXJbeRAE9LXcFT2G6wmYHxj17Q7DgzCsIjgP
         M9ZIVe81OWj2HZI3ZSzeZxl3z89+7tcN5to2EgZdcF/Awgx/pNADUMyBx2a67ChzScLs
         ak2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Return-Path: <colin.king@canonical.com>
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id t142si61855wmt.2.2017.09.13.03.05.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 03:05:40 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from 1.general.cking.uk.vpn ([10.172.193.212])
	by youngberry.canonical.com with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.76)
	(envelope-from <colin.king@canonical.com>)
	id 1ds4Y8-0004xu-23; Wed, 13 Sep 2017 10:05:40 +0000
Subject: Re: DR Checker and KINT static checkers
To: Julia Lawall <julia.lawall@lip6.fr>
References: <20170913095202.a6zsi3xeryzhmxrl@mwanda>
 <92cea65d-9461-3fed-8e07-cd41059410a9@canonical.com>
 <alpine.DEB.2.20.1709131203520.13908@hadrien>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 kernel-janitors@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
From: Colin Ian King <colin.king@canonical.com>
Message-ID: <d17e2cb4-ccd5-9bdb-89d7-5a2b2933d11c@canonical.com>
Date: Wed, 13 Sep 2017 11:05:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1709131203520.13908@hadrien>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 13/09/17 11:04, Julia Lawall wrote:
> 
> 
> On Wed, 13 Sep 2017, Colin Ian King wrote:
> 
>> On 13/09/17 10:52, Dan Carpenter wrote:
>>> LWN.net recently had an article about Dr Checker.  It's a promising new
>>> static analysis tool.  The LWN article is for subscribers only until
>>> tomorrow, but anyone can read the PDF or install the code.  It would be
>>> really interesting if someone could run Dr Checker on a mainline kernel
>>> tree and post the results.
>>> https://lwn.net/Articles/733056/
>>> https://www.usenix.org/system/files/conference/usenixsecurity17/sec17-machiry.pdf
>>> https://github.com/ucsb-seclab/dr_checker/
>>>
>>> The other tool that's quite interesting is KINT which looks for integer
>>> overflows.  It's a bit of a pain because you have to annotate some
>>> kernel functions to make it work.  The PDF and source code are here:
>>>
>>> http://css.csail.mit.edu/kint/
>>>
>>> regards,
>>> dan carpenter
>>>
>>
>> Funnily enough, I tried Dr Checker out earlier this week.  One has to
>> make it do a fake build of the kernel to gather information on how to
>> build the specific kernel config (e.g. how it was compiled and the gcc
>> build flags) and then this gets parsed by DR-Checker.  Unfortunately it
>> seems that it only supported arm architecture builds and it could not
>> handle the gcc output for a modern x86 amd64 gcc (gcc 7.2). I kind of
>> gave up after a couple of hours trying to make it work.  I suspect more
>> patient developers may figure out how to make it work. I may go back and
>> revisit this when I have some free time.
> 
> You could ask the authors.  They may be happy to have some feedback.
> 
> julia

Yep, I'll do that sometime this week when I get some free cycles. :-)

Colin

> 
>>
>> Colin
>> --
>> To unsubscribe from this list: send the line "unsubscribe kernel-janitors" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-janitors" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 


