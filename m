X-GM-THRID: 6211053698454388736
X-Received: by 10.112.134.129 with SMTP id pk1mr1301339lbb.24.1446187869069;
        Thu, 29 Oct 2015 23:51:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.153.84 with SMTP id b81ls182385lfe.90.gmail; Thu, 29 Oct
 2015 23:51:08 -0700 (PDT)
X-Received: by 10.112.145.201 with SMTP id sw9mr1351740lbb.13.1446187868463;
        Thu, 29 Oct 2015 23:51:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m135si49782wmb.0.2015.10.29.23.51.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 23:51:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,217,1444687200"; 
   d="scan'208";a="185135609"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Oct 2015 07:51:07 +0100
Date: Fri, 30 Oct 2015 07:51:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: media: bcm2048: fix code
 indent for conditional statements
In-Reply-To: <20151029234833.eb6cc67b92f1d763d6035553@gmail.com>
Message-ID: <alpine.DEB.2.02.1510300749340.2253@localhost6.localdomain6>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com> <6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam@gmail.com> <alpine.DEB.2.02.1510292141130.2027@localhost6.localdomain6> <20151029193943.363556fd6ad8c9ee80e30961@gmail.com>
 <alpine.DEB.2.02.1510300720150.2253@localhost6.localdomain6> <20151029234833.eb6cc67b92f1d763d6035553@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> > I guess making another patch is a solution, but the reason why the 
> > branches were double indented was that the tests were already indented - 
> > the developer was trying to preserve the property that the branch should 
> > be indented more than the test.  So it would have been reasonable to 
> > preserve that property in your solution as well, rather than just address 
> > the checkpatch warning.
> > 
> > julia
> > 
> 
> Ok. Then I'll send another version without these changes.


Oops, sorry.  Now I'm not clear on what you are planning to do.  I would
suggest to merge the changes into one patch, so that the property of the if
branch being indented under the if test is preserved.  Is that your plan,
or are you just dropping the issue completely?

julia

