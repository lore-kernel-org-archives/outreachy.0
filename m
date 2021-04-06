X-GM-THRID: 6947860813701971968
X-Received: by 2002:a17:906:4805:: with SMTP id w5mr19888648ejq.545.1617691402374;
        Mon, 05 Apr 2021 23:43:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d788:: with SMTP id s8ls10718212edq.1.gmail; Mon, 05 Apr
 2021 23:43:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxIZwGz2ZZmbszRt6IdgF6VdSSwkszdKvMUoaHd/8aaZj8Ht4D5S8nkg7OD1QyT2d439jUe
X-Received: by 2002:a05:6402:4395:: with SMTP id o21mr35330382edc.22.1617691400883;
        Mon, 05 Apr 2021 23:43:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617691400; cv=none;
        d=google.com; s=arc-20160816;
        b=tbvHcmpFal50FU7BVk1FPIDSvTO5jXiYiEWugisq+bdM/2cgh+KRj7ZmPgLB00jV8g
         r0/yanweK8ONXcP6/Q+ch9gc22YNOmBW8PJYdp9CwpAyO2/m42pV4CIH0XFIbBfokPNI
         tzMoPEh2M4I4iRVA6zSshASOkVg3cYj5nJdMuKjhSnMMVGcRCQWmFV2OANOu6DAJElXt
         EmgFJmv88itogusjpCg78MfMOVOVszVQgZ0qy9MweIge42W+d9vM2R3UKaM/GyPKyP9Q
         zCNW271xAi/tUiMseOxhQonaC5tzEupRdSDIB62Z0WvqhK2A/FIJBdz6ySedjtKZApCG
         SL2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=/+OcFnyscIEK+rpDKAoM1CJ0FxcrcHV+IvtEmJcHMRA=;
        b=FmSgY9NCtDS93wK47M+8wLU1Y6OIb4G0qjbSsV8wG/Dd12dPLKm4hsRIybIg8wxWrd
         5FJZoe/1Y1dkrI2J4pUaAjlOOBB+Dpi7edkU4yeh3gcrtzDY8wjmN9LZcYjRIpemn+cS
         dCn9ZnDeA+t46yYkCt8JyB0BGzCaVxsB7QPdxJ0lhN+pNWvrK733IVMjtt7s7sjlcQ6j
         WG5mfOk6f1eMjFjfuJIHNscBNRY/a8/wYJkCOky/CHDFnkfg63kqLbZzHG4OUnu2kbQ3
         k+rwv9k7egyocCet17GHVGAdoytxxS1Up82TLhlPML/V3LOKfN6WB23dUleF13C7ufB1
         RAag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id df6si584865edb.3.2021.04.05.23.43.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 23:43:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AtYtmrqPgi7f3JcBcT9X155DYdL4zR+YMi2QD?=
 =?us-ascii?q?/0p6RQVJNumRkM6zlPoWvCWE8wo5cltIo6HiBICrR3TA+ZlppawYOrm/VAfr0V?=
 =?us-ascii?q?HYVr1Kx43k3jHmBmnC5vdQvJ0QDZRWJdXsATFB/KHHySaiFdJI+ri62YCuwdzT?=
 =?us-ascii?q?1nJ8CTxtApsQlztRLia+PglISBJdBZw/faDsl/Zvgza7Y3wYYoCaKxA+Lo7+ju?=
 =?us-ascii?q?bGnp7nfhIKbiRPgGLi4VzH1JfAHxeVxRsYWT9UqI1SiFTtqRDz5amorpiAu33h?=
 =?us-ascii?q?/lLT9JhflZ/AzdZOFaW3+6woAwjskQqhacBdXaSDtlkO0YSSwWst+eOtnz4Qe+?=
 =?us-ascii?q?BIr1LYZCWcvAbk0QiI6kdS11bSjXujxUbFjeO8bjQgEMZFjZ9eaXLimjYdleA5?=
 =?us-ascii?q?76JRw3jcjZBeChTNkU3GjeTgRlVtjUq7oX0rjO4VgTheSOIlGcBskbA=3D?=
X-IronPort-AV: E=Sophos;i="5.81,308,1610406000"; 
   d="scan'208";a="501666787"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Apr 2021 08:43:20 +0200
Date: Tue, 6 Apr 2021 08:43:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Correct indentation in
 Hal8723BReg.h
In-Reply-To: <2303372.zkNegYAOfQ@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104060842240.2882@hadrien>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com> <YGvttKG+RNhKAmO/@kroah.com> <2303372.zkNegYAOfQ@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Unfortunately, English is not my native language. I hope I have been able
> to explain my point of view to you. If you agree, I'd prepare a v3 of the patch
> for the purpose of explaining with higher detail what I've done and why.

Don't worry about your English ability.  The point is to learn about what
kind of information the person reading the patch wants to see to
understand it efficiently, and that is someone that everyone has to learn.

julia

