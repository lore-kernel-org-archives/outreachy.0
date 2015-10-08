X-GM-THRID: 6202253257836855296
X-Received: by 10.31.154.19 with SMTP id c19mr3890645vke.13.1444272792110;
        Wed, 07 Oct 2015 19:53:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.113.129 with SMTP id iy1ls311454obb.97.gmail; Wed, 07 Oct
 2015 19:53:10 -0700 (PDT)
X-Received: by 10.182.196.71 with SMTP id ik7mr4070722obc.36.1444272790806;
        Wed, 07 Oct 2015 19:53:10 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id y11si646301ywd.7.2015.10.07.19.53.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 19:53:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id z77so31695372qge.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 19:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=88/E1oPJlYhQwfEQQUfYDkCrIUQqyleV4KnNYJWtYy8=;
        b=CJywXVbpOQsSlPNTKkpzax85O27kRLk57kOyt0JbsxfvEwsj2dEJiM0ydKrmOf+Fdu
         Q7D3NuqdxbwF055qiexERHcv9Rfjv3zUFzgB/BvgLUE8VaSt9OXBzkA0rmyqNBKAFRNk
         6+54mJDq8eh8cRqsFGU/UK38XwTVBvC5tbCvlA3tQjZIeOHRbwwzCv3fyUO+l3iQn8ci
         5Z6CrMjSx4ocvOM2gVDUKtrdfQsUaN4RMH3RWWfHPXpI9nxeL+/+oVI7IzXCCCzbnxsq
         CHoVWuS/fKz8+zUfKkaBOlyQY1/z1NRPMUWMshzBoN5mxaJrwGB+WrmVq8m95uybb65+
         Zl2Q==
MIME-Version: 1.0
X-Received: by 10.140.128.81 with SMTP id 78mr5852790qha.62.1444272790605;
 Wed, 07 Oct 2015 19:53:10 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Wed, 7 Oct 2015 19:53:10 -0700 (PDT)
In-Reply-To: <6335208.lbv5QB1mEN@wuerfel>
References: <20151005195012.GA21881@amitoj-Inspiron-3542>
	<CA+5yK5Hh=0vgxfVb1WzXiy4w6z9GG9mJEHC21Bsvd9zdGzCJMw@mail.gmail.com>
	<alpine.DEB.2.10.1510060812440.2553@hadrien>
	<6335208.lbv5QB1mEN@wuerfel>
Date: Thu, 8 Oct 2015 08:23:10 +0530
Message-ID: <CA+5yK5GTb7o0GzUNHEwq-7nFLKXSht31kvHLvxG31WiTC4EEHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is
 preferred over udelay
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 6, 2015 at 1:15 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> It really depends on what the driver is trying to do. In this case, it
> waits for a device register to signal 'done', and it tries this five times
> for a maximum of 50 microseconds, which is a relatively short period.
>
> Changing the maximum to 1000 means that it can now sleep for up to
> 5 milliseconds instead, which is a noticeable time, especially if
> it gets called frequently.
>
> The questions to answer here are:
>
> * Is it safe to call a sleeping function from this point at all?
>   Look for other sleeping functions (proves that it is allowed to
>   sleep) and for spinlocks (if a lock is held, you may not sleep)
>   in this function.
>

There aren't any other sleeping functions in this function. However,
udelay() has been used one more time in a loop.

> * How often do you expect the function to get called? Once per data
>   packet means it's not ok to sleep long, once an hour would mean it's
>   clearly ok.
>
> * Are there other calls in this function that take longer than a
>   millisecond?

How can I find out these 2 things? Only udelay() is the sleeping function.

-- 


Amitoj

