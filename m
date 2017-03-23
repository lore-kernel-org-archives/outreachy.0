X-GM-THRID: 6336586801480728576
X-Received: by 10.99.66.6 with SMTP id p6mr847723pga.20.1490279977334;
        Thu, 23 Mar 2017 07:39:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.46 with SMTP id h43ls4835419ote.9.gmail; Thu, 23 Mar
 2017 07:39:36 -0700 (PDT)
X-Received: by 10.129.93.137 with SMTP id r131mr301639ywb.137.1490279976869;
        Thu, 23 Mar 2017 07:39:36 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id e196si618082itc.2.2017.03.23.07.39.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 07:39:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com
Received: by mail-it0-x242.google.com with SMTP id z70so7956118itb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 07:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=nSQ10p9qNojRUH74xxYNi9Hm9qReh/vYOkoehpzzHgk=;
        b=TTjEwdQNnZegoRoPFb+ePyAYfW5pD+Ul/S1LkWyny+yEsxetkQk4v/Ttn3TFvDWoOk
         G1N9VDmAvIo8z+z2KwYR8uYDmXvexE1YKv7taX0wge9LA4qBH/2WNRPtrTeEg2B045IL
         98kpLGeXyZbORaDnifOQ/wnp/nAdtUBozXDUbrLclMvuxCNJ9MffKYlHX3ym7u2Fdjz3
         TO5oYv7YUAicU5VNvaZIvBjH0nZCV3FqStazv4E4r5HaZ2cV4bxwCGpe8XKlEv7WDzjE
         DRYXVbOPo1Q8ICECNrV4wv8GKo9FEPsnluZ6XCG4wXXcxOxEB5DWNCDmtrB2Lew6cI6t
         XoTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=nSQ10p9qNojRUH74xxYNi9Hm9qReh/vYOkoehpzzHgk=;
        b=DuHE4KfQjr1FY7bZbXBebTdD8m54Swyk5jKcf3JaDs4nIwniQs9+uIC9JRJTXYOdiE
         rcjwGX2TvQAuDkMmpO/7c9E/N2moVFsLV1rHiBCS35TtuLWCEMWY9GlTkHA6s8hLGngh
         mxafnf2ymBBMdz5ZatSwmPE7a9F+f/vP4KA5vctIMnuBKxENqI9MnhfRKYGL77C43OBr
         Hh3cMvFcATP37ppl2t2nqilYH4UALr04q6LoraF0GRw6M4ukIIOV4fn7vdpeg9zDYaCO
         fzoYanH9Fw6MVe/cavFUP6bgth/rehlUgGTjHlKQe+bcwaf3z91c6LDIdNVE+F+pbv5e
         T9QA==
X-Gm-Message-State: AFeK/H1STZ+q1y4wG+2m950YdMeKwmsKHnlFrERFS6a2TaAymKpHYQzlKc+mc5YB9xHye7ndLoQTxHo+gZ8fIQ==
X-Received: by 10.36.238.202 with SMTP id b193mr2857048iti.39.1490279976570;
 Thu, 23 Mar 2017 07:39:36 -0700 (PDT)
MIME-Version: 1.0
Sender: daniel.baluta@gmail.com
Received: by 10.107.26.201 with HTTP; Thu, 23 Mar 2017 07:39:35 -0700 (PDT)
In-Reply-To: <3ad92cf5-564b-4150-aa8e-89336e617679@googlegroups.com>
References: <20161001195259.GB12284@d830.WORKGROUP> <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com> <20161011172410.GA6773@localhost>
 <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
 <20161015210748.GA13776@localhost> <20161016020322.GA2406@Socrates-DK>
 <20161016212357.GA2263@localhost> <20161016234938.GA2809@Socrates-DK> <3ad92cf5-564b-4150-aa8e-89336e617679@googlegroups.com>
From: Daniel Baluta <daniel.baluta@intel.com>
Date: Thu, 23 Mar 2017 16:39:35 +0200
X-Google-Sender-Auth: QLaoj3PUZUFIa3grXpu44HNhHxE
Message-ID: <CAEnQRZCp95E5cjog6ws8+Jyy3RY35G_OZrXapWaz9wA9PxiGsw@mail.gmail.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Elizabeth Ferdman <gnudevliz@gmail.com>, Daniel Baluta <daniel.baluta@intel.com>, 
	Alison Schofield <amsfield22@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 23, 2017 at 4:21 PM, SIMRAN SINGHAL
<singhalsimran0@gmail.com> wrote:
>
>
> On Monday, October 17, 2016 at 5:19:49 AM UTC+5:30, Eva Rachel Retuya wrote:
>>
>> On Sun, Oct 16, 2016 at 02:23:58PM -0700, Elizabeth Ferdman wrote:
>> > On Sun, Oct 16, 2016 at 10:04:27AM +0800, Eva Rachel Retuya wrote:
>> > > Hi Liz,
>> > >
>> > > On Sat, Oct 15, 2016 at 02:07:49PM -0700, Elizabeth Ferdman wrote:
>> > > ----massive snip----
>> > > > I think that running $ make -j2 && sudo make modules_install could
>> > > > solve
>> > > > this problem? If I can't do insmod can I just do modprobe?
>> > > >
>> > >
>> > > modprobe is OK to use.
>> > >
>> > Thanks, I used modprobe and the modules were loaded.
>> >
>> > I'm running into this issue in Task 01
>> > When I do 'ls -l /config/iio/devices/dummy/' the terminal just hangs. I
>> > closed the terminal and tried it a few more times but it was just
>> > freezing and I had to xkill it. I have been following the tutorial. I
>> > mounted the configfs at /config, made the modules, loaded them, ran
>> > mkdir /config/iio/devices/dummy/my_dummy_device.
>> >
>>
>> Hi,
>>
>> I suggest to do 'make clean' again and start from scratch.
>> Run 'make menuconfig' and make sure the settings look like this:
>> {*} Industrial I/O support ---> (instead of module, make this built-in,
>> use 'y' instead of 'm')
>> <Descend this option where you'll configure configfs, dummy, etc>
>> {*} Enable IIO configuration via configfs (use 'y' instead of 'm')
>> <M> Enable software IIO device support
>> <M> Enable software triggers support
>>
>> Under IIO dummy driver:
>> <M> An example driver with no hardware requirements
>> [*] Event generation support
>> [*] Buffered capture support
>>
>> Compile and install, then boot to that kernel and test if it works.
>
>
> Hi,
>
> I am able to insert module iio_dummy_evgen.ko but when I run
> $ sudo insmod iio_dummy.ko
>
> I got the following error:
> insmod: ERROR: could not insert module iio_dummy.ko: Unknown symbol in
> module
>
> And in dmesg I am getting following error:
> iio_dummy: Unknown symbol iio_register_sw_device_type (err 0)
>
> Any Idea?

Find the .c file which exports this symbol. Then look into the Makefile from the
same directory where you found the .c file and find the CONFIG_ symbol which
compiles the .c file.

Daniel.

