X-GM-THRID: 6397330480733093888
X-Received: by 10.25.26.80 with SMTP id a77mr5043470lfa.18.1489495399164;
        Tue, 14 Mar 2017 05:43:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.83 with SMTP id 80ls1726750ljb.20.gmail; Tue, 14 Mar 2017
 05:43:18 -0700 (PDT)
X-Received: by 10.25.151.69 with SMTP id z66mr5085746lfd.12.1489495398604;
        Tue, 14 Mar 2017 05:43:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si320956wmd.0.2017.03.14.05.43.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 05:43:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,163,1486422000"; 
   d="scan'208";a="216686651"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2017 13:43:15 +0100
Date: Tue, 14 Mar 2017 13:43:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [IIO] Help understanding iio_priv(..)
In-Reply-To: <20170313201511.GA12957@aishwarya>
Message-ID: <alpine.DEB.2.20.1703141342300.3174@hadrien>
References: <20170313201511.GA12957@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 14 Mar 2017, Aishwarya Pant wrote:

> Hi
>
> I have been looking at the IIO task and came across this function
> iio_priv(..). It is defined as-
>
>
> static inline void *iio_priv(const struct iio_dev *indio_dev)
> {
>         return (char *)indio_dev + ALIGN(sizeof(struct iio_dev),
> 	IIO_ALIGN);
> }
>
> It returns a void pointer and used as struct dev_state = iio_priv(indio_dev).
> Looks like it is used to store an iio device state private to the file.
>
> Could someone help me understand what exactly is happening inside here?

Probably it would help to look at how the priv pointer is initialized.

julia

>
> Thanks
> Aishwarya
>
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313201511.GA12957%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

