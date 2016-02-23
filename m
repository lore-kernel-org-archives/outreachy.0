X-GM-THRID: 6254188564975714304
X-Received: by 10.129.90.84 with SMTP id o81mr27919289ywb.37.1456259875299;
        Tue, 23 Feb 2016 12:37:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.164 with SMTP id 33ls3058748qgb.61.gmail; Tue, 23 Feb
 2016 12:37:54 -0800 (PST)
X-Received: by 10.140.140.18 with SMTP id 18mr6421506qhm.26.1456259874848;
        Tue, 23 Feb 2016 12:37:54 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id i133si1839260ywe.7.2016.02.23.12.37.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:37:54 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id b35so146108808qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 12:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=iprpT/lEu86fg3Repi+B//z0Gzo+9mIJjkQOX2vsy/s=;
        b=J/XFqZgYO7efa4jUWJIHS4+gdw+vHny31SgSONBm1NSEaMAA1r7DBaTOJO80LOhvx/
         tuynvSXzcxhYtNuPbtMZV3bNCXX/2rmqLwY4qWbKlnAJJv2HR6ntryMU7Raqfcp7gjYd
         ie6cPs2HlguFZY2fBTyLHLP1biW4K00A/9Cx9HLFf9htAPonbZ8p4h3q1G0FNyx1cUAb
         Ld8JD65WkMpaF43pNXH5E3ED9mTjjmmXAfLM8ziiSQPcQKcx3cp2XM1SvfzadZIwR+rK
         uSbVuKf6KNTl0ssru2j8yDnZLpcc6BUuperNt35sIugJFBTxGkCmJe4QB6iTcVn375N4
         LaiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=iprpT/lEu86fg3Repi+B//z0Gzo+9mIJjkQOX2vsy/s=;
        b=Q2PTXlT25LeaLJa45ALU0iFYtUhf/HdFB6WhIQIiIofaBjIwRv/YAahacvLNMNQ8MG
         uy+d1iAgfdbZnY3oF1QB4QjLInhuiGHvWxyIZIad4tcvHjZ4j+m5tX0yiGNBwej75997
         GzsRFdEbytWcHUtboq0Li0Trqla9Xn1oi5tFoA2cocMMGSbSnAlC3pk6u0FGvEsENHdX
         0SiVvaEREbD4duDKY8SWtPWNmaV/0DCzJZ6ipnWcimlbncM8MJxY8aQCXr4vt2OoP05V
         hJEwxRlPhtPWQ2oXuk5MIfQ20tkt4YOuuCRSCAfd85ypffDlJ7T4Tp4F/Q+2IvEL/qgO
         SxlA==
X-Gm-Message-State: AG10YORRkSrDOKcdQg4F3Fkc7Q5sqYndywMbc82IhA4VnCdNXLDE42aeSKKouiOa0yeYVBeSc6I1qU37ReY5XQ==
MIME-Version: 1.0
X-Received: by 10.140.106.181 with SMTP id e50mr43621384qgf.30.1456259874643;
 Tue, 23 Feb 2016 12:37:54 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 12:37:54 -0800 (PST)
In-Reply-To: <CA+5yK5GP=H87SE2nLsn+QZifxwL0aGhTvkGBLEXBC1bFuOndiA@mail.gmail.com>
References: <20160222184544.GA29097@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602232037580.2040@localhost6.localdomain6>
	<CA+5yK5GB29KPi7ScAXNf6m10fNm8vphE2pQGrocSot-Vm+RfEw@mail.gmail.com>
	<alpine.DEB.2.02.1602232050240.2040@localhost6.localdomain6>
	<CA+5yK5GP=H87SE2nLsn+QZifxwL0aGhTvkGBLEXBC1bFuOndiA@mail.gmail.com>
Date: Wed, 24 Feb 2016 02:07:54 +0530
Message-ID: <CA+5yK5FR5jANUfhtpaOJ_Twk8zKMwztWO5ho9LD6hpu7V3La2Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace
 pci_enable_device with pcim_enable_device
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 1:26 AM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> On Wed, Feb 24, 2016 at 1:20 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>> >
>>> I'll write a separate script for the latter, though a lot of people
>>> have submitted patches for this change so there'll be less occurences
>>> I think, nonetheless will write one.
>>>
>>> One of my previous patches that Greg accepted for switching to devm
>>> functions had a similar thing so I thought it was okay. I can divide
>>> the changes into 2 patches and send as a series separately if you
>>> prefer.
>>
>> I think it would be better.  There is no relation to the devm issue.
>>
>> julia
>
I'll resend this patch without the pci_set_drvdata removal and send
the removal in a different series which will be using the semantic
patch I've written to remove these occurrences.

Amitoj

