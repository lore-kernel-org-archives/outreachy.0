X-GM-THRID: 6211884889777635328
X-Received: by 10.112.12.131 with SMTP id y3mr7408lbb.5.1446319672272;
        Sat, 31 Oct 2015 12:27:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.140.10 with SMTP id o10ls313709wmd.24.gmail; Sat, 31 Oct
 2015 12:27:51 -0700 (PDT)
X-Received: by 10.28.19.148 with SMTP id 142mr843128wmt.4.1446319671321;
        Sat, 31 Oct 2015 12:27:51 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id l1si257944wmb.1.2015.10.31.12.27.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 12:27:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicll6 with SMTP id ll6so28750831wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 12:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=4/dr6QqN6QfIcVY71v2Xt2czSwDqvKyJ6uZ8pDjw+qI=;
        b=WhcZ/IFAi1GyQNWunUHboLuDykqk+XEY/T314IdOfT0iEoolrCaRTT1VeAqaXG7pZb
         2wRS+njY2hP7A+0lIUBQM7dRofhlrCYmcX5bFgNyctvGmgRaBbTGI8T2f6It7LTgrc13
         NHhCTZU+h6ZDJCsegsi7OHp34bS8J3BY/odB3OI94rO1dyJ+ILB2EVLcx8ityvJsHykU
         8aD3vl6sqg99RO7Z5mhRG8hEJ4eIiPRqiFT2X92WV78zezj1mn5X0Fwn7i2G6b7u3nfl
         EGoCzFpNU8xBmzV0NAHnr174PZt7qArRqWYXuTkpDpg6sZRZPhr6qlOEqdtBBgrqkoOC
         tOJQ==
MIME-Version: 1.0
X-Received: by 10.195.13.199 with SMTP id fa7mr1867322wjd.119.1446319671185;
 Sat, 31 Oct 2015 12:27:51 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sat, 31 Oct 2015 12:27:51 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510312013340.2194@localhost6.localdomain6>
References: <20151031184544.GA27064@ubuntu>
	<20151031185300.GA8949@kroah.com>
	<CAKHNQQEyJD+j+yNOGtsfZnTkjFcUBNxcAHsTjM=bJWqmb81hOQ@mail.gmail.com>
	<alpine.DEB.2.02.1510312007450.2194@localhost6.localdomain6>
	<CAKHNQQHALdjf7KpZ7keNf2+4wXXfCVmabGZj-zB-b+=uorKOtw@mail.gmail.com>
	<alpine.DEB.2.02.1510312013340.2194@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 00:57:51 +0530
Message-ID: <CAKHNQQEoZZvtrLb_K+YVD1dfkoUn2tmPtQughnHf_2mPbYDdKg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: interval_tree:
 Convert inline function to macro
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 12:45 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> Inline functons have types, which help you find bugs.
>>
>> Inline functions don't risk duplicating computations.  In your macro,
>> if
>> eg x is the larger value, then whatever x is replaced by will be
>> evaluated
>> twice.  Consider what would happen if x is eg i++.
>>
>> Yes, Julia. I took into consideration this case  and I checked out the
>> entire code where the function was called, there was no situation like this.
>> Plus, I had read that inline functions are compiler dependent so I thought
>> of making the change.
>> Thank you for explaining. :)
>
> OK.  Still, someone else could extend the code in some way and want to use
> what looks like a function, and use is in a bad way.
>
> Anyway, the best is always to find a standard kernel function that does
> the same thing.  There are lots of them for these kind of numerical
> things.
>
> Also, you should set up your mailer so that it marks what you are replying
> to in some way.  In the above, one can't see the difference between what I
> wrote and what you wrote.
>
> julia

Is it OK now?

