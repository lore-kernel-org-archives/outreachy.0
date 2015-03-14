X-GM-THRID: 8221215424512
X-Received: by 10.152.4.229 with SMTP id n5mr7999183lan.1.1426342685284;
        Sat, 14 Mar 2015 07:18:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.168 with SMTP id a8ls477698lab.14.gmail; Sat, 14 Mar
 2015 07:18:04 -0700 (PDT)
X-Received: by 10.112.9.65 with SMTP id x1mr8140537lba.16.1426342684762;
        Sat, 14 Mar 2015 07:18:04 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bz6si316328wib.3.2015.03.14.07.18.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 07:18:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,400,1422918000"; 
   d="scan'208";a="125930873"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Mar 2015 15:18:04 +0100
Date: Sat, 14 Mar 2015 15:17:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: Daniel Baluta <daniel.baluta@intel.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/6] Staging: iio: Alignment should
 match open parenthesis
In-Reply-To: <1426337918.6721.4.camel@Inspiron>
Message-ID: <alpine.DEB.2.10.1503141517440.2461@hadrien>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>  <62ccda665be354990b06a5d12ccf410ce9e1013f.1426296329.git.cristina.opriceana@gmail.com>  <alpine.DEB.2.02.1503140733520.2075@localhost6.localdomain6>  <CAEnQRZAMAj7OquWzwAutp7NVoHs15bkcgUE3wSoO49YcpEKFuA@mail.gmail.com>
 <1426337918.6721.4.camel@Inspiron>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 14 Mar 2015, Cristina Opriceana wrote:

>
> > There are still few places to be fixed:
> > * ad9834_show_out0_wavetype_available
> > * ad9834_show_out1_wavetype_available
> >
> > thanks,
> > Daniel.
>
> I had doubts about fixing these because I had the following options:
> 1. Aligning them would go beyond the limit of 80 characters for the
> second line.
> 2. Put static on top and make the function definition inconsistent with
> the others.
>
> static
> ssize_t ad9834_show_out0_wavetype_available(...)

That seems ok.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426337918.6721.4.camel%40Inspiron.
> For more options, visit https://groups.google.com/d/optout.
>

