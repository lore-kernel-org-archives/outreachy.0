X-GM-THRID: 6249264575111233536
X-Received: by 10.28.129.210 with SMTP id c201mr507639wmd.1.1455020747328;
        Tue, 09 Feb 2016 04:25:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.8.149 with SMTP id 143ls591354wmi.36.canary; Tue, 09 Feb
 2016 04:25:46 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr506288wme.4.1455020746880;
        Tue, 09 Feb 2016 04:25:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si396275wme.2.2016.02.09.04.25.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:25:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,420,1449529200"; 
   d="scan'208";a="202271827"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 13:25:46 +0100
Date: Tue, 9 Feb 2016 13:25:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Janani Ravichandran <janani.rvchndrn@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgap: Merge two separate if
 conditions
In-Reply-To: <20160209122226.GA13226@sudip-pc>
Message-ID: <alpine.DEB.2.10.1602091325160.2578@hadrien>
References: <20160209171735.GA4048@janani-Inspiron-3521> <20160209122226.GA13226@sudip-pc>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Sudip Mukherjee wrote:

> On Tue, Feb 09, 2016 at 12:17:35PM -0500, Janani Ravichandran wrote:
> > Merge two if conditions with the same statements to avoid code
> > duplication.
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/dgap/dgap.c | 6 +-----
>
> dgap is no longer in staging tree. Which tree are you using?

Even if the patch is not useful any more, you could use Coccinelle to see
if there are other occurrences of the same situation.

julia

