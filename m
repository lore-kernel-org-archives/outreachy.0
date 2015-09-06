X-GM-THRID: 6191000708384292864
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.112.139.137 with SMTP id qy9mr3975175lbb.17.1441575575895;
        Sun, 06 Sep 2015 14:39:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.6 with SMTP id m6ls607875laj.32.gmail; Sun, 06 Sep 2015
 14:39:35 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr4019563lbc.5.1441575575360;
        Sun, 06 Sep 2015 14:39:35 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k7si115570wif.1.2015.09.06.14.39.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Sep 2015 14:39:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,481,1437429600"; 
   d="scan'208";a="144910380"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 06 Sep 2015 23:39:34 +0200
Date: Sun, 6 Sep 2015 23:39:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    rajdeep51994@gmail.com
Subject: Re: [Outreachy kernel] about outreach 2015 winter program
In-Reply-To: <82e76356-b891-4f9d-a2be-5ac714c03b72@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1509062337490.2089@localhost6.localdomain6>
References: <5c2e98ba-f953-4eb0-b0f4-f89d7e6e60a4@googlegroups.com> <alpine.DEB.2.02.1509051728240.2052@localhost6.localdomain6> <82e76356-b891-4f9d-a2be-5ac714c03b72@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> Hi, Julia.
> Can we start sending cleanup patches for the staging drivers or we should
> just get ready for when
> the application process starts?

I think it would be better to wait.  I don't think Greg is paying 
attention at the moment, and if there is too much delay between when you 
send a patch and when he tries to apply it, there is a good chance that 
the patch will not apply anyway.

You can feel free to start thinking about what patches you would like to 
send, though.

julia

