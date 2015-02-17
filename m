X-GM-THRID: 126410031104
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6dcdcaf60ee56e37
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.232 with SMTP id e8mr2216334laa.2.1424185822265;
        Tue, 17 Feb 2015 07:10:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.3 with SMTP id hg3ls969113wib.37.gmail; Tue, 17 Feb
 2015 07:10:21 -0800 (PST)
X-Received: by 10.180.12.146 with SMTP id y18mr3580309wib.6.1424185821388;
        Tue, 17 Feb 2015 07:10:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si3715198wib.2.2015.02.17.07.10.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 07:10:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="100363386"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2015 16:10:14 +0100
Date: Tue, 17 Feb 2015 16:10:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: media: vino: Replace
 C99 with C89 style comment.
In-Reply-To: <b15e99a1-8a07-44ea-a6c5-b749f6e3d8cc@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1502171609130.2598@hadrien>
References: <1424183244-4997-1-git-send-email-ksenija.stanojevic@gmail.com> <b15e99a1-8a07-44ea-a6c5-b749f6e3d8cc@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-53736864-1424185811=:2598"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-53736864-1424185811=:2598
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 17 Feb 2015, Ksenija Stanojevic wrote:

> Yes, I can try. Should I make those changes in form of individual patch(es)
> or make a patchset along with this patch

I don't think that you need to preserve this patch.  When you make the
change that Arnd proposes, all of the code involved in this patch will go
away.  When you make the new patch, it will be doing one thing over and
over in a single file, so that would be just one patch.

julia

>
> On Tuesday, February 17, 2015 at 3:30:08 PM UTC+1, Ksenija Stanojevic wrote:
>       This patch fixes checkpatch.pl error in saa7191.c file
>       ERROR: "do not use C99 // comments"
>
>       Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
>       ---
>        drivers/staging/media/vino/saa7191.c | 2 +-
>        1 file changed, 1 insertion(+), 1 deletion(-)
>
>       diff --git a/drivers/staging/media/vino/saa7191.c
>       b/drivers/staging/media/vino/saa7191.c
>       index 8e96992..087acab 100644
>       --- a/drivers/staging/media/vino/saa7191.c
>       +++ b/drivers/staging/media/vino/saa7191.c
>       @@ -33,7 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen
>       <tmnousia@cc.hut.fi>");
>        MODULE_LICENSE("GPL");
>        
>        
>       -// #define SAA7191_DEBUG
>       +/* #define SAA7191_DEBUG */
>        
>        #ifdef SAA7191_DEBUG
>        #define dprintk(x...) printk("SAA7191: " x);
>       --
>       1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/b15e99a1-8a07-44ea-a6c5-
> b749f6e3d8cc%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-53736864-1424185811=:2598--

