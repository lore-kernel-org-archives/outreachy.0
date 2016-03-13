X-GM-THRID: 6261369966950350848
X-Received: by 10.112.170.42 with SMTP id aj10mr2086331lbc.1.1457840288610;
        Sat, 12 Mar 2016 19:38:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.75 with SMTP id f72ls606399lfi.12.gmail; Sat, 12 Mar
 2016 19:38:08 -0800 (PST)
X-Received: by 10.25.160.207 with SMTP id j198mr2136164lfe.4.1457840288032;
        Sat, 12 Mar 2016 19:38:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si310883wmf.2.2016.03.12.19.38.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:38:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,328,1454972400"; 
   d="scan'208";a="207446712"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 04:38:07 +0100
Date: Sun, 13 Mar 2016 04:38:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: dgnc: fix
 dgnc_Major_TransparentPrint_Registered camelcase
In-Reply-To: <cover.1457838430.git.juliana.orod@gmail.com>
Message-ID: <alpine.DEB.2.02.1603130436460.2069@localhost6.localdomain6>
References: <cover.1457838430.git.juliana.orod@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 13 Mar 2016, Juliana Rodrigues wrote:

> This patchset aims to fix dgnc_Major_TransparentPrint_Registered CamelCase
> issue on checkpatch.pl by renaming it in dgnc_driver.h and its calls in dgnc_tty.c.

Given the small size of the changes and the close relationship between 
them, this could have been just one patch.

Again, the commit message goes over 80 characters.  Try to stop well 
before, so that when someone responds to your commit, the whole thing stll 
fits in 80 characters.

julia

>  
> Juliana Rodrigues (2):
>   staging: dgnc: renamed dgnc_Major_TransparentPrint_Registered to avoid
>     camelcase in dgnc_driver.h
>   staging: dgnc: fixed dgnc_major_transparent_print_registered calls in
>     dgnc_tty.c
> 
>  drivers/staging/dgnc/dgnc_driver.h | 2 +-
>  drivers/staging/dgnc/dgnc_tty.c    | 8 ++++----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> -- 
> 2.7.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1457838430.git.juliana.orod%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

