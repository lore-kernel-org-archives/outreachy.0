X-GM-THRID: 6254173347374956544
X-Received: by 10.112.162.101 with SMTP id xz5mr4369706lbb.20.1456251716916;
        Tue, 23 Feb 2016 10:21:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.169.204 with SMTP id s195ls233867lfe.64.gmail; Tue, 23 Feb
 2016 10:21:56 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr4219601lbc.6.1456251716014;
        Tue, 23 Feb 2016 10:21:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h126si832202wme.0.2016.02.23.10.21.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 10:21:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,490,1449529200"; 
   d="scan'208";a="204342858"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 19:21:55 +0100
Date: Tue, 23 Feb 2016 19:21:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Use
 kmalloc_array
In-Reply-To: <CAFNHFT85TWqvUEdyNyKh5oocNGpDsbugX+hkjcyPaQ4oAUVfrw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602231921370.2040@localhost6.localdomain6>
References: <20160222174716.GA27662@Karyakshetra> <alpine.DEB.2.02.1602231648460.2040@localhost6.localdomain6> <CAFNHFT85TWqvUEdyNyKh5oocNGpDsbugX+hkjcyPaQ4oAUVfrw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 23 Feb 2016, Bhaktipriya Shridhar wrote:

> Hello Julia,
> 
> 
> On Tue, Feb 23, 2016 at 9:19 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:
> >
> >> Use kmalloc_array instead of kmalloc for arrays to prevent integer
> >> overflows.
> >> This was done using Coccinelle:
> >>
> >> @@
> >> expression e1, e2;
> >> constant C;
> >> type t;
> >> @@
> >> (
> >> - kmalloc(
> >> + kmalloc_array(
> >> e2
> >> - *
> >> + ,
> >> sizeof(e1), C)
> >> |
> >> - kmalloc(
> >> + kmalloc_array(
> >> e1
> >> - *
> >> + ,
> >> sizeof(t), C)
> >> |
> >> - kmalloc(
> >> + kmalloc_array(
> >> - sizeof(e1)
> >> - *
> >> e2
> >> + ,
> >> + sizeof(e1)
> >> , C)
> >> |
> >> - kmalloc(
> >> + kmalloc_array(
> >> - sizeof(t)
> >> - *
> >> e1
> >> + ,
> >> + sizeof(t)
> >> , C)
> >> )
> >>
> >> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> >> ---
> >>  Changes in v2:
> >>       - Modified Coccinelle script to respect 80 character limit.
> >
> > I'm not sure to understand this comment.  Was the Coccinelle script itself
> > over 80 characters, or was it producing code that went over 80 characters.
> > In the latter case, changing the spacing in the semantic patch won't
> > affect the spacing in the generated code.
> >
> 
> The earlier Coccinelle script produced code that went over 80 characters.
> In my current script, I'm replacing asterisk with a comma, so that the
> expressions around stay in their place.
> 
> This was my script earlier, which failed to respect the 80 character
> limit. It replaced the function calls line by line and hence the 80
> character limit was violated.

OK, I see.  No need for v3.

julia

> 
> @@
> expression e1, e2;
> constant C;
> type t;
> @@
> (
> - kmalloc(sizeof(e1)*e2, C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(e1), C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(t), C)
> + kmalloc_array(e2, sizeof(t), C)
> |
> - kmalloc(sizeof(t)*e2, C)
> + kmalloc_array(e2, sizeof(t), C)
> )
> 
> If you insist, I can send a v3 for this with the "Change in v3"
> statement modified.
> 
> 
> Thanks,
> Bhaktipriya
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAFNHFT85TWqvUEdyNyKh5oocNGpDsbugX%2BhkjcyPaQ4oAUVfrw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

