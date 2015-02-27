X-GM-THRID: 4433146544128
X-Received: by 10.112.214.234 with SMTP id od10mr1962666lbc.3.1425036608688;
        Fri, 27 Feb 2015 03:30:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.193 with SMTP id cw1ls88878wib.44.gmail; Fri, 27 Feb
 2015 03:30:07 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr392134wik.5.1425036607503;
        Fri, 27 Feb 2015 03:30:07 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id o3si90084wib.2.2015.02.27.03.30.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 03:30:07 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22b.google.com with SMTP id k14so19641766wgh.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 03:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=68KTs5P7ujHJqaTjdGTjlOQ5ISTPoNPG8NleCL65k/U=;
        b=ldMtP2KztXNmkbcw4cE4m4Eb/hnOBWCJBvFWvGvf+4BlsChEOiLn5KSeTakS9OpYNh
         UlNpDjhkJ4zTLUMdUJ8EpyuJSkUc/tu4xjahDbWxYopZijY9vsG5S6aBd4gfAICFXIAI
         kX+ZwiwmPU6hUDZajlGkKIkwwP10Q2GzaVsYapxCD3k17/qaAtJrBKIFp/iXZVPsjgdA
         tM2jntD6RPOAshpN67SO1koJqsE4d47xeeGcurBT/TZg6NaFChS/mexrIU6mHL6Yb1bv
         MucIVjsA7I8F7TrEeGHcUmZ1t1tRaU2Tw9D7rlB4Wm6Sk5Rv5jJXQSyI8uUQTHPNK2xI
         jGsg==
MIME-Version: 1.0
X-Received: by 10.180.80.34 with SMTP id o2mr5362888wix.75.1425036607419; Fri,
 27 Feb 2015 03:30:07 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Fri, 27 Feb 2015 03:30:07 -0800 (PST)
In-Reply-To: <1425036117-13390-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425036117-13390-1-git-send-email-dilekuzulmez@gmail.com>
Date: Fri, 27 Feb 2015 13:30:07 +0200
Message-ID: <CAEnQRZCNtjyUAwgV1Q2-uomPM0dSPp=o0J9iboaerD774rf2nA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Fix quoted string split
 across lines
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 27, 2015 at 1:21 PM, Dilek Uzulmez <dilekuzulmez@gmail.com> wrote:
> This patch fixes "quoted string split across lines warning" warning in
> exec-osm.c
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>


Hi Dilek,

It is recommended to stay away from i2o/ dir because it is scheduled
for removal from linux kernel.

More info, under "Find a driver to clean up" section:
http://kernelnewbies.org/Outreachyfirstpatch

thanks,
Daniel.

