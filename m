X-GM-THRID: 6202672545102036992
X-Received: by 10.31.108.28 with SMTP id h28mr34595631vkc.4.1444201053104;
        Tue, 06 Oct 2015 23:57:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.95 with SMTP id c92ls126409iod.15.gmail; Tue, 06 Oct
 2015 23:57:32 -0700 (PDT)
X-Received: by 10.107.25.201 with SMTP id 192mr36695124ioz.21.1444201052760;
        Tue, 06 Oct 2015 23:57:32 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id zg1si4961534pbb.2.2015.10.06.23.57.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 23:57:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fv12so12487846pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 23:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=vh13stLxPM1LmA95NtvWdrmUf8YIBAw60ZF9M7YsaIU=;
        b=S8ghGbTCzXIx+AUfe2aIFKQabl7DfULvHfjH6wb/CqhmhsJtm45H0OTx5mTl9DYPFC
         GbLKFnACD7lLwkUaPXirLd6aroTj5j5ydgAc0moUtK8zoUZa8pKn76ZbDqJB6ol/MyFD
         zzxREWMyAXM2wQq4qBONoEbM/QbA9dVp83QYKgyztwy0qAD4X+/fzu4Mzlbb68xvcxmf
         90fY4pCY6K8nyJLnNM/Z4gvlK7c7XrbZvF5oG4m7Xsc8mDoBGCR2mCu+g6UeNWVfDKpy
         J2N7Gk0bbFYxgkDSDGoQJqMNA+IIGAf+ZpSp27T59HqM/0QNO3TY21ZVE6J1IFsNbgWz
         IRuQ==
X-Received: by 10.69.0.132 with SMTP id ay4mr51154307pbd.87.1444201052535;
        Tue, 06 Oct 2015 23:57:32 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id tx5sm30520087pbc.59.2015.10.06.23.57.31
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 23:57:32 -0700 (PDT)
Date: Wed, 7 Oct 2015 12:27:22 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 08/10] staging: iio: adc: remove the
 use of CamelCase
Message-ID: <20151007065552.GA20931@sudip-pc>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
 <7b2dd35a1b76b4457bc85272f255b982e6003cfc.1444172066.git.ciorneiioana@gmail.com>
 <20151007051459.GC4070@sudip-pc>
 <CAHWJYFk34=Od-DR26wUiW72YLE6EyP8uJ+oT3p-m2cikUhPGKw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHWJYFk34=Od-DR26wUiW72YLE6EyP8uJ+oT3p-m2cikUhPGKw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 07, 2015 at 09:42:36AM +0300, Ioana Ciornei wrote:
> On Oct 7, 2015 8:15 AM, "Sudip Mukherjee" <sudipm.mukherjee@gmail.com>
> wrote:
> >
> > On Wed, Oct 07, 2015 at 01:57:08AM +0300, Ioana Ciornei wrote:
> > > Remove the use of CamelCase to follow the kernel naming conventions
<snip>
> > Why did you change AD7192_GPOCON_GP10EN to AD7193_GPOCON_GP10EN?
> >
> > And I donot see any camelcase here, not even in the next few
> > conversions.
> >
> 
> Sorry for that change from 92 to 93. My mistake. I will send a v2.
> Regarding the other changes, should I just revert them? Do you consider
> there is no point in converting them?

Had a closer look. Only this AD7192_GPOCON_GP10EN to
AD7193_GPOCON_GP10EN is not camelcase conversion. Remaining all are.
Just leave this one out.

And in a later patch you can even remove this
#define AD7192_GPOCON_GP10EN   BIT(4) /* Digital Output P1 and P0 enable */

This one is not used any where and that is the reason you did not see a
build failure with this patch.

regards
sudip

