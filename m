X-GM-THRID: 6255614868842348544
X-Received: by 10.140.154.143 with SMTP id a137mr4387675qha.11.1456559366212;
        Fri, 26 Feb 2016 23:49:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.203 with SMTP id b69ls1652497qge.5.gmail; Fri, 26 Feb
 2016 23:49:25 -0800 (PST)
X-Received: by 10.140.40.239 with SMTP id x102mr21293599qgx.23.1456559365365;
        Fri, 26 Feb 2016 23:49:25 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id y131si1039623ywc.0.2016.02.26.23.49.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 23:49:25 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id y89so82333509qge.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 23:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=4I2z92UJOc7/fDzmVXI2l2WwvxgrqLOUuC9W09kGWG4=;
        b=kuA9NhOrFfW1XHzgX0Dx9HPUsaW5C76/n52OjRI3fYDO54wYGcTSXz2+w0evQ/FDCI
         /grMXg+MldBsey1sLEko9Gvh+uNwGHKCUboditQ6R28s2e0xm7bRCQDqtH42Z8CTIOVl
         z12gNN7UzdoutSg+TqHYbV3XUZwJRDMeTNdRn8wkJXJGcR5abHC2V7r1TkX4q2IqEOPL
         vuAjrIbJHwffxuMAweA1HH4KzMCz8YJ5w0LBltld0+EkZ4aRqBDUvTQlIR8S12drzgvR
         BB092YaVnoX4xi81R0nfAQVcoq51UxQtmhLD5qomIjo644mREnDtGKD8YDTx1DmXUUE6
         lB2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=4I2z92UJOc7/fDzmVXI2l2WwvxgrqLOUuC9W09kGWG4=;
        b=Zd2q5EOm6zrqwFNl0Uor1ZhVJhO530MILCw+eAvGTEI9kPRAmgAnqllM8OqeWBzUrH
         7tVlxn81wqbOqrOSLll7amXPO5UtSBHmZMsdEy+oQU9MShnh24sHfPVz1xDGY8w02ul3
         tHpPwf0sJFvS8KP5GlwCzLP/aoPtO8LZMfJI9dfuEoHRnoug0w1Fkgl4TjT+aBiMn+/s
         bB+eZ5Mg+KaeL6qkBcD3jw6XJ4TuXDRHZFerktgBAvdxXDTyL3sIiEV8JOLB9VDs2WRq
         +PVOi2zabYPKmucANI2BxsjNLnBfkxUX/3lozRQ0dzR7vPZzOfll0XVBMRpkVG7T4YNq
         u1Qw==
X-Gm-Message-State: AD7BkJKcspVgLYEY6u3Hc/LRSjpQvj9FTS3x3brIAorzGKj4OHL91SEGuSIPN4Fy20i2eDPdMJxWmVPAd4Gk3Q==
MIME-Version: 1.0
X-Received: by 10.140.106.181 with SMTP id e50mr6884112qgf.30.1456559365160;
 Fri, 26 Feb 2016 23:49:25 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Fri, 26 Feb 2016 23:49:25 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602262242360.2055@localhost6.localdomain6>
References: <20160226150029.GA32277@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602262242360.2055@localhost6.localdomain6>
Date: Sat, 27 Feb 2016 13:19:25 +0530
Message-ID: <CA+5yK5GYr6PE1LkkE_pqgM4-_3FfTpbDDg3kEFMWsieF4Ap2Qw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Replace
 kzalloc with devm_kzalloc
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 27, 2016 at 3:15 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> Replace data allocated by kzalloc to managed data allocated by
>> devm_kzalloc. Remove unnecessary kzfree.
>
> Actually, this doesn't preserve the semantics.  kzfree does more than just
> free.  It also zeroes the data first.  This could be useful if the data is
> sensitive in some way.  On the other hand, I don't recall ever seeing a
> kzfree in a platform driver probe function.
>
Yes, after reading this, I wrote a semantic patch to find if there are
in fact any cases where kzfree is used with the platform driver probe
function in any of the drivers and the only result was this case.

> Unfortunately, from the git logs, I don't have the impression that anyone
> is really taking responsability for this driver either, so I'm not sure
> who you could ask for more information.
>
> julia

Oh okay, this patch will probably be dropped then.

Amitoj

