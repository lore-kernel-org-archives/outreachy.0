X-GM-THRID: 6396655727339896832
X-Received: by 10.129.90.215 with SMTP id o206mr13711923ywb.101.1489339983424;
        Sun, 12 Mar 2017 10:33:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.26.214 with SMTP id 205ls1092382iti.12.gmail; Sun, 12 Mar
 2017 10:33:02 -0700 (PDT)
X-Received: by 10.99.171.15 with SMTP id p15mr13603206pgf.95.1489339982828;
        Sun, 12 Mar 2017 10:33:02 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id n127si780213ita.3.2017.03.12.10.33.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 10:33:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id 68so11388920ioh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 10:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=rAlKpfSTrWVMDNkrhL7kGLrydadX61ve0+QFvdKhNSQ=;
        b=QuQwCb2yVMx8IWvbjsq37atnsl6kBg3vR3gJWlEO3PbjVc7751qlTAgusuGR8o0vwO
         7TRLaaiDxRW1JZOs2Bqd4rquVufU3G0vQIUhZ/ImSAkylaeHZ5i47uK17+/hhot/9k6M
         KGavKeauDSRYm1n3l0zbNSg64LSaZmDrxz2XCP2r5LI+4MG44SfB13RD9/YNKnyIxgeO
         kfBT7pgKaSiDEFWIYWEcfOTziHNSml5lInvLp2ZE/LiW48rSrU7j+7WCC0g2yNE+2RzJ
         7ZItRbN44/BNMvgEpyarLBKshtkeuK8q+9jnqqyoUK7v1Z5FpJCYBCZ/0+9AkdcBCncM
         s6Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=rAlKpfSTrWVMDNkrhL7kGLrydadX61ve0+QFvdKhNSQ=;
        b=r1lF8hs4wIo1RQA79WZKgfHTSFMl2JjC7qm+DTYPdWQKaV/gNssScJP3h0J/gl9MtA
         JqisKtM09nQSH03jgof+J3Ss1cnojCgGKsKzVd2ZLjvmTrUyOgXMf4dt/i05RZZmxHNl
         0KjVss6+fAhNHYLdxH8uwUsnJJwfCEPTO5akqrSjsz9OIcyTaqxSyloeqA/N6mSDSLLZ
         amkeTTuRuVq11sbc1sMjIjcemeZpBmDU9AqbVSaKIlkDy0IHLDCzHk7QisfNxhwEOlKq
         LYRkqdtficVmtlCqwJLD0JmfbKg4JLLa0NX79cB1onEnVQOoN4rKkJr4sYaay4BEea6d
         73/A==
X-Gm-Message-State: AMke39lYYBv8G97XRQ8aOGbN1ROQtNsw3U9oU/HN0ejesqN4wYP3qw7USEFqZeO239d7ZckKq9fF6g4Q/FXyMw==
X-Received: by 10.107.27.207 with SMTP id b198mr23513880iob.218.1489339982552;
 Sun, 12 Mar 2017 10:33:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sun, 12 Mar 2017 10:32:32 -0700 (PDT)
In-Reply-To: <20170312172956.GB3711@d830.WORKGROUP>
References: <CAOCi2DHxiahL=K9y6PzytK9wok7nDbOCW6ir4hy9g3ii9oyWxg@mail.gmail.com>
 <20170312171954.GA3711@d830.WORKGROUP> <CAOCi2DF5e4sDAs7q5TVDvC8KdVDBOTSNYimEXZ+MmMfVK_5iZw@mail.gmail.com>
 <20170312172956.GB3711@d830.WORKGROUP>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 12 Mar 2017 23:02:32 +0530
Message-ID: <CAOCi2DHqbJ07z+sDrQT81g3r1i5yrFetBgw+XPP_U1dp7E92mg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] Gargi Sharma
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 10:59 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Sun, Mar 12, 2017 at 10:53:29PM +0530, Gargi Sharma wrote:
>> On Sun, Mar 12, 2017 at 10:49 PM, Alison Schofield <amsfield22@gmail.com> wrote:
>> > On Sun, Mar 12, 2017 at 10:20:39PM +0530, Gargi Sharma wrote:
>> >> Hi,
>> >>
>> >> Please grant edit priveleges.
>> >>
>> >> Thanks!
>> >> Gargi
>> >
>> > Is that "Gargi Sharma" or "GargiSharma" ?
>>
>> Gargi Sharma, I'm assuming the user name is the same as login name.
>>
>> Thanks!
>> Gargi
>
> Try it now.

I can edit now. Thank you!

Gargi
>
>
>> >
>> >>
>> >> --

