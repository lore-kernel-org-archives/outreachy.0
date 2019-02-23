X-GM-THRID: 6661087571721846784
X-Received: by 2002:a05:6000:10c1:: with SMTP id b1mr451557wrx.30.1550906238405;
        Fri, 22 Feb 2019 23:17:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fb8c:: with SMTP id a12ls392495wrr.2.gmail; Fri, 22 Feb
 2019 23:17:17 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbJ5rs8du/6uk0TSRmOkyFYltobvLHewHwFj0XJ5tdax2y47rat6QIBzDBrGywE6FKbi8Wg
X-Received: by 2002:adf:ea81:: with SMTP id s1mr445843wrm.19.1550906237574;
        Fri, 22 Feb 2019 23:17:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550906237; cv=none;
        d=google.com; s=arc-20160816;
        b=C1Iz5l/wkkTL6h2Xy4pT+jNV2KKxnw8AwZQT1FAoGV0raXFyuCOxbXwHNBEKGU00ju
         z/ROWMCbWLrTHJeahe4njFU7wxpM2xqBxyIK8BFRXb+LsfE/c7lUr5xrlFhWyqe5mral
         JOmrpmtTzZ52ICb+mBy77oJ3dFoDnfUSOMg9EkItqXCORtyuMpKRJPzwb88gZ2pAQwBE
         acALf0l1XytslxZGrJf1Cj0AVPboU4+UVTlUr59Z242syBjid5znyCnEMn7F4/Z8QMFP
         v0meJbVOdYBbZNQHu+5ssIactG9UnwO5vC9nFFjeTKD8tOP7TJMf4EocWHOMrt4/ZkKu
         hZZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TDFV+YPP22b+QvZ0Wq5prfeVnSmZ/Naos9doUED/u/k=;
        b=t/FlTIND4/LvQE79LuSvqz/x+9lD4TYkezBqCeNFF4PneNiwlZ0LUmoEgPUdLANZyS
         499TX/TStAGZt+sjzUHF0kbQG5UUhkx28ybNJl/ZcpnL0l3PeJQ7LiAVUUIfs1B+Mmc0
         +VpzvQYrpHFzJKj7hYUSkp4bd29c7IxUMntuL9ig+RAxXkIrdsSbgRqbx0OU2jH8WDNt
         eon4qRItaWXMjtH5Obv6puDFqAbVM1NHD+uXAXQ1nEl7SXVYJ0IHJFJEJGocm+c3CFNr
         R2vCIv7C6htZvxO1a6pbqE+d7F+/aWPW9Ot6/WHmKvKh9RO8pU+uJv7Qvd6BywbATxLW
         hNBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t22si157099wmj.2.2019.02.22.23.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:17:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,402,1544482800"; 
   d="scan'208";a="297082224"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 08:17:17 +0100
Date: Sat, 23 Feb 2019 08:17:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Add SPDX-License-Identifier
 in platform_net.h
In-Reply-To: <20190223070139.GA13015@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1902230815350.2612@hadrien>
References: <20190223070139.GA13015@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:

> Adds the SPDX GPL-2.0 or BSD-2-CLAUSE license identifier, which solves
> the checkpatch.pl warning:
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1".
> Adds GNU term: "Redistributions of source code must retain the above
> copyright".
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/netlogic/platform_net.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/netlogic/platform_net.h b/drivers/staging/netlogic/platform_net.h
> index e1b27f6..2265927 100644
> --- a/drivers/staging/netlogic/platform_net.h
> +++ b/drivers/staging/netlogic/platform_net.h
> @@ -1,9 +1,10 @@
> -/*
> +/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-CLAUSE)
>   * Copyright (c) 2003-2012 Broadcom Corporation
>   * All Rights Reserved
>   *
>   * This software is available to you under a choice of one of two
>   * licenses.  You may choose to be licensed under the terms of the GNU
> + * 1. Redistributions of source code must retain the above copyright

It looks like something went wrong here.

Bhanusree submitted similar patch on another file and Greg said that the
file didn't have a SPDX identifier because it was not clear what the
license should be.  Perhaps it is more clear here,

julia

>   * General Public License (GPL) Version 2, available from the file
>   * COPYING in the main directory of this source tree, or the Broadcom
>   * license below:
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190223070139.GA13015%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

