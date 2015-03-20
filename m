X-GM-THRID: 9130553114624
X-Received: by 10.181.29.66 with SMTP id ju2mr3097917wid.1.1426880385126;
        Fri, 20 Mar 2015 12:39:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.168 with SMTP id j8ls409910wiy.1.gmail; Fri, 20 Mar
 2015 12:39:44 -0700 (PDT)
X-Received: by 10.194.11.70 with SMTP id o6mr13445683wjb.6.1426880384817;
        Fri, 20 Mar 2015 12:39:44 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id cl5si9974wib.3.2015.03.20.12.39.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 12:39:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id m6so97647717wgd.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 12:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8EL6cd4dNGruWEVOLYSczOL+y383T2zsvlYL+3RO+GI=;
        b=DFp4LMmjfslGQ4xJBOmu+xoFcs3YgcVBuli/24DMl9DoIC+5etBUl2EqRCyPHa+qJJ
         1utrEeosACtCGWzZE4vrVGKkK+b6FVHgVfempuY1elutNQrHwLXVfPnR+PdD/XcZVXmz
         6M9gOPrSf2nktYKuEJqTutDE/jRnZZtZmnr58GGD/ua4CoRIc/qvbEch7f2p67aCPQ6G
         Mmk+pf3ddPRGfcnVjRQjRpOhFeOH7wTY/dIVYBz9Xhj29VK9BXobNRDYydIJOg4uR7Cp
         /nNBoydtsudS8Hz1CiaHhhwhtuHNk/HPINvUHt76r9l9UzCwkKEm6Qb2xidcvAitauJS
         eArw==
MIME-Version: 1.0
X-Received: by 10.194.210.103 with SMTP id mt7mr166341547wjc.103.1426880384759;
 Fri, 20 Mar 2015 12:39:44 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Fri, 20 Mar 2015 12:39:44 -0700 (PDT)
In-Reply-To: <bf54cd694e0103b4e26cd91b243614f716bb693c.1426867335.git.cristina.opriceana@gmail.com>
References: <bf54cd694e0103b4e26cd91b243614f716bb693c.1426867335.git.cristina.opriceana@gmail.com>
Date: Fri, 20 Mar 2015 21:39:44 +0200
Message-ID: <CAEnQRZBLofR0x9V8fYi90NVDJu8XyM4+jjYqfAfBhkVufCMgQQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] Staging: iio: Add kernel-doc
 for struct hmc5843
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 20, 2015 at 6:09 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patch documents the struct hmc5843 specific data following
> this warning:
> "CHECK: struct mutex definition without comment".
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Please resend the whole patch series even if not all patches are changed.

Daniel.

