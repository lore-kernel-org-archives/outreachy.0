X-GM-THRID: 6202672545102036992
X-Received: by 10.31.148.206 with SMTP id w197mr28265298vkd.9.1444737072587;
        Tue, 13 Oct 2015 04:51:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.137 with SMTP id 131ls1750832ioz.45.gmail; Tue, 13 Oct
 2015 04:51:11 -0700 (PDT)
X-Received: by 10.66.194.136 with SMTP id hw8mr27494656pac.39.1444737070998;
        Tue, 13 Oct 2015 04:51:10 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id zg1si252139pbb.2.2015.10.13.04.51.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:51:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ve7so19850586pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 04:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Ov2Hh8RfxDm103iJefB8ljaKoC6Z2NL5BsmE1pWgTi4=;
        b=TvaDAUSPOuDX7q4uf7n/nHyYBV51jIoYXYoLqadAW9N//QOYZw07ytbbDYjD88EODG
         4rR43HB4ehBPKWeKsOuNqkd2Hr+B1/CtJGbOsde0RHtidGwfeIatTRqEfHbS5RXaM1Bw
         u2i5vJ1wtTsMRsc9glXkU8mbbsgU6IjcPtRrOY/im/OA72Ov7F30+iYGSTB78r9x70NP
         2uOKGTSBo6kELBdiyXP5GJAT//OWmm4W+rJB6O8rBtKvAadJ+fUUsAEW39QYMF5448ZH
         gfWgvmSmFJ6W+j4aK6hFY2+R3iLuIXuvPDqi9uVEaeRIdWz2mQjnxoktmEzoZiXINJdF
         vfqg==
X-Received: by 10.66.151.203 with SMTP id us11mr40641701pab.54.1444737070809;
        Tue, 13 Oct 2015 04:51:10 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.250.161])
        by smtp.gmail.com with ESMTPSA id iy1sm3499699pbb.85.2015.10.13.04.51.08
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 04:51:10 -0700 (PDT)
Date: Tue, 13 Oct 2015 17:21:01 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Daniel Baluta <daniel.baluta@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/9] staging: iio: adc: properly
 indent to match open paranthesis
Message-ID: <20151013115101.GA8378@sudip-pc>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
 <9e336af188b6ce1cf21d0a4959672db4f84afc0a.1444419393.git.ciorneiioana@gmail.com>
 <CAEnQRZCHUZvcVU-oRzbddfp=oDrb+kJvwkTnZPBFj4J1OBWFDQ@mail.gmail.com>
 <CAHWJYFn-cd5tCRRjU-vV72-x5HM+=u5uojF6cYFT3XjqyjKE8g@mail.gmail.com>
 <alpine.DEB.2.10.1510131155580.2391@hadrien>
 <CAHWJYFnB=o_UYGcT=B4LYZ+jwcERBsHDSc1_dJ=n+kaTBkgSiw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHWJYFnB=o_UYGcT=B4LYZ+jwcERBsHDSc1_dJ=n+kaTBkgSiw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Oct 13, 2015 at 01:05:58PM +0300, Ioana Ciornei wrote:
> On Tue, Oct 13, 2015 at 12:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Tue, 13 Oct 2015, Ioana Ciornei wrote:
> >
> >> On Mon, Oct 12, 2015 at 6:14 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> >> >
> >> > On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> >> > > Indent parameters and arguments passed to function calls to match
> >> > > open paranthesis
> >> > >
> >> > > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> >> > > ---
> >> > > Changes in v2:
> >> > >     - nothing
> >> > > Changes in v3:
> >> > >     - rework changes in order to avoid introducing new checkpatch warnings
> >> > >
> >> >
> >> > <snip>
> >> >
> >> > > @@ -565,10 +565,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
> >> > >                         st->iio_attr[cnt].dev_attr.store =
> >> > >                                 ad7280_store_balance_sw;
> >> > >                         st->iio_attr[cnt].dev_attr.attr.name =
> >> > > -                               kasprintf(GFP_KERNEL,
> >> >
> >> > This line looks good to me as it is. Is there any particular reason
> >> > for which you we want GFP_KERNEL to be moved on the next line?
> >> >
> >>
> >> I chose to move kasprintf on the next line and all the others
> >> arguments also in order to improve readability.
> >> I had to choose between leaving the kasprintf where it was and
> >> properly align the arguments to match the open bracket but
> >> cross the 80 char limit or moving the kasprintf call on the next line
> >> so the arguments are somewhat distinguishable.
> >>
> >> Was this a bad call?
> >
> > It's not really normal to see the first argument on a different line.
> > Do the other arguments not fit if they are lines up with the right side of
> > the (?  Perhaps it is possible to break up the longer arguments more so
> > that they fit better?
> >
> 
> The first argument fits, the problem is with the other ones.
> Well, now that I think of... yes there is a solution to this.
> If use a variable instead of 'dev * AD7280A_CELLS_PER_DEV + ch' all
> the problems would be solved.
> 
> Is this a proper way to handle it?

Today morning Greg said in a review of one patch "No need to create a
whole new variable when you only use it once."

reference at: https://lkml.org/lkml/2015/10/13/27

regards
sudip

