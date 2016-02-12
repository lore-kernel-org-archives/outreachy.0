X-GM-THRID: 6250332404581400576
X-Received: by 10.112.129.65 with SMTP id nu1mr237799lbb.18.1455283996012;
        Fri, 12 Feb 2016 05:33:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.74 with SMTP id u71ls124887wmd.25.canary; Fri, 12 Feb
 2016 05:33:15 -0800 (PST)
X-Received: by 10.28.63.19 with SMTP id m19mr505376wma.0.1455283995495;
        Fri, 12 Feb 2016 05:33:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si92832wme.2.2016.02.12.05.33.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 05:33:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,435,1449529200"; 
   d="scan'208";a="202832431"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 14:33:15 +0100
Date: Fri, 12 Feb 2016 14:33:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Replace
 MSEC macro with msecs_to_jiffies
In-Reply-To: <CA+5yK5FzUYAUG1LxheS_E+eGrXmy9n4R-L-sCEeX4x7-hOr6Eg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602121432421.2510@hadrien>
References: <20160212092152.GA26927@amitoj-Inspiron-3542> <alpine.DEB.2.02.1602121157010.2055@localhost6.localdomain6> <CA+5yK5FzUYAUG1LxheS_E+eGrXmy9n4R-L-sCEeX4x7-hOr6Eg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 12 Feb 2016, Amitoj Kaur Chawla wrote:

> On Fri, Feb 12, 2016 at 4:27 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> > Can you get rid of all the uses and remove the definition?
> >
> > julia
> >
>
> Sure,
>
> I wasn't completely sure that the change is a desired one, so sent
> only the one patch.

Reasonable strategy.

> What I'll do is send a patchset to completely remove the instances and
> the definition from the driver including this one again.

Sounds good.

julia

