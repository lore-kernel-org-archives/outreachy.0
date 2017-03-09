X-GM-THRID: 6395616687953018880
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.25.145.17 with SMTP id t17mr2319507lfd.23.1489096481668;
        Thu, 09 Mar 2017 13:54:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.36.212 with SMTP id k203ls19010wmk.8.gmail; Thu, 09 Mar
 2017 13:54:40 -0800 (PST)
X-Received: by 10.28.88.144 with SMTP id m138mr268013wmb.6.1489096480750;
        Thu, 09 Mar 2017 13:54:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si28672wmg.0.2017.03.09.13.54.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 13:54:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,137,1486422000"; 
   d="scan'208";a="216219199"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 22:54:39 +0100
Date: Thu, 9 Mar 2017 22:54:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Group patches
In-Reply-To: <df05194d-8393-47e7-8594-5e3777469a35@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703092253470.2306@hadrien>
References: <df05194d-8393-47e7-8594-5e3777469a35@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Tamara Diaconita wrote:

> If I clean up a driver and I have two files with the same name but different
> extensions: file.c and file.h should i group them in a patch set?

I don't think so.  The subject line doesn't have to uniquely identify the
file.

On the other hand, changes in one might impact the other.  file.h is
typically quite closely related to file.c

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/df05194d-8393-47e7-8594-
> 5e3777469a35%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

