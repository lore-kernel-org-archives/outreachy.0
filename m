X-GM-THRID: 6249509204772519936
X-Received: by 10.25.39.2 with SMTP id n2mr4520609lfn.10.1455088719724;
        Tue, 09 Feb 2016 23:18:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.170 with SMTP id 42ls57950lfp.35.gmail; Tue, 09 Feb 2016
 23:18:38 -0800 (PST)
X-Received: by 10.112.156.33 with SMTP id wb1mr4556708lbb.7.1455088718013;
        Tue, 09 Feb 2016 23:18:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si62834wme.0.2016.02.09.23.18.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:18:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202408579"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 08:18:37 +0100
Date: Wed, 10 Feb 2016 08:18:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: slicoss: Align #define
 constants
In-Reply-To: <cd332ec7-4bf6-4854-859d-3ab667383154@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1602100817050.2050@localhost6.localdomain6>
References: <20160210090650.GA3575@janani-Inspiron-3521> <cd332ec7-4bf6-4854-859d-3ab667383154@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Janani Ravichandran wrote:

> This is embarrassing. The alignment looked fine on vim. All the constants
> were in the
> same column. I don't understand why the alignment looks so bad in the patch.
> Can someone
> explain this? :/

Oops, sorry I was thinking of the case of the 4 with lots of space in 
front of it.

Perhaps it is a tab issue?  Check whether the various numbers are 
preceded by spaces or tabs.

julia

> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/cd332ec7-4bf6-4854-859d-
> 3ab667383154%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 

