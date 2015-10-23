X-GM-THRID: 6208527977579282432
X-Received: by 10.66.141.140 with SMTP id ro12mr16254520pab.2.1445608681730;
        Fri, 23 Oct 2015 06:58:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.164 with SMTP id t36ls1124768ioi.34.gmail; Fri, 23 Oct
 2015 06:58:01 -0700 (PDT)
X-Received: by 10.50.27.72 with SMTP id r8mr3567683igg.0.1445608681221;
        Fri, 23 Oct 2015 06:58:01 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x229.google.com (mail-qk0-x229.google.com. [2607:f8b0:400d:c09::229])
        by gmr-mx.google.com with ESMTPS id y206si844042ywd.6.2015.10.23.06.58.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:58:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) client-ip=2607:f8b0:400d:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x229.google.com with SMTP id m62so74847511qkf.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 06:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=zyRSjH2PEH1pqpPqJWROGWWguK++lT9rJrknuBcmlGQ=;
        b=VbQ/hqDPqZMHmXitmYuzkowHdS2SyHUh8xXRsPx+yqxdKna0vEk1FJL0++DVKNQ0vc
         YxEvGolV9lA9Wa8eqSj6QxLrVDL0HnVy689zhOXnOl1m6aWk1JFcLivH6FRxs3pki1hS
         FNcdTsqZtP9XlWQ2PjIGmDGLAgIKxPxQaGYWLEV53R8ohrQUQNu6nVchidtZa9iL35om
         18vMj4tZ2KbKQ1sjjBkSDLxrnQbWRqHrT2wl1ovOjYiKrMBUwY/bEBCn705tz85fw7Q9
         tUOCPkJhjyLpcN9sfmtA1Yqz5nlC6AQAhuyZeffTSMx/OzIJ9zrsjE9l4cd/6LL8PRQ5
         HKUw==
MIME-Version: 1.0
X-Received: by 10.140.225.16 with SMTP id v16mr2090886qhb.89.1445608680696;
 Fri, 23 Oct 2015 06:58:00 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 23 Oct 2015 06:58:00 -0700 (PDT)
In-Reply-To: <3821582.4qFXg7Ezn8@wuerfel>
References: <20151023122206.GA16757@amitoj-Inspiron-3542>
	<13045188.atJMdLPVso@wuerfel>
	<3821582.4qFXg7Ezn8@wuerfel>
Date: Fri, 23 Oct 2015 19:28:00 +0530
Message-ID: <CA+5yK5HXwj8fgv5wOmZgJ0hneotaaYvV+-r_DVB=GztoPtmG_Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] misc: ibmasm: Replace timeval with timespec64
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, y2038@lists.linaro.org, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 23, 2015 at 7:17 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Friday 23 October 2015 15:39:49 Arnd Bergmann wrote:
>> On Friday 23 October 2015 17:52:06 Amitoj Kaur Chawla wrote:
>> > This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
>> > will not give current time beyond 2038.
>> >
>> > The patch changes the code to use ktime_get_real_ts64() which returns
>> > a 'struct timespec64' instead of do_gettimeofday() which returns a
>> > 'struct timeval'
>> >
>> > This patch also alters the format strings in sprintf() for now.tv_sec and
>> > now.tv_nsec to incorporate 'long long' on 32 bit architectures and
>> > leading zeroes respectively.
>> >
>> > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>>
>> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
>
> I was going to suggest to send this to the maintainers now, but after
> checking the MAINTAINERS file myself, I see that this would be Greg and me ;-)
>
> Greg, can you pick this up into the char-misc tree?
>
>         Arnd

Hi Arnd,

I made a slight error while sending v2 which I caught after figuring
out of my issue of compiling the module.

I'm sending a v3 after build testing it.

Should I cc you and Greg separately or let it be?

-- 
Amitoj

