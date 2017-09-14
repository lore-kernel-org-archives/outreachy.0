X-GM-THRID: 6465198588662120448
X-Received: by 10.46.92.193 with SMTP id q184mr1938343ljb.34.1505409228978;
        Thu, 14 Sep 2017 10:13:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.29.10 with SMTP id d10ls369098ljd.42.gmail; Thu, 14 Sep
 2017 10:13:47 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC6qLLLGfNxgifZgG16hxfWitKd8cubWVgQXQwdollfvkYj+06iv9VjY+FxVln/ELiR/IiA
X-Received: by 10.46.89.153 with SMTP id g25mr1614985ljf.20.1505409227920;
        Thu, 14 Sep 2017 10:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505409227; cv=none;
        d=google.com; s=arc-20160816;
        b=S/JhuJq0lUI7O5EuxiCHRiKFEqmrU1aEpKuq1rlVNS5NWKutiMtPsB9Rcz7rAeRSC8
         IgXQphz8gECkWSOSX+FXZROALX+hJ+jNMZnvA2gLKRo14ZIFYYHqR6PhXcvHU+OoT9Lg
         y2T46lulgqzxqH9HWRJLstqfgRgVKkTO51SUHW9I2ZMLSB/cpZMuxIHoNKZyYfj0dHVi
         44pfvdKspNv6dhjrkip2vN4QyiWEfXA2iD5CPFoQSbn/JJUtYkXatLv3+uDqovBa5bDG
         u1ccVzBUdl9qtnc3A7a5YPAlhwEZvHtfl26UgshEa/hrLnIRoUS8qW0pYkYjGy4MzIxJ
         rkuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject:arc-authentication-results;
        bh=f2iKFsnsQgWKhTzhG14W8OuATs1KsHMp0I6p374oxLw=;
        b=geSYHYJmnC1kV84bCQf3W35BBXU56l5aA8CTM0jgAhUF3hYnqHYDnsx5PLU2ybJG8t
         nX2joUrWANsNWxJBGasJ6ELf5ksYk64WI/PJQxrHi/wPRWXHzBQMpQnjW6gM5xtICtxd
         kYyyKcnDIFY2v8SbGOaB5PW2TVULGfzLcApLUwa4DzXdquUtGC0FXK7MxqTONWMK+nJO
         Lnp5sR3601DlZYOdQVGGQo7Lg0IeG4ey2PSW4Z3HN+bd9yd/tCCJ0IjWYVaK0HMB03S7
         4cA58d8PlfjHdXeIqNqVCXkmCYO1fgB1S/fwyVPoCF6N8OvBZH8iQRu+vAKU10Za5VEL
         T4HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Return-Path: <colin.king@canonical.com>
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id 200si100866wmj.0.2017.09.14.10.13.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 10:13:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from 1.general.cking.uk.vpn ([10.172.193.212])
	by youngberry.canonical.com with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.76)
	(envelope-from <colin.king@canonical.com>)
	id 1dsXhy-0002VR-RZ; Thu, 14 Sep 2017 17:13:46 +0000
Subject: Re: DR Checker and KINT static checkers
To: Julia Lawall <julia.lawall@lip6.fr>
References: <20170913095202.a6zsi3xeryzhmxrl@mwanda>
 <92cea65d-9461-3fed-8e07-cd41059410a9@canonical.com>
 <alpine.DEB.2.20.1709131203520.13908@hadrien>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 kernel-janitors@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
From: Colin Ian King <colin.king@canonical.com>
Message-ID: <114caf1f-c78d-b8ee-7f7e-53625867299c@canonical.com>
Date: Thu, 14 Sep 2017 18:13:46 +0100
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
> 

I've requested assistance from Aravind Machiry and he will help me with
x86 checking once he's finished a paper, so I expect to report back with
my results sometime at the end of the month if all goes well. Keep you
posted.

Colin


