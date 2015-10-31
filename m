X-GM-THRID: 6211884889777635328
X-Received: by 10.194.248.131 with SMTP id ym3mr2926969wjc.7.1446318955477;
        Sat, 31 Oct 2015 12:15:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.130.77 with SMTP id e74ls303389wmd.34.gmail; Sat, 31 Oct
 2015 12:15:55 -0700 (PDT)
X-Received: by 10.28.145.198 with SMTP id t189mr832272wmd.5.1446318955131;
        Sat, 31 Oct 2015 12:15:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si256881wmb.1.2015.10.31.12.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 12:15:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,225,1444687200"; 
   d="scan'208";a="185378278"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Oct 2015 20:15:54 +0100
Date: Sat, 31 Oct 2015 20:15:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: interval_tree:
 Convert inline function to macro
In-Reply-To: <CAKHNQQHALdjf7KpZ7keNf2+4wXXfCVmabGZj-zB-b+=uorKOtw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1510312013340.2194@localhost6.localdomain6>
References: <20151031184544.GA27064@ubuntu> <20151031185300.GA8949@kroah.com> <CAKHNQQEyJD+j+yNOGtsfZnTkjFcUBNxcAHsTjM=bJWqmb81hOQ@mail.gmail.com> <alpine.DEB.2.02.1510312007450.2194@localhost6.localdomain6>
 <CAKHNQQHALdjf7KpZ7keNf2+4wXXfCVmabGZj-zB-b+=uorKOtw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1518943572-1446318954=:2194"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1518943572-1446318954=:2194
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

> Inline functons have types, which help you find bugs.
> 
> Inline functions don't risk duplicating computations.  In your macro,
> if
> eg x is the larger value, then whatever x is replaced by will be
> evaluated
> twice.  Consider what would happen if x is eg i++.
> 
> Yes, Julia. I took into consideration this case  and I checked out the
> entire code where the function was called, there was no situation like this.
> Plus, I had read that inline functions are compiler dependent so I thought
> of making the change.
> Thank you for explaining. :)

OK.  Still, someone else could extend the code in some way and want to use 
what looks like a function, and use is in a bad way.

Anyway, the best is always to find a standard kernel function that does 
the same thing.  There are lots of them for these kind of numerical 
things.

Also, you should set up your mailer so that it marks what you are replying 
to in some way.  In the above, one can't see the difference between what I 
wrote and what you wrote.

julia
--8323328-1518943572-1446318954=:2194--

