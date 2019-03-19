X-GM-THRID: 6670193586677481472
X-Received: by 2002:a17:906:d541:: with SMTP id gk1mr2674576ejb.0.1553025846568;
        Tue, 19 Mar 2019 13:04:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9e41:: with SMTP id z59ls5471031ede.8.gmail; Tue, 19 Mar
 2019 13:04:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqygltbPigH4fOPTZ0mul7x/dnnYjqcg0Ap59knwpuIcnRfIvfqnt06OGsp2VpGL/2tkBtM+
X-Received: by 2002:a50:addd:: with SMTP id b29mr2968099edd.11.1553025845815;
        Tue, 19 Mar 2019 13:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025845; cv=none;
        d=google.com; s=arc-20160816;
        b=GhILqrsqPuKAbM1ceATU4jVqBOroOeexb/SESn5ebG9YeeVbAt7uqcXvEyeIjtGqyc
         eSLrHm+e/amzdTrfuJeTBI2tHnhQMHxW4Lr8M+ozIAINMVxVKbGdtRlNoVVPuquUophZ
         ElmcXFOxXxpUz2fyYtitGt1b+QIlUbeVCP6rTPcgCOfDdA1hAUpJAdI5RnlHn2VK0zb7
         eHAP9yHcURX6wzbBpMMB6eUJkxlYXKwQSjRadGfHubVAISlsr3iDQ/HgWvNijK5nParh
         L+ifmULDxsbDgiwWKj25FwmUYuWDp7s9k9iGOW3bCezOy3J45t1ozBQHPQ54v9aOsel1
         /WKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=lNrAmleUaYChCSDFs6aKkuJfYlghMlWg9XGXEpOGWCo=;
        b=jFGExPp59qEpwXkynNnnB8pHakpkSuykrNdaV2jDwEgRyNjnzTm2KFOILaBwpNfDNr
         e9OooeFCzLgZNIaFe+FIH6w14d4xHIw2z2+09X1L4LCLpY0zWS1FhhRF8RSFp5RU2rGD
         yCeKSP8dRYnHopj0T5PEhsxsY70Nux47yDZ1FwzUqGwhj+3OtTHHSu81+PY0rRDIn4th
         8rvg7K7c7Z2qflqNQOcabf6PYhQ2jPjXpKxgH5rMXTWv9Z+DuH3pQDKXugiiRlVaNRax
         1gogBFlL9xD7Egd+lqPxBr2Z8Y2t217NvC1sfVzG2z0mqAis8htmNzFbMCpFptsC9CsL
         H5BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p25si572727eju.1.2019.03.19.13.04.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:04:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300009118"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 21:04:05 +0100
Date: Tue, 19 Mar 2019 21:04:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    ajay.kathat@microchip.com, adham.abozaeid@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Remove return variables in multiple
 functions
In-Reply-To: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192102070.2460@hadrien>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> The following patches remove the return variable in multiple functions
> and return the required values directly. These issues were suggested by
> Coccinelle using ret.cocci.
>
> Nishka Dasgupta (5):
>   staging: wilc1000: Remove return variable
>   staging: wilc1000: Remove return variable
>   staging: wilc1000: Remove return variable
>   staging: wilc1000: Remove return variable
>   staging: wilc1000: Remove return variable

I haven't received the other patches in this series, but just from the
above there is a problem.  Every patch should have a subject line that is
unique.  On solution would be to incorporate the file name, but it seems
that you have only two files.  If the changes are not too voluminous, you
could send a single patch for all of the changes in a given file.

julia

>
>  drivers/staging/wilc1000/host_interface.c | 11 +++--------
>  drivers/staging/wilc1000/wilc_spi.c       |  6 ++----
>  2 files changed, 5 insertions(+), 12 deletions(-)
>
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1553025265.git.nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

