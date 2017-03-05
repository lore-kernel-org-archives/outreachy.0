X-GM-THRID: 6394051769917243392
X-Received: by 10.200.43.146 with SMTP id m18mr4645927qtm.58.1488751028652;
        Sun, 05 Mar 2017 13:57:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.3 with SMTP id q3ls4103026iod.2.gmail; Sun, 05 Mar
 2017 13:57:07 -0800 (PST)
X-Received: by 10.107.175.217 with SMTP id p86mr5298438ioo.101.1488751027832;
        Sun, 05 Mar 2017 13:57:07 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si1027826pfa.4.2017.03.05.13.57.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 13:57:07 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so15516504pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 13:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3BS9/hRe5dE3bhKvdv6nHVuIS0xoamldRHtE2hAryQ0=;
        b=QHjHoI8p+4QZHUjEE9niFvK1Y1wE0AzeVGJl8c94As4fByEN6uDLjvRcDGYPeWyGCy
         hWXKYmiVt55DtUgSv5wQAC+gfULenJAVy39eBFNGZ4oi5SvJNwQA9S9s2tGxye/3yPW5
         tfjwfu0beGZNJoiJeSPYzmY0ndVLEZ7C9vtY7pUOW91PnNZmDBGD5Zv4ZMZSX2CZJ+qq
         A9b3Z3YAon4FaInOJSWAS5A/cFKfh88rXe5evB7nKr4XTyfm9cVzQ5skb4Twd/6ENORw
         zkzvjX1sMYzyllty6rEdgtKQdp7TZZC99lASUdKJ17Jm4VSpkbh9EEiTsU61qredf57+
         atDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3BS9/hRe5dE3bhKvdv6nHVuIS0xoamldRHtE2hAryQ0=;
        b=XtkKY6uriQKk1BV2vfhuntcDN2CTkcZ7eHXjkjReRzWo+bSXjBNk2U0w0w12yUzhvu
         GvU91Rn2GJ5g0Otqge4GVq6EUSeo/afCJdPcmas/m13Om9uyTwk4v0oq2gfhBcetoAk9
         wQVm+ZPg7C+fDxzPr+cndIvGN81nsSUhs3j0MIXIWjRMp5OHnfPoPIyiO/X5f2EFCB45
         CmTdeWeqQ+ATrlNQmRBhpJPSJ+eiE1xoMvi38KO8gqVjG/ovnhPVtX6U0s8MFpSPSI1k
         ddBWliRPodlmdYbnEp1U4Nq0+ja9rHUd33BqJn9SIJvbboQAu341aNjFT+/zcLSs7GJd
         u4SQ==
X-Gm-Message-State: AMke39klnyqV6i5pjdTL0ekbHoaZDCV1scbDsm+JKghnAgnNETNUOLX81LcotKWWMrqUQw==
X-Received: by 10.99.226.83 with SMTP id y19mr16422057pgj.34.1488751027535;
        Sun, 05 Mar 2017 13:57:07 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id c1sm35077409pfk.112.2017.03.05.13.57.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 13:57:06 -0800 (PST)
Date: Sun, 5 Mar 2017 13:57:04 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: iio: accel: Group
 similar macros into enums
Message-ID: <20170305215703.GA4910@d830.WORKGROUP>
References: <cover.1488730643.git.narcisaanamaria12@gmail.com>
 <20170305185828.GA3380@d830.WORKGROUP>
 <20170305191459.GA20822@nati-X550JK>
 <alpine.DEB.2.20.1703052017040.3052@hadrien>
 <20170305192840.GA12508@nati-X550JK>
 <alpine.DEB.2.20.1703052031200.3052@hadrien>
 <20170305194845.GA27902@nati-X550JK>
 <alpine.DEB.2.20.1703052154590.2074@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703052154590.2074@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 05, 2017 at 09:56:22PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 5 Mar 2017, Narcisa Ana Maria Vasile wrote:
> 
> > On Sun, Mar 05, 2017 at 08:31:42PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 5 Mar 2017, Narcisa Ana Maria Vasile wrote:
> > >
> > > > On Sun, Mar 05, 2017 at 08:17:45PM +0100, Julia Lawall wrote:
> > > > >
> > > > >
> > > > > On Sun, 5 Mar 2017, Narcisa Ana Maria Vasile wrote:
> > > > >
> > > > > > On Sun, Mar 05, 2017 at 10:58:29AM -0800, Alison Schofield wrote:
> > > > > > > On Sun, Mar 05, 2017 at 06:26:03PM +0200, Narcisa Ana Maria Vasile wrote:
> > > > > > > > Group related macros into enums, for clarity.
> > > > > > >
> > > > > > > Hi Narcisa,
> > > > > > >
> > > > > > > Is this enum then used in a type declaration?
> > > > > > >
> > > > > > > BTW - I can see Jonathan is following right along and sweeping these up,
> > > > > > > but for future reference, this patch depended on a previous patch sent hours
> > > > > > > earlier, that was not yet in staging-testing.  When this happens, one option
> > > > > > > is to give a note below the --- (as you would for version comments) stating the
> > > > > > > dependency.  This way someone reviewing the patch doesn't simply reject
> > > > > > > it as not applying to my tree.
> > > > > > >
> > > > > > > alisons
> > > > > > >
> > > > > >   Hi,
> > > > > >
> > > > > >   Do you mean whether there are any type declarations where I could
> > > > > >   now replace the type with the enum type ? If so, I searched for
> > > > > >   these type of situations, but didn't find any. If I missed one of
> > > > > >   these cases, please let me know and I'll send a new patch.
> > > > >
> > > > > Typically the constant would be stored in something, compared to
> > > > > something, etc.  Are these constants not used at all?
> > > > >
> > > > > julia
> > > > >
> > > > >
> > > >   Yes, they are used, they are stored. I thought she was asking
> > > >   if I encountered any situations like in adc/ad7280a.h file
> > > >   where you could define an enum for conversion averaging
> > > >   macros and replace the 'unsigned int' field in the
> > > >   ad7280_platform_data with the enum type.
> > >
> > > If they are stored in something, I guess you could change the type of that
> > > thing?
> > >
> > > julia
> > >
> >   The scan indexes(si) are given to macros such as:
> >
> >   #define ADIS_ACCEL_CHAN(mod, addr, si, info_sep, info_all, bits) \
> >     ADIS_MOD_CHAN(IIO_ACCEL, mod, addr, si, info_sep, info_all, bits)
> >
> >   (defined in the linux/iio/imu/adis.h header).
> >   which are used to initialize the adis162xx_channels[].
> 
> OK, if the values are going in the si argument, then they end up in the
> scan_index field of the iio_chan_spec structure.  That structure is much
> more general then your driver, so indeed, there seems to be no types that
> can be improved.
> 
> julia

Hey Narcisa,
Great to see you traced it all the way through!
alisons
> 
> >
> >   Since they are used like this, I don't see anything I can
> >   replace/improve here.
> >   Am I missing something?
> >
> >   Narcisa.
> >
> >
> >
> >
> > > >
> > > >   Narcisa
> > > > > >
> > > > > >   Thank you for the note about the patch dependencies. I was just about
> > > > > >   to ask about this, cause I realized there might be a problem.
> > > > > >   I'll keep in mind to make a note next time.
> > > > > >
> > > > > >   Narcisa
> > > > > >
> > > > > > > > Narcisa Ana Maria Vasile (2):
> > > > > > > >   staging: iio: adis16209: Group similar macros into enums
> > > > > > > >   staging: iio: adis16240: Group similar macros into enums
> > > > > > > >
> > > > > > > >  drivers/staging/iio/accel/adis16209.c | 18 ++++++++++--------
> > > > > > > >  drivers/staging/iio/accel/adis16240.c | 14 ++++++++------
> > > > > > > >  2 files changed, 18 insertions(+), 14 deletions(-)
> > > > > > > >
> > > > > > > > --
> > > > > > > > 1.9.1
> > > > > > > >
> > > > > > > > --
> > > > > > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > > > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > > > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488730643.git.narcisaanamaria12%40gmail.com.
> > > > > > > > For more options, visit https://groups.google.com/d/optout.
> > > > > >
> > > > > > --
> > > > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305191459.GA20822%40nati-X550JK.
> > > > > > For more options, visit https://groups.google.com/d/optout.
> > > > > >
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305192840.GA12508%40nati-X550JK.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305194845.GA27902%40nati-X550JK.
> > For more options, visit https://groups.google.com/d/optout.
> >

