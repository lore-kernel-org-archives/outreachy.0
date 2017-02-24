X-GM-THRID: 6389890697918414848
X-Received: by 10.25.79.23 with SMTP id d23mr495554lfb.27.1487954936092;
        Fri, 24 Feb 2017 08:48:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.93 with SMTP id 90ls214317ljb.13.gmail; Fri, 24 Feb 2017
 08:48:55 -0800 (PST)
X-Received: by 10.25.223.67 with SMTP id q3mr537453lfj.0.1487954935311;
        Fri, 24 Feb 2017 08:48:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si194100wmf.0.2017.02.24.08.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 08:48:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,201,1484002800"; 
   d="scan'208";a="214629005"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 17:48:54 +0100
Date: Fri, 24 Feb 2017 17:48:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, arnaud.patard@rtp-net.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: xgifb: function prototype
 argument should have an identifier name
In-Reply-To: <CA+XqjF_sihk6_UhgLzUH6FVSFMu02Vadp1tjatQft-UJ14SJeA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702241748000.3089@hadrien>
References: <20170222111918.GA25063@arushi-HP-Pavilion-Notebook> <20170224163130.GA29645@kroah.com> <CA+XqjF_sihk6_UhgLzUH6FVSFMu02Vadp1tjatQft-UJ14SJeA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1327708248-1487954928=:3089"

--8323329-1327708248-1487954928=:3089
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 24 Feb 2017, Arushi Singhal wrote:

>
>
> On Fri, Feb 24, 2017 at 10:01 PM, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>       On Wed, Feb 22, 2017 at 04:49:19PM +0530, Arushi Singhal wrote:
>       > function prototype arguments like 'struct vb_device_info
>       *','unsigned
>       > long' etc. should have an identifier name.
>       >
>       > Signed-off-by: Arushi Singhal
>       <arushisinghal19971997@gmail.com>
>       > ---
>       > Changes in v3:
>       >   - By mistake one irrelevant line was added which is removed
>       in this
>       >     patch.
>       >   - write the changes done in previous version in correct
>       format.
>       >   - make the commit subject more relevant and accurate.
>
>       This patch doesn't apply to my tree at all :(
>
> Why this is so?

Maybe someone else made a change on the same lines as yours.  Check that
your tree is up to date.

julia

> thanks
> Arushi
>       sorry,
>
>       greg k-h
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF_sihk6_UhgLzUH6
> FVSFMu02Vadp1tjatQft-UJ14SJeA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1327708248-1487954928=:3089--

