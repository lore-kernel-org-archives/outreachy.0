X-GM-THRID: 6206976986922876928
X-Received: by 10.25.156.140 with SMTP id f134mr138756lfe.5.1445178062400;
        Sun, 18 Oct 2015 07:21:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.90.85 with SMTP id o82ls428787lfb.98.gmail; Sun, 18 Oct
 2015 07:21:01 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr5857186lbb.11.1445178061900;
        Sun, 18 Oct 2015 07:21:01 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id o3si390998wiz.1.2015.10.18.07.21.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 07:21:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id ll6so63798459wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 07:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=FtmhBFN3LreadHSofNbZ6LGpzBJpIKUFvd07oaJgmMQ=;
        b=Nqy9AYmoxZ5NufOXIRBqr6XJNDVuItYkp8VZWU6uZbhKtgJ8w4R/8Xpt+igS92r2QL
         zj6cKVPUC7RX2mWb9nMnDoflbrXQsyVkRtlnYa+SbtW/JQnCvp9Wvo79N7VGztsk0PWr
         LyN352TnsPJTdp+I0zU/4QWZ55q9QfdL0icqzKxeIQkVTJEXlBqMN4ChoHpxyty/mhJC
         febyDsQhyTjn5zYiIhsWa+AyOZT/zNAgN4IiOAtwsWuTClwgicim2ndJlkfanZA5O4Sv
         e3maFP+KZhdRr0/nTHOMNFVqoNJlVGWkf4XL6dK84dZEAakJ6WvLRT+prlUa/aGDNw0t
         zhdA==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr30926574wja.87.1445178061798; Sun,
 18 Oct 2015 07:21:01 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sun, 18 Oct 2015 07:21:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510181618100.2614@hadrien>
References: <20151018132030.GA30680@ubuntu>
	<alpine.DEB.2.10.1510181523580.2614@hadrien>
	<CAKHNQQEJLf1LXOZr7KS=BdC8riOXdjg6jgfDMfV8OK2uXvpJww@mail.gmail.com>
	<alpine.DEB.2.10.1510181529260.2614@hadrien>
	<CAKHNQQFtPSq5TRrFrGq4gqOPC_oWxOZqdUsPdSaVp0DVux1OBg@mail.gmail.com>
	<alpine.DEB.2.10.1510181618100.2614@hadrien>
Date: Sun, 18 Oct 2015 19:51:01 +0530
Message-ID: <CAKHNQQEfTNqKRA-5hHmavaOOsUSMRLVHtmCYPTrhqdxeFRDYow@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_osc: Add check
 on a variable
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 7:49 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > I don't follow.  When there was rc < 0, there would also not be a return.
>> > There are three cases: rc < 0, rc = 0, rc > 0.  If you put rc < 0 you will
>> > get a return on rc < 0 only.  And if you put rc you will get a return on
>> > rc < 0 and rc > 0, but rc is never > 0 (you have said - I don't check), so
>> > with rc you will also only get a return when rc < 0.  Putting rc is a bit
>> > more concise.  But putting rc < 0 makes it more clear that what is going
>> > on is an error check.  And I guess it is the code that was there
>> > previously, so it is what the developer preferred,
>> >
>> > julia
>> >
>>
>> What you say is perfectly fine. But, earlier code mentioned 'if (rc)'
>> only [developer version]. I changed that to 'if(rc<0)' along with some
>> other changes that I got wrong. I've been asked to provide a fix up.
>> If you say, I can change it to rc<0. Yes, it would be more precise.
>> I've consulted Arnd about the positive values. It is never going to
>> happen. Please suggest?
>
> OK, thanks for the explanation.  If the code was originally if (rc), it
> would probably be reasonable to leave it as is.  I was thrown off by the
> fact that there was a - on rc < 0 in the proposed patch.  Did Greg apply
> an incorrect one that you now have to fix up?
>
> julia

Yes, that's what exactly happened.

