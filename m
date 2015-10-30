X-GM-THRID: 6211442001355735040
X-Received: by 10.28.211.201 with SMTP id k192mr745161wmg.3.1446214608739;
        Fri, 30 Oct 2015 07:16:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.2 with SMTP id r2ls203491lfr.74.gmail; Fri, 30 Oct 2015
 07:16:48 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr1803707lbb.16.1446214608177;
        Fri, 30 Oct 2015 07:16:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g9si98203wmd.2.2015.10.30.07.16.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 07:16:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,218,1444687200"; 
   d="scan'208";a="185217636"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Oct 2015 15:16:47 +0100
Date: Fri, 30 Oct 2015 15:16:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Question regarding patches
In-Reply-To: <59a30a98-4f7f-4845-a048-dbf4d88af8fd@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1510301508430.2364@hadrien>
References: <59a30a98-4f7f-4845-a048-dbf4d88af8fd@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 30 Oct 2015, Shraddha Barke wrote:

> I want to do 2 changes in same header file - 1. Remove unused functions and
> 2. Remove the function declarations of static functions.
> Should I split this up into separate patches considering that it is the same
> header?

Yes.  If the functions seem completely unrelated, you might want to make
one patch per function.  But if they are similar, they could be done at
once.

julia

