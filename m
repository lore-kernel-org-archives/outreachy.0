X-GM-THRID: 6395412283312308224
X-Received: by 10.46.21.28 with SMTP id s28mr773958ljd.14.1489127890341;
        Thu, 09 Mar 2017 22:38:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.1 with SMTP id 1ls937408ljh.31.gmail; Thu, 09 Mar 2017
 22:38:09 -0800 (PST)
X-Received: by 10.25.72.71 with SMTP id v68mr146360lfa.9.1489127889946;
        Thu, 09 Mar 2017 22:38:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si103063wmg.3.2017.03.09.22.38.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 22:38:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,139,1486422000"; 
   d="scan'208";a="216244096"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 07:38:08 +0100
Date: Fri, 10 Mar 2017 07:38:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 0/2] staging: speakup: i18n.c:
 Refactor conditionals and change return type
In-Reply-To: <cover.1489099212.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703100737430.2169@hadrien>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com> <cover.1489099212.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Change return type from int to bool and refactor code for clarity.
>
> ---
> Changes in v3:
>     Replace numeric value '1' with boolean 'true'
>
> Changes in v2:
>     - Update documentation for compare_specifiers and fmt_validate
>     - Make commit messages more clear
>     - Rewrite condition without using '!'
>     - Fit function call on single line
>
> Narcisa Ana Maria Vasile (2):
>     staging: speakup: i18n.c: Change return type from int to bool
>     staging: speakup: i18n.c: Refactor conditionals in spk_msg_set

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


>
>     drivers/staging/speakup/i18n.c | 67 ++++++++++++++++++++----------------------
> 1 file changed, 32 insertions(+), 35 deletions(-)
>
>     --
>     1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1489099212.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

