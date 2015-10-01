X-GM-THRID: 6200529091432546304
X-Received: by 10.182.106.11 with SMTP id gq11mr7025483obb.25.1443686680802;
        Thu, 01 Oct 2015 01:04:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.171.73 with SMTP id as9ls390358obc.99.gmail; Thu, 01 Oct
 2015 01:04:40 -0700 (PDT)
X-Received: by 10.182.126.228 with SMTP id nb4mr6979008obb.19.1443686680549;
        Thu, 01 Oct 2015 01:04:40 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id zg1si813829pbb.2.2015.10.01.01.04.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 01:04:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,616,1437429600"; 
   d="scan'208";a="180367497"
Received: from unknown (HELO hadrien.local) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Oct 2015 10:04:38 +0200
Date: Thu, 1 Oct 2015 10:04:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: android: Remove unneeded
 definition in header file
In-Reply-To: <20151001080016.GA26145@kroah.com>
Message-ID: <alpine.DEB.2.10.1510011003220.2765@hadrien>
References: <1443673166-12653-1-git-send-email-shraddha.6596@gmail.com> <20151001055624.GA25101@kroah.com> <20151001061400.GA21892@sudip-pc> <20151001080016.GA26145@kroah.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> Yes, but other files might use those functions and they need to still
> build if the config option is not enabled.

Are there some drivers in particular for which one should watch out for
this issue?

thanks,
julia

