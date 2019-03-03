X-GM-THRID: 6663863789016842240
X-Received: by 2002:ac2:5593:: with SMTP id v19mr684321lfg.3.1551595281721;
        Sat, 02 Mar 2019 22:41:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:561a:: with SMTP id v26ls412390lfd.2.gmail; Sat, 02 Mar
 2019 22:41:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqxhtx22eHkHh64v3Dg39Ly0VJ3Ln6CK1XMXbCfVIM04nKPNLBS+rvrux46dAI8hMm2hwbO7
X-Received: by 2002:a19:fc05:: with SMTP id a5mr682198lfi.5.1551595280881;
        Sat, 02 Mar 2019 22:41:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551595280; cv=none;
        d=google.com; s=arc-20160816;
        b=MSFUMdw4q5OBJ02HYMx25w0JgqCBFNCYFErv12BT+kSeov4arfnE2wVjOA+d9jP89I
         MycLK/1jtrt+JNUxlp430eh9mRLYdcd9ibo0FlsZnMAe2LPYK7x+0emNEW4zsS5gccc+
         FBfmjZwp4ceXnpd4uwrfXx2vMaG/Q4we/t40CJqyo0tAHI4y7idv3An2kQJ2XmQDxaWk
         oi/ox+cKXx8jZMNfxNUQXFqeYO+gvtgZIW7HGYJ/gCBE+dr7qJhTUU7x4DvMLY3nu7WA
         BjW5g9NPyeVCn+LocUZdES5ulZEHYdqtYtODo2ulU2Ui5n7HSq07QeLspbFFB/6jEjSq
         Hogw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=eR+MT8FNdggsIsENkUjXgOsGOyLJm+XLtdEKe0Feg7s=;
        b=n/n56U37jb7zzXhjgpvDlGRpDXjqUG3MB728YwsjqH8m0EkYcOnYeby8c3Rhp2WOBm
         cI4fDDWjcWfnfjxnXgm2o+T1m693ruq7VMomDgAyule6+5J/erI8mx8BkCFj2Eq6/bX9
         8FoyUEGvZTzgGL/1x3uHCaYrxn7H6qPWANBOLuujr98YOrBWxi8LALucxQC/RPa8DEck
         WNgGxhSgoZcKB+ugwLs7jqU32tOwLjXZnK5J6e/eMUnsiQEa4XS39Py2/7tZ3X2rbEXq
         WBfGlVOcN9GG1ipLOZlsetTfZ1Wf3JfKfEKHYq95rD2vk2qOUTP/pbESFrnVs+W+saM+
         Uzjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h25si161014lja.3.2019.03.02.22.41.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 22:41:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,434,1544482800"; 
   d="scan'208";a="371655533"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 07:41:19 +0100
Date: Sun, 3 Mar 2019 07:41:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/8] Fix checkpatch.pl issues
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903030738190.3207@hadrien>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Mar 2019, Madhumitha Prabakaran wrote:

> These patches fix warnings of line over 80 characters, comment style
> issues of SPDX License Identifier and remove unnecessary blank line.
>
> Madhumitha Prabakaran (8):
>   Staging: vt6655: card.h: Fix line over 80 character
>   Staging: vt6655: card.h: Fix line over 80 characters
>   Staging: vt6655: device.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: device_cfg.h: Fix comment style of SPDX License Identifer
>   Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: key.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: mac.c: Remove unnecessary blank line
>   Staging: vt6655: mac.h: Fix comment style of SPDX License Identifier

I'm confused about this series.  I have the impression that it touches the
same files as the other series with only two patches.  And it has the same
problem with the subject lines.  You have made them unique in the cover
letter, but they are not unique in the patches.  You should use

git rebase -i HEAD~n

where n is the number of patches you need to go back in the history to get
to the ones you want to adjust.  Then in the menu that it offers you, you
can edit the log message of each one, specifically the first line, which
will become the subject line.  Then regenerate your patches in the normal
way.

julia


> ---
> Changes in v2
> - Fixed subject line difference
>
>  drivers/staging/vt6655/card.h       | 6 ++++--
>  drivers/staging/vt6655/device.h     | 2 +-
>  drivers/staging/vt6655/device_cfg.h | 2 +-
>  drivers/staging/vt6655/dpc.h        | 2 +-
>  drivers/staging/vt6655/key.h        | 2 +-
>  drivers/staging/vt6655/mac.c        | 1 -
>  drivers/staging/vt6655/mac.h        | 2 +-
>  7 files changed, 9 insertions(+), 8 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1551550323.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

