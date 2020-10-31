X-GM-THRID: 6889248551394607104
X-Received: by 2002:a9d:6847:: with SMTP id c7mr4921766oto.134.1604145175636;
        Sat, 31 Oct 2020 04:52:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:53cc:: with SMTP id i12ls2305153oth.7.gmail; Sat, 31 Oct
 2020 04:52:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyhMmf9T7+g0xn5XfUPi4JAWN9zhg2p9MyyFn2A6EiM0fSNg5DQoHS1p3dap8uA9yY7Zwc3
X-Received: by 2002:a9d:5d15:: with SMTP id b21mr5268142oti.25.1604145174432;
        Sat, 31 Oct 2020 04:52:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604145174; cv=none;
        d=google.com; s=arc-20160816;
        b=yHC5b2hILMqEb5OVj4+AxFQasnbsaADXpsTyawIagi3snWj9+fLmpRA8uJdIv/KAnb
         lfy3lpBKki8UHwxkz9P1gJur7neCiFSX1JklkyKEOjZoD07wVjsqX9AgTYugXjxfw36o
         Rnt9N1Z86TVxZeckUvhi+4kulevFYHFBColUKhW8VDh5+162jbSe+fMKFHffRDjDDZus
         E6HiFgEV+8lZuEWy4RGInJQqMAWveUkimwEHZjI92No64DBFoAT5+VYf9CcZOjmc66uW
         7cI2AQOqDsnXzDP4Ozm/RiiA2E6IqDWYY14TVVJvTRiq+OamtcxJAVytRvRUPvOrlgjD
         VxPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=u93FVYp0v8iF+MMvGphudmvqlv7giBoXzGEGK/pDNG4=;
        b=gH8DC6rVbSl7nkzEiMkOvyzV7bmP4hRW5IPhrR4a2BfoEJ3f0CrdQ9q29yHHqKbPJe
         DMn8ey9oMXoVsGErqGNv8nwwDDUjjfc0550CXLvYCOixdnWPkxq/NzhDZqPnFhNK3trt
         bEzZDTcWevqlwc1mlbQGsIKwXAJm+DbgRSFQ/f9D8f7gsmvXHeMFT54T0gAVXnwYMrTP
         3PkIgAq5vsNDfDC2RMnDF1Y9OayMb0UvbLMkrqGqO0q9mPOmCgSO1G3XwEEX062+ku7Z
         RCEjJ1tnP6TAJY0htDByo5wYAAxfPA4qoPHTe9mnEfz27ZKwgV1w06HAPk1op/j1DFRE
         kh2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.3 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0003.hostedemail.com. [216.40.44.3])
        by gmr-mx.google.com with ESMTPS id r6si1204199oth.4.2020.10.31.04.52.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2020 04:52:54 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.3 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.3;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.3 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 7E2E8100E7B42;
	Sat, 31 Oct 2020 11:52:53 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2525:2553:2560:2563:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3000:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3870:3871:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6119:7903:7904:9025:10004:10400:10471:10848:11026:11232:11473:11658:11914:12043:12114:12219:12297:12438:12555:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21627:30054:30070:30074:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:75,LUA_SUMMARY:none
X-HE-Tag: hate63_1d141c52729e
X-Filterd-Recvd-Size: 2182
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Sat, 31 Oct 2020 11:52:51 +0000 (UTC)
Message-ID: <0b818156537f354904938f437cbb9dd02e765653.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] drm/amdgpu: use
 DEFINE_DEBUGFS_ATTRIBUTE with debugfs_create_file_unsafe()
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Deepak R Varma
 <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Alex Deucher
 <alexander.deucher@amd.com>,  Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Date: Sat, 31 Oct 2020 04:52:50 -0700
In-Reply-To: <20201030080316.GA1612206@kroah.com>
References: <20201030032245.GA274478@my--box>
	 <20201030071120.GA1493629@kroah.com> <20201030075716.GA6976@my--box>
	 <20201030080316.GA1612206@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-10-30 at 09:03 +0100, Greg KH wrote:
> On Fri, Oct 30, 2020 at 01:27:16PM +0530, Deepak R Varma wrote:
> > On Fri, Oct 30, 2020 at 08:11:20AM +0100, Greg KH wrote:
> > > On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:
> > > > Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
> > > > function in place of the debugfs_create_file() function will make the
> > > > file operation struct "reset" aware of the file's lifetime. Additional
> > > > details here: https://lists.archive.carbon60.com/linux/kernel/2369498
> > > > 
> > > > Issue reported by Coccinelle script:
> > > > scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
[]
> There is a reason we didn't just do a global search/replace for this in
> the kernel when the new functions were added, so I don't know why
> checkpatch is now saying it must be done.

I think it's not a checkpatch warning here.


