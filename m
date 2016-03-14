X-GM-THRID: 6261701952738951168
X-Received: by 10.112.136.35 with SMTP id px3mr2507141lbb.8.1457932427285;
        Sun, 13 Mar 2016 22:13:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.137 with SMTP id m131ls486590wma.22.gmail; Sun, 13 Mar
 2016 22:13:46 -0700 (PDT)
X-Received: by 10.28.85.137 with SMTP id j131mr1654452wmb.1.1457932426576;
        Sun, 13 Mar 2016 22:13:46 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v68si522052wmd.1.2016.03.13.22.13.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 22:13:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,334,1454972400"; 
   d="scan'208";a="168484265"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Mar 2016 06:13:45 +0100
Date: Mon, 14 Mar 2016 06:13:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle SP in git logs
In-Reply-To: <20160314004130.GA826@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.02.1603140612050.2139@localhost6.localdomain6>
References: <20160314004130.GA826@d830.WORKGROUP>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 13 Mar 2016, Alison Schofield wrote:

> Mentors,
> 
> Are there any preferred limits to the semantic patches included
> in changelogs.
> 
> I'm about to put an 80 line semantic patch in a git log and it
> has me wondering if I should give a pointer to the patch instead.
> 
> The pointer would be to my fork at Coccinellary on GitHub.
> GitHub may be less persistent, but it does have the advantage
> of including the semantic patch description. 

In this situation, I put the complete semantic patch in the cover letter 
and then a simplified version in the actual patch.

julia

