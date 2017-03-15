X-GM-THRID: 6394528999032225792
X-Received: by 10.46.1.12 with SMTP id 12mr279820ljb.30.1489570413228;
        Wed, 15 Mar 2017 02:33:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.67 with SMTP id 3ls147838lju.49.gmail; Wed, 15 Mar 2017
 02:33:31 -0700 (PDT)
X-Received: by 10.46.87.27 with SMTP id l27mr280896ljb.28.1489570411845;
        Wed, 15 Mar 2017 02:33:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si583634wmd.0.2017.03.15.02.33.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 02:33:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,168,1486422000"; 
   d="scan'208";a="216802723"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2017 10:33:30 +0100
Date: Wed, 15 Mar 2017 10:33:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org, speakup@linux-speakup.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH 0/2] Improve code readability
In-Reply-To: <e3451e76-4119-4ea9-8bd0-134de6504fd0@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703151032540.3212@hadrien>
References: <20170310204155.6367-1-arushisinghal19971997@gmail.com> <e3451e76-4119-4ea9-8bd0-134de6504fd0@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1647550423-1489570411=:3212"

--8323329-1647550423-1489570411=:3212
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 15 Mar 2017, Arushi Singhal wrote:

> HiThis Patch series is not yet added to the kernel tree.

The normal process is to send it again, with RESEND inside the [PATCH]
box.

julia

> Thanks
> Arushi
>
> On Saturday, 11 March 2017 02:12:02 UTC+5:30, Arushi Singhal wrote:
>       Improve readability by fixing multiple checkpatch.pl
>       issues.
>
>       Arushi Singhal (2):
>         staging: speakup: Avoid multiple assignments on same line
>         staging: speakup: fixes braces {} should be used on all arms
>       of this
>           statement
>
>        drivers/staging/speakup/main.c           |  6 ++++--
>        drivers/staging/speakup/speakup_decext.c |  6 +++---
>        drivers/staging/speakup/speakup_decpc.c  |  6 +++---
>        drivers/staging/speakup/speakup_dectlk.c |  6 +++---
>        drivers/staging/speakup/varhandlers.c    | 12 +++++++-----
>        5 files changed, 20 insertions(+), 16 deletions(-)
>
>       --
>       2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/e3451e76-4119-4ea9-8bd0-
> 134de6504fd0%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1647550423-1489570411=:3212--

