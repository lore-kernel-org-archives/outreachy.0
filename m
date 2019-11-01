X-GM-THRID: 6754188364413403136
X-Received: by 2002:aa7:c582:: with SMTP id g2mr10908298edq.25.1572593675216;
        Fri, 01 Nov 2019 00:34:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:a0e:: with SMTP id w14ls796695ejf.7.gmail; Fri, 01
 Nov 2019 00:34:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwPcjldQwjP502KJdXFkT9r+0ISP1MUhRHowCzD/3MbGmZTapn0D1qSn0d469sSMrJUR1X0
X-Received: by 2002:a17:906:6083:: with SMTP id t3mr8363258ejj.145.1572593674050;
        Fri, 01 Nov 2019 00:34:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572593674; cv=none;
        d=google.com; s=arc-20160816;
        b=y/zGBRjlMxMkElgjGsw5HC17SIl2PgD11me+OBxtaH+jHUCK61+0gX1v1qPG54V8zy
         dAWMfa/rFXqh9lhVDG+zRzR0wyHR+WPEBpaH0QEswWafn0kAetsV1m9aIV+QZHtFe9pY
         1yjYUPo5XCR3aI/Q7CcLHu5Abg2+cCykaVu5gHYOvIEMWIYb9GwxI19cSfSV8s1JAN3n
         6Gto9uZTaSbnGS8q+aJh5zC9Ga6m0mngrcEDE7ZLJKYa2h1CCUanV63B0pVjTNYfhs//
         OTnzNgPAxchNC0R8fCIQBNFu/aVkS553bfYZJOLcDNps/4TrAadYeSJjFZ14nQeiioUX
         /LGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=bzd5WNJhGkSvC1mM8IY8ZLmlb1nVDpNwEHcwk8qTE1Q=;
        b=UDMAzs4bryEDJBwWPJvP2/aW7R4VW0wBweUE/t0D6nR0lfMt9Qyr5WoTB3u3xZZ/cT
         WkUtv8oKEd6Mwes2Er0/qi60Y9H2o9SOO9U7Uok2+OTT/SB54+vDkygK7Ax0jyrjCx51
         ieRIj5YwZiQlg6/PWqhX5GKCU7EP6+rHwJN7yIBHOaXm0JE3po5eXCKFklsdbYRO6hG0
         QsFBtxWoMro12xKh555eWdBBN6yruwTrDa7GIDPrAeKJWH8eps0K2j4RcCYkwfiOL/kc
         hmeTWSkd/Jfbwd46UF5a24uEkhyt2ZIoUAm7mQRHnAjqDmhF0p+M0QrMVDJXLHaNpvFE
         PPdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a15si247380ejj.0.2019.11.01.00.34.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 00:34:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,254,1569276000"; 
   d="scan'208";a="325306095"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Nov 2019 08:34:33 +0100
Date: Fri, 1 Nov 2019 08:34:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org, 
    Forest Bond <forest@alittletooquiet.net>
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: vt6655: Fix alignment,
 spacing and open-ended lines
In-Reply-To: <cover.1572581578.git.frank@generalsoftwareinc.com>
Message-ID: <alpine.DEB.2.21.1911010832550.2883@hadrien>
References: <cover.1572581578.git.frank@generalsoftwareinc.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Nov 2019, Frank A. Cancio Bello wrote:

> This patchset fixes minor spacing, alignment, and open-ended lines.
> Three types of checkpatch.pl messages are addressed:
>   - CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
>   - CHECK:SPACING: spaces preferred around that
>   - CHECK:OPEN_ENDED_LINE: Lines should not end with a '('

Please improve the log messages on all of these patches.  Avoid the word
"Fix", which doesn't give any information about what you did.  Don't
include the checkpatch messages.  Don't use ... in the SPACING case - all
of the information about what is going on is in the ..., which the reader
has to guess about.

julia

>
> Frank A. Cancio Bello (3):
>   staging: vt6655: Fix parameters alignment issues
>   staging: vt6655: Fix the spacing around operators
>   staging: vt6655: Fix open ended lines
>
>  drivers/staging/vt6655/card.h        |  2 +-
>  drivers/staging/vt6655/device_main.c | 14 ++++++++------
>  drivers/staging/vt6655/power.c       | 10 ++--------
>  drivers/staging/vt6655/rf.c          |  4 ++--
>  drivers/staging/vt6655/rf.h          | 19 +++++--------------
>  drivers/staging/vt6655/rxtx.c        |  5 +++--
>  6 files changed, 21 insertions(+), 33 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1572581578.git.frank%40generalsoftwareinc.com.
>

