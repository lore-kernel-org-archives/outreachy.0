X-GM-THRID: 411471708160
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,82a0d380676b09c2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.50.106 with SMTP id b10mr364202lbo.8.1424330675293;
        Wed, 18 Feb 2015 23:24:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.201 with SMTP id m9ls124487lah.6.gmail; Wed, 18 Feb
 2015 23:24:34 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr351308lbj.23.1424330674787;
        Wed, 18 Feb 2015 23:24:34 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si6340974wic.1.2015.02.18.23.24.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 23:24:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,607,1418079600"; 
   d="scan'208";a="100564796"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 08:24:33 +0100
Date: Thu, 19 Feb 2015 08:24:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: Jes Sorensen <jes.sorensen@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Use
 put_unaligned_le16
In-Reply-To: <CAK-LDbKDENPCBRB9Na9xGifkjy0nm9OV1dLJO4Hw1Op+vSvHtA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1502190822560.2009@localhost6.localdomain6>
References: <20150218195639.GA3189@vaishali-Ideapad-Z570> <alpine.DEB.2.02.1502182111570.2248@localhost6.localdomain6> <54E503C2.2030009@gmail.com> <CAK-LDbKDENPCBRB9Na9xGifkjy0nm9OV1dLJO4Hw1Op+vSvHtA@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> Ok. I will split this patch in 2 patches also. And will make the commit log
> short and more clear.

Actually, my comment was ambiguous.  I was commenting on the fact that you 
went way over 80 characters.  I think Jes's comment was more that he 
wanted all the English text part of the commit message up at the top, 
where he would see it immediately, not buried after the semantic patch.

julia

