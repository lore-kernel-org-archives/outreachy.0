Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E991C36
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 17:46:21 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id v4-20020a17090a088400b00212cb0ed97eso2815520pjc.5
        for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 10:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Uc4BCXuneFbAr+Q+3acJzuyS5cT6e734I0PoGP9DMkI=;
        b=QHI46uo1iUQ4yMgFZ6W8qpn2jryhVCt4oMbcmGMERN3MsP0t0EqsoYcD1PD5F8spjB
         DnwDaTBG6XAnUCPY9wC10oKrwwY77/TNcok0pV5LDKwUlCcspzeGLqblx6YzgDJ5NAOZ
         5n1DLBErr5O6zBqJP04RMufJtK49rNcXiK4WZkRYqG8rD/QroRPtIXzcIy9Y9Wk3/MC7
         yH5sP+LitQHeaPyGDeAOCl3W7dI2tP8iHk01MqNOFBoWxyqpqZbFcJEB2AW8YpbpG8px
         qcwRmv+A9p1yigkg7X3qVzzHBGDEUiHdAxyAwz3x/fpCsk0EVp0lv85ghfZU9t3AbpG9
         4niQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uc4BCXuneFbAr+Q+3acJzuyS5cT6e734I0PoGP9DMkI=;
        b=rZKBfN2f6jHjqMe1Qy1LGt7b6mH3rL1xEovPHBnIMXPqZhc6M2RqANk1AoxUfGFl4X
         09pI9kcy+vb84MxBNFx54umw8lETSTZs9XHQ5r2GEP8de6ixDUxyhP7yvGPA1nwQLn1t
         btP6m2KDxD6jODjV64YRr2h4kU6c0Z4aX3xQp+etaZtfJvmCwUqM81ahC2/GKZAKrA0/
         6b1Hoqsul4AV5X0OgB8VKMsNn2p54nT2V8OJWM3SIwze7lFKsIGAtcHrQyByre8mKFiS
         S9D2KCdSRDTUdCxQUVDn1Wt0I05NPyyV+utH3hXnX0mgdyBKZOnJkVkK6Uv6ttwlvcnI
         2S+w==
X-Gm-Message-State: ACrzQf25vgRydkjZ7iwuPHjaYOlD3vxrnJwDNNPk7RK5McRJx1JiWEdN
	TRtBPrWorfSuGHc9GU53DM4=
X-Google-Smtp-Source: AMsMyM5cdGC43W5RFMb1la9KFefL+A7P4U7yavB3wDM7RPPm/JoBWaGMA/b0AR1eqjOaBXHk6Q9lUg==
X-Received: by 2002:a17:902:ec92:b0:186:9fc6:868c with SMTP id x18-20020a170902ec9200b001869fc6868cmr18674425plg.12.1666806380860;
        Wed, 26 Oct 2022 10:46:20 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id p2-20020a170902780200b0017f7bef8cfasm3137290pll.281.2022.10.26.10.46.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 10:46:20 -0700 (PDT)
Date: Wed, 26 Oct 2022 10:46:17 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Saurabh Singh Sengar <ssengar@linux.microsoft.com>
Cc: Deepak R Varma <drv@mailo.com>,
	Alison Schofield <alison.schofield@intel.com>, dvarma04@hotmail.com,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
Message-ID: <Y1lyaXrcv7cU1SSH@marshmallow>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
 <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>
 <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64>
 <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Mon, Oct 24, 2022 at 11:56:51AM -0700, Saurabh Singh Sengar wrote:
> On Sat, Oct 22, 2022 at 11:03:53AM +0530, Deepak R Varma wrote:
> > On Fri, Oct 21, 2022 at 10:13:48PM +0530, Deepak R Varma wrote:
> > > On Fri, Oct 21, 2022 at 02:46:13PM -0700, Alison Schofield wrote:
> > > > Hi Deeva,
> > > >
> > > > I saw your Outreachy Dashboard update that noted your past contributions:
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Deepak+R+Varma
> > > >
> > > > You have plenty of cleanup patches in total and it would be great if you
> > > > could move on to try out some small tasks for the Coccinelle project.
> > >
> > > Hello Alison,
> > > First, sorry for the delay in responding. I was travelling most part of the day
> > > today and just checking my emails now.
> > >
> > > Thank you for looking at my first-patch contribution record. Your message is
> > > encouraging. I will starting working on the Coccinelle project tasks outlined
> > > in the project description.
> > 
> > Hello,
> > I am reading through the Coccinelle.org link mentioned on the project
> > description page and following through. Is that the right approach to accomplish
> > the project tasks? Any additional guidance will be helpful.
> 
> Hi Deepak,
> 
> Yes you are on right track, look for how to use coccinelle/coccicheck and try to
> find some issues in staging directory. Please feel free to reach out to me and 
> Praveen if you face any difficulty in accomplishing it.
> 
> Regards,
> Saurabh

Hi Saurabh,

I'm also trying to follow along with this email thread, but I'm a little
stuck. I compiled coccinelle, but I'm not sure what to do next. When you
say 'try to find issues in the staging directory', do you mean the
staging directory of the linux kernel? I don't see a staging directory
in the source for coccinelle. Thanks!

Best,
Emily

> > 
> > Thank you,
> > ./drv
> > 
> > >
> > > >
> > > > There are notes on how to get started in the project description, including
> > > > how to contact the mentors.
> > > >
> > > > Please try to keep your applicant/mentor communications CC'd to this
> > > > list.
> > >
> > > Sounds good. Will follow your guidance.
> > >
> > > Thanks again!
> > > ./drv
> > >
> > > >
> > > > Thanks,
> > > > Alison
> > > >
> > 
> 
