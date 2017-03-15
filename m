X-GM-THRID: 6396716918154199040
X-Received: by 10.99.159.1 with SMTP id g1mr2329544pge.136.1489601744046;
        Wed, 15 Mar 2017 11:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.119 with SMTP id a110ls3039512otc.29.gmail; Wed, 15 Mar
 2017 11:15:43 -0700 (PDT)
X-Received: by 10.157.10.56 with SMTP id 53mr2080372otg.120.1489601743429;
        Wed, 15 Mar 2017 11:15:43 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id a17si863619itd.1.2017.03.15.11.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 11:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id u69so3900589ita.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 11:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=n24mxjvDOWZiBQ6UHFZdrzzZr9KQNXHEbTveCaTk85g=;
        b=Rp6IUXwhDyC+Uj9jwQAPf88h/Yz5g0NHnsnxq2Vm/KkO6GjcPECDH+SNFTOwHjqHbm
         mwXC/ia0p7J0Gqvd1n4jVD90eAgmZkobCst6/mgapVhfOYE4lGJIM7w16es+6eWMA+2P
         O+DFuy9YF/VFWvVD2mCKmT++3tCNXWkgfA8rYX6GvU6wJtMnJFPUbwlgmD+uw0AJnShI
         ktMmNIql8pl2sjV4muAmcrBkxuljmhUdPNjZ9HebLrHMLAGE/hXqGzUAEuLPUWUY/kjs
         OUHk4jY53Ciw5yeMl79MHoG8iidVeLonj5bRoJzKv+BX0HV3Ngp2ComTcCRCQXhNRx+n
         9DQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=n24mxjvDOWZiBQ6UHFZdrzzZr9KQNXHEbTveCaTk85g=;
        b=rRxw11UdXFO0iwsGGw9CwkKQi6+V8FifHBELtX0LE/JHfDgfYWI3M9GOdK4Jl4GlLt
         Y1XuEVOAnkJ18gE53tWrE6i/z9eOn0LmjZonfp+37nN/YdC+gfPM/HVT58IbDorbuWPY
         Hefx3pJzTvw5JhKWBUMgca8I0KHsbyPHGhYVehkWcHJyBVhQTpgYM6RSUi1Bk2kFMkgv
         oZVFyaYvu5u6jdA4wqw3aAUnpFh6Z1m4BUoAJVNVnAES04Ca9LgqQgUkphzlR58uWhxZ
         VcnYBJaJPV8BmIrabZTm8C6jjxRmonnHtE/KWXuyVJrO7cjRD15Gt3hGLFGibGUXwV0h
         2ZUA==
X-Gm-Message-State: AFeK/H1K+m8N/GSfhKoQunTyjL0DQvbArFEnJXJVAUL6Hf5dH/f8wP1j30Un+d6G9f1elbFEPjT+0+yl05j7fg==
X-Received: by 10.36.17.7 with SMTP id 7mr6691545itf.113.1489601741722; Wed,
 15 Mar 2017 11:15:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Wed, 15 Mar 2017 11:15:11 -0700 (PDT)
In-Reply-To: <38289FBC-9E24-4AC0-ADB2-58DB34DD208F@jic23.retrosnub.co.uk>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1703122154130.7649@hadrien> <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
 <alpine.DEB.2.20.1703122235320.7649@hadrien> <20170312221350.GA14070@d830.WORKGROUP>
 <CAOCi2DEyu6_bBjsrSFzf0VcXcUnZ3LugLf==R9zsSmj+1JdFKw@mail.gmail.com>
 <35231dfd-af42-bbd3-3be6-4e03a728a92f@kernel.org> <73d214e0-46d0-0d4a-27e1-7c85cf3c05ed@metafoo.de>
 <CAOCi2DEecT6tdxmz7_9Q5aWC7_+VZCKD1+Vwe9F5gA9jAuQ2=A@mail.gmail.com> <38289FBC-9E24-4AC0-ADB2-58DB34DD208F@jic23.retrosnub.co.uk>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 15 Mar 2017 23:45:11 +0530
Message-ID: <CAOCi2DFy8ve7dy0WDDqDQkE0fgJs9YWe6Ai2XspO7+dJ20rHfA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
To: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
	Alison Schofield <amsfield22@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel@googlegroups.com, Michael.Hennerich@analog.com, 
	knaack.h@gmx.de, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 15, 2017 at 4:14 AM, Jonathan Cameron
<jic23@jic23.retrosnub.co.uk> wrote:
>
>
> On 14 March 2017 17:36:16 GMT+00:00, Gargi Sharma <gs051095@gmail.com> wrote:
>>On Tue, Mar 14, 2017 at 2:24 AM, Lars-Peter Clausen <lars@metafoo.de>
>>wrote:
>>> On 03/13/2017 09:51 PM, Jonathan Cameron wrote:
>>> [...]
>>>>>> Gargi,
>>>>>>
>>>>>> Please insert the new lock above the __cacheline_aligned struct
>>>>>> member.
>>>>>
>>>>> I will do that, but is there any reason why the lock should be
>>above
>>>>> ____cacheline_aligned struct member?
>>>> Yes.  It's in fact very important that nothing comes after that.
>>>>
>>>> Will leave the why as an exercise for the reader.   I'll give the
>>>> hit of spi drivers that do DMA...
>>>
>>>
>>> One hint though, the answer is somewhere in Documentation/DMA-API.txt
>>
> >From what I have understood is that cacheline is used for keeping most
>>frequently accessed values in adjacent cachelines.
>
> Why? What does cache line actually mean?
>
>> We want the
>>cacheline_aligned at the end in the struct definition so as to avoid
>>any holes after the cacheline boundary.
>
> Nope.  Try
> http://www.pebblebay.com/a-guide-to-using-direct-memory-access-in-embedded-systems-part-two/
>
> (Hint, search for 'shares')

Okay, I got two things from the article:
1. Hardware that uses DMA reads faster if the data is aligned at
16/32/64B boundaries.
2. You want to align buffer being accessed for DMa transfers to
prevent cache incoherence.

What I still don't understand is why nothing should come after
__cacheline_aligned struct member?

Thanks,
Gargi
>
>>>
>>--
>>To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>>the body of a message to majordomo@vger.kernel.org
>>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.

