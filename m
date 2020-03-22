X-GM-THRID: 6807040455722663936
X-Received: by 2002:a17:906:f6ce:: with SMTP id jo14mr2843003ejb.207.1584888469189;
        Sun, 22 Mar 2020 07:47:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a40f:: with SMTP id u15ls6456032edb.5.gmail; Sun, 22 Mar
 2020 07:47:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsVOuIOlkwOQRy4AhOTQllmcDVq1z9pXPO+JxOUfvMJO0X3x7KVwxET2PSxpZM3ILNnCtSP
X-Received: by 2002:a05:6402:29a:: with SMTP id l26mr17637667edv.45.1584888467764;
        Sun, 22 Mar 2020 07:47:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584888467; cv=none;
        d=google.com; s=arc-20160816;
        b=JYZ5lAXThSU7WqOGuNzysFKbJx/GS5B+h6ycarv3EHPgG5EgOerqBRrHIXzRSLt1Sl
         tcKAjyEhe91bmpVdQXuTUH4lTIZohvKkb3tohG4MWTPvyyy6MvIZcq7yM7CFvZ26ZI8n
         Po8yXSnwkRPi2AL2XG6zDaCadGXK6nZo0IVv8h/ACJl34yQg4PAg2oNevXWBgGDgTdRC
         goneWmyfb52QOKIXmg9vhmpoIAfQI3dQElCrrlQ3AbJj29/qkFfA3yXCA6VMvwdrOp9Y
         t27L9GssMwF58gPAFd8GLbtCI8/owCLplmi9wleO253t10bGBiDYhMmBe20QdyJJcHcM
         slFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=idpeie7aTO432+7AijbT8GHbTcw78JqchDPmXmjkom4=;
        b=JPpfjG/gR6ZFWfW+snjW59p35Q5giPmPJBEWwiVG5Qyhepq+YkkO3blUeaAtyz8nQe
         avmzG5etCUTminBTr1YFG6LjHECruj8Ac0PYC72KE5WHB1K9iMN0I50b3kuUeEtk4j6x
         JqPbFton0xA/ly3xmvJZ1kZBrBhIaJey4SkT3jj7pELsbJnhHCYME33xhi8w9M6YDicU
         VgmmcVF82G42m7qgZzSH64fklWo35ulS/Nac5QwHIjl2Nw1zkwNkQLXRwgLlG35WEaOM
         ngBmKm29MIMyYdsax20L/aJ5Q6sdWKHjZ6ido6EvYlo22qDZxhaB2CjK3Q4SYgFbZiTF
         L86A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lZW/TyLc";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c21si249460edj.0.2020.03.22.07.47.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 07:47:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lZW/TyLc";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id d5so1027415wrn.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 07:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=idpeie7aTO432+7AijbT8GHbTcw78JqchDPmXmjkom4=;
        b=lZW/TyLcOLtKVvopBgQ5KcwEJ9t3B16zyfNyatGIrZ1DpVCWJXHuwuQ+9YDkxcznwj
         Oq5QNB3LHx79Qnz1UquuCpLG5Aqe0uxYMmVDlDogw8clzUAWxDxlRzV1vLE2EfrONq/o
         c/Jcp7gK7zW/QcRrbD8y91zIvTvG+PlBpEfzaksnClIvXy1Th1xVv5WBqIx3KL114YF8
         T1RHGVGewPPkSqDTVvFCDVJbB0Hzy3Ncw/KhFtkGDjiOZlTicpD/Wv8tmEBR1BGFXWrr
         j0vT8vjbofoSsLKNaKOyA2y7Ozi4yH3gp4QYEmHsGoUC2XK/u/VhbBXug+1XsbcibWgj
         nXKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=idpeie7aTO432+7AijbT8GHbTcw78JqchDPmXmjkom4=;
        b=ZCFjbPtrXMVKkWiux7AmX6RQIF6y6/DPak3NqJZ9O7N9xUmF875QFYLDwgAulgzI7j
         WG7I4D1nMfZVtL8l2PHBX5uarvNdKuiWbjaxWGJ02RB3KBjtOCZqBalRzuKVgeqZFj2M
         40CFVeI7ySaycsLlaVKkB4P0DENIYNvDew0focFPm9wUX5XM8se43j09qDTFYK34DjmW
         M/A9JT3AT2P62hP2nY8QIOF/SD77WnRwx0OrwAVHc5QGZoWOv5K5KrUWqbqND6Z6slfs
         DolukfiEc/HXDnRVAKwwKfCZvu4yKcu6UE8iLdKdJb39RogiLue5iJFNDXDfQAPEUXDS
         jzuQ==
X-Gm-Message-State: ANhLgQ0cUGYM3PXtRhLj2h96QM2xJBcDg5Mc5TctapaM7RadqQ8VfnQv
	Q2yiDEWN+vxL7Fk6p16kcRY=
X-Received: by 2002:adf:8182:: with SMTP id 2mr22988804wra.37.1584888467496;
        Sun, 22 Mar 2020 07:47:47 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.132.208])
        by smtp.gmail.com with ESMTPSA id o133sm17413598wme.35.2020.03.22.07.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 07:47:46 -0700 (PDT)
Message-ID: <35ae3f18d6f774d19119d0fed29773f14f99da94.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: speakup: Use pr_warn()
 defined in <linux/printk.h>.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
 Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Sun, 22 Mar 2020 10:47:45 -0400
In-Reply-To: <20200322143516.wsekmcsreziw5tvo@function>
References: <20200322143322.29098-1-jane.pnx9@gmail.com>
	 <20200322143516.wsekmcsreziw5tvo@function>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-22 at 15:35 +0100, Samuel Thibault wrote:
> Sam Muhammed, le dim. 22 mars 2020 10:33:22 -0400, a ecrit:
> > Dropping a user-defined pr_warn() and using the kernel
> > message printing functions implemented in <linux/printk.h>.
> > 
> > Since both have the same functionality, using the standard
> > kernel functions is better.
> > 
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> 
> Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
> 

Thank you!
I have a question though, some drivers define pr_fmt() to include the
driver's KBUILD_MODNAME

#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

I added it, it builds fine but prompts me about a warning that its
redefined over the original pr_fmt() in <linux/printk.h>

is this warning usually ignored? because there are lots of drivers
redefined their own pr_fmt()

if so should i add it? 

Sam

> Thanks!
> 
> > ---
> >  drivers/staging/speakup/spk_priv.h | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/speakup/spk_priv.h b/drivers/staging/speakup/spk_priv.h
> > index ac6a74883af4..c75b40838794 100644
> > --- a/drivers/staging/speakup/spk_priv.h
> > +++ b/drivers/staging/speakup/spk_priv.h
> > @@ -11,13 +11,11 @@
> >  #ifndef _SPEAKUP_PRIVATE_H
> >  #define _SPEAKUP_PRIVATE_H
> > 
> > +#include <linux/printk.h>
> > +
> >  #include "spk_types.h"
> >  #include "spk_priv_keyinfo.h"
> > 
> > -#ifndef pr_warn
> > -#define pr_warn(fmt, arg...) printk(KERN_WARNING fmt, ##arg)
> > -#endif
> > -
> >  #define V_LAST_VAR { MAXVARS }
> >  #define SPACE 0x20
> >  #define SYNTH_CHECK 20030716 /* today's date ought to do for check value */
> > ---
> > 2.20.1
> > 
> 



