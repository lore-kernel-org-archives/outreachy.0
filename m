X-GM-THRID: 6396716918154199040
X-Received: by 10.99.152.85 with SMTP id l21mr17556513pgo.66.1489513007833;
        Tue, 14 Mar 2017 10:36:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls118911otf.39.gmail; Tue, 14 Mar
 2017 10:36:47 -0700 (PDT)
X-Received: by 10.31.162.150 with SMTP id l144mr1568396vke.42.1489513007352;
        Tue, 14 Mar 2017 10:36:47 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x230.google.com (mail-io0-x230.google.com. [2607:f8b0:4001:c06::230])
        by gmr-mx.google.com with ESMTPS id e196si58926itc.2.2017.03.14.10.36.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 10:36:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) client-ip=2607:f8b0:4001:c06::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x230.google.com with SMTP id l7so4194092ioe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 10:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=k32tChXL82I43p17LPrE7lHpG6mxwMTDBMFx5WPcOJc=;
        b=rQ95re6wUyZchzCddrTDbZEQNMOwVAYOyVdqX4vz+6zQt2G1xpqFcXaw9vSF+roeE0
         Mz0o32zzKTtp4WBZytwwZpo7liDszNmsA3PecERfD1jndCA9HyD6C901BQthBZOg8DnK
         7oOYQc630mz08Q7IeueDofr08xh8h39OUtNl6ceQjO1SNhZqVt1WWR9cBG3TkoCXGqp4
         ZreZ3ycxWzvFYJsLbDKWQ6NdgZlVWIKiFiMk4mYHg7HI+24ivhSxOGPuRj+lTV8Bp11L
         zuMtJJ2zs7RnHYEVYdhs3ZcTFXBx+Kv/MoXd61/Ju8eQ/wh/1/au+vS7BJVYA1Td9Q1k
         fIKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=k32tChXL82I43p17LPrE7lHpG6mxwMTDBMFx5WPcOJc=;
        b=hqPeDuJSrkPSWedJKR920GOUg/RQVPREIujn3TjycoAu7PXjddxiVmycPGC3pda5uk
         qsTIEcSLHFLjlk5pwCWcEaszTEyTnGh2CRIakhoy5Btmhj90yDrljZ1uRPeURaduM4fQ
         /ncd/QDFKG0fsSxvQ4NzBuUMe/CHJJRfJEv/pvwOMdX6JXebZhiG3wYH4kVsovbdLGeW
         LcYFmi/mi3AMrQBjQ/cLvu50GIeAd+yFY0hsKdACXZGtGLNxDLV28Luu5vZ8FbSxbadR
         BHEGGYxubWcYiw85X8XO0QBn0n4AkZD9ydTYBF7HdMtfDjXXhzX1w/QPdiQDnDKVXeOO
         qZjg==
X-Gm-Message-State: AFeK/H3fZ9zatO8ErwLSKLrF3Hh72pdqCZ26Mzn4qvBHF/AHcuXkLcSB/u3dhHAR7urBAHVLPvTqhMEtBeS3Uw==
X-Received: by 10.107.27.207 with SMTP id b198mr1052684iob.218.1489513007122;
 Tue, 14 Mar 2017 10:36:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 14 Mar 2017 10:36:16 -0700 (PDT)
In-Reply-To: <73d214e0-46d0-0d4a-27e1-7c85cf3c05ed@metafoo.de>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1703122154130.7649@hadrien> <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
 <alpine.DEB.2.20.1703122235320.7649@hadrien> <20170312221350.GA14070@d830.WORKGROUP>
 <CAOCi2DEyu6_bBjsrSFzf0VcXcUnZ3LugLf==R9zsSmj+1JdFKw@mail.gmail.com>
 <35231dfd-af42-bbd3-3be6-4e03a728a92f@kernel.org> <73d214e0-46d0-0d4a-27e1-7c85cf3c05ed@metafoo.de>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 14 Mar 2017 23:06:16 +0530
Message-ID: <CAOCi2DEecT6tdxmz7_9Q5aWC7_+VZCKD1+Vwe9F5gA9jAuQ2=A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Alison Schofield <amsfield22@gmail.com>, 
	Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
	Michael.Hennerich@analog.com, knaack.h@gmx.de, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 14, 2017 at 2:24 AM, Lars-Peter Clausen <lars@metafoo.de> wrote:
> On 03/13/2017 09:51 PM, Jonathan Cameron wrote:
> [...]
>>>> Gargi,
>>>>
>>>> Please insert the new lock above the __cacheline_aligned struct
>>>> member.
>>>
>>> I will do that, but is there any reason why the lock should be above
>>> ____cacheline_aligned struct member?
>> Yes.  It's in fact very important that nothing comes after that.
>>
>> Will leave the why as an exercise for the reader.   I'll give the
>> hit of spi drivers that do DMA...
>
>
> One hint though, the answer is somewhere in Documentation/DMA-API.txt

From what I have understood is that cacheline is used for keeping most
frequently accessed values in adjacent cachelines. We want the
cacheline_aligned at the end in the struct definition so as to avoid
any holes after the cacheline boundary.
>

