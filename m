X-GM-THRID: 2067485687808
X-Received: by 10.180.80.7 with SMTP id n7mr1021291wix.0.1424675639532;
        Sun, 22 Feb 2015 23:13:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.210.238 with SMTP id mx14ls179650wic.50.gmail; Sun, 22 Feb
 2015 23:13:59 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr1056618wjb.6.1424675639218;
        Sun, 22 Feb 2015 23:13:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si831414wib.1.2015.02.22.23.13.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 23:13:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="100953943"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 08:13:58 +0100
Date: Mon, 23 Feb 2015 08:13:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 1/6] Staging: emxx_udc: Fix do not
 add new typedefs
In-Reply-To: <114675998581f4b01d0d6c1556193010f35da12e.1424645871.git.hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1502230812210.2053@localhost6.localdomain6>
References: <cover.1424645871.git.hamohammed.sa@gmail.com> <114675998581f4b01d0d6c1556193010f35da12e.1424645871.git.hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> -	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
> +	volatile union usb_reg_access *pBuf32 = (volatile union usb_reg_access *)pBuf;

This, and other lines like it, exceed 80 characters.  Since pBuf is already
a pointer type, is the cast actually needed?  I would guess that even with
the volatile, it is not, but I am not sure.

julia

