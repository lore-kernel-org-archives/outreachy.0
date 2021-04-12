X-GM-THRID: 6950254518663643136
X-Received: by 2002:a05:620a:218e:: with SMTP id g14mr27783971qka.111.1618248564258;
        Mon, 12 Apr 2021 10:29:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls2727924qkc.7.gmail; Mon, 12 Apr
 2021 10:29:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxj+ky3RHUKFPCNWS8IYISKuwONESYQOfaO5Pu6b7xC9n8ZVshEnPcqPCnV3H6Srh1CIscG
X-Received: by 2002:a05:620a:1291:: with SMTP id w17mr11397858qki.175.1618248563434;
        Mon, 12 Apr 2021 10:29:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618248563; cv=none;
        d=google.com; s=arc-20160816;
        b=SADrTdPLGfKl/UK0u55fYfTa4b2TrYiGRQMvzn9ftMR4GFLtKwchRwgIeNqQLFNBtE
         aMeNifcQ7yoXdNApTRRpvLYOekRbW4LqsjEKnMJA0dGlbfzuxeYuEWMwQ/Cd3Vz2PmQN
         jWjJ6monhUBMWU3m1UayoD7ymrS3RJ8qDpVsZEUHUAIlXRrLAiDLqwGi9vW8YaBhqG8x
         pUg/sgIEL8Wj/WTF4OpV/EEhDzMaeElGom0b1Ccuj7aVpfS0U1YT2ZHAmbEt9VeCgRhT
         bBvCJs4CYq1d5s4TCB85nn9Qxmfqwel2Jczi+OPBI81sYG8c7jzk0ZsXaFOW2/ENlJrs
         lm3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=yZERBifSmi4SCI1KUema3RU8NgjctejDx9aUtqw4gYc=;
        b=xTYXVqHkLVSfDJ9tIpdMZSvU3B8RbOo87Skai5xc7L4SCCm2QapUBaGgwQxz3sU9Kd
         4tjkeV+oe0NEeprmiDbcqmWqxd7pbhuY2EgIJQoBIv4sGGBVb6fblON9IGZnaYtSa8UP
         pG7cr18JJTAGw1HiWDwri8yXgbf4AV20k3aoHQwpXzSNmTcDZM7fd+quCn82+5KMqRrE
         X95B9euDed/u+qnLWuTBSsBuL38lYEMvL12mb+yNIywJgY9RthX+DN2rhG80fMkc/oQM
         I/7JHSUAoaix7BjGKb1ct7bLi3pPdSJ9pTsp286WmpL4t1bIzyWeUA5slzb5gaV4ny5p
         z08Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZsMLMbY/";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id r26si1049648qtf.3.2021.04.12.10.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:29:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZsMLMbY/";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82d.google.com with SMTP id t11so1980653qtr.8
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 10:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=yZERBifSmi4SCI1KUema3RU8NgjctejDx9aUtqw4gYc=;
        b=ZsMLMbY/5LeKJ24JnODzYecHvpel/efJj5r99xrz9pbYuq4xD0PeTgcXOWtGby5hHb
         UpOe1q2HIHFEUjuRyjz8F/UaAIunpAGMCL7hzEJAO4P3IT9g3dc8yYvOgoBof02Jr09k
         6ME2i1jtqUUKtJ1CQoX/Y56ePkZTYYd+2HoRYUdDVR7xHkYMfxEJSml/iioHV1VsFL+P
         fs3dqbOpmBfZHt9iWV9BKTDj6ksVRPRIU+t+U27jQk/sr5Wpp+5iLiXsmO8se0q7eMAP
         RYq7iM+v7LiIzJ/5R/zG1U9tyIrkM7OftqYlT2DQbptQT2d68TrZ/qKte7M+x8K+/9BA
         zA6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=yZERBifSmi4SCI1KUema3RU8NgjctejDx9aUtqw4gYc=;
        b=DwbbC94Ri9d2O6XzID+/jt1Q5fSiq3+IZJbEsVfwZOzijJcTixHfQgQF82GUxYbWZ5
         xw3rBOJtvydbZeyWhFP/42ZJnY4CLs/z8S3qnCo3fXc9n7/sbQ8KCq5VHwOpP4ooQX5Q
         CsPI5TXsrBKeRH5jFmrqgrg/4FGwm9kBeebiiKUjQW+o0386DzLnlYFWEhuq0N1SGNCL
         1L4yfZxAfw4ffASwYNSAYhmnqeQ9WsEYBTuXLaHHyr1mqqprK8Q2SYchxovSrgTJw753
         y2mIqfpEsW2eEimnsstAcxs7lVebZQS0gUW5Oi3c44kAHTUPLVmPl8yQoQZjIYrOsxoa
         Ct5w==
X-Gm-Message-State: AOAM532pKj8o2i6/jxmbuY6D870jLGKbnrCpXQUPCFnYyNYCKU45VkJg
	Ut4lzwmk2azh/ZZ+EH8bughsoOswysdmFl4z
X-Received: by 2002:ac8:7241:: with SMTP id l1mr13586554qtp.13.1618248561779;
        Mon, 12 Apr 2021 10:29:21 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f016:a037:29a:1b49:fcb:5776? ([2001:1284:f016:a037:29a:1b49:fcb:5776])
        by smtp.gmail.com with ESMTPSA id t198sm4363812qke.44.2021.04.12.10.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 10:29:21 -0700 (PDT)
Message-ID: <babb019f0950cf11857a4bcf20a572f2eace1777.camel@gmail.com>
Subject: Re: [Outreachy kernel][PATCH 1/4 v2] staging: media: omap4iss:
 Replace macro function by static inline function in file iss.c
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Mon, 12 Apr 2021 14:29:18 -0300
In-Reply-To: <YHRjPpMVVrhTF7Tc@pendragon.ideasonboard.com>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
	 <e302566a3d9e5180ab27eb2c2824fd1b678a6d99.1618231618.git.alinesantanacordeiro@gmail.com>
	 <YHRNzq3h3LEp3Dgc@pendragon.ideasonboard.com>
	 <7457fd4eb5afbf66b3a6f2fed4dd1e440e6ed422.camel@gmail.com>
	 <YHRjPpMVVrhTF7Tc@pendragon.ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em seg, 2021-04-12 às 18:11 +0300, Laurent Pinchart escreveu:
> Hi Aline,
> 
> On Mon, Apr 12, 2021 at 10:58:45AM -0300, ascordeiro wrote:
> > Em seg, 2021-04-12 às 16:40 +0300, Laurent Pinchart escreveu:
> > > While testing on a device isn't a requirement as you can't be
> > > expected
> > > to have the necessary hardware, changes are expected to be at
> > > least
> > > compile-tested before being submitted.
> > 
> > Hi Laurent,
> > 
> > I thought recompiling the kernel would be enough in this case.
> > I recompiled it in native Ubuntu 16.04 without errors.
> 
> Did it compile the driver you modified ?
> 
I'm sorry, It didn't. I forgot to enable the option to compile the
driver as a module in "make menuconfig" and now I'm seeing the problems
I generated.

Thank you for warning me,
Aline


