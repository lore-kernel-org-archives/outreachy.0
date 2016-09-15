X-GM-THRID: 6330205612337528832
X-Received: by 10.28.222.4 with SMTP id v4mr712213wmg.0.1473957979412;
        Thu, 15 Sep 2016 09:46:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.161 with SMTP id e33ls317414lji.10.gmail; Thu, 15 Sep
 2016 09:46:18 -0700 (PDT)
X-Received: by 10.25.141.85 with SMTP id p82mr1707369lfd.10.1473957978816;
        Thu, 15 Sep 2016 09:46:18 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x232.google.com (mail-lf0-x232.google.com. [2a00:1450:4010:c07::232])
        by gmr-mx.google.com with ESMTPS id 82si278664wmg.3.2016.09.15.09.46.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 09:46:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) client-ip=2a00:1450:4010:c07::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x232.google.com with SMTP id l131so42311213lfl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 09:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0IcArKINL9fuqaSzJbU8fK5ItBxCoZiNjuWuV6I+WmY=;
        b=g6ARGavNguPdY0ShcX4FLcIVXX1xjhopZPum06IRrrX2vPEl1VU5hYZquofJd+K3x1
         9qcy5x8KyFYDW7UeR6cVlun4IoywyWAaT4g1fncFC6odiXoeq6XYoZV5RlPT7DNGzpFX
         a++SKqJ6/SntHpX4VVRwvWiJNlWLom5Q+/lcdgsectFXTSbELEJNoeL/xEBMfWVXtKyS
         n2m9DGk6qz5UuaWNiOLyACq1SeH3UkcVMb4VsJ9jqIWH3JyPR6aQB9XgiqS/US68OcHL
         gixBbrdFyEGbMxaYxqNigfe9dz8fCPvT7bW1fF52q5w6C/HWst1yQsxPjnr4h23VZ4G9
         gP7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0IcArKINL9fuqaSzJbU8fK5ItBxCoZiNjuWuV6I+WmY=;
        b=RprNEXezvZl1Sd7l4xWT7nNxT7xD0Jv7OES0XnL0c6rrdAin8vrTZRwPUnahSZmr+l
         LjHo/MWZ9v7z/KsojCoVTw8Kjufm3pgNzuECfMN1ubHaT3Q8D/Mhql7PC7+sREpUlSgS
         rDH3ht04ANj3kuBtnFUBpePs8aS260qNBxYE/46UQ8xi/GgQrHEbE/LvbwYfSDzpB3iz
         U9dFQPAZIbAHor51kyFJArbHXfsX7y4HcKtf1V5NtbIAlJ0QHZwcAOZ4Iz8Z9nv48A4U
         PhiZKUUnuhS7VNi8erVDSM9BoUWYsnB/qf3WYGEOdSqe/axFYMLwxX7K9KtGWVAt6SFf
         Lk7Q==
X-Gm-Message-State: AE9vXwOd0f42tBBVQJY3ZYu3ed1c4Iwp6JiDbFXNHyBfzwD2eWmgPsX2FgsPgQKBeJvKgTKz6YwQibDrHPNnaQ==
X-Received: by 10.46.32.4 with SMTP id g4mr4269328ljg.69.1473957978258; Thu,
 15 Sep 2016 09:46:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Thu, 15 Sep 2016 09:46:17 -0700 (PDT)
In-Reply-To: <57DACFA4.3050207@mev.co.uk>
References: <1473949424-12322-1-git-send-email-bhumirks@gmail.com>
 <39752ed1-573d-dbbb-a670-a5ab9fbf287e@mev.co.uk> <CAOH+1jGH+4vvRYvFXEnRVF+FSK3KwEn-duxFLcqFvUNTNEK_4g@mail.gmail.com>
 <57DACFA4.3050207@mev.co.uk>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Thu, 15 Sep 2016 22:16:17 +0530
Message-ID: <CAOH+1jH7DWRuQDqrhep=p1Ztypak0LEuhOVBfXBcDUoLLKvV2A@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: comedi: drivers: Remove unused functions
To: Ian Abbott <abbotti@mev.co.uk>
Cc: hsweeten@visionengravers.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 15, 2016 at 10:13 PM, Ian Abbott <abbotti@mev.co.uk> wrote:
> On 15/09/2016 16:56, Bhumika Goyal wrote:
>>
>> On Thu, Sep 15, 2016 at 8:57 PM, Ian Abbott <abbotti@mev.co.uk> wrote:
>>>
>>> On 15/09/16 15:23, Bhumika Goyal wrote:
>>>>
>>>>
>>>> The functions s626_get_latch_source, s626_get_load_trig,
>>>> s626_set_clk_pol and  s626_set_index_src are not used anywhere in
>>>> the kernel. Therefore, remove them. The static unused functions were
>>>> detected using Coccinelle but the change was done by hand.
>
> [snip]
>>>
>>> It will be better to get rid of all the #ifdef'ed out functions in one
>>> go,
>>> rather than just few at a time.  Your commit
>>> dda68765d757c7da878b093a87f24d6a1d4cfb64 in February removed a few more
>>> unused functions from this driver.
>>>
>> Ok, I will remove all the #ifdef'ed functions together. But should I
>> send a v3 for that or a new patch?
>> Thanks for the input.
>
>
> I think you can just send it as a new patch, but also mention "s626" in the
> patch subject, something like:
>
> Staging: comedi: s626: Remove unused functions
>
> (We don't usually bother with the "drivers:" tag after the "comedi:" tag.)
>

Ok, point noted. Thanks for explaining.

Thanks,
Bhumika

> Thanks,
> Ian.
>
>
> --
> -=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
> -=(                          Web: http://www.mev.co.uk/  )=-

