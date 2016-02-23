X-GM-THRID: 6254188564975714304
X-Received: by 10.28.226.132 with SMTP id z126mr2153160wmg.2.1456257049318;
        Tue, 23 Feb 2016 11:50:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.208.200 with SMTP id h191ls344758lfg.106.gmail; Tue, 23 Feb
 2016 11:50:48 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr4256734lbc.6.1456257048524;
        Tue, 23 Feb 2016 11:50:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v197si1071765wmv.1.2016.02.23.11.50.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:50:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,491,1449529200"; 
   d="scan'208";a="165748253"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 20:50:47 +0100
Date: Tue, 23 Feb 2016 20:50:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace pci_enable_device
 with pcim_enable_device
In-Reply-To: <CA+5yK5GB29KPi7ScAXNf6m10fNm8vphE2pQGrocSot-Vm+RfEw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602232050240.2040@localhost6.localdomain6>
References: <20160222184544.GA29097@amitoj-Inspiron-3542> <alpine.DEB.2.02.1602232037580.2040@localhost6.localdomain6> <CA+5yK5GB29KPi7ScAXNf6m10fNm8vphE2pQGrocSot-Vm+RfEw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 24 Feb 2016, Amitoj Kaur Chawla wrote:

> On Wed, Feb 24, 2016 at 1:08 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Tue, 23 Feb 2016, Amitoj Kaur Chawla wrote:
> >
> >> Replace pci_enable_device with pcim_enable-device. Remove unnecessary
> >> pci_disable_device and pci_release_regions from probe and remove
> >> functions in rts5208 driver.
> >>
> >> Additionally, an unnecessary platform_set_drvdata() has been removed
> >> since the driver core clears the driver data to NULL after device
> >> release or on probe failure. There is no need to manually clear the
> >> device driver data to NULL.
> >
> > Aren't these completely separate issues?  The latter could be good to
> > automate.
> >
> > julia
> >
> I'll write a separate script for the latter, though a lot of people
> have submitted patches for this change so there'll be less occurences
> I think, nonetheless will write one.
> 
> One of my previous patches that Greg accepted for switching to devm
> functions had a similar thing so I thought it was okay. I can divide
> the changes into 2 patches and send as a series separately if you
> prefer.

I think it would be better.  There is no relation to the devm issue.

julia

