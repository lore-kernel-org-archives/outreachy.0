X-GM-THRID: 6749323707377778688
X-Received: by 2002:a5d:408f:: with SMTP id o15mr9744817wrp.139.1571466728548;
        Fri, 18 Oct 2019 23:32:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:12ca:: with SMTP id l10ls3687136wrx.16.gmail; Fri,
 18 Oct 2019 23:32:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwYUpzvMr5pTsBVgcJ29PkI3lP5BVXrZiqa8EzvSb7nqddLuXpyDepLs7zqSegPPaaPxH56
X-Received: by 2002:adf:f342:: with SMTP id e2mr11381661wrp.61.1571466727454;
        Fri, 18 Oct 2019 23:32:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571466727; cv=none;
        d=google.com; s=arc-20160816;
        b=r9OBGYZ+abs78SQctjK0qB9ZDxAatS4rVGXLx03isYyDLXmDMIS7bk98x1wt2JwvP3
         3aXLn5wOLsV0pz5MyglvbXDJwjC+5Tar/ikcZ0uOh9MB3JhIIkRgULSVOd6LWDs9k/23
         bU624ttHw96JJ1BdYzRqOPxQuVifNwlhJ7+T6r8tj8oRbBu7y9FhOczxdFQRsPU44f0H
         iQi8HUhIXDqGpayCwxFBn1NOxwokAw2QZPPaVITeHRZcM8xk0pIafS1yECmPrMMdZCNh
         J5dmnGHeyqRZvSlHnT8q+sZO4dnAjNp5xgfMj6iSKh2JH4OYxfCi64Ea40N1z/cq0rHe
         dCLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=gBvbaGGxFFeJowtw7dsqZM9fCC43XWrMWLKmZWtiN3c=;
        b=s/SFDPrhL13jzZAZXfmMSBtZy7fCVTxN2vbrXuxWesmjMpR0KO8LgwOIoWZAv5MZDP
         liW5vvYyJ7d2FQvDi91+nCI2Kh20nPIrRGjWxRNgglApZoxQju6cvhuMOuJtZavAJaP9
         YdNhpRRut5PxB7qs/F10BjyaYwj9Td7ftJTcrDRwDWh58dgLHQIPdLe2oInwQM5FQ2vk
         rfmL1Zyf89kVtbM27EDExW5/8afyNoEIs8bgnuFsW/ns9Ug6uRpGjV3AO+U1y7khReL9
         qrn+UTqhZ9z3CyIKB/EuKqilyDONDT6IKiVMMTN/qhHi0Uvh+BoBEgx3hh3fdZ3D1aLe
         CooQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e17si359050wre.3.2019.10.18.23.32.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 23:32:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,314,1566856800"; 
   d="scan'208";a="323261621"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2019 08:32:06 +0200
Date: Sat, 19 Oct 2019 08:32:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Adjustments in function call
In-Reply-To: <cover.1571448899.git.jarias.linux@gmail.com>
Message-ID: <alpine.DEB.2.21.1910190831140.2701@hadrien>
References: <cover.1571448899.git.jarias.linux@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 18 Oct 2019, Javier F. Arias wrote:

> This patchset fixes a warning and simplify a boolean expression in a
> function call.

This is a v2 of something that you sent before, even though it was
previously only one patch.  Greg has to know what to take and what to
drop.

julia


>
> Javier F. Arias (2):
>   staging: rtl8723bs: Fix line over 80 characters
>   staging: rtl8723bs: Simplify boolean expression
>
>  drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1571448899.git.jarias.linux%40gmail.com.
>

