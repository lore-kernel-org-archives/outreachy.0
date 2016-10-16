X-GM-THRID: 6336586801480728576
X-Received: by 10.159.48.218 with SMTP id k26mr1374825uab.32.1476581366641;
        Sat, 15 Oct 2016 18:29:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls10232052ota.25.gmail; Sat, 15 Oct
 2016 18:29:25 -0700 (PDT)
X-Received: by 10.13.222.5 with SMTP id h5mr5046169ywe.4.1476581365952;
        Sat, 15 Oct 2016 18:29:25 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a143si4177098pfa.2.2016.10.15.18.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 18:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id r16so10049230pfg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 18:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BbXV0eUVlgdbA6hiNH1XBhR9/Jbsi8Bbk2pMpIrMgwQ=;
        b=SMisFf0nZzWT6jqmrU/qSQ2RoBS2UdD5qF5T4wve3Vo7mgxLaLLKFBo/p2DYDWYw63
         5LQFDQB/J4oDwuuScJjOHYxelaCtyBCs4J3NaBW8b49SA2bLoro+Z2rrJrte0g02t107
         u8i0rZrKx5ZAAFkATTSMRnBcB2wB7dkIsWNgUd7TKZRoPisk/k3daKL3zpnBQlKWTP+I
         aJoBU6SLeHJ8NGkmXjgCLjR02hdx08aRgt6joFJY57k/8y62NW7JxflAt/zyCAXMpUe/
         PveTMSHElPB4KOSwFfPiThXpE3AVYYBJ0KDOVCQGJ984yHFbmG8jwePLSKfCOdKGB/Vu
         nSAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BbXV0eUVlgdbA6hiNH1XBhR9/Jbsi8Bbk2pMpIrMgwQ=;
        b=UaKHWMHe6q8TVZ3GNYBckjKKKXSAdIDg/uyzUx059+Wan0pok+FK4PwvGCkp1Nosb9
         s8jIHslYwIGRfDdEVBNETMn957tV+X4dsFaJxZBXwzGyxXncvx2yn3vFxD0u9VzjodA7
         sYAfH0fvV+Yp4Uwx1or9rmt+zrRcg1Zau0UY1PSurLA90fA6Dgac+F0Rt3D3GaRlQx7v
         /FS3wjzpDafriY4xJ4AzqioMPw2qQpGdr0kO0x3FAoToPTtdc6fHv2mZVOAr+rF0EH1A
         c4S7DbiN2CbrSJimulH3GB1aisEfCm5A/EEaYkyh+SaBKkJqGd6VlJVNX8k/sodg//du
         10/g==
X-Gm-Message-State: AA6/9RmvEJIDqH3fQBt6j5nGEavb2orH4k4Am8DmSfBFPKIUQqaVZy4XNUp2d8IrZucnDw==
X-Received: by 10.98.20.200 with SMTP id 191mr28561963pfu.51.1476581365716;
        Sat, 15 Oct 2016 18:29:25 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id tj8sm37683566pab.16.2016.10.15.18.29.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 18:29:25 -0700 (PDT)
Date: Sat, 15 Oct 2016 18:29:23 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Daniel Baluta <daniel.baluta@intel.com>
Cc: Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
Message-ID: <20161016012922.GA1607@localhost>
References: <20161001195259.GB12284@d830.WORKGROUP>
 <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com>
 <20161011172410.GA6773@localhost>
 <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
 <20161015210748.GA13776@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161015210748.GA13776@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Oct 15, 2016 at 02:07:48PM -0700, Elizabeth Ferdman wrote:
> On Fri, Oct 14, 2016 at 07:06:27PM +0300, Daniel Baluta wrote:
> > On Tue, Oct 11, 2016 at 8:24 PM, Elizabeth Ferdman <gnudevliz@gmail.com> wrote:
> > > On Tue, Oct 11, 2016 at 11:44:04AM +0300, Daniel Baluta wrote:
> > >>
> > >>
> > >> On 10.10.2016 02:19, Elizabeth Ferdman wrote:
> > >> >On Sat, Oct 01, 2016 at 12:52:59PM -0700, Alison Schofield wrote:
> > >> >>If you have questions about building the modules in IIO Experimenting
> > >> >>Task #1, please post here.
> > >> >>
> > >> >>If you can help those who are having troubles, please post that here
> > >> >>also.
> > >> >>
> > >> >I'm getting errors after running
> > >> >$ make drivers/iio/dummy/iio_dummy_evgen.ko
> > >> >
> > >> >Output:
> > >> >------------------------------------------------------------
> > >> >CHK     include/config/kernel.release
> > >> >CHK     include/generated/uapi/linux/version.h
> > >> >CHK     include/generated/utsrelease.h
> > >> >CHK     include/generated/bounds.h
> > >> >CHK     include/generated/timeconst.h
> > >> >CHK     include/generated/asm-offsets.h
> > >> >CALL    scripts/checksyscalls.sh
> > >> >MODPOST 3015 modules
> > >> >
> > >> >WARNING: could not open
> > >> >drivers/staging/lustre/lustre/llite/llite_close.c:
> > >> >No such file or directory
> > >> >
> > >> >WARNING: could not open
> > >> >drivers/staging/lustre/lustre/obdclass/linux/linux-obdo.c:
> > >> >No such file or directory
> > >> >
> > >> >ERROR: "ftrace_graph_ret_addr" [arch/x86/oprofile/oprofile.ko]
> > >> >undefined!
> > >> >
> > >> >scripts/Makefile.modpost:91: recipe for target '__modpost' failed
> > >> >make[1]: *** [__modpost] Error 1
> > >> >Makefile:1643: recipe for target
> > >> >'drivers/iio/dummy/iio_dummy_evgen.ko' failed
> > >> >make: *** [drivers/iio/dummy/iio_dummy_evgen.ko] Error 2
> > >> >----------------------------------------------------------------
> > >> >
> > >> >I have already enabled the 4 necessary config options in menuconfig.
> > >> >Any ideas?
> > >> >thanks,
> > >> >liz
> > >> >
> > >> >
> > >>
> > >>
> > >> Hi Liz,
> > >>
> > >> Sorry for the late reply. Could you try to update your tree? It seems
> > >> that was a problem similar with this few days ago.
> > >>
> > >> http://www.gossamer-threads.com/lists/linux/kernel/2538847?do=post_view_threaded#2538847
> > >>
> > >> Daniel.
> > >>
> > > Hey Daniel,
> > > Thanks for the reply. I did get fetch origin, but I'm still getting the
> > > same error, plus some more. I pasted the log here:
> > > http://pastebin.com/WXL5Vxt8
> > >
> > > Just to clarify I've been following the tutorial and I chose the 5
> > > config options in menuconfig. I also mounted configfs.
> > 
> > 
> > For these:
> > 
> > ERROR: "iio_register_sw_device_type" [drivers/iio/dummy/iio_dummy.ko] undefined!
> > ERROR: "iio_unregister_sw_device_type"
> > [drivers/iio/dummy/iio_dummy.ko] undefined!
> > 
> > You need to enable CONFIG_IIO_SW_DEVICE.
> > 
> Hey Daniel,
> I already had that configured. It turns out all I needed to do was "make
> clean" and it worked fine after that. UGH! Wish I had thought of that
> like 4 days ago. 
> 
> Now I'm running into the "invalid module format" error that someone else
> had. I'm not using a vm and if I do uname -r I'm running the latest
> kernel.
> uname -r shows 4.8.0-rc6+. 
> 
> ls /boot shows
> 
> config-3.16.0-4-amd64  initrd.img-3.16.0-4-amd64
> System.map-3.16.0-4-amd64  vmlinuz-4.8.0-rc6+
> config-4.8.0-rc6+      initrd.img-4.8.0-rc6+      System.map-4.8.0-rc6+
> grub                   lost+found                 vmlinuz-3.16.0-4-amd64
> 
> I think that running $ make -j2 && sudo make modules_install could solve
> this problem? If I can't do insmod can I just do modprobe?
> 

I was able to make iio_dummy_evgen.ko and iio_dummy.ko. I had not
installed the new kernel which was 4.8.0 not 4.8.0-rc6+. I did make,
make install and make modules_install, then it worked.

Now I'm trying to do insmod. I'm getting the error "Unknown symbol in
module" 

dmesg shows:
iio_dummy_evgen: Unknown symbol iio_bus_type (err 0)

Liz

> Thanks,
> Liz
> 
> > thanks,
> > Daniel.

