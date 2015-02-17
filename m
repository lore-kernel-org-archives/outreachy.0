X-GM-THRID: 108667076608
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,24a44102f4e077fa
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr11030wix.0.1424182203460;
        Tue, 17 Feb 2015 06:10:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.100 with SMTP id i4ls557901laa.106.gmail; Tue, 17 Feb
 2015 06:10:03 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr3576461lbb.17.1424182203028;
        Tue, 17 Feb 2015 06:10:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si3699971wib.2.2015.02.17.06.10.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 06:10:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="122131778"
Received: from technetium.rsr.lip6.fr ([132.227.76.37])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2015 15:10:02 +0100
Date: Tue, 17 Feb 2015 15:11:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch] Staging: emxx_udc: Convert from
 __attribute__((aligned(size))) to __aligned(size).
In-Reply-To: <e2cb14b0-3571-4c8f-9044-1aee3e0f0fa7@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1502171510530.2171@hadrien>
References: <20150217131048.GA5235@gmail.com> <alpine.DEB.2.10.1502171422400.2171@hadrien> <e2cb14b0-3571-4c8f-9044-1aee3e0f0fa7@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-979799151-1424182303=:2171"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-979799151-1424182303=:2171
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

>       It looks like an extra line has disappeared?  Was that
>       intentional?
>
>  
>  >> The extra line was not a part of the original code. I had added and then
> removed it.

OK, you should start over with the file and send a patch against the
original state.

julia
--8323329-979799151-1424182303=:2171--

