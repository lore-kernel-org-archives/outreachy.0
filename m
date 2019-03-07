X-GM-THRID: 6665747871131762688
X-Received: by 2002:a19:c502:: with SMTP id w2mr938310lfe.15.1551990516405;
        Thu, 07 Mar 2019 12:28:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:51b4:: with SMTP id f20ls670334lfk.3.gmail; Thu, 07 Mar
 2019 12:28:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqya+s8fftY1qyEFxn0E05s/73zu8SgJAEZkeKTBrTBq9LeAmBE8lHpsqXzXPWvBesegu+/8
X-Received: by 2002:a19:cd89:: with SMTP id d131mr938660lfg.14.1551990515515;
        Thu, 07 Mar 2019 12:28:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551990515; cv=none;
        d=google.com; s=arc-20160816;
        b=HLoOh0WeXGQdxMZ+H0pdmlffwHTauw0GC8VoEu270MXCiGJnRrS6h1xRY1Pb8IbOn1
         7TadGq+VeNuLF+MxeF5HP6ubpbaI8bZUBQnWmHS7TsHHMRfiDPK0SoMjkMDuthlORPkJ
         srytrpXtI5xysbgXLychMetjFniDqzXGrHRMLTvxpvJTy6MMUyr7BP/GCfOg1ZSKS70z
         Yd+Py6CMa33p0ETLsv5QkbCGX2skZ2HEvrDIJWSZUbwsmVwtct71yppAfu30hqfslk6b
         4LAdUeGn0j9nr5x1WjHPivF+PWSCROF9WL/RjmFzW/vJJpCxx96ERsa5X3f/1uoHyt3u
         5ECw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=N6JmtcZeoD97sOVGqkxz0ydRNSTIxMocWfGQShp65kg=;
        b=IMOxPbfF2LUb1RD0PAafPL90dMgKnQPwGdij90XohB68EsfBcVNxpEXvV5eKYgjNXh
         rNkaQ3VzfruTcbAIpLP8fVUkQe8ftWZABqxS60qXGl1VGf1DkNAtg5x0JTaY434VPGKZ
         5KoDxlSnFT0BSdBq8m4JU5NBiW8Yi8ywSGjhIcqLGaM6K1EJRoZg1iTMTnRdh9D2Q6ZQ
         8JISqVidGxfJPicG4eHmLkOR1CVmk1cbx5hB0X9mdc79H+7MhKMGm87rycuEQex+xrxI
         hnAPQyzMS2Jq9V6LzYxBBuWQfBJjNrOCJSUxuij6GcLb2VxHzGBAXs3coMfMB5/mbmyg
         LxTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f20si210227lfc.5.2019.03.07.12.28.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:28:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,453,1544482800"; 
   d="scan'208";a="372410021"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2019 21:28:34 +0100
Date: Thu, 7 Mar 2019 21:28:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: vt6655: Remove unused
 function prototype and definition
In-Reply-To: <cover.1551990063.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903072128070.2558@hadrien>
References: <cover.1551990063.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Mar 2019, Madhumitha Prabakaran wrote:

> This patchset remove an unused function prototype and function
> definition in vt6655 driver.
>
> Madhumitha Prabakaran (2):
>   Staging: vt6655: Remove an unused function prototype
>   Staging: vt6655: Remove function definition

Actually, the prototype and the function definition go together.  It would
be better to remove them both in one patch.

julia

>
>  drivers/staging/vt6655/mac.c | 7 -------
>  drivers/staging/vt6655/mac.h | 2 --
>  2 files changed, 9 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1551990063.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

