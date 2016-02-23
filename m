X-GM-THRID: 6254491784398766080
X-Received: by 10.182.46.201 with SMTP id x9mr33297329obm.43.1456255669463;
        Tue, 23 Feb 2016 11:27:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.139 with SMTP id c11ls2165113qgd.84.gmail; Tue, 23 Feb
 2016 11:27:49 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr33301330vke.6.1456255669044;
        Tue, 23 Feb 2016 11:27:49 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22a.google.com (mail-qk0-x22a.google.com. [2607:f8b0:400d:c09::22a])
        by gmr-mx.google.com with ESMTPS id v197si1810645ywa.1.2016.02.23.11.27.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:27:49 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) client-ip=2607:f8b0:400d:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22a.google.com with SMTP id s5so72189364qkd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KyMTt2NuAc+XJh5U67VzdjTDrHNrod2G+IOjm41Hd68=;
        b=iZ221KtCKv/M83utb17SvG+10DELI1vXWJkcJaenlHOcC5y5aaMg0b8OxkZuN36Pv2
         A29gpw21GDSlyHnkJfOx2vjJSl//G6eMbYfbdFNaVd98cuu7+IHdYzteTHSpTZEIegql
         60ewEJpu0mH6DjbWN8iUTJO9tgkpJX/x8ql9Dr5m5XJIVAuT9gVMxva4/+DuyAtD9xfU
         vWwR9UpRq6F80bAcIUv6uHoZVbfXcAcmoIAb4NsRlWgSmYfRab0GdpX9NQuGn7QZ2PX8
         GhxzeGh2xt2tZk3g6NAnJxpmGXeJKgBH7hRph4zsUut1G6uqMUhriD57lCPG3ECappqb
         Sqhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=KyMTt2NuAc+XJh5U67VzdjTDrHNrod2G+IOjm41Hd68=;
        b=ZFhbuXlJynHDdTp7MtQyramUfWk0ZFimtEdCGkpMdStnULmEJtruOUwtvwUtdp97gz
         9+yaPEfqPtGT5iWCJA3Czlo43XujFrJYy+bqFePK4OLkdc0FtZRTay3Hzi4YJSMv1rYp
         aW4YRkctA8A/d4VhQPxCl6B3Cri3OrXsFQoGop3J+0aK+3LFc2QAjtRb7U0ZbHGfhUKx
         TnV5zjOY+kza8vBunf4bc1gkmzljAvGN1Y6QqdB4PZhf0Vk0s89XKmtk6iox6bZTIiZ7
         xThuMtCxkLqLbTpcO9P6HQ13MfRXy8G63jw762Obhtv4r1LHJDJWhNXfiHMVs5xWXUB6
         6VKQ==
X-Gm-Message-State: AG10YOQT2LW56bMNppIWqm9I89lZ5PUpnpwQvFZ4sUri5nm+nxwwDM65ESqWFpLWJ0TClydHxUFfD+hHA22VZw==
MIME-Version: 1.0
X-Received: by 10.55.19.170 with SMTP id 42mr29544963qkt.21.1456255668808;
 Tue, 23 Feb 2016 11:27:48 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 11:27:48 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602232025290.2040@localhost6.localdomain6>
References: <cover.1456236436.git.amitoj1606@gmail.com>
	<ab41303260243d22196ab846c092faac61ae6bf4.1456236436.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1602232025290.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 00:57:48 +0530
Message-ID: <CA+5yK5FP48M9dEzxxwvoh=zVBMRLUNo3kshHCt5VqvWX4fijFg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: lustre: libcfs: Use
 swap() in cfs_hash_bd_order()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 12:55 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> +             swap(*bd1, *bd2); /* swab bd1 and bd2 */
>
> I think it would be reasonable to fix the spelling mistake in the comment
> as well.
>
> julia

Oops. Didn't notice that :)
I'll send v3.

Amitoj

