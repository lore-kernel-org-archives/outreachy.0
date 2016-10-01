X-GM-THRID: 6336227865604915200
X-Received: by 10.31.151.199 with SMTP id z190mr2897135vkd.14.1475306650904;
        Sat, 01 Oct 2016 00:24:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls7268154otj.21.gmail; Sat, 01 Oct
 2016 00:24:10 -0700 (PDT)
X-Received: by 10.13.221.133 with SMTP id g127mr3060527ywe.173.1475306650568;
        Sat, 01 Oct 2016 00:24:10 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x22c.google.com (mail-yb0-x22c.google.com. [2607:f8b0:4002:c09::22c])
        by gmr-mx.google.com with ESMTPS id m82si1121524ywm.2.2016.10.01.00.24.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 00:24:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::22c as permitted sender) client-ip=2607:f8b0:4002:c09::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::22c as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x22c.google.com with SMTP id e2so35460024ybi.1
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 00:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=klPEnZSphAlCgUYgQ6KupGG7oA66XM8QGN9YEB2spn0=;
        b=pEsRykWxqFlSbKNL8jHLzTw9qjW6o7qfHxdhnwOn48NhGRHaeiCUrF8zuXstemUmgF
         X6QapkBh4Vwz9V8hUS0LxMBJdaqqw8wTJoRoDs/cu18+Syc+/669JS/J1NHX8rqScL/N
         xwbyFLXrityXiq12QLTgAkBgw0gRj4lAR+Yl6086tLXmY/UVWkugYyKYH+Zr54ANVWDx
         mQWcvbvKBdtjWiSHxqzV6lp28A3APgY2AqmFnvkQ35tZ/sopxXjtQZjax3XsKyPd967K
         SoA0ConHw7hcodqQwp4ukN9WJBr28xcU301zX62cGJQ8adV/4DSMPZ8HWIB6n52366v6
         GxIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=klPEnZSphAlCgUYgQ6KupGG7oA66XM8QGN9YEB2spn0=;
        b=PFqRBxR25h3iGYHGs6E/Wl+kUoW0XvDi7Mm82moewzo4EbDB3IlVfV72m4HQsA/wU8
         y4ewtXjgdbO39ap9D9E1lXxQp3sz9IoOvmTgS6haPTP7c4Yiy8FxARqD5ZQFzp5BtLBE
         9EC3AxMKZcM2ABtNmDUabBUEMLJw6WctUYDxz5PD3C0yFmK0PVamQNROqt6oqlEKX54E
         vgKyv/IZFR0EbUacqtv2qguA2NrmcGZsHhFKQsxodv2j8FJfp4z3/jzEuHTDIUlx/6oV
         r/P8pQF6dyyGCpXP5/7+LYWoL53s4kQeoZ+z0SyYaXBcsHy7hmX6pbVL8AsZJOPH88j+
         KSXw==
X-Gm-Message-State: AA6/9Rkw7msGzRSHFPd0itQ7foifjdlHjgzwTEWEsiCdGe4kjb/F4mrYI7vt7cgcHNqupT5fBQ+YqfFg0RxY6g==
X-Received: by 10.37.123.68 with SMTP id w65mr7534347ybc.116.1475306650377;
 Sat, 01 Oct 2016 00:24:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Sat, 1 Oct 2016 00:23:30 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609302238110.3399@hadrien>
References: <alpine.DEB.2.10.1609302238110.3399@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sat, 1 Oct 2016 12:53:30 +0530
Message-ID: <CAKG5xWhx-4kH7z0xF4h0UKbrLyH2FzAAZ4c+HQNvLb3EihXMhQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] outreachy
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 1, 2016 at 2:10 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> Hello,
>
> We are around the halfway mark of the application period.
>
> So that I can get an overview of the current interests of the applicants,
> could you send me a list of your current first and second project choices?
> It's OK to change your mind later, but I would like to know what everyone
> is thinking about now.
>
Hello Julia,

These are my first two choices although I haven't completely
eliminated the other projects:
1. IIO driver
2. nftables

thanks,
sayli

> Please do this even if you don't yet have many accepted patches.
>
> thanks,
> julia

