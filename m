X-GM-THRID: 6396716918154199040
X-Received: by 10.46.22.86 with SMTP id 22mr1862360ljw.9.1489437676084;
        Mon, 13 Mar 2017 13:41:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.81 with SMTP id i17ls1650648ljd.41.gmail; Mon, 13 Mar
 2017 13:41:14 -0700 (PDT)
X-Received: by 10.46.7.80 with SMTP id i16mr5368454ljd.5.1489437674910;
        Mon, 13 Mar 2017 13:41:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si784422wma.0.2017.03.13.13.41.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:41:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,161,1486422000"; 
   d="scan'208";a="216602136"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2017 21:40:57 +0100
Date: Mon, 13 Mar 2017 21:40:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: Alison Schofield <amsfield22@gmail.com>, 
    Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
    lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org, 
    knaack.h@gmx.de, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with
 driver private lock
In-Reply-To: <CAOCi2DEyu6_bBjsrSFzf0VcXcUnZ3LugLf==R9zsSmj+1JdFKw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703132138040.4053@hadrien>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703122154130.7649@hadrien> <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com> <alpine.DEB.2.20.1703122235320.7649@hadrien> <20170312221350.GA14070@d830.WORKGROUP>
 <CAOCi2DEyu6_bBjsrSFzf0VcXcUnZ3LugLf==R9zsSmj+1JdFKw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > I like the automated editing because it certainly cuts down on typos,
> > and even with this one, you can just move the new lock field upon
> > inspection.  Sadly, I don't think the script will apply too widely
> > because the use of "_state" for driver global data isn't a standard,
> > nor availability of that struct in the functions needing the locking.
> I only saw three files that had the mlock and they followed the structure
> with _state as suffix and only had mutex_lock for &indio_dev->mlock.
> Hence, I went ahead with the script even though I knew it wasn't probably
> very safe.

If _state is useful, you can add a regular expression to the metavariable declaration to checkk for that.  I think it would be something like:

identifier x =~ "_state$";

but I don't actually know.  I would prefer to use some more semantic
concept to identify such a structure.  For example, structures are often
stored in other structures or passed to some generic function.  Then you
can get to the structure in a way that is based on its purpose rather than
its name.

julia

