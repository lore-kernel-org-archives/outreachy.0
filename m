X-GM-THRID: 411471708160
X-Received: by 10.194.86.1 with SMTP id l1mr157044wjz.0.1424290366910;
        Wed, 18 Feb 2015 12:12:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.1 with SMTP id do1ls1277678wib.42.canary; Wed, 18 Feb
 2015 12:12:46 -0800 (PST)
X-Received: by 10.180.12.146 with SMTP id y18mr271926wib.6.1424290366599;
        Wed, 18 Feb 2015 12:12:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si6265085wif.0.2015.02.18.12.12.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 12:12:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,603,1418079600"; 
   d="scan'208";a="100529858"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 21:12:45 +0100
Date: Wed, 18 Feb 2015 21:12:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Use
 put_unaligned_le16
In-Reply-To: <20150218195639.GA3189@vaishali-Ideapad-Z570>
Message-ID: <alpine.DEB.2.02.1502182111570.2248@localhost6.localdomain6>
References: <20150218195639.GA3189@vaishali-Ideapad-Z570>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> Here, use of variable tim_bitmap_le and variable itself is removed. To be compatible with
> changes header file is added too.

Your commit message is too long here.

julia

