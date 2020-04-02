X-GM-THRID: 6809167002234519552
X-Received: by 2002:a05:6214:1923:: with SMTP id es3mr2974323qvb.157.1585831402502;
        Thu, 02 Apr 2020 05:43:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2a05:: with SMTP id k5ls1849729qtk.3.gmail; Thu, 02 Apr
 2020 05:43:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypIBWN/wJIYgOwQEOH6FDu4sfGPMCvDB7uvZvAXYVbJxqxmkc9Jb2Cwf8MD7ZR7lvBb0B1KL
X-Received: by 2002:ac8:197c:: with SMTP id g57mr2764822qtk.264.1585831401236;
        Thu, 02 Apr 2020 05:43:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585831401; cv=none;
        d=google.com; s=arc-20160816;
        b=AX9YBrozOz6ulU0VgOauLhTyCd63X3KZliN4vSmPPF1PC5lXc0vCInUsAlSAsnc7On
         PeVENbpkL/WNrR1/fJxDsiPr1uikTCA8B38g6csroFwB0JXbhc+dZc32UYnONX5Rl8oT
         9V2kxG+XL2qi9McND7UN7omLM+9lGd7COjI3yRlGafALCHQZuLzb122yFQD7lmC5Rwk7
         iPXJAPzen9KuHy85D9DfJ8u+iuWLpnfdyL8+2r3BuMND9qIjUqSAVWr1GFNeHiQMoWdH
         vx6AiZzn6/7JBHC3YSlkIprjZbOb/TnlMnffBUwHgt6HYoZ+xIDOw4leqTeQaOwUtK+R
         wKCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=q+pGpAJgQg0iGr7kPrzNihNuGodDhniT3b0m0imaY4U=;
        b=d2s/2vUe+mbqigPl3T7KzFYg2fpqxbidjlAi0lshD7hsvWIw4vO7gd2BDD2QyzGm0e
         rm/68c63PEiieU0osuqOjiV4boOCueJqSEYmDUCCKbSFzuSO2wFsPwrO2iLbg+9Q/dMs
         +t8v/HVd1/8EXQ9uyJQJ4FGjx2Ggx+n9fhNjVYvoowHUxQh+4i7he5PaA+SV9yKmb8ZG
         45sh44o04v3eM+3AV/vAmcpZMTgqDNji5LNqbPuA0uZrE0V7So08miuE99lXqfxMbjXc
         oUB9P74Y/uNQ4ZeLqDdJ/zHHi2VDn1ubrGzxoeYNZzB7O1lAUdJmydAU973ITTG7E06J
         5SnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L3TTucvy;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e89si356794qtd.3.2020.04.02.05.43.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 05:43:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L3TTucvy;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id s23so1268713plq.13
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 05:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=q+pGpAJgQg0iGr7kPrzNihNuGodDhniT3b0m0imaY4U=;
        b=L3TTucvy9cHA1kP02EaldQRl78SqiMxspe7BGEUeTuFWSYgsw7uDIvi5kB6nfw5FqO
         gmsQu1FaSq/vzzeN+53XcDrTY85XL95WJr/eISJUJ3TFgdKZELX0y730Bm4z47lpaH5O
         B1BDsfF+pczYVJawWTomRE82AZFMAOfM4uQXIhhHyUbsiqiklIvSPl9xRwzNxvTmm2kV
         M6fyqCDcj14Ueep5+TyX8tVywgqtIvc5jwXVHscJ/EX6Gq5PXuXu3OCwXt0ksnwDdkH3
         1X6aO7ZFCVoR+UoE23zJNMcoKg6pe390TM7q+RwfytL0cB5yiRwbnz8V/a7ANoBt1uvh
         9c1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=q+pGpAJgQg0iGr7kPrzNihNuGodDhniT3b0m0imaY4U=;
        b=BjWWH+ORsCWPZpDqhzAdm4WdXGJ4bcbmaT7oR/ep1AAZm6F5a63ppCNAagkrPdSNVY
         vUG4Lz9XE+CH9eQHaWBkDKdXIAlh6Am/C0XD7zPpDhcklhg5hxx/agAb8BOEwIZ/y8kp
         sJpLzTRPyIcEnJVQW90+/0DCsYXH/J1K/Dw6A7FoXnuAXwfssQC9ZprkmIpOiLBEEpdn
         jEkej0bCGRl/S0JINUdD1QrwEHbs8tvl5RxvjZv6cioOwYI+9jZw4Fu3Tg/AlqIqxBJk
         VVXk2BPmOsXfJWmhhWyyOYyGN7a8BPwZKVly9H+wvn2OgzZcwMju41mdo1hkhpdsLL2M
         0xsg==
X-Gm-Message-State: AGi0PuYjT3Brg1Yqvfkm28HP4g7AGlZKBkUCxG3nSzUQy20fsrWPpcIQ
	kl97INAaE74gOyAG7QJ3AMw=
X-Received: by 2002:a17:902:d685:: with SMTP id v5mr2877205ply.256.1585831400222;
        Thu, 02 Apr 2020 05:43:20 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([2409:4065:11f:6885:857d:c6a:2389:b44d])
        by smtp.gmail.com with ESMTPSA id e184sm3641639pfh.219.2020.04.02.05.43.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 02 Apr 2020 05:43:19 -0700 (PDT)
Date: Thu, 2 Apr 2020 18:13:12 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] Re: [Outreachy] [PATCH 0/3] staging: qlge:
 Resolve various warnings issued by checkpatch.pl
Message-ID: <20200402124309.GA9037@ubuntu>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>
 <20200401085810.GA19697@ubuntu>
 <20200401225830.4660f152@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200401225830.4660f152@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Apr 01, 2020 at 10:58:30PM +0200, Stefano Brivio wrote:
> Hi Soumyajit,
> 
> On Wed, 1 Apr 2020 14:28:12 +0530
> Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> 
> > On Sat, Mar 28, 2020 at 01:32:51PM +0530, Soumyajit Deb wrote:
> > > This patchset resolve coding style and indentation issues reported by
> > > checkpatch.pl
> > > This patchset add space around various binary operators, remove extra
> > > unnecessary blank lines and properly indent a multiline comment for the
> > > same file qlge_main.c present under drivers/staging/qlge directory.
> > > 
> > > Soumyajit Deb (3):
> > >   staging: qlge: Add space around operators
> > >   staging: qlge: Remove extra blank lines
> > >   staging: qlge: Properly indent a multiline comment
> > > 
> > >  drivers/staging/qlge/qlge_main.c | 30 +++++++++++-------------------
> > >  1 file changed, 11 insertions(+), 19 deletions(-)
> > > 
> > > -- 
> > > 2.17.1  
> > 
> > I have submitted this patcset on 28 March but I haven't recieved any
> > review on this.
> > Is there anything wrong with this patchset?
> > 
> > Please let me know, so I can correct them and resend the patches if
> > needed.
> 
> I haven't reviewed this series because I'm confused. You later sent a
> series:
> 
> Subject: [Outreachy kernel] [Outreachy] [PATCH 0/2] staging: qlge: Resolve  various warnings reported by checkpatch.pl
> Date: Wed,  1 Apr 2020 12:21:18 +0530
> Message-Id: <20200401065120.17459-1-debsoumyajit100@gmail.com>
> 
> ...how are those different? Which one should I review?
> 
> -- 
> Stefano
>
Hii Stefano,

Both patch series are different. The patch series which was sent on 28th March was for the file qlge_main.c
in the qlge driver. While the patch series sent on 1st April is the
patch series which was formed by clustering previous individual patches
for the file qlge_mpi.c in the same qlge driver as suggested by you
eariler.

So, both the patch series are different and they effect different files
in the same driver.

Please review both the patch series.

Thank you

--
Soumyajit

