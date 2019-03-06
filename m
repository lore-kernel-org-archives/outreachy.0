X-GM-THRID: 6664067951305424896
X-Received: by 2002:a50:944c:: with SMTP id q12mr4021203eda.0.1551864826057;
        Wed, 06 Mar 2019 01:33:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:af8d:: with SMTP id mj13ls356648ejb.4.gmail; Wed, 06
 Mar 2019 01:33:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqzwBop4FVtoQuDz47hplr49QbhWkUvBmosnUm1l7T4yH/vjafHMoE382+3H6AdYnA8j8U9W
X-Received: by 2002:a17:906:c9d2:: with SMTP id hk18mr688072ejb.5.1551864825239;
        Wed, 06 Mar 2019 01:33:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551864825; cv=none;
        d=google.com; s=arc-20160816;
        b=qVbBJ786dfjOSFVFKOUGtw6oGPh3d2AWscYmko/6+yScjzSKW3sDWl3BltGfqx+PjY
         mNzXNycBsngnQkht57aljaMbI0Ys3C0yD0pyNFvgEZeJyf7L4Ce/F5XrLacQ9VMFT3ow
         4RdfEcoc+2aLQxmC7RHuVOA2hPCAvFgsc922+3et8LawOnCEgmtTPZuEvnMxXKB7cfq9
         OGrxccmnjmlm8X58BfioeSzrr0iM/CXaqJH8m2WgWEuHeVvNiD7UixtV9VEtB8nrAsoV
         e2lDeRCELvUHai7aVcgy4ILPO/a6kTPg6QEZQMxQEKOZpUYka/hBUgSrApAQJ3D9qR9I
         i+/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2h6Nnjyi4CxVfwbSmVRqHduXFnrulofUpwizV+uPgJY=;
        b=AWm6aUjALUjScEvTNZl2RfqcpL/kb6ZmtSkNQne/Nm8LY9OAdPIDHJDtB9JUgeYJId
         TL3KHfbQm25jPWOyDdjzT78Y/FSkix79fO5SHGvlzUfV47rUtILPwh+Xd7BypXB2LJbd
         RR+l8S0Hn0Np4tDDW+L5S1+QCqCtfPc2T00DT9JmDhJbJkpi8qxZURHRE/viZj6+ddFa
         LE74cHSp2U0Iq0GlKf+1L7AoEfZlS4xxcSQ4A7FZrf+bRwgsWGO0Led6cZalMqKwSUX2
         k71zUwNhrPUFIJX+2ejdjcuPVNgfeA11AwOPJz9ZKmxfBzc1609Tje52kihMkJQbcz1x
         9zdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i16si45387ede.0.2019.03.06.01.33.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:33:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,447,1544482800"; 
   d="scan'208";a="372144614"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 10:33:44 +0100
Date: Wed, 6 Mar 2019 10:33:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Debleena Sen <idebleenasen@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4] Staging: pi433: Fix line over
 80 characters issue
In-Reply-To: <20190306091544.GE7927@kroah.com>
Message-ID: <alpine.DEB.2.20.1903061033090.7709@hadrien>
References: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com> <20190305074018.GA6158@kroah.com> <CACw+u4FnMCpiBiYPqaz3R054wm2q3Rx9q2R7S15_2+EPhJmkNA@mail.gmail.com> <20190306091544.GE7927@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 6 Mar 2019, Greg KH wrote:

> On Tue, Mar 05, 2019 at 09:54:44PM +0530, Debleena Sen wrote:
> > On Tue, Mar 5, 2019 at 1:10 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > > On Sun, Mar 03, 2019 at 02:01:36AM -0800, Debleena Sen wrote:
> > > > Break the line and match the indentation to remove the
> > > > checkpatch.pl warning:
> > > > WARNING: line over 80 characters
> > > >
> > > > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> > > > ---
> > > >  drivers/staging/pi433/rf69.c | 3 ++-
> > > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > What changed from the previous versions?  That information always goes
> > > below the --- line please.
> > >
> > > Please fix up and resend.
> > >
> > > thanks,
> > >
> > > greg k-h
> > >
> >
> > I'm not able to find the commit.
> >
> > I tried using "git reset --mixed e19b9ce" but it shows an error:
> >
> > error: object e19b9ce794a8534f0ad19bfa1c60260fd74b9bb9 is a blob, not a
> > commit
> > fatal: could not parse object 'e19b9ce'
> >
> > How can I recover it so that I can add the changes?
>
> I have no idea what you are trying to do here, sorry.  Why are you
> running 'git reset'?

If you get confused with git, just undo the whole thing and start over.

julia


>
> confused,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190306091544.GE7927%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

