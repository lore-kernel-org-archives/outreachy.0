X-GM-THRID: 6809167002234519552
X-Received: by 2002:a1f:45d8:: with SMTP id s207mr14467433vka.33.1586179186307;
        Mon, 06 Apr 2020 06:19:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:24c2:: with SMTP id k185ls949518vkk.1.gmail; Mon, 06 Apr
 2020 06:19:45 -0700 (PDT)
X-Google-Smtp-Source: APiQypLlleoJwHawIx7oVApZum/YZjIpt43RKTNe8qb9rtQYJJz/bjJqd7rGE4PriuOBpj68Gxgh
X-Received: by 2002:a1f:9148:: with SMTP id t69mr14024612vkd.83.1586179185086;
        Mon, 06 Apr 2020 06:19:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586179185; cv=none;
        d=google.com; s=arc-20160816;
        b=Q4nPQ+/mw6mXgXQyJIUXOMmbTTSW44KGmX4NM8vL4I9euq0EsypOg/n/8vfLOi7WsT
         CLrNC+SvAEcrZRIzu7rosIdZ3xVA3kA4q9DQbYmp86PMqf0QM1umgLCIsjNF1WA4DoWi
         0DuN9FMsoXPIcoGCE8k1rrDUoYCJeGLfttqzjZPiygNCMTmNHkVYfVnz92Xgm5UoxdvP
         eQYEBQvB24XcXzdLJyTpDERfIHDc7/jJZPruTkud8W5yhGfC0tmiekxBICn3xq0/3Ore
         iZkxX9kMOa+FPJN8e6dQYZGkOBAHuG9ewW/NjIyXZnU7j0Y/gwJQelcq4M0Y6OwWmL/Q
         gQ4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fn9bHqv0i/7qZj6L+zxcl3YWo2yHDIiUOIifLzv7aHQ=;
        b=xdSb++FICQOIYMnrT22mshFLa/GBdbixZh6lyXa9cwnshW24fsaj0vCceJvm3M52BU
         VQLfO4uGK7FxEdZ712gNf0cgv2A9lzO0kMMNiIJ7iE8ch2455G36UCfVBT4NgrfbGAio
         kO594RMINcRazqEno4TcGND284u7FIvNxjGbN46LbqFnqIrjvrhR4jxeFvd86fG6ArpR
         phuatE9BoY2tSH3GABd5IKvCIsJkLSqUdslDRgJz8oa4bbejafq8ED0e57eDIPiXyKXt
         f8ICUDXfAFi6vC+4QmF08GeDNybHeR1g/Vjzr0Qq96tWJq3sFwy6iugb/dFBndY/TQx6
         CxMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SvQoyXsq;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 205si1083384vkw.2.2020.04.06.06.19.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 06:19:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SvQoyXsq;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id k5so7556835pga.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 06:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fn9bHqv0i/7qZj6L+zxcl3YWo2yHDIiUOIifLzv7aHQ=;
        b=SvQoyXsqnuKfPc0WG6biq07otWb11ds4tHt8+mBlQNnSDKKDDpKYyLYMcmpBTbJhNr
         UHfz5N0/A+NDaZzkIJVk1dQ3IEuJzJ4+8mka96F6AB2Rybxpw4uaHm1ia7IVxz6kgCoI
         FrrBHvgrWRExr85pk3ZUm5RBT35GGWoHlI0yuTlQx9d8x4ueHFehxRUZtBI17K5bqYgI
         xE/nnQ7/8wd4E9THFSB7EidRfLfZWnLNAv4ijBbTNcRDnFWeGt+g8wOBk55P3ryXLJol
         blRtnbja5DP2pUyBbU5mi+J58JwY5ohV4OXm/6gMWixZTBcdzUyB7pO9fi/t+u0EYtFy
         ZCnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fn9bHqv0i/7qZj6L+zxcl3YWo2yHDIiUOIifLzv7aHQ=;
        b=qhuwoKumpQlFiGrBbqzW5hxnEPfdOLGZnZwqu4pm/Ot7a68jGtktKTG7HIb1irGqVS
         gpXQfvlBw4nZJMj6t6m+MGJb+OnrDDlsUM8B6aea1BbMdagEpxADareriJx91gbOj+VJ
         EhsPrFgY9pvDDQBENnYyIwIsoZ1ECieSD44Hz2lGA90J37+7gz3MEo2Nevhxl7QplS1u
         QJUnsF0XtXrX/skOX9vVyubFpuot1c0e5Q2UNpEub/bPJIPMhUnPdYOdXglsz5GZ11Km
         QiBlVqVbws3Pf93osTqVENHmypYMuEVFCXjSSv8/j1YPTaATb01SCgQIQ+J1iGKZhCoM
         vJjQ==
X-Gm-Message-State: AGi0Pub1wPsUKiouhEiRz/1cvfsO5z+/rsP4Wk+inEKRIT72bInYvIJ0
	ThUIFfeI0o7DyD5IOL7zS8E=
X-Received: by 2002:aa7:970a:: with SMTP id a10mr21125983pfg.139.1586179183807;
        Mon, 06 Apr 2020 06:19:43 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([2409:4065:11f:6885:99b6:8ae:3f27:d6e4])
        by smtp.gmail.com with ESMTPSA id f5sm11506382pfq.63.2020.04.06.06.19.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 06 Apr 2020 06:19:43 -0700 (PDT)
Date: Mon, 6 Apr 2020 18:49:35 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [Outreachy] [PATCH 0/3] staging: qlge:
 Resolve various warnings issued by checkpatch.pl
Message-ID: <20200406131933.GA59911@ubuntu>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>
 <20200401085810.GA19697@ubuntu>
 <20200401225830.4660f152@elisabeth>
 <20200402124309.GA9037@ubuntu>
 <20200403014321.6fbf3291@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200403014321.6fbf3291@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Apr 03, 2020 at 01:43:21AM +0200, Stefano Brivio wrote:
> On Thu, 2 Apr 2020 18:13:12 +0530
> Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> 
> > On Wed, Apr 01, 2020 at 10:58:30PM +0200, Stefano Brivio wrote:
> > > Hi Soumyajit,
> > > 
> > > On Wed, 1 Apr 2020 14:28:12 +0530
> > > Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> > >   
> > > > On Sat, Mar 28, 2020 at 01:32:51PM +0530, Soumyajit Deb wrote:  
> > > > > This patchset resolve coding style and indentation issues reported by
> > > > > checkpatch.pl
> > > > > This patchset add space around various binary operators, remove extra
> > > > > unnecessary blank lines and properly indent a multiline comment for the
> > > > > same file qlge_main.c present under drivers/staging/qlge directory.
> > > > > 
> > > > > Soumyajit Deb (3):
> > > > >   staging: qlge: Add space around operators
> > > > >   staging: qlge: Remove extra blank lines
> > > > >   staging: qlge: Properly indent a multiline comment
> > > > > 
> > > > >  drivers/staging/qlge/qlge_main.c | 30 +++++++++++-------------------
> > > > >  1 file changed, 11 insertions(+), 19 deletions(-)
> > > > > 
> > > > > -- 
> > > > > 2.17.1    
> > > > 
> > > > I have submitted this patcset on 28 March but I haven't recieved any
> > > > review on this.
> > > > Is there anything wrong with this patchset?
> > > > 
> > > > Please let me know, so I can correct them and resend the patches if
> > > > needed.  
> > > 
> > > I haven't reviewed this series because I'm confused. You later sent a
> > > series:
> > > 
> > > Subject: [Outreachy kernel] [Outreachy] [PATCH 0/2] staging: qlge: Resolve  various warnings reported by checkpatch.pl
> > > Date: Wed,  1 Apr 2020 12:21:18 +0530
> > > Message-Id: <20200401065120.17459-1-debsoumyajit100@gmail.com>
> > > 
> > > ...how are those different? Which one should I review?
> > > 
> > > -- 
> > > Stefano
> > >  
> > Hii Stefano,
> > 
> > Both patch series are different. The patch series which was sent on 28th March was for the file qlge_main.c
> > in the qlge driver. While the patch series sent on 1st April is the
> > patch series which was formed by clustering previous individual patches
> > for the file qlge_mpi.c in the same qlge driver as suggested by you
> > eariler.
> >
> > So, both the patch series are different and they effect different files
> > in the same driver.
> 
> Okay, but in general, that's not a good reason to have separate
> patchsets. The difference should be in the topic of the series.
> 
> At this point there are three "active" patchsets for qlge from you:
> 
> [PATCH 0/3] staging: qlge: Resolve  various warnings issued by checkpatch.pl
> [PATCH] staging: qlge: Properly indent  the multiline comments
> [PATCH 0/2] staging: qlge: Resolve  various warnings reported by checkpatch.pl
> 
> "issued" and "reported" are synonyms, which would seem to indicate
> those are conceptually the same type of changes.
> 
> I think the second patchset (with one single patch) was then
> incorporated into the third one, but the third one doesn't mention it
> in the changelog, and you didn't explicitly say it should be discarded.
> 
> Mind that reviewers are people and, while we can use some
> interpretation, things need to be sufficiently clear. Given the
> subjects of the active series, I'm really lost. I could decide to
> review first and third patchsets, but still I don't understand why they
> are separated.
> 
> -- 
> Stefano

Hi Stefano,

Right now, I am also having trouble keeping track of all the patches and
recieving multiple feedbacks from different reviewers for the same set of patchsets is confusing
me too. I guess this patchset has created confusion for everybody.

Please discard these patchsets.

I will resend these patchsets in a more organised and sensible manner.

Thank you
--
Soumyajit
> 

