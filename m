X-GM-THRID: 3468768051200
X-Received: by 10.112.40.81 with SMTP id v17mr851714lbk.5.1424905428557;
        Wed, 25 Feb 2015 15:03:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.74 with SMTP id q10ls876688laq.43.gmail; Wed, 25 Feb
 2015 15:03:48 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr856942lbb.9.1424905428061;
        Wed, 25 Feb 2015 15:03:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si1232712wic.1.2015.02.25.15.03.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 15:03:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,648,1418079600"; 
   d="scan'208";a="123415556"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2015 00:03:47 +0100
Date: Thu, 26 Feb 2015 00:03:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Greg KH <gregkh@linuxfoundation.org>
cc: aybuke ozdemir <aybuke.147@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: i2o: Remove unnecessary
 'out of memory' message
In-Reply-To: <20150225230023.GB14612@kroah.com>
Message-ID: <alpine.DEB.2.02.1502260002420.2029@localhost6.localdomain6>
References: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com> <20150225230023.GB14612@kroah.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> I'll take these, but please stay away from the i2o drivers, they are
> going to be removed from the kernel soon and are not worth the cleanup.

Aybuke,

There is a list of directories to avoid in:

http://kernelnewbies.org/Outreachyfirstpatch

In the section Find a driver to clean up.  Concretely,

i2o
line6
media/parport
media/tlg2300
media/vino

julia

