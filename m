X-GM-THRID: 6661087571721846784
X-Received: by 2002:adf:c103:: with SMTP id r3mr457674wre.20.1550910358780;
        Sat, 23 Feb 2019 00:25:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fc51:: with SMTP id e17ls313203wrs.15.gmail; Sat, 23 Feb
 2019 00:25:57 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYdL41GstGCgqzhQq2KncTNuyQCwRwkse5WgDQ860rMN9n7YlWBcKwMG7w/7wyaIXqvcrL3
X-Received: by 2002:adf:9f42:: with SMTP id f2mr429982wrg.25.1550910357922;
        Sat, 23 Feb 2019 00:25:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550910357; cv=none;
        d=google.com; s=arc-20160816;
        b=T/aCc7Wgedi/q1XYbfC/V6HOUmsmsV2edNl4JjuS3/kWGJ8AiR3NVOTf06tbqb1x+B
         NHoFnfQTudpggZGPbTeYV90vzsDCmUKWOB0P/3XgA4RXP7aQfGRV7BXzgMtzubZzObKU
         IyUMCLxuqqF7VuKH+pSe6RAa86nFsj8ouQw2ZAKdyw1GRAIsfniUbAQqqgGl7qrMCTWr
         mDHvHdru6gWtP2hI93dLAyCZmhsE+NM5bbV0wopdiifvqPtxpqkhLToFztELhDCBXG78
         ngo8V/iOTyXmVkg7QlmzvsMzy7X+KSGFM2okg4+WXo7Vo7YnOR0x0qKG+/BDZr7bRrck
         Pt6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:mime-version:user-agent:references:message-id
         :in-reply-to:subject:cc:to:from:date;
        bh=Hp0EkH5gwXsQ0vw3RCEdpD8Tgg20l9fItF9S76/4T28=;
        b=S7fSOJ9ECCw9V5r3yISDtt3EycY9VwDpTzMW/IBo1tg+7/0PxTPLqoUSUJfcJWK4Dh
         qjN7u94JoQt25iOoUPWTo1kBq1F+XC1pcPj+mHVD1FeEpYh7Ph7eHvuYA0qHXDnRCz0J
         +S++GDGWE8lkT3GGP2O5EB/2EADAIFrGBCVjjXE1D6kzVk9yxlvLalUIXPkFuTz7Dktv
         uMcOPRRUoDNOPjZ+C15w0+GLb/uc0MH/LB+T9iwyN6u67BlfIlpIGJmi4dGK2Q6diRdf
         JMXoIwKxuRNXlT6w9Pk22GgDHD+xZIhXDgLU6MFNDdpXb/xP0yztyuzverplvvuuhv5J
         1kmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y200si157850wmd.0.2019.02.23.00.25.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:25:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,402,1544482800"; 
   d="scan'208";a="297086390"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 09:25:57 +0100
Date: Sat, 23 Feb 2019 09:25:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Add SPDX-License-Identifier
 in platform_net.h
In-Reply-To: <CAOMPgjgGr6bmDRoQd+YK2kxUD5oAgzSHGuEMvZ_1PPdWr9X1Ag@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1902230923320.3948@hadrien>
References: <20190223070139.GA13015@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1902230815350.2612@hadrien> <CAOMPgjgGr6bmDRoQd+YK2kxUD5oAgzSHGuEMvZ_1PPdWr9X1Ag@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1954494313-1550910335=:3948"
Content-ID: <alpine.DEB.2.21.1902230925430.3948@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1954494313-1550910335=:3948
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.21.1902230925431.3948@hadrien>

On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:

> In the license context, It is mentioned that "This software is available to
> you under a choice of one of two licenses.". This way I found that the
> software can be used with either GPL-2.0 license or BSD-2-Clause license.

I saw the two licenses, but I didn't get how what they refer to as "the
Broadcom license" is related to BSD-2-clause.  But I don't know anything
about BSD-2-clause either.

> These are the short identifiers for SPDX licenses. That's why we used
> license expression syntax with 'OR' operator. Also, the following term was
> missing under the GNU:
> "1. Redistributions of source code must retain the above copyright"
>
> So, I added above term under the GNU.

I saw from your other patch that this line is there, but the text looks
massively garbled.  The line before flows into the line after, but I can't
see how this 1. ... line fits in.

julia

> --
> Bhagyashri Dighole
>
> On Sat, Feb 23, 2019 at 12:47 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:
>
>       > Adds the SPDX GPL-2.0 or BSD-2-CLAUSE license identifier,
>       which solves
>       > the checkpatch.pl warning:
>       > "WARNING: Missing or malformed SPDX-License-Identifier tag in
>       line 1".
>       > Adds GNU term: "Redistributions of source code must retain the
>       above
>       > copyright".
>       >
>       > Signed-off-by: Bhagyashri Dighole
>       <digholebhagyashri@gmail.com>
>       > ---
>       >� drivers/staging/netlogic/platform_net.h | 3 ++-
>       >� 1 file changed, 2 insertions(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/netlogic/platform_net.h
>       b/drivers/staging/netlogic/platform_net.h
>       > index e1b27f6..2265927 100644
>       > --- a/drivers/staging/netlogic/platform_net.h
>       > +++ b/drivers/staging/netlogic/platform_net.h
>       > @@ -1,9 +1,10 @@
>       > -/*
>       > +/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-CLAUSE)
>       >� �* Copyright (c) 2003-2012 Broadcom Corporation
>       >� �* All Rights Reserved
>       >� �*
>       >� �* This software is available to you under a choice of one of
>       two
>       >� �* licenses.� You may choose to be licensed under the terms
>       of the GNU
>       > + * 1. Redistributions of source code must retain the above
>       copyright
>
>       It looks like something went wrong here.
>
>       Bhanusree submitted similar patch on another file and Greg said
>       that the
>       file didn't have a SPDX identifier because it was not clear what
>       the
>       license should be.� Perhaps it is more clear here,
>
>       julia
>
>       >� �* General Public License (GPL) Version 2, available from the
>       file
>       >� �* COPYING in the main directory of this source tree, or the
>       Broadcom
>       >� �* license below:
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190223070139.GA13015%4
>       0bhagyashri-Lenovo-G570.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>
>
--8323329-1954494313-1550910335=:3948--

