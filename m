X-GM-THRID: 6336586801480728576
X-Received: by 10.36.228.198 with SMTP id o189mr2225861ith.22.1476653041580;
        Sun, 16 Oct 2016 14:24:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.129 with SMTP id 1ls11668992otj.31.gmail; Sun, 16 Oct
 2016 14:24:01 -0700 (PDT)
X-Received: by 10.129.178.129 with SMTP id q123mr5734153ywh.103.1476653041117;
        Sun, 16 Oct 2016 14:24:01 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z76si4254572pff.1.2016.10.16.14.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 14:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id qn10so8457284pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 14:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KSmZlNqVHZA0t/IyDxsmFttYDssbdWBwMk8e6Ph2oZo=;
        b=iZKVIpc9FgKltUO+WuJ6Ip4+D/Fc9Rx840sQoJrfDC00MCSA0SiCAD+Dh7PCO80HI5
         W8elNrdTGc5rQJsFG1D+dFYs4OEU8sf3dKzF5BQ2J28DJYev3jYHflxH4xK4tXHoZDQs
         n9Ug3GtiWFpmMmfrZ3gZIjanXgAv5wAMxoAd0mKWb4dxQGMf4R1b7B+UnzlC2FwsMD3v
         84DhALjPZftI8HGaMQT9pQ+KaNCl+9HDz72ZnGAFOrNgThJtP3YpB5wD0ctCDe+Kaqs2
         +zLTTYdvcy7zcYcLXObq0AeMnzK7LwIGKRH+xqFICk8xzCmlPTROXV1iOgk3qKRmiqip
         +WFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KSmZlNqVHZA0t/IyDxsmFttYDssbdWBwMk8e6Ph2oZo=;
        b=M0QQ+AClIuZR9E4XoLQNbbyagBuzrZNoat7StcX/QhrJKOX1o8mz/NmMpwK5YDgDZd
         YM4UtrFdZuMcs4953TmzrYsvAdM6K8aMUy43pJ4eM9Y5vQi6dDxbJsIpQ2goXuH6q8A0
         Wg+P0wjMjX7WYcqp1CBCLjxIJwWJRx4Yvzo9cGoqc0Qztnm8nqK0mvDFSjkZkQbRXcLl
         7eDtLHYClI2dU4AkaUJUn+A14xSSuVqDqOIJdOKe+EfbTBzqUKjfxaeQ6wE1mgay/izS
         0w/WLBKYikwLRJjaFl1ZdpgAMULOTKm56bwHmBzkJNj6POlXp4hyZ/lrzJQLVTwKff15
         bW3A==
X-Gm-Message-State: AA6/9RlE2qNKhd7ZgZVX12W4+JQbl99e4vbG6oZWrD//CiFRNzFNMdxcRP+A2uW8QFZ66w==
X-Received: by 10.66.14.10 with SMTP id l10mr27826059pac.11.1476653040868;
        Sun, 16 Oct 2016 14:24:00 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id zm17sm35354438pab.5.2016.10.16.14.24.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 14:24:00 -0700 (PDT)
Date: Sun, 16 Oct 2016 14:23:58 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: Daniel Baluta <daniel.baluta@intel.com>,
	Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
Message-ID: <20161016212357.GA2263@localhost>
References: <20161001195259.GB12284@d830.WORKGROUP>
 <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com>
 <20161011172410.GA6773@localhost>
 <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
 <20161015210748.GA13776@localhost>
 <20161016020322.GA2406@Socrates-DK>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161016020322.GA2406@Socrates-DK>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Oct 16, 2016 at 10:04:27AM +0800, Eva Rachel Retuya wrote:
> Hi Liz,
> 
> On Sat, Oct 15, 2016 at 02:07:49PM -0700, Elizabeth Ferdman wrote:
> ----massive snip----
> > I think that running $ make -j2 && sudo make modules_install could solve
> > this problem? If I can't do insmod can I just do modprobe?
> > 
> 
> modprobe is OK to use.
> 
Thanks, I used modprobe and the modules were loaded.

I'm running into this issue in Task 01
When I do 'ls -l /config/iio/devices/dummy/' the terminal just hangs. I
closed the terminal and tried it a few more times but it was just
freezing and I had to xkill it. I have been following the tutorial. I
mounted the configfs at /config, made the modules, loaded them, ran
mkdir /config/iio/devices/dummy/my_dummy_device.

These succeeded:
lsmod | grep dummy 
ls -l /sys/bus/iio/devices/iio:device0/
ls -l /sys/bus/iio/devices/iio_evgen/

The one that's no working is 
ls -l /config/iio/devices/dummy/my_dummy_device
or 
ls -l /config/iio/devices/dummy/

Liz

> Eva
> 
> > Thanks,
> > Liz
> > 
> > > thanks,
> > > Daniel.
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161015210748.GA13776%40localhost.
> > For more options, visit https://groups.google.com/d/optout.

