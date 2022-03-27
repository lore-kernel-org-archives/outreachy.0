Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7133237
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 15:42:45 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id m18so7880067plx.3
        for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 08:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kx08h8j+yVg+VoOvZYPYIyf1qJz+YxUQCZ63Avu+Mw8=;
        b=qA20gRbb7wdC69qF+S7IkQMy5z43hNi5XPVHuLFA/7JurHkng+JV6lzD7OO+CbsqdK
         LWoM1tkK/XXJAmj/QXpHZl0FuvMirnurMvM7bB3Oz1/CZFBxJ9sJk15q4aHQTWthADzC
         possD3daMiyVWapQsfgHbJdKhORr0xDPoRVrXyJKL/BL65kuiCHSmxMt9vndsLwLBR5O
         g6Hb7SUiaKFhCwPoj1Ys/QRuLnzd0e8GLupLOFPWmGMSWoBTg370CgE77IXGTtvlUAxn
         onEtQ2LRFffBhkXRiP6gJFQJczp1DEB8kfbmKxIi5cTYneGaw+G3uW5//unsq1DAva8A
         jWXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kx08h8j+yVg+VoOvZYPYIyf1qJz+YxUQCZ63Avu+Mw8=;
        b=btP5XcUjLVDyLtllW4hiz0w8zM7fcemCXnfpIxJIjwxErctQycXpFC8vOtyMhugg8G
         iWi6ed5JUsBDkB3zP106X1I4MFT2EkaU/GOLKnjJRoR6QbeF6wAnD32bFLN8hB1WTPxV
         /syYEaTPWtFSepjRJncDIygQTmDfpf82GW9te0AJSq1nz1iHr0DETrRwYOY32zbk43ux
         0W4YyciijTFgM4Bdv3AjuYF21RpKOydDiWpXFZGEBmLJAovyoitb39tKx+evErTxmH4K
         FQmoEKStnIxjm+lw8Dn5yIHRXpbbDfCcuCzDMhMyEAgw4FfKudjsQiWqiEFJ5hMIW4cH
         PvOw==
X-Gm-Message-State: AOAM531NmzlnhGLHX5jm6FhQfRUSo0NqQY3lbNqJ2inA9D8j0K4QXG5b
	y8BH+2BUQ72iZc/mnNUidAmPz8o7zqMNj01lD5c=
X-Google-Smtp-Source: ABdhPJziZhBCA11xnqjW5eKAgikMzylCIzwvHq4tY1EtPbspEN6sSS/seov1P9oK38lLapEqKIqE183UZ2pSYnCScpA=
X-Received: by 2002:a17:90a:ee94:b0:1c6:4580:1e5 with SMTP id
 i20-20020a17090aee9400b001c6458001e5mr24546982pjz.47.1648395765092; Sun, 27
 Mar 2022 08:42:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAMWRUK5t=LZG4Ay=RaFkBbV4q3JYayMqm=Sb_dkO92wJfgH64Q@mail.gmail.com>
In-Reply-To: <CAMWRUK5t=LZG4Ay=RaFkBbV4q3JYayMqm=Sb_dkO92wJfgH64Q@mail.gmail.com>
From: Roopa Prabhu <roopa.prabhu@gmail.com>
Date: Sun, 27 Mar 2022 08:42:34 -0700
Message-ID: <CAGe6so8aaM82W6SYOtcbRen=BGxq5M58rjPrpANtyaVcMfRC0Q@mail.gmail.com>
Subject: Re: Outreachy contributor
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev, Stefano Brivio <sbrivio@redhat.com>, 
	Julia Denham <jdenham@redhat.com>
Content-Type: text/plain; charset="UTF-8"

Welcome Sevinj!, thanks for your interest.

pls reach out to us with any questions/problems. We are on irc too.

On Sun, Mar 27, 2022 at 7:42 AM Sevinj Aghayeva
<sevinj.aghayeva@gmail.com> wrote:
>
> Hi all,
>
> My name is Sevinj Aghayeva, and I'm an MS student in Computer Science
> at Penn State. My initial application for Outreachy has been approved,
> and I will try to make contributions to Linux Kernel Networking API
> and selftest improvements so that I'm elected for the internship. I
> have been programming in C for about two years now, and I'm currently
> taking a course on Computer Networks. I don't have a background in
> kernel programming, and I hope to learn that during this project.
>
> Cheers!
>
> Sevinj.Aghayeva
>
