X-GM-THRID: 6399943776789331968
X-Received: by 10.36.121.151 with SMTP id z145mr137524itc.4.1490115745815;
        Tue, 21 Mar 2017 10:02:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.209 with SMTP id r200ls2969725itc.20.gmail; Tue, 21 Mar
 2017 10:02:24 -0700 (PDT)
X-Received: by 10.99.115.87 with SMTP id d23mr11938704pgn.112.1490115744670;
        Tue, 21 Mar 2017 10:02:24 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si3541515pfb.2.2017.03.21.10.02.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 10:02:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so18172140pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 10:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=bRGqWqOKX7yiy8F4F90HNFzDIB+195f1qI6HX7baW1E=;
        b=ABIdmHYR8eHEbfCcdGq/DxTJK5cVYfVIUP0cV4QOLpNzKsRs4IBiDn9KuWPIEOFvqa
         EGdz4PD6roIj4vsGM0WVJAPviktk2x3LvLaTnC7FVtFGuVYNv/jMA//zoS1gosYx1J6c
         DFOdk+Ngc4iLoVokFtGYFeKGasz7z2Ziox29VgIIjtOnZRbiEE+7KGpmwEhr56XgZCt+
         58NE5npMDLyPhUKG3cAkQIRBI4yzGWUJ4wJJfhvnrvas89LvGCnjeIkUk7f89wVPH3Zl
         vmBQjMjmBjcygxQP+RP2sY+EvkZun6JHh5yFVAOUGQzl/l0VBAMfzPJotT8t3aiX0TWd
         dbmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=bRGqWqOKX7yiy8F4F90HNFzDIB+195f1qI6HX7baW1E=;
        b=H/aKlw7UUYSZJqULqdwgRc+pOHcCThkzikvW5opVjtQJA8VFe5bgkA6F0LLBKnZ6bJ
         Q1WpObJJRj5ZKF06iBvTdwZ0dfIgxntYrF+JfnFFDGMWd1M2lX6PzHV3SbCzpgzP4FUe
         WPSoJ1CDDRyJ6uWTLFlDqYnfoXJ6Huu00VGIxOch5p0kMaOY2fbzUPBo0FQXfWD2NtGX
         YlcKTswmcZnL5ZIDcZIh58sIPFN7zkLxDHNgw/fE6YwA0WoIXljpac3Ejfn2iVh9BOx+
         p8wotziJQ+nYOxx4zge6TjAb7h69HWxqf2J+rsgtW4BLJG9jStE8wGPMp5CS7KQy2Esd
         A7zA==
X-Gm-Message-State: AFeK/H3rFmCceY5mb925L8uUWZDCjfoGhgYIx+co5QiTW2Aeu67LqjJt+T9Ljn68Qxeh1g==
X-Received: by 10.84.253.15 with SMTP id z15mr49879812pll.142.1490115744399;
        Tue, 21 Mar 2017 10:02:24 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id a90sm40689694pfg.78.2017.03.21.10.02.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 10:02:23 -0700 (PDT)
Date: Tue, 21 Mar 2017 10:02:22 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>, outreachy-kernel@googlegroups.com,
	Michael Hennerich <Michael.Hennerich@analog.com>, lars@metafoo.de,
	Greg KH <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
	driverdevel <devel@driverdev.osuosl.org>,
	linux-kernel@vger.kernel.org,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] IIO coding tasks
Message-ID: <20170321170221.GB2793@d830.WORKGROUP>
References: <20170321133021.6737-1-arushisinghal19971997@gmail.com>
 <20170321160348.GA1859@d830.WORKGROUP>
 <CA+XqjF9dVy33Dsv0H2z8xtaNeMOW7SQgr4qa4wLwz6xFNVTsUA@mail.gmail.com>
 <alpine.DEB.2.20.1703211738500.3785@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.20.1703211738500.3785@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 21, 2017 at 05:39:38PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 21 Mar 2017, Arushi Singhal wrote:
> 
> > On Tue, Mar 21, 2017 at 9:33 PM, Alison Schofield <amsfield22@gmail.com>
> > wrote:
> >       On Tue, Mar 21, 2017 at 07:00:17PM +0530, Arushi Singhal wrote:
> >       > Patchseries of IIO coding tasks
> >
> >       This wouldn't be a patchset.� Although they touch the same
> >       driver, the changes are unrelated.� See more below...
> >
> > This I have send as a Patchset because as you have mentioned below that the
> > [PATCH 2/2] was already done before by someone but I think so it is not yet
> > applied in the Greg's tree yet.So I have done both the changes and as they
> > should be applied one after other so that's why I have send them as
> > Patchset.
> 
> For the IIO patches, it is better to work on the IIO tree, not Greg's.
> Greg manages staging, not IIO.  The IIO patches should appear in Greg's
> tree eventually.
> 
> julia

We didn't direct applicants to create an iio tree.  At this point,
it seems more than is necessary.  They can follow the directions in the
task descriptions and avoid the collisions.

Of course, they are welcome to create a tree to iio/testing.

(IMHO it's more overhead/busy work and maybe not the best use
of time in the home stretch of the application period.)

alisons
> 
> >       >
> >       > Arushi Singhal (2):
> >       >� �staging: ad7759: Replace mlock with driver private lock
> >
> >       This one is already been submitted.� If you have a v2 for it,
> >       then v2
> >       the original patch.
> >
> > Is it submitted by me only before? And this is not the v2.
> > I have just resed it.
> >       >� �staging: iio: ade7759: Move header content to implementation
> >       file
> >
> >       This patch is done and applied already.� See the Coding Task #1
> >       notes
> >       in the IIO Tasks page.
> >
> > Not at applied I think so.
> > Thanks
> > Arushi
> >
> >       alisons
> >
> >       >
> >       >� drivers/staging/iio/meter/ade7759.c� �| 56
> >       +++++++++++++++++++++++++++++++++--
> >       >� drivers/staging/iio/meter/ade7759.h� �| 53
> >       ---------------------------------
> >       >� 2 files changed, 54 insertions(+), 57 deletions(-)
> >       >
> >       > --
> >       > 2.11.0
> >       >
> > > --
> > > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to
> > outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170321133021.6737-1-ar
> > ushisinghal19971997%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF9dVy33Dsv0H2z8x
> > taNeMOW7SQgr4qa4wLwz6xFNVTsUA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >


