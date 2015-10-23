X-GM-THRID: 6208527977579282432
X-Received: by 10.182.58.105 with SMTP id p9mr16333237obq.21.1445603045459;
        Fri, 23 Oct 2015 05:24:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.79 with SMTP id e76ls920042ioe.43.gmail; Fri, 23 Oct
 2015 05:24:05 -0700 (PDT)
X-Received: by 10.50.49.109 with SMTP id t13mr3115628ign.9.1445603045191;
        Fri, 23 Oct 2015 05:24:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x232.google.com (mail-qk0-x232.google.com. [2607:f8b0:400d:c09::232])
        by gmr-mx.google.com with ESMTPS id m124si1201716ywb.7.2015.10.23.05.24.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 05:24:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) client-ip=2607:f8b0:400d:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x232.google.com with SMTP id y65so72003272qkc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 05:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LohxPXkNZNtAF4sRRc9vikMu0hmM7rh41oFLnWPy9h0=;
        b=LvKcgmQliX4pK5LkOR/i9Fcfp6L2dBaMN4cZ8MZboz2WPgEjGDX8ckraKDf84m7/Cg
         xsDYs5tueat9nPdkPmSsfyoQ3SukBdlgTI8xgVgeGNr+9YBBLElqJwIG6OEDxBh8ktCM
         RK/0YR7QxWztn2KtPEDJ4EueT6BiuDg5OTICzG/UVkUJ9KvZooHhdCAau10Y8f5NKjV2
         QrbCsZQDX6UJsupD58iSwGTwKRvg9VEKDR2bwcJoM523euj35/bdyzfc8f7G1sV6dez0
         M63PUtuzht57PkpWuXX37vfwNJ0SwMpo8yqlwXqp2Si3yMzKOIRqiwkRemTcM6u9obo2
         asFA==
MIME-Version: 1.0
X-Received: by 10.140.98.183 with SMTP id o52mr24674226qge.70.1445603045015;
 Fri, 23 Oct 2015 05:24:05 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 23 Oct 2015 05:24:04 -0700 (PDT)
In-Reply-To: <CAL7P5jK37Y7F81P23OsBE6cckNSBWBiDVxmMc5kUhv+43sS7xw@mail.gmail.com>
References: <20151022173920.GA32329@amitoj-Inspiron-3542>
	<8980519.8CTrMHEHrD@wuerfel>
	<CA+5yK5HER69sFe9PuCisL-GNdOcKk686WDy956U8hzasO=1ZqQ@mail.gmail.com>
	<CAL7P5jK37Y7F81P23OsBE6cckNSBWBiDVxmMc5kUhv+43sS7xw@mail.gmail.com>
Date: Fri, 23 Oct 2015 17:54:04 +0530
Message-ID: <CA+5yK5E-ZP4txCn8WSYemwgO6aB4YRDE7s+aGqmJMboCLUxHOA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] misc: ibmasm: Replace
 timeval with timespec64
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, y2038@lists.linaro.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

>> Okay! Next patches will be the simple tasks. Also, I couldn't find the
>> tutorial you mentioned for compiling, can you help me out some there?
>
> I think the tutorial mentioned is kernel newbies First patch tutorial and under
> section Make a driver change:
> http://kernelnewbies.org/Outreachyfirstpatch#head-816e6eef0008340eab7d542c3f6923a1f896478d
> there is instruction how to compile your changes:
>
> Compile your changes:
>
> Recompile your kernel, by running make (with an optional -jN flag):
> make -j2

Hi Ksenija,

Thanks for the help. I'm already doing this, I was under the
impression that Arnd was mentioning something other than this. I could
be wrong.

-- 
Amitoj

