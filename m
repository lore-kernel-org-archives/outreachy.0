X-GM-THRID: 6336586801480728576
X-Received: by 10.98.135.202 with SMTP id i193mr4787413pfe.8.1476565673974;
        Sat, 15 Oct 2016 14:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.212 with SMTP id 81ls4116574iok.25.gmail; Sat, 15 Oct
 2016 14:07:51 -0700 (PDT)
X-Received: by 10.107.58.67 with SMTP id h64mr5137357ioa.96.1476565671877;
        Sat, 15 Oct 2016 14:07:51 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si3956646pab.2.2016.10.15.14.07.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 14:07:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i85so6352558pfa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 14:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uY9t85jLRR1nq/8loOZyC0GoCPO/hLreVpAU1smMR0U=;
        b=QkOLp/W7zFKtfB1d3K31Zo9PRQsy6KbJIyCa02QHjbgF1nWK8qLt0Kxc1GQmdQElAv
         op60VBBmEg6vnCf2RBTpPewxhWj4bg6mzcborYF5O1lU1F/BndPYoINR+jfXm3QzZ2wC
         /vlMuXJI9rTSIL80ApbURyIKIimQSdMSKmhf/4EgMJu9ZbO4NEpMBwblD4q232nqRtay
         agbtTp3vEpVKKIfEeiZb//rHRgvMm8BX8BJQa6fRx8Dfc2h/UI6XAyoPGRbUfUTAzL1s
         uLDH74SWVBI0JGAA+4gIiqd6hgMA5b9qDC554wx1i9S/SB7CK/BpnJCFiEY3g8q3IhcA
         Obyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uY9t85jLRR1nq/8loOZyC0GoCPO/hLreVpAU1smMR0U=;
        b=V7QXlDgo7efFGl3HLmohKN4BG/M2nt9rDqqcAkeyBcTeiM0jluScn7qAqsTXUmPWEJ
         I6jJZ8uMn7xWcsI6IDMxziTkS1XLi546lZYXh5GW6/yWEhbX4WBpf0l0U3MOlWlEfogn
         ILS79wTcZfpCd1o8srButizQuMqzZH7QHWoYFzPA/nJjO4y/WUkxKTKNBERKNCUJcKvC
         sVOc8t1J/F3BqTlNftxyIq/a5P9micOcr7DNkeil9JQHjkBdVSCYbENW+juv9exKo1XM
         3QIyWmq7SVspjMCD6aOuyZ8De9G9wYthUKLVudcaeT1Keu4EFPbvXOvr8UpswcV4lm0n
         Kipg==
X-Gm-Message-State: AA6/9RmL9PlGwWXqqcy+JjFdYywSBQYYfLDN4pKwEYoGT/mMEWNAr9qsrbed5eqwEvdJGQ==
X-Received: by 10.98.211.213 with SMTP id z82mr27733430pfk.78.1476565671679;
        Sat, 15 Oct 2016 14:07:51 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id zm17sm29848780pab.5.2016.10.15.14.07.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 14:07:51 -0700 (PDT)
Date: Sat, 15 Oct 2016 14:07:49 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Daniel Baluta <daniel.baluta@intel.com>
Cc: Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
Message-ID: <20161015210748.GA13776@localhost>
References: <20161001195259.GB12284@d830.WORKGROUP>
 <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com>
 <20161011172410.GA6773@localhost>
 <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Oct 14, 2016 at 07:06:27PM +0300, Daniel Baluta wrote:
> On Tue, Oct 11, 2016 at 8:24 PM, Elizabeth Ferdman <gnudevliz@gmail.com> wrote:
> > On Tue, Oct 11, 2016 at 11:44:04AM +0300, Daniel Baluta wrote:
> >>
> >>
> >> On 10.10.2016 02:19, Elizabeth Ferdman wrote:
> >> >On Sat, Oct 01, 2016 at 12:52:59PM -0700, Alison Schofield wrote:
> >> >>If you have questions about building the modules in IIO Experimenting
> >> >>Task #1, please post here.
> >> >>
> >> >>If you can help those who are having troubles, please post that here
> >> >>also.
> >> >>
> >> >I'm getting errors after running
> >> >$ make drivers/iio/dummy/iio_dummy_evgen.ko
> >> >
> >> >Output:
> >> >------------------------------------------------------------
> >> >CHK     include/config/kernel.release
> >> >CHK     include/generated/uapi/linux/version.h
> >> >CHK     include/generated/utsrelease.h
> >> >CHK     include/generated/bounds.h
> >> >CHK     include/generated/timeconst.h
> >> >CHK     include/generated/asm-offsets.h
> >> >CALL    scripts/checksyscalls.sh
> >> >MODPOST 3015 modules
> >> >
> >> >WARNING: could not open
> >> >drivers/staging/lustre/lustre/llite/llite_close.c:
> >> >No such file or directory
> >> >
> >> >WARNING: could not open
> >> >drivers/staging/lustre/lustre/obdclass/linux/linux-obdo.c:
> >> >No such file or directory
> >> >
> >> >ERROR: "ftrace_graph_ret_addr" [arch/x86/oprofile/oprofile.ko]
> >> >undefined!
> >> >
> >> >scripts/Makefile.modpost:91: recipe for target '__modpost' failed
> >> >make[1]: *** [__modpost] Error 1
> >> >Makefile:1643: recipe for target
> >> >'drivers/iio/dummy/iio_dummy_evgen.ko' failed
> >> >make: *** [drivers/iio/dummy/iio_dummy_evgen.ko] Error 2
> >> >----------------------------------------------------------------
> >> >
> >> >I have already enabled the 4 necessary config options in menuconfig.
> >> >Any ideas?
> >> >thanks,
> >> >liz
> >> >
> >> >
> >>
> >>
> >> Hi Liz,
> >>
> >> Sorry for the late reply. Could you try to update your tree? It seems
> >> that was a problem similar with this few days ago.
> >>
> >> http://www.gossamer-threads.com/lists/linux/kernel/2538847?do=post_view_threaded#2538847
> >>
> >> Daniel.
> >>
> > Hey Daniel,
> > Thanks for the reply. I did get fetch origin, but I'm still getting the
> > same error, plus some more. I pasted the log here:
> > http://pastebin.com/WXL5Vxt8
> >
> > Just to clarify I've been following the tutorial and I chose the 5
> > config options in menuconfig. I also mounted configfs.
> 
> 
> For these:
> 
> ERROR: "iio_register_sw_device_type" [drivers/iio/dummy/iio_dummy.ko] undefined!
> ERROR: "iio_unregister_sw_device_type"
> [drivers/iio/dummy/iio_dummy.ko] undefined!
> 
> You need to enable CONFIG_IIO_SW_DEVICE.
> 
Hey Daniel,
I already had that configured. It turns out all I needed to do was "make
clean" and it worked fine after that. UGH! Wish I had thought of that
like 4 days ago. 

Now I'm running into the "invalid module format" error that someone else
had. I'm not using a vm and if I do uname -r I'm running the latest
kernel.
uname -r shows 4.8.0-rc6+. 

ls /boot shows

config-3.16.0-4-amd64  initrd.img-3.16.0-4-amd64
System.map-3.16.0-4-amd64  vmlinuz-4.8.0-rc6+
config-4.8.0-rc6+      initrd.img-4.8.0-rc6+      System.map-4.8.0-rc6+
grub                   lost+found                 vmlinuz-3.16.0-4-amd64

I think that running $ make -j2 && sudo make modules_install could solve
this problem? If I can't do insmod can I just do modprobe?

Thanks,
Liz

> thanks,
> Daniel.

