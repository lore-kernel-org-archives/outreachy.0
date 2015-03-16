X-GM-THRID: 8319960875008
X-Received: by 10.180.208.12 with SMTP id ma12mr7251669wic.6.1426538463675;
        Mon, 16 Mar 2015 13:41:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.134 with SMTP id ky6ls650583lac.76.gmail; Mon, 16 Mar
 2015 13:41:03 -0700 (PDT)
X-Received: by 10.112.25.7 with SMTP id y7mr9342990lbf.21.1426538463091;
        Mon, 16 Mar 2015 13:41:03 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id sf8si763764wic.2.2015.03.16.13.41.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 13:41:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,411,1422918000"; 
   d="scan'208";a="103591569"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Mar 2015 21:41:01 +0100
Date: Mon, 16 Mar 2015 21:41:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: speakup: Add helper macro
 for spk_synth boilerplate
In-Reply-To: <CAK-LDbJKZpUrzc4rbaHM6mBQAs-NbnTTuwNjge_d0RN0yG=U9A@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1503162140360.2057@localhost6.localdomain6>
References: <20150316142901.GA18101@vaishali-Ideapad-Z570> <alpine.DEB.2.10.1503161748520.2704@hadrien> <CAK-LDbJKZpUrzc4rbaHM6mBQAs-NbnTTuwNjge_d0RN0yG=U9A@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 16 Mar 2015, Vaishali Thakkar wrote:

> On Mon, Mar 16, 2015 at 10:19 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> +#define module_spk_synth(__spk_synth) \
> >> +     module_driver(__spk_synth, synth_add, \
> >> +                     synth_remove)
> >
> > Why the newline before synth_remove?
> 
> Just for the consistency. I followed all such macro examples
> like module_usb_driver, module_platform_driver, module_pci_driver
> etc. And I guess may be this line will go over 80 characters though
> I haven't checked that.
> 
> Should I go for writing like this in a single line
> [if it will not go beyond 80 characters]?
> 
> module_driver(__spk_synth, synth_add,  synth_remove) \

I think this will look better (without the final \).

julia

