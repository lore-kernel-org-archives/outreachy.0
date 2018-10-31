X-GM-THRID: 6615609378154217472
X-Received: by 2002:a1c:814d:: with SMTP id c74-v6mr156074wmd.19.1540965988911;
        Tue, 30 Oct 2018 23:06:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d743:: with SMTP id o64-v6ls616677wmg.27.gmail; Tue, 30
 Oct 2018 23:06:27 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f/KEpq7jukPtyiAN8Rbe4K5c+36GZryILrZimAta+/AJqTVJ+znOdpFyhN2XzXEKtNW+M7
X-Received: by 2002:a1c:1592:: with SMTP id 140-v6mr152226wmv.25.1540965987971;
        Tue, 30 Oct 2018 23:06:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540965987; cv=none;
        d=google.com; s=arc-20160816;
        b=YnvYbF98R9dgeBUtCQ7dKuwQq7gmU6pbJ1dIRsynE7/CxOINpvkE9SAxdFn5rrOu8E
         4LvSzKpaq0eCL22IH2DjIj5kBXj92nUvb5LYcJjxymqEwmcxPTpA3AzBhJ/v7LPNInvw
         uTrO2IX2mB/+/5hJC0Zlsz99LDUKmKafoSxw+o6EVxwNiN8yE9BJZhgEz9nZjIV2GsXJ
         DHmym05TRTvlVUWWN1gIRW7BsjvBpf1uV5TJB39yqyXDNndcIQ/plt4bkBZ9OcQYxep3
         BLmjzbNgNSwjpgYY+7cabOO9d8Lc6yZ4z33cZfnWrFY2aBuPlMDXC3eWv1m/w5SMRXbM
         6thg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/b9QPZfJ1OWCEdViDY8o4TKIqLk7xg1Ks3onJwP6ebk=;
        b=UXm7qKsIrjWUOXIpT9Ol0UWLkcJsZg/H67aqiimAoY9Hbcm/XVLi+V2ty6hEz5pPPk
         DE3sCizVrWvGHmLbsBiyg1OHnOj+My78tb4YIy+dxd7mSdVpFoxQC3b9+ciNaz2ZBmQ4
         xKZL2r+K1rIwvHZgNOs3oM6VGv2qReNgI7TCoNZlPrRO+imkKftXlgj6kkX82z1ukKA3
         BzAXIJ2ektd3rcZE6qerWcWZeU8CFtfWFlQcH8ga458l1RhIabefSHiGNr9YPk0MvcP4
         unFYLm6Ds4gGuK08mJq5+1s8M1+39Lcse4IxGqmfxOCcRXvGahxrS963pOwwsw0+rN7h
         yK/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h137-v6si617257wmd.1.2018.10.30.23.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 23:06:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,447,1534802400"; 
   d="scan'208";a="283890510"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 07:06:26 +0100
Date: Wed, 31 Oct 2018 07:06:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shayenne Moura <shayenneluzmoura@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Hans de Goede <hdegoede@redhat.com>, 
    Michael Thayer <michael.thayer@oracle.com>, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: vboxvideo: Remove
 unnecessary parentheses
In-Reply-To: <20181030231757.24ooubt25oykmgkt@smtp.gmail.com>
Message-ID: <alpine.DEB.2.21.1810310705530.4711@hadrien>
References: <20181023174304.iq4ra7vafwujr3ex@smtp.gmail.com> <20181030092539.GA10009@kroah.com> <20181030231757.24ooubt25oykmgkt@smtp.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 30 Oct 2018, Shayenne Moura wrote:

> On 10/30, Greg Kroah-Hartman wrote:
> > On Tue, Oct 23, 2018 at 02:43:04PM -0300, Shayenne da Luz Moura wrote:
> > > Remove unneeded parentheses around the arguments of ||. This reduces
> > > clutter and code behave in the same way.
> > > Change suggested by checkpatch.pl.
> > >
> > > vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
> > > crtc->x'
> > >
> > > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> > > Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> > > ---
> > > Changes in v2:
> > >   - Make the commit message more clearer.
> >
> > This patch does not apply to the latest kernel tree at all :(
> >
> > Please fix up and resend.
> >
> > thanks,
> >
> > greg k-h
>
> Hi Greg!
>
> Sorry, I do not know what branch are expected to be used.
> I used the drm-misc-next to create this patch and I could not
> find any merge problem.
>
> Could you please tell me the details?

For staging drivers you should use the staging tree as indicated in the
outreachy tutorial.

julia


>
> Thanks,
>
> Shayenne
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181030231757.24ooubt25oykmgkt%40smtp.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

