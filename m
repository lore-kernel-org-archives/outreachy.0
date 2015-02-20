X-GM-THRID: 1068226314240
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8554fdbdd0916d21
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.13.236 with SMTP id fb12mr1171272wid.1.1424416832070;
        Thu, 19 Feb 2015 23:20:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.224.129 with SMTP id rc1ls236228lac.48.gmail; Thu, 19 Feb
 2015 23:20:31 -0800 (PST)
X-Received: by 10.112.119.141 with SMTP id ku13mr1051527lbb.7.1424416831624;
        Thu, 19 Feb 2015 23:20:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si47968wid.1.2015.02.19.23.20.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 23:20:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,613,1418079600"; 
   d="scan'208";a="122615109"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 08:20:30 +0100
Date: Fri, 20 Feb 2015 08:20:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Use #include <linux/uaccess.h>
 instead of <asm/uaccess.h>
In-Reply-To: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
Message-ID: <alpine.DEB.2.02.1502200820150.2045@localhost6.localdomain6>
References: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Feb 2015, Aya Mahfouz wrote:

> This patchset replaces <asm/uaccess.h> by <linux/uaccess.h>. The
> replacements is safe since the header file <linux/uaccess.h> includes
> <asm/uaccess.h>

Thoughtful comment.  Thanks.

julia

> Aya Mahfouz (2):
>   staging: i2o: Use #include <linux/uaccess.h> instead of
>     <asm/uaccess.h>
>   staging: i2o: Use #include <linux/uaccess.h> instead of
>     <asm/uaccess.h>
> 
>  drivers/staging/i2o/i2o_config.c | 3 +--
>  drivers/staging/i2o/i2o_proc.c   | 2 +-
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> -- 
> 1.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1424395309.git.mahfouz.saif.elyazal%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

