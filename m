X-GM-THRID: 6336586801480728576
X-Received: by 10.157.14.146 with SMTP id 18mr6189390otj.17.1476661789307;
        Sun, 16 Oct 2016 16:49:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.144 with SMTP id 16ls9290441otm.7.gmail; Sun, 16 Oct
 2016 16:49:48 -0700 (PDT)
X-Received: by 10.200.45.150 with SMTP id p22mr5773146qta.8.1476661788770;
        Sun, 16 Oct 2016 16:49:48 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a143si4753853pfa.2.2016.10.16.16.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 16:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id s8so11526062pfj.2
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 16:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eYR1pB8rl6+sJFOCztz599L0Pm6RCat9Bf0uA7BFSeM=;
        b=yo442NgXnljIa8+VC7whzzfmV/RtXKXoz+6EtYMGpairo7+YkzHfOAQuSw1I/1kpb1
         GIFAkGHQxUtw+FpoB9NqJneOBZMteNu8k6ICbPLW+QFV5Rm7x6swCqxzH968tjFUp+U3
         +odI8rcJH2De9R3nr87fUKrMsRW5LNf03xw4FzEFliEtjFW9+qqQ5QofeccRpBoT2Kae
         YjpL+MxxLb7gi3uenLzmwHWovURJgdjww8TSxXarLJjByIblDJGwEyXGc0IYnNPdFNps
         u/B4M++NxTGdCD76ATutn5mG+FpfdnlO0ikbc2qneEMk05LQ42OQXkWuGg5q29osrzcA
         25ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=eYR1pB8rl6+sJFOCztz599L0Pm6RCat9Bf0uA7BFSeM=;
        b=WlVK1rcc+OW68NoiwKWstnQTt/8/rmUWXuWuiiyFavs6sDj8RVLMFxMCSa+/r4/zaE
         RIFq+Z+Gubv6s91n+WkfzPqdYi2tGcDzKo5dO/+GOx9Zi/f1Bt/QSgipe0Fr1php92ij
         5843q7h8f6gq8SBb1cnZn/zOHOcqoBoM1IEb9eo2wAdKlW2Ai+r5spMzz+OeEY5ruTyi
         AcKqOpMQX2i6Q6QDfZAOK6917VAWUMXFgm50q6WOuBmhJ+ImF+CcueFxhO/lxEcus3HJ
         cS0LPeYwz4c2PkDevrx8LMauy7ZfFwcB0iRoFdJEK/tn7OGfpsJvzZd5hskGAlYYL3XK
         mVPw==
X-Gm-Message-State: AA6/9RnHBcPu24wtKWMjr7HRZrW4hxiBMgBj6mt8nIeUzFkE902u4psUQXup4rKaxNZBjA==
X-Received: by 10.98.91.134 with SMTP id p128mr33936798pfb.22.1476661788137;
        Sun, 16 Oct 2016 16:49:48 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([103.14.62.172])
        by smtp.gmail.com with ESMTPSA id y77sm11755165pfi.69.2016.10.16.16.49.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 16 Oct 2016 16:49:47 -0700 (PDT)
Date: Mon, 17 Oct 2016 07:49:39 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: Daniel Baluta <daniel.baluta@intel.com>,
	Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
Message-ID: <20161016234938.GA2809@Socrates-DK>
Mail-Followup-To: Elizabeth Ferdman <gnudevliz@gmail.com>,
	Daniel Baluta <daniel.baluta@intel.com>,
	Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <20161001195259.GB12284@d830.WORKGROUP>
 <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com>
 <20161011172410.GA6773@localhost>
 <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
 <20161015210748.GA13776@localhost>
 <20161016020322.GA2406@Socrates-DK>
 <20161016212357.GA2263@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161016212357.GA2263@localhost>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 16, 2016 at 02:23:58PM -0700, Elizabeth Ferdman wrote:
> On Sun, Oct 16, 2016 at 10:04:27AM +0800, Eva Rachel Retuya wrote:
> > Hi Liz,
> > 
> > On Sat, Oct 15, 2016 at 02:07:49PM -0700, Elizabeth Ferdman wrote:
> > ----massive snip----
> > > I think that running $ make -j2 && sudo make modules_install could solve
> > > this problem? If I can't do insmod can I just do modprobe?
> > > 
> > 
> > modprobe is OK to use.
> > 
> Thanks, I used modprobe and the modules were loaded.
> 
> I'm running into this issue in Task 01
> When I do 'ls -l /config/iio/devices/dummy/' the terminal just hangs. I
> closed the terminal and tried it a few more times but it was just
> freezing and I had to xkill it. I have been following the tutorial. I
> mounted the configfs at /config, made the modules, loaded them, ran
> mkdir /config/iio/devices/dummy/my_dummy_device.
> 

Hi,

I suggest to do 'make clean' again and start from scratch.
Run 'make menuconfig' and make sure the settings look like this:
{*} Industrial I/O support ---> (instead of module, make this built-in,
use 'y' instead of 'm')
<Descend this option where you'll configure configfs, dummy, etc>
{*} Enable IIO configuration via configfs (use 'y' instead of 'm')
<M> Enable software IIO device support
<M> Enable software triggers support

Under IIO dummy driver:
<M> An example driver with no hardware requirements
[*] Event generation support
[*] Buffered capture support

Compile and install, then boot to that kernel and test if it works.

Eva
> These succeeded:
> lsmod | grep dummy 
> ls -l /sys/bus/iio/devices/iio:device0/
> ls -l /sys/bus/iio/devices/iio_evgen/
> 
> The one that's no working is 
> ls -l /config/iio/devices/dummy/my_dummy_device
> or 
> ls -l /config/iio/devices/dummy/
> 
> Liz
> 
> > Eva
> > 
> > > Thanks,
> > > Liz
> > > 
> > > > thanks,
> > > > Daniel.
> > > 
> > > -- 
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161015210748.GA13776%40localhost.
> > > For more options, visit https://groups.google.com/d/optout.

