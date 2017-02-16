X-GM-THRID: 6387802033040130048
X-Received: by 10.25.195.17 with SMTP id t17mr464158lff.28.1487277122909;
        Thu, 16 Feb 2017 12:32:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.51.21 with SMTP id z21ls6341wmz.20.gmail; Thu, 16 Feb 2017
 12:32:02 -0800 (PST)
X-Received: by 10.223.144.81 with SMTP id h75mr250671wrh.1.1487277122265;
        Thu, 16 Feb 2017 12:32:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p185si109083wme.1.2017.02.16.12.32.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 12:32:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,169,1484002800"; 
   d="scan'208";a="213498924"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2017 21:31:55 +0100
Date: Thu, 16 Feb 2017 21:31:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, thomas.petazzoni@free-electrons.com, 
    noralf@tronnes.org, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: fbtft: Cleanup to improve
 readability
In-Reply-To: <cover.1487275508.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702162131240.2121@hadrien>
References: <cover.1487275508.git.gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Feb 2017, Gargi Sharma wrote:

> This patchset contains patches that improve the code readability by removing
> unnecessary blank lines and matching alignment with open parenthesis.

You can be a bit more concise by using the imperative:

"Improve the code readbility by removing..."

julia

>
> Gargi Sharma (2):
>   staging: fbtft: Match alignment with open parentheses
>   staging: fbtft: Remove blank line
>
>  drivers/staging/fbtft/fbtft-core.c | 55 +++++++++++++++++++-------------------
>  1 file changed, 27 insertions(+), 28 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1487275508.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

