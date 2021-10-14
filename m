X-GM-THRID: 7018941118564794368
X-Received: by 2002:a05:6a00:1346:b0:44d:242a:8151 with SMTP id k6-20020a056a00134600b0044d242a8151mr6707191pfu.62.1634234040679;
        Thu, 14 Oct 2021 10:54:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6401:: with SMTP id y1ls2563238pfb.10.gmail; Thu, 14 Oct
 2021 10:53:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwX9O90GO47dZZat6/hdFQ/cJO+/aDf3L2ygqUHhQm+INvOvkgTTqlTLD3N//6tOMrtsXt7
X-Received: by 2002:a62:33c2:0:b0:44d:ab9:2e92 with SMTP id z185-20020a6233c2000000b0044d0ab92e92mr6817744pfz.10.1634234039476;
        Thu, 14 Oct 2021 10:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634234039; cv=none;
        d=google.com; s=arc-20160816;
        b=HqUOgyMW37alxwhZJjrGMpkNUnzKmTDkNLEXmssfzLOEf8WJZKrzfX3IsFE298oky+
         V6E4KVtsRR0GZLnVLlpcq9H/fcJEicS0da3NQZ3mJMlluKSNWtovFXC/Fj/nywo/r9yP
         Nd/Sjt+RMZ5J9r1nhiODM3eqHxA8BjxPh4KS0EO4K61AQ7jUlKWJqgV/NPdJ0pFaiarD
         eyXsOKPEFGIYS7FmNE/IGBX5TOOFSlbrk8cIhN6VawU5WmLyN2ukOYh5CdT85XnLKd0H
         Do0m+st5/PPK+B8Kck1DNRNhWU9hXQpZQk17xNA6sJ1XpSoOgVekAIbwHKOSjkpNzWqK
         od4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7Wj84qHtE5F1KKB4wkm6XhFM5kmq1+jaGsj05m+4kdk=;
        b=RtaiaMECVSKhPce0HnGsE78IpjxSHhz538LnhokAqOp+B/vcZy4+15K48gL+RCdI7A
         Ab5+S2LDpGaRa4A1MqQwenM9cnkGafARoMWpkwS1BxhZsNdUAe1XNh0SdUPvZo9RvxBL
         levgPcWK9XRdgTjmSpAqiCAPyOtQSDY2vaaiP2zNrAnCMpM3aMrBptvefKWSwm30+Aal
         GUmBFaMuTdn5bbdoPaopUblypkgshQeUQcQB+gU9pXY1TPVbNr6wUL3wxRt3UVERtXaz
         AS0plgpy8iqKObAU4UJNTXoW0THZRuZa4DCvhGv8YWui2xjC7iSF3nU7AJH2we+Ep8ui
         lSGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CBQwc8lM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c21si163517pfb.0.2021.10.14.10.53.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Oct 2021 10:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CBQwc8lM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id BB70261152;
	Thu, 14 Oct 2021 17:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634234039;
	bh=Va3OICSLfKZaQMs68302uNcvcPSfBZoouqxIr3t+eJ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CBQwc8lMmnHTwmjFGKpllDhwfpnZWP+4+ONvhtxomHoyjA1POZM7QK8sP2xQ1Tw1R
	 wf1zIQ62svE0VE5TjB57VBM2GapkfI7/lTyMnRsEruFM3god0Y+69nEufUfhgTMGMg
	 Brg1eOxYoxPZnJb1re/jF61Ras/yyRKUscpTNIPA=
Date: Thu, 14 Oct 2021 19:53:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	julia.lawall@inria.fr
Subject: Re: [PATCH] staging: vt6655: Rename byPreambleType field
Message-ID: <YWhus0EGaPJXhsHv@kroah.com>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>
 <YWhOfPhVRBrH3gz8@kroah.com>
 <e9c9154ba03e704c1e415c66f2d57f73a2379144.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e9c9154ba03e704c1e415c66f2d57f73a2379144.camel@gmail.com>

On Thu, Oct 14, 2021 at 06:47:29PM +0100, Karolina Drobnik wrote:
> Hi,
> 
> On Thu, 2021-10-14 at 17:36 +0200, Greg KH wrote:
> > On Thu, Oct 14, 2021 at 04:15:43PM +0100, Karolina Drobnik wrote:
> > > Drop Hungarian notation prefix in `byPreambleType` member of
> > > struct vnt_private. Change it to use snake case.
> > >
> > > Fix issue detected by checkpatch.pl:
> > >   CHECK: Avoid CamelCase: <byPreambleType>
> > >
> > > Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> > > ---
> > >  drivers/staging/vt6655/baseband.c    | 10 +++---
> > >  drivers/staging/vt6655/baseband.h    |  2 +-
> > >  drivers/staging/vt6655/device.h      |  2 +-
> > >  drivers/staging/vt6655/device_main.c |  8 ++---
> > >  drivers/staging/vt6655/rxtx.c        | 50
> > > ++++++++++++++--------------
> > >  5 files changed, 36 insertions(+), 36 deletions(-)
> > >
> > > diff --git a/drivers/staging/vt6655/baseband.c
> > > b/drivers/staging/vt6655/baseband.c
> > > index 0bae35af6e0f..69739de927be 100644
> > > --- a/drivers/staging/vt6655/baseband.c
> > > +++ b/drivers/staging/vt6655/baseband.c
> > > @@ -1691,8 +1691,8 @@ static const unsigned short
> > > awc_frame_time[MAX_RATE] = {
> > >   *
> > >   * Parameters:
> > >   *  In:
> > > - *      by_preamble_type  - Preamble Type
> > > - *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B,
> > > PK_TYPE_11GB, PK_TYPE_11GA
> > > + *      preamble_type     - Preamble Type
> > > + *      by_pkt_type       - PK_TYPE_11A, PK_TYPE_11B,
> > > PK_TYPE_11GB, PK_TYPE_11GA
> >
> > This is not described in your changelog as something you did.  Are
> > you sure you are not mixing up different changes in one patch?
> 
> I added whitespace in `by_pkt_type` line to align hyphens after the
> name change. Should I mention it in the description or just revert it?

Each patch should only do one logical thing.  And every "thing" you do,
has to be described in the changelog text.

thanks,

greg k-h

