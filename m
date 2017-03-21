X-GM-THRID: 6398373939210354688
X-Received: by 10.25.195.206 with SMTP id t197mr4330144lff.11.1490112937744;
        Tue, 21 Mar 2017 09:15:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls1564865lja.1.gmail; Tue, 21 Mar 2017
 09:15:36 -0700 (PDT)
X-Received: by 10.46.15.10 with SMTP id 10mr2135291ljp.31.1490112936537;
        Tue, 21 Mar 2017 09:15:36 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x188si852477wmx.0.2017.03.21.09.15.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 09:15:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,200,1486422000"; 
   d="scan'208";a="265544290"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2017 17:15:36 +0100
Date: Tue, 21 Mar 2017 17:15:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Gargi Sharma <gs051095@gmail.com>, outreachy-kernel@googlegroups.com, 
    linux-iio@vger.kernel.org, lars@metafoo.de, Michael.Hennerich@analog.com, 
    jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH v3] staging: iio: ad7280:
 Replace mlock with driver private lock
In-Reply-To: <20170321161146.GB1859@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.20.1703211714280.3785@hadrien>
References: <1490112069-30133-1-git-send-email-gs051095@gmail.com> <20170321161146.GB1859@d830.WORKGROUP>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 21 Mar 2017, Alison Schofield wrote:

> On Tue, Mar 21, 2017 at 09:31:09PM +0530, Gargi Sharma wrote:
> > The IIO subsystem is redefining iio_dev->mlock to be used by
> > the IIO core only for protecting device operating mode changes.
> > ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> >
> > In this driver, mlock was being used to protect hardware state
> > changes.  Replace it with a lock in the devices global data.
> >
> > Acked-by: Jonathan Cameron <jic23@kernel.org>
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>
> Hi Gargi - What's up with the RESEND's?  I see this patch
> sent by you 03/17 and Jonathan replied 03/19 that he applied
> it.  I see it in the IIO tree.
> https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/log/?h=testing
>
> I see a couple of more RESENDs in my box.  Please check if they
> are necessary. Probably not.  RESENDs are typically used if your
> PATCH has been 'missed'...for a long time - like in weeks, not
> hours or even days.

Probably it's motivated by the fact that Greg didn't pick it up.  You have
to wait some time for things to go up and down to get into Greg's tree,
but if it is in the IIO tree, it's already fine.

julia

