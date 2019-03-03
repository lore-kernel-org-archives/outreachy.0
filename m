X-GM-THRID: 6663863789016842240
X-Received: by 2002:a2e:944f:: with SMTP id o15mr647947ljh.28.1551593709447;
        Sat, 02 Mar 2019 22:15:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4788:: with SMTP id u130ls1565890lja.14.gmail; Sat, 02
 Mar 2019 22:15:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqzwNbG41O7SRQQL9Be/eH563Nzt8KgFyvr8r2smPzXicPrjYrED353gnkAz9khYHuAzcrur
X-Received: by 2002:a2e:290:: with SMTP id y16mr670004lje.20.1551593708456;
        Sat, 02 Mar 2019 22:15:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551593708; cv=none;
        d=google.com; s=arc-20160816;
        b=E11h654/FA9Anfi3gb/DtO1BFg6u1jKRxbhPdwimdScdvhqnHiujF5r66iSRFEMd4r
         s0onWAT0g/L6DcXfi/rN/h03CcExa1j7KosW2W3bmJm4GTHZq/OqDYVIROX5E58TeBrp
         iCdGBDScwpnaCR5LmApiiqM7aF/HIvgJgqzUw4LFuItO/paUq3f3p8hG6mZCyYHUryE9
         AQvQwmJpK4UD/hXxtqx+XlFKGCSGBXrN9kkqDm5OlZyBn8M+Q96L+gr5wUPeISLZjjwG
         CBh+Mu6Pfr2R3jxl3ei/BcyOwjeu5MkakPmt+vNToCMJULFD3SN/wJs1DhAsUPt+cnGq
         kOgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YbHMcYezWKdmPAVdC0/nCtz/yq+aqvWxUCqWDrtyM0s=;
        b=Dc1kVKapT+qhHhaODh+vLd8LEQwepY8K5lrpd/IM4s/QnbMCHoUKPY7QQES1A0QqpI
         vJ3wrLMJaVYbHMfUx7uhH5dO6J+L5GScv91ImncANY16yXIKg9pNzEzMgBnNBTDOWLVn
         DWaowis9iQh68JoioS9VcnQIveYJ/I02W8Au9QL4OdiFHYi4BU4HEehRAIfWkr9aWGqp
         FAjExFsA/QIKa41nBBQLB9kjoAG4jr7nyF2H7wVBq2OYarfSrS9F7m0ix+PUePYsRj54
         yaBJeiqlFrJ7GnM6jOkX7CEWKYkiMZa0fDzzwQEqaMIMpYYpMA1zHn9wD6t6oDxsWtPj
         B4eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m16si85755lfl.0.2019.03.02.22.15.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 22:15:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,434,1544482800"; 
   d="scan'208";a="371654538"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 07:15:07 +0100
Date: Sun, 3 Mar 2019 07:15:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 0/2] Fix checkpatch.pl issues
In-Reply-To: <cover.1551588900.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903030713240.3207@hadrien>
References: <cover.1551588900.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Mar 2019, Madhumitha Prabakaran wrote:

> These patches fix comment style of SPDX License Identifier.
>
> ---
>
> Madhumitha Prabakaran (2):
>   Staging: vt6655: Fix comment style of SPDX License Identifier
>   Staging: vt6655: Fix comment style of SPDX License Identifier

This has been changed in the wrong way.  You now have two commits with the
same subject line.

Perhaps all of the iteraions on this mean that it should really be one
patch.  The files are for the same driver, the changes are the same, and
the changes are very small and easy to review.

julia

>
>  drivers/staging/vt6655/channel.h | 2 +-
>  drivers/staging/vt6655/desc.h    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> --
> 2.17.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1551588900.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

