X-GM-THRID: 6330194437741740032
X-Received: by 10.28.206.131 with SMTP id e125mr1198630wmg.5.1474013302548;
        Fri, 16 Sep 2016 01:08:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.66.80 with SMTP id p77ls632592wma.26.canary; Fri, 16 Sep
 2016 01:08:22 -0700 (PDT)
X-Received: by 10.194.104.230 with SMTP id gh6mr2172165wjb.7.1474013301994;
        Fri, 16 Sep 2016 01:08:21 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y6si314020wmg.0.2016.09.16.01.08.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:08:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,343,1470693600"; 
   d="scan'208";a="237058589"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 10:08:21 +0200
Date: Fri, 16 Sep 2016 10:08:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
cc: Rehas Sachdeva <aquannie@gmail.com>, outreachy-kernel@googlegroups.com, 
    Lidza Louina <lidza.louina@gmail.com>, Mark Hounschell <markh@compro.net>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: Fix long line and
 spelling mistake
In-Reply-To: <20160916080749.GA21425@kroah.com>
Message-ID: <alpine.DEB.2.10.1609161008050.3049@hadrien>
References: <20160915040821.GA5441@toblerone> <alpine.DEB.2.10.1609150710330.6078@hadrien> <20160916080749.GA21425@kroah.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 16 Sep 2016, Greg Kroah-Hartman wrote:

> On Thu, Sep 15, 2016 at 07:10:42AM +0200, Julia Lawall wrote:
> >
> >
> > On Thu, 15 Sep 2016, Rehas Sachdeva wrote:
> >
> > > This patch fixes the checkpatch.pl warning: Line over 80 characters.
> > > Also, the word 'because' was spelled as 'Becuz' and has been corrected.
> >
> > Looks much betetr :)
>
> Julia, can you provide "Reviewed-by:" or "Acked-by:" for patches like
> this so that I can give you credit for doing this review?

OK.  Will do.

julia

