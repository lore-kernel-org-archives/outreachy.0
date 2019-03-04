X-GM-THRID: 6664067951305424896
X-Received: by 2002:a1c:9dc1:: with SMTP id g184mr1186300wme.20.1551710531175;
        Mon, 04 Mar 2019 06:42:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c0cc:: with SMTP id s12ls1415769wmh.14.gmail; Mon, 04
 Mar 2019 06:42:10 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaeXNwAFM+auXu34bd7hD7alXbxwwcFhb+Rfo4SsCkkw0MyThX4D0yDledK9znMNxU+Q36s
X-Received: by 2002:a1c:c3c5:: with SMTP id t188mr1143029wmf.15.1551710530516;
        Mon, 04 Mar 2019 06:42:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551710530; cv=none;
        d=google.com; s=arc-20160816;
        b=MkJHHZ3+G2sKesLmXwfQugpaJ+2RRDUu3eo4mxwZjU6zHnFiWxv2C+9qNOO+Euh3/V
         mWx12nmRE2D4d46YfyRLeDODA05eHNYhXnNoNCehaEEgzbs6cNs2ppSTSiOnNQ306INV
         oFkSVDBV15gs2MjGFVOArSMeMfNLx5fQgBlzUUDrfVCV7e/ONeQAYyfA2txDKQG8Vl9S
         33fvjrjvlcoGBPPJNsA0UZD0E3kdwiY+h+Z5qzK/2Vu8V/nHlLu7qlggU4xmfv6GEfwU
         3Q0aBRXmoB4TaDKkq8jXfu7ihZI5M83vD1PgDuEwAMjW68d1TI3632CuXbRzoq1xTJvK
         KfYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/fXCe9X2Jjyg9aCmGCMh5J7u3Tz1C3IgcPGugabFJds=;
        b=lrkXeDpDEzR0SfR2tq//grVwkucWoQh7NBfur+YJd/ZJEf+Q4l+e8KXDYN0P2GgG1C
         PW8E3IYfxwD+F94B0Lf05qZ8Y4fDd9Rd24arlUnSEyLWsOznqFFlTXQ9ExB2sSXP1RW3
         q46W+Mcp8IzP6fShVjtzsYy+YD4Q0q14uNWJuFkQF5U40CcIH6jIb73BoUS/nRHjnNlR
         kLJQlioo0XHA+nhh1YnWl9FfAXtB5Jpj91M3TJP0xx6AZafOpzTXGV4REmxd1ZwknC7u
         R/7VxfpX6HNG9sN1jMKgcawxIt9yn4sb2a9zm5qxGa0UzzW6PeyCEfStWaDROk+xEuwB
         DsJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q192si218011wme.3.2019.03.04.06.42.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 06:42:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,440,1544482800"; 
   d="scan'208";a="371818095"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 15:42:10 +0100
Date: Mon, 4 Mar 2019 15:42:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: idebleenasen@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: pi433: Fix line over 80
 characters issue
In-Reply-To: <68af47ab-3e88-48bb-a3e7-0bdd25fa20f2@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1903041541320.4541@hadrien>
References: <1551679530-2635-1-git-send-email-idebleenasen@gmail.com> <20190304074650.GC22711@kroah.com> <68af47ab-3e88-48bb-a3e7-0bdd25fa20f2@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_421_2097758489.1551709530392"

------=_Part_421_2097758489.1551709530392
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Mon, 4 Mar 2019, idebleenasen@gmail.com wrote:

> On Monday, March 4, 2019 at 1:16:54 PM UTC+5:30, gregkh wrote:
>       On Sun, Mar 03, 2019 at 10:05:30PM -0800, Debleena Sen wrote:
>       > Delete extra whitespace and tab space to remove
>       > checkpatch.pl warning:
>       > WARNING: line over 80 characters
>       >
>       > Signed-off-by: Debleena Sen <ideble...@gmail.com>
>       > ---
>       > �drivers/staging/pi433/pi433_if.c | 8 ++++----
>       > �1 file changed, 4 insertions(+), 4 deletions(-)
>       >
>       > diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
>       > index b231463..53928af 100644
>       > --- a/drivers/staging/pi433/pi433_if.c
>       > +++ b/drivers/staging/pi433/pi433_if.c
>       > @@ -45,10 +45,10 @@
>       > �#include "pi433_if.h"
>       > �#include "rf69.h"
>       > �
>       > -#define N_PI433_MINORS������������������������BIT(MINORBITS) /*32*/��������/* ... up to 256 */
>       > -#define MAX_MSG_SIZE������������������������900��������/* min: FIFO_SIZE! */
>       > -#define MSG_FIFO_SIZE������������������������65536 � /* 65536 = 2^16 �*/
>       > -#define NUM_DIO��������������������������������2
>       > +#define N_PI433_MINORS����������������BIT(MINORBITS) /*32*/��������/* ... up to 256 */
>       > +#define MAX_MSG_SIZE����������������900��������/* min: FIFO_SIZE! */
>       > +#define MSG_FIFO_SIZE����������������65536 � /* 65536 = 2^16 �*/
>
>       The comment above should also use a tab, right?
>
>       thanks,
>
>       greg k-h
>
>
> Yes. Should I resend it ?

If someone makes a suggestion for improvement, then you should resend,
unless they explicitly say that it doesnt really matter.

julia
------=_Part_421_2097758489.1551709530392--

