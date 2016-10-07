X-GM-THRID: 6338591064541102080
X-Received: by 10.194.82.170 with SMTP id j10mr85549wjy.14.1475818391789;
        Thu, 06 Oct 2016 22:33:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.161 with SMTP id g33ls423386lji.22.gmail; Thu, 06 Oct
 2016 22:33:11 -0700 (PDT)
X-Received: by 10.46.69.69 with SMTP id s66mr1187321lja.1.1475818391302;
        Thu, 06 Oct 2016 22:33:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e21si90188wmc.2.2016.10.06.22.33.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 22:33:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,454,1473112800"; 
   d="scan'208";a="239760157"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 07 Oct 2016 07:33:02 +0200
Date: Fri, 7 Oct 2016 07:32:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com
Subject: Re: [Outreachy kernel] vc04_services driver question
In-Reply-To: <20161007053033.GA13812@localhost>
Message-ID: <alpine.DEB.2.10.1610070731260.3074@hadrien>
References: <20161007053033.GA13812@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 6 Oct 2016, Elizabeth Ferdman wrote:

> I noticed a new driver vc04_services was just added and that the Kconfig
> says it depends on BROKEN. The tutorial specifically says not to work on
> drivers that have that in the depends on line. However, I also noticed
> that patches were being accepted for rtl8712 and greybus and those
> have BROKEN in the Kconfig as well... so is it ok to submit patches for
> that one or even a patchset?

Yes.

> My other question is if we are doing simple cleanups and manage to run
> make path/to/file.o and create a new .o file in the directory, is it ok not
> to run $ make -j2 && sudo make modules_install, etc. ? Today I wasn't
> able to run that successfully because of a bug that got through in the
> latest update, something to do with x86 architecture, but I still wanted
> to get some patches in...

Yes, ok not to do it in general.  You have to evaluate whether your change
could impact other files.  You may want to compile the driver, but not the
whole kernel.

julia

>
> Thanks,
> Liz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161007053033.GA13812%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

