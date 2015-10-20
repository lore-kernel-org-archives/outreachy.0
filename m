X-GM-THRID: 6207450266150633472
X-Received: by 10.112.27.134 with SMTP id t6mr197039lbg.13.1445317691695;
        Mon, 19 Oct 2015 22:08:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.17 with SMTP id c17ls23491lfe.52.gmail; Mon, 19 Oct
 2015 22:08:07 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr199401lbs.18.1445317687414;
        Mon, 19 Oct 2015 22:08:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id bn7si224282wib.0.2015.10.19.22.08.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 22:08:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,706,1437429600"; 
   d="scan'208";a="151099398"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Oct 2015 07:08:06 +0200
Date: Tue, 20 Oct 2015 07:08:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: r8723au: use kernel
 preferred style for block comments
In-Reply-To: <20151020022938.GA24424@Ubuntu-D830>
Message-ID: <alpine.DEB.2.02.1510200703330.2044@localhost6.localdomain6>
References: <cover.1445282918.git.amsfield22@gmail.com> <ca096ddbb44df952c41fd95e6397d902d3baf767.1445282918.git.amsfield22@gmail.com> <alpine.DEB.2.02.1510192206570.2034@localhost6.localdomain6> <20151020022938.GA24424@Ubuntu-D830>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> Your comments have made me rethink how I addressed the checkpatch
> errors. 
> 
> Previously, I only cleaned those that checkpatch complained about. Now,
> I'm realizing while I'm cleaning up, I should clean up more throughly
> and correct all the comments. (without changing wording of course.)
> 
> Similarly with the data structure.  There are 2 main structs at the top of
> this file, and although only the first one triggered checkpatch
> warnings, the second one could use some clean up also.
> 
> Is that the correct mindset for these type of checkpatch warnings?

I think it depends on how complicated the other problems you are.  If you
are fixing a code formatting problem, and you see other code formatting
problems, then you could really fix them all up at once.  If there is any
doubt about the correctness of any of your changes, then you should do them
ome by one, so that they can be reverted independently, if needed.  For
example, if checkpatch tells you about spaces around parentheses in an if
test, and if it also tells you that the xyz function should be used instead
of abc, and the goal of your patch is to fix spaces around parentheses,
then you should not change abc to xyz at the same time.  But if you are
working on abc to xyz conversion, and you see a space around parentheses
problem on the same line, you could probably fix it up too, especially if
it is the only one in the file.

julia

