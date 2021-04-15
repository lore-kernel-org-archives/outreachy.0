X-GM-THRID: 6950732007035895808
X-Received: by 2002:a19:ec04:: with SMTP id b4mr2556876lfa.141.1618494097607;
        Thu, 15 Apr 2021 06:41:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7408:: with SMTP id p8ls1161326ljc.1.gmail; Thu, 15 Apr
 2021 06:41:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzNeYuA7OVQ5QUvc/z5CScKh0udzyPjP1OIqJTw1bDGt+BTUYSOCKdtNzacTBhAj9rpGiVU
X-Received: by 2002:a2e:a170:: with SMTP id u16mr1897901ljl.410.1618494095855;
        Thu, 15 Apr 2021 06:41:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618494095; cv=none;
        d=google.com; s=arc-20160816;
        b=xjGge+oDx8aSHQb8boULof4SMFrrh8SM+j/gwix2ktzOnFLf1Pwme43Gv7juezePOI
         YIJtGco6fUeBdM82vPXwrddM2MjXazUpYH21UH095fZCY0Cv6eiOr6AN2mG4G7cREMMF
         W5PVscU54ea+iv7ri57uyE+S7b1kIIk3eQujObkaXNoensCW/2goc7dOPAL/ElnEQhFr
         3LHy54cvBE96BLtALZloeokcWHLJgzWq6BisGUxkwcgN5vwt/XXGtjW+/HS4UCo5KfQx
         l6xoQfTg+9rjW3y/x7GIutRuxjDfCEglMCgPes3Kg0I+fp1QwOfYZmuX9LS1qctDUY61
         Qxpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=AQgzeY/R64l0vEeipQIW/3eCkDYIwBwfCSnVDX0xxSE=;
        b=P/3RLyS9n84Y5bxbGdig9VhF8L/3zB/DbYiCAqgRQGyLUEdhkjO7+6722mAw5q07vG
         kPU2/rbQv2aVwj2drJ7EHJH/R2SMiGwS/9GJ+Ebiv0K8SgBMQFo1hdHfH5oWVW5KSurU
         xbNbuhMJRbjupN8K+n3Z7m+AIv6ZeZ+VsDH3LQHlWgNaU+YWzWdgJeeYIA+6L6oKW8vi
         5jwGccJht3jJh+5zIQMCIZgeD+zleSuPj1WssyN8uEmaAhMScWtnMswBbbSXTK5yiP5J
         8yZv86QaKDeltBDRkPLlbF9shmZ5Ztok3w0KnEET2yyhR/Up17OqeRRU0t2LDcuY4RHO
         E2wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j7si174633ljc.6.2021.04.15.06.41.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 06:41:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AngYAza7UWSMWbtMJwAPXwCnXdLJzesId70hD?=
 =?us-ascii?q?6mlaTxtJfsuE0/2/hfhz726RtB89UGwt8OrqBICuWnXZnKQe3aAwOvOYUBDiqC?=
 =?us-ascii?q?+UKuhZjLfK5x3FN2nA+vVG1aFmGpIObeHYKVRhl8717E2ZPr8boOWvy6yjiefA?=
 =?us-ascii?q?w3oFd2gDV4ha4wh0EQqdGEFtLTM2ZqYRLoaW5cZMulObF0g/U8LTPBU4dtTYq8?=
 =?us-ascii?q?aOvJzrZgNuPW9E1CC+yQLt0rL8HhSCty1ybxpEy94ZnlT4rw=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,225,1613430000"; 
   d="scan'208";a="378762268"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 15:41:23 +0200
Date: Thu, 15 Apr 2021 15:41:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: zzam@gentoo.org, clabbe@baylibre.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, linux-media@vger.kernel.org, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] Re: [PATCH v4 2/2] staging: media: zoran:
 add BIT() macro and align code
In-Reply-To: <YHg70mRLN5S8mywn@kali>
Message-ID: <alpine.DEB.2.22.394.2104151540360.29064@hadrien>
References: <cover.1618342050.git.mitaliborkar810@gmail.com> <fb60b20f7cdf3650d678fac4c0f1f364ac6984bf.1618342050.git.mitaliborkar810@gmail.com> <c6a301f6-99f3-69e0-a394-00948aef6c1c@gentoo.org> <YHg70mRLN5S8mywn@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > > +#define ZR36057_JMC_JPG_EXP_MODE		(0 << 29)
> > > +#define ZR36057_JMC_JPG_CMP_MODE		BIT(29)
> > > +#define ZR36057_JMC_MJPG_EXP_MODE		(2 << 29)
> > > +#define ZR36057_JMC_MJPG_CMP_MODE		(3 << 29)
> > Same as above. Please change back ZR36057_JMC_JPG_CMP_MODE to be (1 << 29).
> > Then this 2 bit field is consistent.
> >
> Sir, I guess this BIT(29) was already present. I didn't changed this.
> I will change this as you said.

It comes from this patch:

5e195bbddabdd94b15eeb60439cece996d58b329

Probably putting it back should be a different patch in the series.

julia

