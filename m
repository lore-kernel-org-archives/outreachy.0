X-GM-THRID: 6202030500933009408
X-Received: by 10.140.237.202 with SMTP id i193mr25349058qhc.10.1444040921148;
        Mon, 05 Oct 2015 03:28:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.114 with SMTP id q105ls3039097qgq.14.gmail; Mon, 05 Oct
 2015 03:28:40 -0700 (PDT)
X-Received: by 10.129.103.4 with SMTP id b4mr25355421ywc.24.1444040920692;
        Mon, 05 Oct 2015 03:28:40 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el2si3579731pbb.0.2015.10.05.03.28.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 03:28:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,638,1437429600"; 
   d="scan'208";a="181104601"
Received: from 089-101-192072.ntlworld.ie (HELO hadrien.local) ([89.101.192.72])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2015 12:28:38 +0200
Date: Mon, 5 Oct 2015 11:28:27 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: wilc1000:
 wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
In-Reply-To: <20151005095302.GA5600@kroah.com>
Message-ID: <alpine.DEB.2.10.1510051128050.2665@hadrien>
References: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com> <1444026634-14551-2-git-send-email-shraddha.6596@gmail.com> <20151005095302.GA5600@kroah.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 5 Oct 2015, Greg KH wrote:

> On Mon, Oct 05, 2015 at 12:00:33PM +0530, Shraddha Barke wrote:
> > Use eth_zero_addr to assign the zero address to the given address
> > array instead of memset when second argument is address of zero.
>
> How do you know that this is safe to do?  You need to document the heck
> out of this and why you know this is ok.  See other patches that do this
> for examples of what you need to do.

This one is just a memset, so I guess there are no constraints on is use?

julia

