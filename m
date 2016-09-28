X-GM-THRID: 6335466366571642880
X-Received: by 10.66.251.231 with SMTP id zn7mr7932478pac.63.1475090711790;
        Wed, 28 Sep 2016 12:25:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.151 with SMTP id q23ls1260079otd.18.gmail; Wed, 28 Sep
 2016 12:25:11 -0700 (PDT)
X-Received: by 10.31.180.71 with SMTP id d68mr2046630vkf.3.1475090711435;
        Wed, 28 Sep 2016 12:25:11 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e66si2465866pfk.2.2016.09.28.12.25.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 12:25:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so2487881pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 12:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zfuRQNz6Ja24BuXFwhoFRy5Pfg+CE7YPRN3xFGL1lEc=;
        b=tp/emGYOu0GMCIjjEoPT1zzuztndWFoxoYv5uvQ43BJifYrurf1ydA2gKa8CLwW9yG
         OMqBiOQgtt1MxDWhO9Yah0gHqfo+V4NHW2TiHcvORAlT+lIGgp87vYWVthfG+bAlSeZp
         XWALolXfsdiLLBKUaalqREv9QH05N7Yupkr9xCuLLKyx9XmRmgrr+hIHslcRchc9o02G
         ReVzUlmN90dup5g5k1ld+bvR420cgD2m3xApi0jOuD703hK8m/IMEPaYf5xCPnXS8Pdg
         kVuuCM720httSUsPg3j0wuIa+A+CRh9MZ3DtjdDT64VJ8tePpfgAKYp4Ts7I2iCMTYzn
         KmDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zfuRQNz6Ja24BuXFwhoFRy5Pfg+CE7YPRN3xFGL1lEc=;
        b=XV8z03+5k8qtWRlMG4lggy9994U/RXoEHzCuQ4lk8WtzjGGF31FFIbpd3+bn2il78Y
         unOuP2VegI129PYtSViHvV3qt0TvpiD480nzPLo5IwEdAhZxXupzfGYDfHOPV6wGQbWb
         emLpThiR4jSZHU0rX1hWyLDyuLR8NdrqBy9Dd5YUCRpLVN9lK/Yx1ZONwS8jdur/CjzP
         Qbx8GyDTnIxRL7LoRr+tQKmMkGmEJ/8RnGP6daiV7DyuOw0SzS+8raxHErdc7HOBh+ks
         Qu4E3Qr3/amxdTjn9A3pA3kzzwnH7iJz4cqbEVyUL/66s2xQWQgrin5NuHYRKeEP58Lv
         F8Pg==
X-Gm-Message-State: AE9vXwNlzQbtV0X4tsVuo+Xwi6csL/jYiuZB1lXTLpCfO0XrlHTvPcKqG983aaShUVpQIQ==
X-Received: by 10.98.91.197 with SMTP id p188mr60615346pfb.101.1475090711233;
        Wed, 28 Sep 2016 12:25:11 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id q25sm14405223pfj.48.2016.09.28.12.25.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 12:25:11 -0700 (PDT)
Date: Wed, 28 Sep 2016 12:25:08 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: amsfield22@gmail.com, outreachy-kernel@googlegroups.com
Subject: Rebase/line wrap question
Message-ID: <20160928192508.GB2193@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hey Alison,

I received some feedback from Greg that I want
to fix and I have a bunch of questions. The plus side is that maybe
some of the answers could go into the tutorial.

First he said "please wrap your changelog comments at 72 columns."

Is this something I add to my .vimrc? I've been using "git commit -m".
Is that causing the issue? I thought git commit messages were supposed
to be less than 50 chars anyway. I'm confused.

The other issue was that my commit didn't apply to his tree. He says
please rebase and resend. I think I need to do:

$ git fetch origin
$ git rebase origin/staging-testing
Then reformat the patch?
$ git format-patch -o ~/mypatches/ HEAD^
$ mutt -H <file>

So I don't need to uncommit/recommit?

Thanks,
Liz


