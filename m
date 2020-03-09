X-GM-THRID: 6802195878840893440
X-Received: by 2002:a17:906:f258:: with SMTP id gy24mr15315800ejb.120.1583765210955;
        Mon, 09 Mar 2020 07:46:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1e42:: with SMTP id i2ls3662752ejj.1.gmail; Mon, 09
 Mar 2020 07:46:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt+UglFJLXczQ0VmmtqV+aJ9ZEk0fzXUUCAbDaIkuWwIukLMwVnETJ640yJhRUcEaailFwu
X-Received: by 2002:a17:906:90c6:: with SMTP id v6mr15356869ejw.222.1583765209513;
        Mon, 09 Mar 2020 07:46:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583765209; cv=none;
        d=google.com; s=arc-20160816;
        b=YGqUKnvjdfzWMKX0fgOPvAFyKrl6b/YAmk969ph94PTlBrh2tJzb5cQBqwkqsaV9LH
         YGKrV9pwpGHp72gWiRfTiVujOlDbKdn0Ooqg++o8cT/2HPRJJG4RfGfW4PdqedEBQAK3
         XDQ2jRs+5EObN5D6FClLC/nXdOYj71SWPOIuOIF4UsBaia5QsIklRTKnYwS3LsdgWAQG
         kqKd4y0VmlmltiMT8lJFpdKfXWVxlMZCOG2XHOJbejO7/MpYOf5WHSuw/gBlD6rZQ33M
         owjch3N9e7bFNHo25wuQsFwcTcbmZxUyTyMqvMhyfM/s0YFpn47X+BVjBbMQgAP79uDU
         lReA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=xOj24O9KbSl9dikhOTXkmoFI8e8Ydhx/sTcYR1t+THc=;
        b=Uph0pDQ7FkNteI1VOIkaEi8QEwhm3oiRzIObJ0l0sG9aiEKqu0qz4GsizsynXA5ZHD
         8WmN/1cNZFHsFM9DLIvZPx8ecH7zQIewRI399smZ0UnT2MmzpqR37pMbgCCQFJfRG6YA
         e98N5dtzn9IBIDtLumSuBc15cRgKIZt4YS64fz8gCLTYC4DFDAQYuYnU4UqvYkPI9ed7
         hZO54H/UbbCENnP8RTAEJfdbH9UdDcX1lVMUwfOzmsGilWhrb2BX2YMT971R2Qy34ipD
         4dY3CufGcDwZ7mUQu9tpDJjHUvzBsb4nhyFE82JJ1FvNJocBL4+A4gSB8zMWl/D+7+p0
         AGKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p60si366560edp.0.2020.03.09.07.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 07:46:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,533,1574118000"; 
   d="scan'208";a="439510734"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 15:46:49 +0100
Date: Mon, 9 Mar 2020 15:46:49 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/3] [Outreachy kernel] staging: qlge: qlge.h: cleanup
 suggested by checkpatch
In-Reply-To: <CAJyzNhno1e9enuSdAstwa_i03Xb5Sz4sQiadUukaADruQ2dGxw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2003091546050.4721@hadrien>
References: <cover.1583759118.git.payalskshirsagar1234@gmail.com> <alpine.DEB.2.21.2003091417490.4721@hadrien> <CAJyzNhno1e9enuSdAstwa_i03Xb5Sz4sQiadUukaADruQ2dGxw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1056257730-1583765209=:4721"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1056257730-1583765209=:4721
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 9 Mar 2020, Payal Kshirsagar wrote:

>
>
> On Mon, Mar 9, 2020, 6:48 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>       On Mon, 9 Mar 2020, Payal Kshirsagar wrote:
>
>       > Cleanup suggested by checkpatch for the file
>       drivers/staging/qlge/qlge.h.
>       >
>       > Payal Kshirsagar (3):
>       >   [Outreachy kernel] staging: qlge: remove spaces before tabs
>       and align
>       >     code
>       >   [Outreachy kernel] staging: qlge: qlge.h: add spaces around
>       operators
>       >   [Outreachy kernel] staging: qlge: qlge.h: remove excess
>       newlines
>
>       It's strange that the information about the location is
>       different in the
>       first case than in the other two cases, if they are all touching
>       the same
>       file?
>
>
> Yes, all the patches of this series cleaning a same file, the subject line
> in first patch of this series was my mistake.
> What I supposed to do now ?

Resend the series.  Explain under the --- what you changed in the patch
that you changed.  For the other two, say under the --- that nothing has
changed.

julia
--8323329-1056257730-1583765209=:4721--

