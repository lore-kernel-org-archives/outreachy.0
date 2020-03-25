X-GM-THRID: 6807107593039773696
X-Received: by 2002:a05:6214:ab0:: with SMTP id ew16mr1383235qvb.35.1585169348519;
        Wed, 25 Mar 2020 13:49:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8e46:: with SMTP id w6ls824848qvb.6.gmail; Wed, 25 Mar
 2020 13:49:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtjGBcc1GC0AtybdWsDqzSgkA38F90zqVtMNkSahRN4Aq4ZLuLJz5neOaBlR4FbFrsaT0NA
X-Received: by 2002:a0c:b549:: with SMTP id w9mr3000949qvd.200.1585169347363;
        Wed, 25 Mar 2020 13:49:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585169347; cv=none;
        d=google.com; s=arc-20160816;
        b=T+1x3wN2eQTaA7WXKE+WnYr1UVtF/dLWS2vJsUpfEeEaUYJ9xDutvwHUhirFCCs4wm
         xKmz0z/DFe8K5wC+7OWBbazviJYRmB6IDtS+WK5lSmlm+St7tPQr+nJagBDi40BsiQhw
         62DOMpfKCCI0scbdZQ7yw63A/kLBA2gdTX+Rpt/iWc+y+qMy+IAAgCkG8bPJzXxKQ06P
         FfZrnR2rFy8DsooMO66mRIUynBrRXj7BsO5dKQQyE3wEPPI3cPuVApzIvZgqlJ90yAIZ
         pwo9BoL3xZ0UOWfEZ3Alp9RiEiVRn5NO+8O4CJKSlL/X4EEFeC+R0odrYYeTkb0Vux3Z
         7EnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DCl6Uzk3YCvxFy/Sfh1MfDqSBV/2m3KHS+BeAcBStpI=;
        b=gccw4TKa9U5lZ0D3P+4aJaoWZ0oWwXT1vwZ3hgvv/XdsHyneVCrPfSZvciU+UR+Kdr
         wyC6KWvQbPWlMUNYq+gbCCps+qjbfL63NAOyAjaneSZhaP5dX1flicePX/tVhgAtTdGI
         KT5OeSDVhSHVoFuRTjGAU9OoK/ZXiJ0jxOxW7sVkqh7vCl4Y/UKZEEUJsbu/NSug5+/2
         sDqx6YBaRoDS0UgwBTVvTtHC+TAZmYECEsti/FH02LXHA3EOXf+JzYvrZdZriULWz9bv
         Ew0KHrjt93u0WLUfrLjEK8tx+5S21ei9qYoW5C2/UNhibd//muHyTaMO7w5qm0ulCh8C
         lwtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KqfheSdL;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m6si29513qtk.2.2020.03.25.13.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 13:49:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KqfheSdL;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id d17so1756635pgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 13:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DCl6Uzk3YCvxFy/Sfh1MfDqSBV/2m3KHS+BeAcBStpI=;
        b=KqfheSdLUbvTZrQhHcW2KBQjYjXbwlp+Uqveb1rUxCwMYxXCXurmQpkszV1Z9iK7BC
         xJH8LV9ssFQiymx7peOGhoTbAD0RUQ8azhcgNvGD7p5Q2YQPXY3I/xQZb5QjI8pVYyAL
         QSpHKkhZfkX1eaNMCI7h/71Pk3CMhamHYMJYMqWdYw97DFufX9sz3H7ssFl/I64pG9N/
         19o4RbEm77FOCVqoHIljnoObGkVNthUSYtG5Ijet7qVG30DiWvtcTdlly8bPkU2wwMzD
         eNCcMO0hU4IXvxTt/H7HQCRoog8K7tMutI55n4Gh0PBhU6YnqT/2OQUqdu/cNyGsirmE
         3ncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DCl6Uzk3YCvxFy/Sfh1MfDqSBV/2m3KHS+BeAcBStpI=;
        b=HACc1uMoToRgZkD+htIKp65KCh8F+0YG1Dy7vwBxuSW0oGWTSdEk5Hs2j+Rh1L0t/E
         NuF2QwPmYURUaEfm0nE2PRSsAJdUl+A+BgWHAZyiTW2FRBfUkrvsBeocWWifytMCmLhk
         m9uRBQryzhkY+tMdtwa/iAquXjvwQgeQyZnV491bv1xEGKZr3EhRmG/ufEeDP0n54cjv
         5EASpSxPpz3T8VRnsf/QHMJirIWV153/XUX54mJKylapRddgKBympBENoomoGLnVwYkr
         Gr9rh2ADADMyDNKiFD5pSOWU0Va3N3uA635rOgb9q5FI0icEpJVhJACrOT1R3uSjDgvL
         C+pw==
X-Gm-Message-State: ANhLgQ0D7rHjBWVkMyzd1++rgOVm2t7jsO0uVy8NEjPXxXNQLshcAs9W
	BY2ZLaTJMjyUf9gPdUdjaCc=
X-Received: by 2002:a63:f243:: with SMTP id d3mr4878985pgk.254.1585169346826;
        Wed, 25 Mar 2020 13:49:06 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.248])
        by smtp.gmail.com with ESMTPSA id u21sm141310pjy.8.2020.03.25.13.48.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Mar 2020 13:49:06 -0700 (PDT)
Date: Thu, 26 Mar 2020 02:18:49 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Baluta <daniel.baluta@gmail.com>,
	kieran.bingham@ideasonboard.com,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v2] media: staging/intel-ipu3: Reformat pointer
 initialization
Message-ID: <20200325204844.GA30732@deeUbuntu>
References: <20200322185350.GA12377@deeUbuntu>
 <CAHp75VcP1O_QwepgAHPBaTLcr_3=ynV6hsmcgvYnBCz7DdoWxw@mail.gmail.com>
 <20200323151710.GA22110@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200323151710.GA22110@deeUbuntu>
User-Agent: Mutt/1.9.4 (2018-02-28)

Adding Linux-media list as advised by Sakari Ailus.

On Mon, Mar 23, 2020 at 08:47:12PM +0530, DEEPAK VARMA wrote:
> On Mon, Mar 23, 2020 at 01:35:58AM +0200, Andy Shevchenko wrote:
> > On Sun, Mar 22, 2020 at 8:54 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> > >
> > > Reformat pointer initialization to make it more readable as per the
> > > coding standards. Problem detected by checkpatch.
> > 
> > > -       struct imgu_v4l2_subdev *imgu_sd =
> > > -               container_of(ctrl->handler, struct imgu_v4l2_subdev, ctrl_handler);
> > > +       struct imgu_v4l2_subdev *imgu_sd = container_of(ctrl->handler,
> > > +                                                       struct imgu_v4l2_subdev,
> > > +                                                       ctrl_handler);
> > 
> > I'm sorry I don't see benefit of this change, actually an opposite.
> 
> Hello Andy,
> Thank you for your comment. To me, it helps quickly and clearly spot
> *imgu_sd. Also the initialization looks more structured. But that's just
> me.
> 
> I will wait to see if anyone else wants to share their thoughts, and
> then circle back to you on next steps. Is that fine?
> 

Hello Andy and all,
I have not seen any additional comments on this thread. Let me know if
you approve the proposed change or want me to leave it as is.

Thank you,
Deepak.

> Deepak.
> > 
> > -- 
> > With Best Regards,
> > Andy Shevchenko

