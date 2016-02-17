X-GM-THRID: 6252116177284235264
X-Received: by 10.98.1.85 with SMTP id 82mr1310201pfb.1.1455714782319;
        Wed, 17 Feb 2016 05:13:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.164 with SMTP id u33ls4012114qge.82.gmail; Wed, 17 Feb
 2016 05:13:01 -0800 (PST)
X-Received: by 10.31.165.1 with SMTP id o1mr1307054vke.12.1455714781644;
        Wed, 17 Feb 2016 05:13:01 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x229.google.com (mail-qk0-x229.google.com. [2607:f8b0:400d:c09::229])
        by gmr-mx.google.com with ESMTPS id v197si62031ywa.1.2016.02.17.05.13.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 05:13:01 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) client-ip=2607:f8b0:400d:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x229.google.com with SMTP id s68so5425427qkh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 05:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=jqRjys8KuQxONREbBLeFu7xngOnd8TmUwxPVH7E8J6w=;
        b=x+bUKsdYJ/F8cHUoMeq37iwjKvFPvFOJBDHnpq5lVbXcrESetNJE2A65C4myB6zElM
         Gmz7U5kdLmFpJSGHuOyRPH2aiYM6DzLg7OcaVOioo5ggse98dMrc5h2LqNI2Q5LLmXGW
         hYxDYWFm24ni7U9LCZdfQz8HsrZjoLDqvCBpMGhjVzQpCJFaKl6RQ4Vp4GPnuMsVVPHl
         rwDOzVLRD0nHo155jqdR0f3XwFSCccQO7P0pDSurSQkAsnO9b1QN0GfM5UV0WAhfA7eL
         P4CXP8HxQM28/RzazgrDiteRTd5CSSz4GTmy0oQb1iZnySyoHY4m8l/87uG2v3WVYMeO
         HSkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=jqRjys8KuQxONREbBLeFu7xngOnd8TmUwxPVH7E8J6w=;
        b=Vm8u1uMt0yTDtv1G5gzK8MN4pu4dltlegzPKhY7gDJhICGkwdStJQFt/n1YhwrDb7N
         XeIp3hVD4k+IzA+M1H3va1DOExOhM4cghv6LaYiVlnRlPdp49RC3u8hXLZtPYDkZLBJR
         XKWku+Mim+4WEmagUIjxAfnOH18b0LJ4oCpBONOMsJrjclmjqiprEOiKvarvtoRlBFhl
         W3WgSrduVOFZ7l53KTAP6mjyizVpIKw57j5KYBKTOZBsLOXHVfbnlQQ55/XDuKBf7P/w
         ZRuCy0VULe0o4CCv86GHgrPGUGo+CRqmZHJduByBCLokKUbvKZG9Fb6tKdULjQvy9V3i
         ipMA==
X-Gm-Message-State: AG10YOR0dbSRYi9ujwxVsfoxx8TOgTYu//RhSU2gpuO+1325zl7SfPwrdpy8SgQ/crw1d5nnQEND7iFk771/cA==
MIME-Version: 1.0
X-Received: by 10.55.74.141 with SMTP id x135mr1752948qka.20.1455714781490;
 Wed, 17 Feb 2016 05:13:01 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 17 Feb 2016 05:13:01 -0800 (PST)
In-Reply-To: <2870007.s5VBRruket@wuerfel>
References: <20160217124204.GA30394@amitoj-Inspiron-3542>
	<2870007.s5VBRruket@wuerfel>
Date: Wed, 17 Feb 2016 18:43:01 +0530
Message-ID: <CA+5yK5GyQ_zqLEVvVLh1YDT2w9Xp6VukA=Bu_CT+conNojXvJQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wilc1000: Return correct
 error codes
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 17, 2016 at 6:27 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>
> I would use whatever return code that register_netdev() returns here.
>
>         Arnd

I can change it to that although I wrote the following script after
your comment to find the general pattern in the kernel:
@@
@@

if (register_netdev(...)) {
...
* return ...;
}

and most of the cases, there are quite some results in drivers/net/
return -ENODEV in the same scenario.

Would you still prefer to return the code that register_netdev() returns?

Amitoj

