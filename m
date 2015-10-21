X-GM-THRID: 6207874064974872576
X-Received: by 10.112.136.99 with SMTP id pz3mr1599421lbb.11.1445405056627;
        Tue, 20 Oct 2015 22:24:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.196 with SMTP id ek4ls315743wid.36.gmail; Tue, 20 Oct
 2015 22:24:16 -0700 (PDT)
X-Received: by 10.180.87.164 with SMTP id az4mr6292097wib.1.1445405056084;
        Tue, 20 Oct 2015 22:24:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cm6si933686wib.1.2015.10.20.22.24.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 22:24:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,709,1437429600"; 
   d="scan'208";a="183734460"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Oct 2015 07:24:15 +0200
Date: Wed, 21 Oct 2015 07:24:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] patchset question
In-Reply-To: <20151020232149.GA13649@Ubuntu-D830>
Message-ID: <alpine.DEB.2.02.1510210723340.2038@localhost6.localdomain6>
References: <20151020232149.GA13649@Ubuntu-D830>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 20 Oct 2015, Alison Schofield wrote:

> 
> Patchset help needed:
> 
> I've changed one file in 5 different ways..all cleanup related. 
> It will be split into 5 patches.
> 
> In one branch I used git add -pi followed by commit to incrementally
> create 5 commits.  Each one dependent on the previous.  This is easy to grab 
> and build as a patchset because they are all on the same branch.
> 
> Is this method  OK?
> 
> (The alternative is to give each commit it's own branch to keep them
> independent.)
> 
> Searching archives of opw kernel I found reference to the dependent
> commits, stating it was OK.  But that may be outdated, so checking in.

I still don't understand why this methodology would cause code to move 
from above to below a comment.

julia

> 
> Thanks!
> alison
> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151020232149.GA13649%40Ubuntu-D830.
> For more options, visit https://groups.google.com/d/optout.
> 

