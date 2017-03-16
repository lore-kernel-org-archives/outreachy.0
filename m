X-GM-THRID: 6396716918154199040
X-Received: by 10.129.163.208 with SMTP id a199mr5202818ywh.135.1489686329839;
        Thu, 16 Mar 2017 10:45:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.68 with SMTP id j65ls1634408ioe.35.gmail; Thu, 16 Mar
 2017 10:45:28 -0700 (PDT)
X-Received: by 10.99.174.78 with SMTP id e14mr5754618pgp.74.1489686328954;
        Thu, 16 Mar 2017 10:45:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1001425pfz.1.2017.03.16.10.45.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 10:45:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r137so2666369pfr.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Mar 2017 10:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bUtp+oyxrWW7DMV5a555vhEDXicCnRC5sghsNJlxVuw=;
        b=TtBnVpw6b0r+9Az3IF4Y9vYTv90VCDMhik7SPzZLy1aK8DQYbVhmwF39DLT7CC4koY
         iVU79GJ1l/2rEfaJCKoNF4Wt22HkPWIF20IgMIaV6iMbqEmSTBPDfS13sMhjZL0h3wgD
         v14TvG3KCeFpDIR9LStgPHwUOw5Y6pd3qkAAteGnv+pqCLmDmcUYJckPifMN6ArbcQ8o
         4+mMpn0Uv/s+uzveH6G8EfgEFtLpPhiF6zxyBm8L1dPJa/8vxE9wx5xo5NDzlSXWtBtA
         mEF4NQ8GiKuyK6UCHYzooxy26laFDoW0e1wef0CcxcpESWeXU/SytPz1jk4G1Lg0r5qJ
         Cybg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bUtp+oyxrWW7DMV5a555vhEDXicCnRC5sghsNJlxVuw=;
        b=GhHZ+QZnSvwYbY0Iba+/QEGMRuz+eC4KwtIdH0E7ne2EMsfgtel6tfsw/m8Yovp5Kg
         NGOR6xS/UEgFpdq6qpedOEBueGeEkthph3IGcwNObgLKZYy76sGxH+JAcWndLj1uR0e/
         HDWC4p55RTO8f36qfnvh1U4gzwM6KPyU6UdfCB18iyeGTqVtocs6OcpQINc9Kd7Jmg4k
         qzInEklfXpV2c/vjO2d4u4LWjKqKhagztHd8LHHep/cDPRbx9Y7LkFrw6eKtwkLnNL0h
         9etdd1wZwfDM4b+7FUjIZhcgr2Hlw9JYd2pCu3+7uxpb+2Zw5Rq0ewc0RNAknRr4nu7+
         Yx3g==
X-Gm-Message-State: AFeK/H2v5hSkqhYnuLcDNB6o9RnbAMxuaYI44Ki7Kd3BHtsd9R4PXTz9tvV/86ycr7unaw==
X-Received: by 10.99.130.193 with SMTP id w184mr3942130pgd.157.1489686328691;
        Thu, 16 Mar 2017 10:45:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id s4sm11794281pfi.74.2017.03.16.10.45.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Mar 2017 10:45:28 -0700 (PDT)
Date: Thu, 16 Mar 2017 10:45:27 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel@googlegroups.com, Michael.Hennerich@analog.com,
	knaack.h@gmx.de, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
Message-ID: <20170316174526.GA3623@d830.WORKGROUP>
References: <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com>
 <alpine.DEB.2.20.1703122235320.7649@hadrien>
 <20170312221350.GA14070@d830.WORKGROUP>
 <CAOCi2DEyu6_bBjsrSFzf0VcXcUnZ3LugLf==R9zsSmj+1JdFKw@mail.gmail.com>
 <35231dfd-af42-bbd3-3be6-4e03a728a92f@kernel.org>
 <73d214e0-46d0-0d4a-27e1-7c85cf3c05ed@metafoo.de>
 <CAOCi2DEecT6tdxmz7_9Q5aWC7_+VZCKD1+Vwe9F5gA9jAuQ2=A@mail.gmail.com>
 <38289FBC-9E24-4AC0-ADB2-58DB34DD208F@jic23.retrosnub.co.uk>
 <CAOCi2DFy8ve7dy0WDDqDQkE0fgJs9YWe6Ai2XspO7+dJ20rHfA@mail.gmail.com>
 <20170316174101.GA3473@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170316174101.GA3473@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 16, 2017 at 10:41:02AM -0700, Alison Schofield wrote:
> On Wed, Mar 15, 2017 at 11:45:11PM +0530, Gargi Sharma wrote:
> > On Wed, Mar 15, 2017 at 4:14 AM, Jonathan Cameron
> > <jic23@jic23.retrosnub.co.uk> wrote:
> > >
> > >
> > > On 14 March 2017 17:36:16 GMT+00:00, Gargi Sharma <gs051095@gmail.com> wrote:
> > >>On Tue, Mar 14, 2017 at 2:24 AM, Lars-Peter Clausen <lars@metafoo.de>
> > >>wrote:
> > >>> On 03/13/2017 09:51 PM, Jonathan Cameron wrote:
> > >>> [...]
> > >>>>>> Gargi,
> > >>>>>>
> > >>>>>> Please insert the new lock above the __cacheline_aligned struct
> > >>>>>> member.
> > >>>>>
> > >>>>> I will do that, but is there any reason why the lock should be
> > >>above
> > >>>>> ____cacheline_aligned struct member?
> > >>>> Yes.  It's in fact very important that nothing comes after that.
> > >>>>
> > >>>> Will leave the why as an exercise for the reader.   I'll give the
> > >>>> hit of spi drivers that do DMA...
> > >>>
> > >>>
> > >>> One hint though, the answer is somewhere in Documentation/DMA-API.txt
> > >>
> > > >From what I have understood is that cacheline is used for keeping most
> > >>frequently accessed values in adjacent cachelines.
> > >
> > > Why? What does cache line actually mean?
> > >
> > >> We want the
> > >>cacheline_aligned at the end in the struct definition so as to avoid
> > >>any holes after the cacheline boundary.
> > >
> > > Nope.  Try
> > > http://www.pebblebay.com/a-guide-to-using-direct-memory-access-in-embedded-systems-part-two/
> > >
> > > (Hint, search for 'shares')
> > 
> > Okay, I got two things from the article:
> > 1. Hardware that uses DMA reads faster if the data is aligned at
> > 16/32/64B boundaries.
> > 2. You want to align buffer being accessed for DMa transfers to
> > prevent cache incoherence.
> > 
> > What I still don't understand is why nothing should come after
> > __cacheline_aligned struct member?
> > 
> > Thanks,
> > Gargi
> 
> Hi Gargi,
> 
> Short answer to why nothing can come after, is because it could
> indeed share the cacheline.  ___cacheline_aligned only guarantees
> alignment at the beginning of the cacheline.
> 
> I've been following and reading the posted links.  Here's another
> link, kind of ancient, but does a nice explanation of the process
> whereby that extra field, sharing your buffers cacheline, could
> lead to corruption of that field or the buffer data.
> https://lwn.net/Articles/2265/
> 
> I still haven't bottomed out on this though. I get the need
> to do this to be safe, but I'd like to understand how it fits
> in with systems that claim cache coherency.  Is this a case
> those schemes cannot handle, or, are there MP systems that
> are just not cache incoherent?
oops...a bit incoherent there. Meant to say - 
  are just not cache coherent at all!  ie..totally incoherent! 
> 
> alisons
> > >
> > >>>
> > >>--
> > >>To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> > >>the body of a message to majordomo@vger.kernel.org
> > >>More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > >
> > > --
> > > Sent from my Android device with K-9 Mail. Please excuse my brevity.

