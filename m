X-GM-THRID: 6208217817238470656
X-Received: by 10.13.217.12 with SMTP id b12mr11398459ywe.51.1445490020841;
        Wed, 21 Oct 2015 22:00:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.3 with SMTP id d3ls567271ioe.74.gmail; Wed, 21 Oct
 2015 22:00:20 -0700 (PDT)
X-Received: by 10.50.78.230 with SMTP id e6mr29743717igx.10.1445490020191;
        Wed, 21 Oct 2015 22:00:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22a.google.com (mail-qk0-x22a.google.com. [2607:f8b0:400d:c09::22a])
        by gmr-mx.google.com with ESMTPS id y206si384007ywd.6.2015.10.21.22.00.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 22:00:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) client-ip=2607:f8b0:400d:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x22a.google.com with SMTP id a6so49215433qkc.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 22:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=cxqps6SXwO55yW+PVDl9IGuARfnTv815zpgmHUCvVPY=;
        b=ZHBe5SMZg2NF+ZeHGTAtiREFMcP7/zf+i6uTlQmP9t7mkHvrLT6suq/X5m6FO32exL
         dbI+Yqq+yk2ASOOVu5S/1CKf4KvemL9kkG5FDcK3KGoI5LVbB2jKBGjZJ58/CLdWcz7c
         co0PsOJgtjBTILB15tc78DB7nH8p6A3McfdTWDOE+NN0OE5vvD46QMSTheIN9SxtMWl0
         S1VSUSrZ99t8/vHD9PSa5OaDaJNnoU2kqT6FOoe2hU1esK3LZcHU8IRb0PJnUodr3ybB
         nhzesPexyftB1DcezLXcQkCfAmA4LBP3kOxmZP/16H2g/qVnK2JU5tbz3jbvvGdMcx2e
         IHYA==
MIME-Version: 1.0
X-Received: by 10.55.195.135 with SMTP id r7mr16628540qkl.4.1445490019997;
 Wed, 21 Oct 2015 22:00:19 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Wed, 21 Oct 2015 22:00:19 -0700 (PDT)
In-Reply-To: <4698741.qcoLluBC3U@wuerfel>
References: <20151021213544.GA2468@amitoj-Inspiron-3542>
	<6860460.1I4Oque96X@wuerfel>
	<CA+5yK5Ev7qBUW4Rk0ANo2UxbM5S_Dxfyy_ddKT8NXKyzgco22g@mail.gmail.com>
	<4698741.qcoLluBC3U@wuerfel>
Date: Thu, 22 Oct 2015 10:30:19 +0530
Message-ID: <CA+5yK5EOd1+XTRrHDcTvRvjmN6XX6ana8viXC0vxMmC=aH1_bA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] firewire: Replace timeval with timespec64
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 4:26 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thursday 22 October 2015 03:26:22 Amitoj Kaur Chawla wrote:
>> >> -       do_gettimeofday(&tv);
>> >> -       lynx->rcv_buffer[0] = (__force __le32)tv.tv_usec;
>> >> +       getnstimeofday64(&ts64);
>> >> +       tv_usec = ts64.tv_nsec / NSEC_PER_USEC;
>> >> +       lynx->rcv_buffer[0] = (__force __le32)tv_usec;
>> >
>> > I have a small preference for ktime_get_real_ts64() over getnstimeofday64(),
>> > though the two are functionally identical.
>> >
>> > When you have addressed these, please send the patch again, and
>> > Cc the maintainers according to scripts/get_maintainer.pl.
>>
>> Okay. I'll do all of this. One question, I've replaced timeval with
>> timespec. It should be timespec64 right? I caught it after sending the
>> patch.
>
> Ah, I did not see that. Yes, that would have been the right choice.
> More importantly, you should not have sent out the patch until it
> was compile-tested. The tutorial should have information about how
> to do that, if you can't figure it out, ask for more information on
> IRC or here.
>
>         Arnd

Okay, will see the tutorial!

Thanks,
-- 
Amitoj

