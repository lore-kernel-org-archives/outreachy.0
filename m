X-GM-THRID: 6664868733855465472
X-Received: by 2002:a05:6000:1ce:: with SMTP id t14mr1293657wrx.29.1551787065739;
        Tue, 05 Mar 2019 03:57:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a1c3:: with SMTP id v3ls4124223wrv.17.gmail; Tue, 05 Mar
 2019 03:57:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqxeu8QcfrGW1j5kWw8EdRy0PB1KuRLwU6BhIh+cbayHn0EUxeYsiV8M0YPy14SFR39vWZcK
X-Received: by 2002:adf:a390:: with SMTP id l16mr1304747wrb.11.1551787065059;
        Tue, 05 Mar 2019 03:57:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551787065; cv=none;
        d=google.com; s=arc-20160816;
        b=Zfu8RmNIZZxibngnEpaATst6cO6snSVHe4/m/CFPQ8u5MuZS0IrwDolVzxSR1yK1E4
         25Oe/lNGVhItvLk3iZfu+Q4/RmZLEDdRqEQEVVx32yU7Zz/2k2NOu7zJITrO7W/evJfT
         rQgaJ9fW3OEcpauEvGafHUly49xQDMbXo1jpcnL/OY/zuOyHEAWQ1DIcQkQwulccOxh1
         CQ7/mPKRTzXOYqKXbD1hyVYSFYzH1TxNllJxUmwWYUlzKhblV0sirDrctpEcV8qWIbPw
         HuNcekYfGDvfo4ow6NJi9z+BrEKcpbEQ7ZmYLwvX+XrpicrVse+tg5wR2dbkM+4s/9ED
         /qVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=USEgyyNxBhlTJn/RTDg8c8CCCioNYI6pw1hdmjeYa1c=;
        b=v9Df3sM1p/Z2CDcLfc6bqf43NQC+L8RQThg7u3Un7ttLU0y0YURzkSvnzJQZC30iTD
         dVls7SRnL9BQ0PkH0x/agGDrHJySJWmjHOsblgcVheP7nUKMed2Agjxx+1SG+iDjHe76
         F3MU2MMKoPUsK9wtxHPKWqxhwt4L8516x2K5q3tvwwutoX41Q1VhN4eO9unoD+RJHRDm
         zjW3lGwITYLpVrnQPzPZpeh/PuDJe61MmJrg4LCtWD83qMKCgRa8AgO7hzHGPlTGhoq7
         mkFwzVgamdEsbUKsZmRp1uA68xCY5rVpU7DAnBNQRmtKyR+U/J2BLR62equ6+7W+mc9e
         ThZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f2si451254wrq.5.2019.03.05.03.57.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 03:57:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,444,1544482800"; 
   d="scan'208";a="298163150"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 12:57:44 +0100
Date: Tue, 5 Mar 2019 12:57:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dana Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Avoid unnecessary
 line continuations
In-Reply-To: <7ffe1ae9-0b5e-4093-b6fe-385274a87a13@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1903051257160.3701@hadrien>
References: <20190305113433.GA16894@pthm> <alpine.DEB.2.20.1903051236200.3701@hadrien> <7ffe1ae9-0b5e-4093-b6fe-385274a87a13@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_913_2133295196.1551786487961"

------=_Part_913_2133295196.1551786487961
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 5 Mar 2019, Dana Mormocea wrote:

>
>
> On Tuesday, March 5, 2019 at 1:37:22 PM UTC+2, Julia Lawall wrote:
>
>
>       On Tue, 5 Mar 2019, Daniela Mormocea wrote:
>
>       > Get rid of unnecessary line continuations in
>       > boolean expressions, warning detected by checkpatch
>
>       Hi,
>
>       They should be in different patches, but they need to be in the
>       same
>       series, so Greg knows in what order to apply them.
>
>       When you send the second version, please also add v2 and
>       describe the
>       change since the first version under the ---
>
>       julia
>
>       >
>       > Signed-off-by: Daniela Mormocea <daniela....@gmail.com>
>       > ---
>       > �drivers/staging/ralink-gdma/ralink-gdma.c | 30
>       +++++++++++++++---------------
>       > �1 file changed, 15 insertions(+), 15 deletions(-)
>       >
>
>       >
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190305113433.GA16894%4
>       0pthm.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>
>
> Ok, got it, I will resend them within the same patch with the appropriate
> tag

Just to be clear, they should be in the same series, not in the same
patch.

julia

>
> Thank you
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/7ffe1ae9-0b5e-4093-b6fe-
> 385274a87a13%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_913_2133295196.1551786487961--

