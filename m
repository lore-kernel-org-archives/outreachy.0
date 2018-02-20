X-GM-THRID: 6524431890733072384
X-Received: by 10.25.22.20 with SMTP id m20mr861223lfi.3.1519108788442;
        Mon, 19 Feb 2018 22:39:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.21 with SMTP id o21ls987863lff.8.gmail; Mon, 19 Feb
 2018 22:39:46 -0800 (PST)
X-Google-Smtp-Source: AH8x226dqgGedkxssu87s+qtdvyrSovtziK4CgaxTdE8q3Z+0ctRC66XU1ORs6+xWkFA1IjvvkXY
X-Received: by 10.25.209.146 with SMTP id i140mr1204580lfg.34.1519108786830;
        Mon, 19 Feb 2018 22:39:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519108786; cv=none;
        d=google.com; s=arc-20160816;
        b=sU5mTaRbU+xtw4GpPwPmczseSfd+1DbIAFjdVujbAVBQw2pDbJMfnMFzrRa8NCbm7T
         kuEHrIGOKZd9YtwRY+BnQpfyl8OuaN97msob+D3kptjHjXGqZM/gLFoRibDdSYTakqUl
         B8kEuVbGalT33rKoY7TLhbC6SeR1HiX6ZbuISWG+06ds+Afv2R8b6CA6LPBaQRSt4Xla
         NWhHNcxeLwRvESkbX4sB3KZxc2pqEaxNiPIKKOA0QpQ3Ye98uFGL4M4W0EWFUbk7MSQJ
         O1+5SZfwUzX1kptwbtRrKmbGepfOwWhDLGkcjp36dcXQsI/KXB6uu2UqwK/BfgcJoSQs
         xe0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=HgIBiCQwJyFn/eHfQsxX6332WTD4T1LR31lrGZ1qSZs=;
        b=hIPJ4KepHbvxFUj9pkHtmOUs9+D02DF12YUPve9S5/pcC5lcJyhkVm4eHPAUdURIWS
         BNgv9/ax72rYo1GYgbFUOv/D5Gr3CAQJ3Tv9DlQqTw4HvNlnU/xVwxZBII6lHbSDTJ7+
         GBIA/GoH5zDzPr9ccv6rUHp0UlhMkiqsi2/e86BAqVPjEHcFKtDvkV8DPJCxCVLRUjbm
         pYh9RgL1JlriKzZPu30WqE/YH/Rcyf6mngPgQHcPHHo2EufA+iGl5qs7p2TT1t270Z0L
         BBftHUq/4M3qdK2DdWGZWC2fJBuSlRc5+ACoH+QrQu3Gyn1U7nJZevSK8pXYYIMJ6W6M
         zbCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u16si616539lfc.3.2018.02.19.22.39.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 22:39:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,537,1511823600"; 
   d="scan'208";a="314398586"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2018 07:39:35 +0100
Date: Tue, 20 Feb 2018 07:39:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eisha Chen-yen-su <chenyensu0@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] Cleanup in staging pi433 driver
In-Reply-To: <20180220004726.9662-1-chenyensu0@gmail.com>
Message-ID: <alpine.DEB.2.20.1802200738180.2868@hadrien>
References: <20180220004726.9662-1-chenyensu0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 20 Feb 2018, Eisha Chen-yen-su wrote:

> Do some code cleanup in order to reduce the quantity of lines
> exceeding 80 columns. Problem found with checkpatch.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

The series looks good.  Try to find some issues involving code rather than
just whitespace, now that you have figured out the patch submission
process.

julia


>
> Eisha Chen-yen-su (2):
>   staging: pi433: Split some function calls
>   staging: pi433: Split subtraction across 2 lines
>
>  drivers/staging/pi433/pi433_if.c | 48 ++++++++++++++++++++++++++--------------
>  1 file changed, 32 insertions(+), 16 deletions(-)
>
> --
> 2.14.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180220004726.9662-1-chenyensu0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

