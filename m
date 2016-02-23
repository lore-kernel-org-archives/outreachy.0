X-GM-THRID: 6254479074591244288
X-Received: by 10.28.158.216 with SMTP id h207mr1911777wme.4.1456235677670;
        Tue, 23 Feb 2016 05:54:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.87.207 with SMTP id l198ls673015wmb.38.canary; Tue, 23 Feb
 2016 05:54:37 -0800 (PST)
X-Received: by 10.28.129.210 with SMTP id c201mr1908451wmd.1.1456235677169;
        Tue, 23 Feb 2016 05:54:37 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w197si1133186wmw.3.2016.02.23.05.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 05:54:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,489,1449529200"; 
   d="scan'208";a="204299335"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 14:54:36 +0100
Date: Tue, 23 Feb 2016 14:54:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: libcfs: use swap()
 in cfs_hash_bd_order()
In-Reply-To: <CA+5yK5Ey6zJzef7jzbgsUk2TYYZ_+AdJ8Suk7L6PKYGepzwHRw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602231454000.2168@localhost6.localdomain6>
References: <20160223133302.GA3944@amitoj-Inspiron-3542> <alpine.DEB.2.02.1602231435060.2168@localhost6.localdomain6> <CA+5yK5Ey6zJzef7jzbgsUk2TYYZ_+AdJ8Suk7L6PKYGepzwHRw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 23 Feb 2016, Amitoj Kaur Chawla wrote:

> On Tue, Feb 23, 2016 at 7:06 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>
> >>       rc = cfs_hash_bd_compare(bd1, bd2);
> >> -     if (rc == 0) {
> >> +     if (!rc)
> >
> > This seems like a completely different issue than the use of swap.
> >
> > julia
> >
> I thought it would be okay to clean up the entire if-else block in the
> same patch and not just the else condition.
> 
> If you prefer me sticking to only the swap cleanup, I'll do that.

Yes, it would be better.  The swap has really nothing to do with the if.  
You can also make a series with the other change, to get it done.

julia

> 
> Amitoj
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5Ey6zJzef7jzbgsUk2TYYZ_%2BAdJ8Suk7L6PKYGepzwHRw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

