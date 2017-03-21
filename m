X-GM-THRID: 6399943776789331968
X-Received: by 10.157.56.39 with SMTP id i36mr16214026otc.71.1490117631834;
        Tue, 21 Mar 2017 10:33:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.168 with SMTP id n37ls2653888otn.25.gmail; Tue, 21 Mar
 2017 10:33:51 -0700 (PDT)
X-Received: by 10.237.56.200 with SMTP id k66mr4532306qte.72.1490117631456;
        Tue, 21 Mar 2017 10:33:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a3si3566142pfb.2.2017.03.21.10.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 10:33:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id r137so19195682pfr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 10:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RcLcw573iMGO9FqxOvNdXXMb711cZLmEa/aD+kdtXsE=;
        b=r8dnbELj7t+ybzFYfsclDnOfC8PmDu0tjBlZ/Eb/PqrV+saiZiIp8ulGwZ0CR0IWrM
         N+FlGfifZ/jUJnpuWNNEEKxMygkwHbNa1+XvnL7B5pP/GEvcSjx9M9etuESCHrW9ZkYt
         orZ5AWRi6mUYO7tPbiO64DHQNsQ2cpGOptjz43qE49vhIItyrJGU+7ePcE71vkVvY+Yg
         uouqA9g9frCVDJLiTLegdCH9zqhvWKYFcDkPO/E5Ihl9gn3PJM9e3hO9dcUeEN3lSM4l
         +G0SpZrLURlo6rtvRB4DqhVKO9mDeNuf1MuTI/IKZ/Ud1HxpRwxtZ5DOiCzvUWU6H5vj
         f5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RcLcw573iMGO9FqxOvNdXXMb711cZLmEa/aD+kdtXsE=;
        b=eLfCksT07MA7WCU3pyZ66kgKEuMv1pMYovFrm1F2tGc0hL1W/JOzRwfJkTzJTX26+d
         w5mZooIxb9oNxTHuS000pkuvXjfO/+mjPv+vfeOMb8NMEcEAR8fBecz4ZoS25ptQQJHO
         3FCJqeS5JBOEDuXBqZxRmbcbcoX1hJ53J71TH1P7seT3Mk+E5P9a92BoRvPN+17mdIu+
         2yiJU0jgD99qRAa1BdhbNvi6GSqMswsT2O26azPJ4gH9Z83Q55ILiHwyf+bT5O3QDaVj
         o0gD+BCcRJSOz87VtODOAo9FGE3mklnbntY0BksZ4eRLez2DquxOiEFW/Nw/54Fm+O89
         qA7g==
X-Gm-Message-State: AFeK/H2xmbP1NqyhUtdPVDep5AlPfxxRludl6612jni3JEVVZZ1r2zijUrO1S8BYQPlF4w==
X-Received: by 10.98.109.67 with SMTP id i64mr18568733pfc.58.1490117631168;
        Tue, 21 Mar 2017 10:33:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 23sm40847956pfz.127.2017.03.21.10.33.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 10:33:50 -0700 (PDT)
Date: Tue, 21 Mar 2017 10:33:49 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>, outreachy-kernel@googlegroups.com,
	Michael Hennerich <Michael.Hennerich@analog.com>, lars@metafoo.de,
	Greg KH <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
	driverdevel <devel@driverdev.osuosl.org>,
	linux-kernel@vger.kernel.org,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] IIO coding tasks
Message-ID: <20170321173348.GD2793@d830.WORKGROUP>
References: <20170321133021.6737-1-arushisinghal19971997@gmail.com>
 <20170321160348.GA1859@d830.WORKGROUP>
 <CA+XqjF9dVy33Dsv0H2z8xtaNeMOW7SQgr4qa4wLwz6xFNVTsUA@mail.gmail.com>
 <alpine.DEB.2.20.1703211738500.3785@hadrien>
 <20170321170221.GB2793@d830.WORKGROUP>
 <CA+XqjF8Lsjf_55z+KdsWTxdGubG5PO1PYOY_N4wZDNrSNEBYBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+XqjF8Lsjf_55z+KdsWTxdGubG5PO1PYOY_N4wZDNrSNEBYBg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 21, 2017 at 10:52:46PM +0530, Arushi Singhal wrote:
> On Tue, Mar 21, 2017 at 10:32 PM, Alison Schofield <amsfield22@gmail.com>
> wrote:
> 
> > On Tue, Mar 21, 2017 at 05:39:38PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Tue, 21 Mar 2017, Arushi Singhal wrote:
> > >
> > > > On Tue, Mar 21, 2017 at 9:33 PM, Alison Schofield <
> > amsfield22@gmail.com>
> > > > wrote:
> > > >       On Tue, Mar 21, 2017 at 07:00:17PM +0530, Arushi Singhal wrote:
> > > >       > Patchseries of IIO coding tasks
> > > >
> > > >       This wouldn't be a patchset.  Although they touch the same
> > > >       driver, the changes are unrelated.  See more below...
> > > >
> > > > This I have send as a Patchset because as you have mentioned below
> > that the
> > > > [PATCH 2/2] was already done before by someone but I think so it is
> > not yet
> > > > applied in the Greg's tree yet.So I have done both the changes and as
> > they
> > > > should be applied one after other so that's why I have send them as
> > > > Patchset.
> > >
> > > For the IIO patches, it is better to work on the IIO tree, not Greg's.
> > > Greg manages staging, not IIO.  The IIO patches should appear in Greg's
> > > tree eventually.
> > >
> > > julia
> >
> > We didn't direct applicants to create an iio tree.  At this point,
> > it seems more than is necessary.  They can follow the directions in the
> > task descriptions and avoid the collisions.
> >
> > Of course, they are welcome to create a tree to iio/testing.
> >
> > (IMHO it's more overhead/busy work and maybe not the best use
> > of time in the home stretch of the application period.)
> >
> > alisons
> >
> 
> Hi Alison
> As you have mentioned that my [PATCH 2/2] is already being done someone. So
> how can I make the changes of [PATCH 1/2] on top of it as [PATCH 2/2] is
> not yet applied on the staging tree.
> Please suggest me.
> Thanks
> Arushi

Arushi - 
I don't see anything needing to be done by you!
Your ad7759 mlock patch is awaiting review.  It's not your issue
to keep up with all changes going into the file.  When it gets applied 
will most likely merge with no merge issue at all. 
alisons
> 
> > >
> > > >       >
> > > >       > Arushi Singhal (2):
> > > >       >   staging: ad7759: Replace mlock with driver private lock
> > > >
> > > >       This one is already been submitted.  If you have a v2 for it,
> > > >       then v2
> > > >       the original patch.
> > > >
> > > > Is it submitted by me only before? And this is not the v2.
> > > > I have just resed it.
> > > >       >   staging: iio: ade7759: Move header content to implementation
> > > >       file
> > > >
> > > >       This patch is done and applied already.  See the Coding Task #1
> > > >       notes
> > > >       in the IIO Tasks page.
> > > >
> > > > Not at applied I think so.
> > > > Thanks
> > > > Arushi
> > > >
> > > >       alisons
> > > >
> > > >       >
> > > >       >  drivers/staging/iio/meter/ade7759.c   | 56
> > > >       +++++++++++++++++++++++++++++++++--
> > > >       >  drivers/staging/iio/meter/ade7759.h   | 53
> > > >       ---------------------------------
> > > >       >  2 files changed, 54 insertions(+), 57 deletions(-)
> > > >       >
> > > >       > --
> > > >       > 2.11.0
> > > >       >
> > > > > --
> > > > > You received this message because you are subscribed to the Google
> > > > Groups "outreachy-kernel" group.
> > > > > To unsubscribe from this group and stop receiving emails from it,
> > > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > To post to this group, send email to
> > > > outreachy-kernel@googlegroups.com.
> > > > > To view this discussion on the web visithttps://groups.google.
> > com/d/msgid/outreachy-kernel/20170321133021.6737-1-ar
> > > > ushisinghal19971997%40gmail.com.
> > > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google
> > Groups
> > > > "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send
> > an
> > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com
> > .
> > > > To view this discussion on the web visithttps://groups.google.
> > com/d/msgid/outreachy-kernel/CA%2BXqjF9dVy33Dsv0H2z8x
> > > > taNeMOW7SQgr4qa4wLwz6xFNVTsUA%40mail.gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> > > >
> >
> >

