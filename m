X-GM-THRID: 6249498218591158272
X-Received: by 10.107.185.4 with SMTP id j4mr4371264iof.21.1455732617191;
        Wed, 17 Feb 2016 10:10:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.248.226 with SMTP id yp2ls317945obc.38.gmail; Wed, 17 Feb
 2016 10:10:16 -0800 (PST)
X-Received: by 10.182.33.42 with SMTP id o10mr2744838obi.12.1455732616853;
        Wed, 17 Feb 2016 10:10:16 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id l85si119905ywb.2.2016.02.17.10.10.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 10:10:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id b67so17973836qgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 10:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=9bNISyD+OckYE728Mj8tiwYFigwdxyb0XMGNfvCttlw=;
        b=m3OTC2aQZa9Ea9HptoyiKuVcGAGzj1IzTJ1ivV+tIt4Q8o6sG+kFenicO51ZV6Bh0e
         0vQdmn5L6Vj9tiBM+3GPU+cYC3sg/pb2p76F6htKHcCJrxBuxgcaYHrRLmuqc0PzHyE/
         mrxKdlf9U/QEhLsiE0m0lhkbJSQZvSFf9uwt20QgwPVDESx3c4fk0o150NfpVqoD2xkT
         yaJ9PYnDk04Z40GTUARpSePcX3FvSXKoPK/XXZZZf8ZmgsRFfQ0ahz5mkBJVFWR7N7eg
         1ccPq37ramoBxfCV3/HFOVmQg7Rjit6lPNFdIazJnXB/7OQoOWnkZqWoPRcV00QpvR3f
         KPKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-type
         :content-transfer-encoding;
        bh=9bNISyD+OckYE728Mj8tiwYFigwdxyb0XMGNfvCttlw=;
        b=eEcWXNQ8+5rJS+L26xeUQdkbzHkLeBUjbKurYAT1fTUC1GcO89eW084GrNgEzB8l8F
         IcqVOz/5BqBhxhxBKewglXyqyyjc2l0SFlraoJYuquqgG02yDv2LtGL2CpCvi7KzsbBK
         It+f1iIqKK6jZHjlzNblaUsQVmiqAw/0RoT0L4NDIZX8jgv2Q+v6tQxLWbre9UagQy8u
         3g3/k/m+IKbCs2QR+CNqAVqnSmK/vCf/wDDxB2N3jdREc092gjMLa2DAnOCZyW+DIFyt
         FktgIN0ANjpWFtK44F4ebr0iTIoNX0s197GUt3Ord7blwHLuArqGbOJ+ViSOwcKmsBvy
         pNFw==
X-Gm-Message-State: AG10YOQkXv+wSalz/ocpxAMfP28IA8tOIbNIpH8/1Mxsb9LHQPy8tZGjWo5aVN/lmDTbyg==
X-Received: by 10.140.136.210 with SMTP id 201mr3862329qhi.6.1455732616697;
        Wed, 17 Feb 2016 10:10:16 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.121] ([38.140.131.194])
        by smtp.gmail.com with ESMTPSA id a196sm946622qha.49.2016.02.17.10.10.15
        (version=TLSv1/SSLv3 cipher=OTHER);
        Wed, 17 Feb 2016 10:10:15 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Modify boolean
 assignment
To: Greg KH <greg@kroah.com>
References: <20160210082412.GA2645@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602100825150.2050@localhost6.localdomain6>
 <207e6b2c-07b0-48a8-a414-37c59ed7a3e6@googlegroups.com>
 <alpine.DEB.2.10.1602100954070.2486@hadrien> <56C4B515.3020301@gmail.com>
 <20160217180323.GA23677@kroah.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
 Janani Ravichandran <janani.rvchndrn@gmail.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-ID: <56C4B787.2030302@gmail.com>
Date: Wed, 17 Feb 2016 13:10:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <20160217180323.GA23677@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/17/16 13:03, Greg KH wrote:
> On Wed, Feb 17, 2016 at 12:59:49PM -0500, Jes Sorensen wrote:
>> On 02/10/16 03:54, Julia Lawall wrote:
>>>
>>>
>>> On Tue, 9 Feb 2016, Janani Ravichandran wrote:
>>>
>>>>
>>>>
>>>> On Wednesday, 10 February 2016 02:26:38 UTC-5, Julia Lawall wrote:
>>>>       On Wed, 10 Feb 2016, Janani Ravichandran wrote:
>>>>
>>>>       > Boolean variables should be assigned true/false rather than
>>>>       1/0.
>>>>       > This patch makes such a correction.
>>>>
>>>>       A change like this should be made consistently, so it is a
>>>>       little
>>>>       surprising to see only one such change.  Is this the only place
>>>>       where the
>>>>       variable is initialized?  
>>>>
>>>> Within this file, this is the only instance of initialization of the
>>>> variable where 1 is
>>>>  used instead of true. All others use true/false. I sent this to resolve
>>>> that
>>>> inconsistency :)
>>>>       If so, you could say that.  if not, then you
>>>>       could explain that all of the other initialization places
>>>>       already have
>>>>       boolean values, in some way or another.
>>>>
>>>> Do I send a v2 explaining this?
>>>
>>> I think it could be helpful.
>>
>> You also need to CC the driver author, not just the outreachy list.
> 
> For the outreachy application process, the author doesn't need to be
>  cc:ed, but they can be if the patch author wants to.

If the patches are dropped and not pushed upstream, please ignore CC's,
sure. If they are meant to go upstream, the author must be CC'ed.

I for one find it really annoying and rude to have patches go into
upstream for code I actively maintain, without being CC'ed on them.

I know Unisys is trying to fix up their code, and knowing conflicting
patches are in flight saves work.

Jes


