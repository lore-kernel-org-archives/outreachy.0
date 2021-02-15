X-GM-THRID: 6929404332115755008
X-Received: by 2002:a25:9ac4:: with SMTP id t4mr22801535ybo.296.1613393097025;
        Mon, 15 Feb 2021 04:44:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bc4c:: with SMTP id d12ls7673899ybk.0.gmail; Mon, 15 Feb
 2021 04:44:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy+NalWENTRjot1Olv4Ip3MQ1ptyaUmlSTgOuFE9rwa0o8C30vYvHgY0DkEcxdaK+8fx9Sv
X-Received: by 2002:a25:ab0a:: with SMTP id u10mr21228413ybi.312.1613393095709;
        Mon, 15 Feb 2021 04:44:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613393095; cv=none;
        d=google.com; s=arc-20160816;
        b=uA6mstLsjvKJe/9ztEV/vQocJzAZJrcvElsHTXpsRHp+a5JsH2ZqhuRacd4l7P4gnn
         7ymow2/ECT+yiYlHl0lGBBhvcg1Qmhj2kQtnvh/JNf3lkrWtYvnacpQrKUdLvFFTrKG2
         4ed0nnWqmxV6H7JKJtogJ1zQnPkpqv1mOk/P2293LXtLolrls9dMg0vYi/53uI2vdCHt
         5Y03yxwukAspwXuMoYfE6MSOsTPC7IH5pcO02pr3HG/76gEJGplUZMwaiRW7agFTELpw
         0i19rbMEOn3kWWCJabssL3bUSr1dvNVMpams8M+OQgdlRu8YnsVogxOkSoYsX1oRxFJ5
         2adg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=BP+wI7/JaaxgykaUWUWfh7mgUmIvF6UY57mzzgYoksg=;
        b=MHboHAk430pJiMSb4shHeu7pnc1DiCkF0xBEdLXX8Wnt0QpRXhHC8sCaxrPFhI74w0
         pYKBiJhHXUsdWQujNWd7kygJy6dQm5+9SVKDEicpdtPHoUzhjl8OQTkocaBJe1/++Y4m
         CfhXCnUvPIT72Y6F1mc212ovG78040qnrrVGQIJsjcqy1L9TKfPgyl5XT/RMjrAUSuMh
         vp5Ylhu/qybpWuuH3+Fd7WR83pYGZFY2A8OfkX2scCfSZXcK6m1ugUXieMx9a6tleVNU
         8q1rdPIw/TwOEXOwN668441IItP/XQSqeqqta5Y8OjO8onFx0lNhc8/O3CqiR5qJ13aq
         J/kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa12-07.prod.phx3.secureserver.net (p3plsmtpa12-07.prod.phx3.secureserver.net. [68.178.252.236])
        by gmr-mx.google.com with ESMTPS id i194si1160689yba.2.2021.02.15.04.44.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 04:44:55 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.236 as permitted sender) client-ip=68.178.252.236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-vs1-f48.google.com ([209.85.217.48])
	by :SMTPAUTH: with ESMTPSA
	id BdFGlo45lI3CoBdFGlRJFZ; Mon, 15 Feb 2021 05:44:54 -0700
X-CMAE-Analysis: v=2.4 cv=ZPYSJV3b c=1 sm=1 tr=0 ts=602a6cc6
 a=g9pAEobrGbN8H2ZTlG5UXw==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=qa6Q16uM49sA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=aiIX5UjjAAAA:8
 a=YL6Xjd1eAAAA:8 a=SiqW3_QkAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8
 a=0cqceXVL-BD31WgvHy8A:9 a=QEXdDO2ut3YA:10 a=yTMIPcBJNYMA:10
 a=cDyXFGGuxjcA:10 a=K4UmP72BP_XnEf30ZnvK:22 a=yLS1KB8ZbIgHeRWbGdJx:22
 a=0-oVHmElw7bdUHZZ8WX8:22 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-vs1-f48.google.com with SMTP id w13so471016vsw.6
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2021 04:44:54 -0800 (PST)
X-Gm-Message-State: AOAM531iuRRGXiHh6zN+EymIZH/iipozg2TIR+19zxHrJ2WmdpDGWh1a
	CXARKUcbneHP3D7Yjc67hFfTqJY55u52TU9PU0g=
X-Received: by 2002:a67:d017:: with SMTP id r23mr1274572vsi.36.1613393094069;
 Mon, 15 Feb 2021 04:44:54 -0800 (PST)
MIME-Version: 1.0
References: <e36af443-8cb6-47b1-9d53-830e6b3d583an@googlegroups.com>
 <CAK-LDbJTM5ssdrWYAdcnWGSAhvuSz5cpiQwSy-=3CR=QLcdSZQ@mail.gmail.com> <d6fec11c-dee4-4e74-9803-324848a8cbden@googlegroups.com>
In-Reply-To: <d6fec11c-dee4-4e74-9803-324848a8cbden@googlegroups.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 15 Feb 2021 13:44:42 +0100
X-Gmail-Original-Message-ID: <CAK-LDbKrbeNu+JsQ90Dunhzh1+_K7+O5rAgK6E1qw+QvQKOtAw@mail.gmail.com>
Message-ID: <CAK-LDbKrbeNu+JsQ90Dunhzh1+_K7+O5rAgK6E1qw+QvQKOtAw@mail.gmail.com>
Subject: Re: [Outreachy kernel] How to start contributing ?
To: MAHAK BANSAL <mbansal@cs.iitr.ac.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4xfBHHv4z6ANGiVBmHnI+W8rW6F89JvUgeH1sFuHPx0GFPA59rRZmVdFBKTjSyeJ82dfj0iONGAVFDs/aayh729UBX5OPlInUM8It2uCwaI5MhNpYRGdq+
 vxpJlgA+AYFTJ4vv5qV4PoHEXsXWgPqEsZxEHmHR+Rv841StYaLaC//6F0HzxHOMwrCieE/AIEvutocvrDQmgxyt/EZUh2iRYJk1ePNW/y6I5o+gKTtTdL23

On Mon, Feb 15, 2021 at 10:26 AM MAHAK BANSAL <mbansal@cs.iitr.ac.in> wrote:
>
> Also, I was trying to join the IRC channels ( irc.gnome.org, irc.oftc.net) but I failed to join either because the link is not working or the link doesn't land into a valid channel.
> It would be great if you could provide the correct link.

I can see that you have sent a message in our channel on
Saturday - Feb 6, 2021. So, you did end up using IRC correctly. :)
Please note that people are in the different timezones and may
not be active in IRC channels when you would've sent a text.

> Thanks
>
> On Monday, February 15, 2021 at 2:02:29 PM UTC+5:30 Vaishali Thakkar wrote:
>>
>> On Mon, Feb 15, 2021 at 9:27 AM MAHAK BANSAL <mba...@cs.iitr.ac.in> wrote:
>> >
>> > Hi!
>> > I hope everyone is doing well.
>> > I'm a newbie, Can anyone tell me how should I start ?
>> > I'm participating in Outreachy this year and would love to work with you all.
>>
>> Hi Mahak,
>>
>> Thanks for your interest in contributing to Linux kernel.
>>
>> For the Outreachy, the contribution period is not yet open
>> so according to the rules of a program we can't share much
>> details with you. If you'll be eligible for the program, our orga
>> link will be automatically visible to you after March 15, 2021.
>> Until then if you wish to contribute to Linux kernel outside
>> the scope of Outreachy, you can check out this kernel first
>> patch link:
>>
>> https://kernelnewbies.org/FirstKernelPatch
>>
>> > Thanks
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kern...@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e36af443-8cb6-47b1-9d53-830e6b3d583an%40googlegroups.com.
>>
>>
>>
>> --
>> Vaishali
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d6fec11c-dee4-4e74-9803-324848a8cbden%40googlegroups.com.



-- 
Vaishali

