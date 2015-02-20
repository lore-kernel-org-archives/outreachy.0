X-GM-THRID: 1123382460416
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f5f770e6dd3ab2f2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.45.7 with SMTP id i7mr1063136lam.9.1424419565909;
        Fri, 20 Feb 2015 00:06:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.39 with SMTP id cz7ls44375wib.36.gmail; Fri, 20 Feb
 2015 00:06:05 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr152234wib.1.1424419565596;
        Fri, 20 Feb 2015 00:06:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si46386wib.3.2015.02.20.00.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 00:06:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,613,1418079600"; 
   d="scan'208";a="100705207"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 09:06:04 +0100
Date: Fri, 20 Feb 2015 09:06:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unused
 struct ndis_802_11_key
In-Reply-To: <CAK-LDbLHqULUx--_fs8oxkTkH1xcFnsApzKVyWiUkD794w5-aQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1502200904550.2159@localhost6.localdomain6>
References: <20150220072850.GA8648@vaishali-Ideapad-Z570> <alpine.DEB.2.02.1502200851350.2045@localhost6.localdomain6> <CAK-LDbLHqULUx--_fs8oxkTkH1xcFnsApzKVyWiUkD794w5-aQ@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Feb 2015, Vaishali Thakkar wrote:

> On Fri, Feb 20, 2015 at 1:21 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Fri, 20 Feb 2015, Vaishali Thakkar wrote:
> >
> >> This patch removes struct ndis_802_11_key as it is defined
> >> in a header file but never used.
> >
> > How did you find it?
> 
> While looking at struct definitions in file wlan_bssdef.h, I accidentally
> came across this structure and when I used git grep to see the use of
> it, I didn't find any files using it. That's why I just sent the patch.

OK, it seems at least possible that there are more.  Coccinelle could 
probably be used for this, or maybe just a script with grep would suffice.  
We could discuss later, if you want to look for more of them.

julia

