X-GM-THRID: 6667904381849960448
X-Received: by 2002:a17:906:1850:: with SMTP id w16mr1191223eje.7.1552544146368;
        Wed, 13 Mar 2019 23:15:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9173:: with SMTP id f48ls1108271eda.7.gmail; Wed, 13 Mar
 2019 23:15:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqygpKc3I/4v1FIgqutyZs++LjGMImV9/Bvtxi+/Aco+HUz+FckhATnXi9+lx28YZMO8q0ge
X-Received: by 2002:a50:addd:: with SMTP id b29mr1726077edd.11.1552544145726;
        Wed, 13 Mar 2019 23:15:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552544145; cv=none;
        d=google.com; s=arc-20160816;
        b=0pqcUuttE3VlK3fAv2WrKG8P9UvJvd5s07EQUSHA1wDwItLAxIK6ZK3/hp6thaMPIG
         ZrS+m/VjDCJ5sd++jbtuTq/1flGuFdgkl9Sz0MZoKJ1NnWDQYgKDDU4yiLdONPDYwuJ6
         Wdmp83igj5+lwcwC8XP+03lNiX4wdvJj/K8/mxowIaUyfahvIYtiNl3phNzYN00oNHx1
         92nhKhHI8+bDrNeFBfgYC1JcxN5oa7/CZ2568VoHScM1rX2zvszLhizrsT3e+PIYMhi3
         AgJ6ZPHbuHV3S5XaUoSfkASDXLDYu/I6XpQioMkUBLkuJiQhDWa7/0dYrTRrxHTKZR0Q
         SgdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DDsi9MC1UtXif0HyN+yp0aRFJaBZAVzl1887++3ScSk=;
        b=hN16SGyvEUf03BbjRyAF82Vn/0OFC8b0qV4HTBtpW9a/Vf8B8Mm9z/VodlnTPbroQn
         j5agtZErZgaFlvm5wYk8rHoaRFiOTl+xSnrAXN/X7TzF9oN47R5W0paJ96hsvqW1w/WV
         EGaBCfcQ8eHY0ot1NYMMjzSfdxBKmdslKz4EvCgz/EAusSxWWTE6JrywZ2gKsXKeVQwY
         R/clMOFkVT0SfGSkSYrUwVP+ATtUB41NI2xlYpTAFuLAGk6qj+AeP8U2pkI+4sIy9cFa
         Z5ch7aDDKDXKEQgc2QjUoH667laU2jL3vJ6R/pZdd1gSUmSL4jaositRPtgZr0M/JX1H
         ISUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h5si186006ejq.0.2019.03.13.23.15.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 23:15:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,477,1544482800"; 
   d="scan'208";a="373322707"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2019 07:15:45 +0100
Date: Thu, 14 Mar 2019 07:15:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl872bs: Remove local
 variables in functions
In-Reply-To: <20190313223559.GC5065@madhuleo>
Message-ID: <alpine.DEB.2.21.1903140708190.2814@hadrien>
References: <20190313155425.5548-1-madhumithabiw@gmail.com> <alpine.DEB.2.21.1903132045230.2515@hadrien> <20190313214945.GB5065@madhuleo> <alpine.DEB.2.21.1903132304420.2515@hadrien> <20190313223559.GC5065@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> The change need to be made in two files -  drivers/staging/rtl8723bs/core/rtw_cmd.c
> 1) drivers/staging/rtl8723bs/core/rtw_cmd.c
> 2) drivers/staging/rtl8723bs/include/cmd_osdep.h (to remove extern from function prototypes)

If you change the .c file in the first patch and the .h file in the second
patch, then the first patch will break the build.  On the other hand, if
you change the .h file in the first patch that will not change anything,
because no one cares about the declaration.

Still I think it would make sense to do the whole thing at once, in a
single patch.  A function definition and its prototype go together, so if
you change both it would make the most sense to do the whole thing at once.

> So that's reason why I asked whether it has to be send as patch series or I can submit it as individual patches.

Not individual patches.  Either a series with the .h file first and then the
change in the .c file, or a single patch.


> In rtw_cmd.c, along with the change already made, I will change the
> return expression. i.e.

Your message got broken off here, But you don't want the change already
made.  There is no point to have a function that has the only statement to
call another function.  The two functions that you changed should just be
dropped completely.

Again, please put your replies inline after the text that you are
replying to and not at the very end of the message, after the list
management information.

julia

