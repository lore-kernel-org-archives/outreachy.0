X-GM-THRID: 6250792352904904704
X-Received: by 10.107.128.102 with SMTP id b99mr12927085iod.1.1455472011791;
        Sun, 14 Feb 2016 09:46:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.122.66 with SMTP id lq2ls633288igb.26.canary; Sun, 14 Feb
 2016 09:46:51 -0800 (PST)
X-Received: by 10.66.232.1 with SMTP id tk1mr11899241pac.45.1455472011525;
        Sun, 14 Feb 2016 09:46:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id hy4si597164igb.2.2016.02.14.09.46.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 09:46:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,446,1449529200"; 
   d="scan'208";a="164678584"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 18:46:49 +0100
Date: Sun, 14 Feb 2016 18:46:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: Arnd Bergmann <arnd@arndb.de>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Use
 IS_ERR_OR_NULL
In-Reply-To: <CA+5yK5HYMRvS0u_021v68oJnHciYh5MHboO2EwoCrAs+QzRM9Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602141845590.2066@localhost6.localdomain6>
References: <20160213150641.GA26097@amitoj-Inspiron-3542> <4143065.OBkRWe7lv3@wuerfel> <CA+5yK5HTPxk9EtTgUki+47-1G0fhHL-t1YUvaeeha_Ltd=3F9Q@mail.gmail.com> <alpine.DEB.2.02.1602140820560.2039@localhost6.localdomain6>
 <CA+5yK5HYMRvS0u_021v68oJnHciYh5MHboO2EwoCrAs+QzRM9Q@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 14 Feb 2016, Amitoj Kaur Chawla wrote:

> On Sun, Feb 14, 2016 at 12:52 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > You have to check all of the return points in ll_iget to see if any of
> > them could return and ERR_PTR value.  This may require checking in some
> > other functions to see what values they return.  If none of them can
> > return an ERR_PTR value, you should just remove the ERR_PTR test.
> >
> > julia
> 
> For one case, ll_iget is returning a ERR_PTR value.

I agree.  Maybe a reasonable solution would be to check for NULL and, if 
it is found return ERR_PTR(-ENOMEM).

julia

