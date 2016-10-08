X-GM-THRID: 6338894673462951936
X-Received: by 10.107.134.82 with SMTP id i79mr5791230iod.40.1475906842528;
        Fri, 07 Oct 2016 23:07:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.230.3 with SMTP id e3ls1898270ith.7.gmail; Fri, 07 Oct 2016
 23:07:18 -0700 (PDT)
X-Received: by 10.107.135.28 with SMTP id j28mr5819546iod.56.1475906838179;
        Fri, 07 Oct 2016 23:07:18 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x243.google.com (mail-yb0-x243.google.com. [2607:f8b0:4002:c09::243])
        by gmr-mx.google.com with ESMTPS id h139si718375ywc.3.2016.10.07.23.07.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 23:07:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::243 as permitted sender) client-ip=2607:f8b0:4002:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x243.google.com with SMTP id 191so1366118ybv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 23:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=GZvm2Z5HJtabxsyZ/bpts+YXgSA7F8v3Q16+2ed4XKU=;
        b=lLfFbj4Ofm0KcwcjIqd3+CCocAEV4WLO22IhH/tcfe7u0hoBN23sT0VHVPdBDcGLJB
         0wqnYZjnFKp/mRg/lgEHvtAY3670s1Xmu9BHOlNLU0wLkqHXldorlceIc13r9bRSIONh
         sqVC3oLUyt8yY1gBgrM3iTiu/CJmTYHiHudxpOM/twE1Ub1rQeZc6RW4Nazv8j7JqZ9O
         FIIislGXzc6m+bP+76e04YIoBvnZdFhVR1K78itz2S1c/O8z3nTm2QCVlWCMrQDOK3ts
         WAwfTBc9eizumitFpjMQkWXqiyyMSJbIjjlbtsd34XP4BJl7KRdr2O97hQx7ldRfuPCw
         cOFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GZvm2Z5HJtabxsyZ/bpts+YXgSA7F8v3Q16+2ed4XKU=;
        b=Evru7xflLLx6gZiEQjdF6j02fZ+bTPhAemp4w9n4ol/N0DzUz3Fv6lbWSLqnlpA4/t
         vBxbTApvrkApbLC+rMPuMcSOYITr1fubKduXvI5F+ja3ZcCqMGBXFB2V/R2IZGwNVceB
         yfa6SshlpNZaHlmjkwWQIqQdGe3C/EI7q5p04yJYIlowprSNHQkbm+tRDUW1lJxV8FeA
         oC+MAR1hS/V3rzlv7U20amMaFADQjM53QaJ/ICn6kSWAOrmlvezAOzSl3M8NWCEZeW6z
         ztjmJ5GKx+wV0zk4zfFjdqShDLxx8ZKWU7HcUE78glbjgsvxDGngfvdZzUsTzNHAgbNw
         3iZA==
X-Gm-Message-State: AA6/9Rk+zMJOGiXfxpEWX9AdLW4XlO9tWcd4X0zytzccZk+8Kict1EndHtlIbeTSRkvYsZOoK4GTrhs5j0BIJA==
X-Received: by 10.37.123.68 with SMTP id w65mr18360465ybc.116.1475906837949;
 Fri, 07 Oct 2016 23:07:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Fri, 7 Oct 2016 23:06:37 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1610080718280.3176@hadrien>
References: <CAB__kkmMzZRg=p1zyKpUquS30cfQ7bwJUn5vo==nDqTUadyZFA@mail.gmail.com>
 <alpine.DEB.2.10.1610080718280.3176@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sat, 8 Oct 2016 11:36:37 +0530
Message-ID: <CAKG5xWhS7_wbDbZ73yt4rJppAPhafrE9=MjAzV32ivBqnqGd2A@mail.gmail.com>
Subject: Re: [Outreachy kernel] 'Hobbyist' pass available for Linux Plumbers
 Conference, 2016
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Tina Ruchandani <ruchandani.tina@gmail.com>, outreachy-alums@gnome.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 8, 2016 at 10:49 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 7 Oct 2016, Tina Ruchandani wrote:
>
>> Hello fellow Outreachy folks,I have a hobbyist registration pass for Linux
>> Plumbers Conference in Santa Fe, New Mexico, this year (Nov 1st-4th).
>> Unfortunately, I am not able to make it there due to visa issues. If any of
>> you fellow OPW folks are interested in attending, I will be happy to
>> transfer my registration. The requirement for the hobbyist pass is that you
>> cannot be employed in a Linux-based role in industry.
>
> I highly recommend this conference for anyone interested in the details of
> Linux kernel development.
>
> julia
>

Hello,

I was just viewing the schedule and events for LPC, 2016. I am very
much interested in attending it. Could you let me know of other
details regarding the conference?

thanks a lot,
sayli

>
>> Thanks,
>> Tina
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAB__kkmMzZRg%3Dp1zyKpUq
>> uS30cfQ7bwJUn5vo%3D%3DnDqTUadyZFA%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>>

