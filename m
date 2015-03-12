X-GM-THRID: 7888814735360
X-Received: by 10.194.161.194 with SMTP id xu2mr6734935wjb.1.1426197635770;
        Thu, 12 Mar 2015 15:00:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.33 with SMTP id cr1ls288602lad.47.gmail; Thu, 12 Mar
 2015 15:00:35 -0700 (PDT)
X-Received: by 10.112.159.227 with SMTP id xf3mr6839568lbb.11.1426197635166;
        Thu, 12 Mar 2015 15:00:35 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c8si2677wiw.1.2015.03.12.15.00.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 15:00:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,391,1422918000"; 
   d="scan'208";a="125673600"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Mar 2015 23:00:34 +0100
Date: Thu, 12 Mar 2015 23:00:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: Fix code style
 issues
In-Reply-To: <CAHjTdYdEZ4x6kksbvbevMeYFBRJc8vUwYToObUeWJA-zJPsKhQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1503122257510.2064@localhost6.localdomain6>
References: <20150312143226.GA26267@akanksha> <alpine.DEB.2.02.1503122113420.2064@localhost6.localdomain6> <CAHjTdYdEZ4x6kksbvbevMeYFBRJc8vUwYToObUeWJA-zJPsKhQ@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 13 Mar 2015, Vatika Harlalka wrote:

> The definition of fbtft_par_dbg uses a call to dev_info after
> rearranging the parameters appropriately. This is done after
> checking:
> if (unlikely(par->debug & level))
> ie the expected value of par->debug &level is 0.
> Could you please provide some guidance on what other function
> I should use?

I'm not sure any more what file your patch was in, but I looked at some 
other files in this directory, and it seems that many uses of this 
function are at the beginning of a function.  That is, they just indicate 
what the driver is doing, but not any abnormal condition.  Perhaps they 
could just be dropped.  For the ones that seem very useful, you could 
use dev_info.

julia

