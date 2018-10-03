X-GM-THRID: 6607095314902941696
X-Received: by 2002:adf:ec4b:: with SMTP id w11-v6mr338771wrn.20.1538593269094;
        Wed, 03 Oct 2018 12:01:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8058:: with SMTP id b85-v6ls448289wmd.18.canary-gmail;
 Wed, 03 Oct 2018 12:01:07 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61JmMNDeVJx9FZMVuhK3ojW7Bqim31uZDCkycwXOj4AnydZinn7kp9sZvdskePeFrEVWvHX
X-Received: by 2002:a1c:7319:: with SMTP id d25-v6mr362111wmb.10.1538593267858;
        Wed, 03 Oct 2018 12:01:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538593267; cv=none;
        d=google.com; s=arc-20160816;
        b=JjQ69/cbBRjkSnNgDYfOibof4bjvbC8mTQSbZP87MdNxfqTgy5DZQufvNJzi005Y85
         WDZVOb1s9ELGJRy52rsjIYoLPWyF9DQhiMDguP57wWsPtxuhpnX2K/wPH3C+knaE5czc
         AWZ6JPcf2v7OAY03F88ZFfNdYEUdDnLJaVTnA4H2uwg4s/COtw5DSr4hs+eW8xMkEMFY
         UYkNE4sFFF1AbhyS9Kk3nspMmhdD1Drh9LlIZq4zNOAk952RZV3LqPNqg1iJeDx+fH9b
         TZtCTjXkbmwUjXyFUQuEgEMlJRpXeAPrXkiK0I6OgbwLeeApcerIwwkqQkMNKFt1MyfX
         nabA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+/0cW/efQfY6FiWlPNQdET6/T9LvBUjlXrA3tKFq2hQ=;
        b=w4UYd8gQTCoE9Qfi3d+3IcUmRNzjLF6s+ca+R/LXUPc2cGV8hOIFNOaCGM3Ge8TtAP
         tZBkYKAdjA1GZe3j+t2eG343uiBolgJOGYXXNnciSq5zrbMgaI3Bo+OjYHtRK4Tx+d4S
         3jnxNb4smmqgyoPVWzwgpT0i/Fn2T5PgrUbOYNXoevEH2kzZ/qzPpuCXVZTBNQUSPQbW
         r9KG3HIbfxTg+NRuPYMXOUv5sv1H0YWV/e2af/G7PAr6rhUIW2DFmGkImbzIXu3FmcyZ
         MIpr5MG6M+cDV01u1y4vDQfOzoVtfYQGXp/FJVhOsV0hbQil8vKmK7e8Zdf8NJLHC4Cf
         PRgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z14-v6si60741wrh.4.2018.10.03.12.01.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 12:01:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,336,1534802400"; 
   d="scan'208";a="280876433"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Oct 2018 21:00:44 +0200
Date: Wed, 3 Oct 2018 21:00:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: Himanshu Jha <himanshujha199640@gmail.com>, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, hdegoede@redhat.com, john@phrozen.org
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
In-Reply-To: <CAJ1myNRF+1S=epCMJxUa1YrdPK4p80CiPn2FDdqw5mnwTq+mQA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1810032100040.2527@hadrien>
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com> <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien> <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com> <20181002092816.GA7179@himanshu-Vostro-3559> <alpine.DEB.2.20.1810021138450.3520@hadrien>
 <CAJ1myNRF+1S=epCMJxUa1YrdPK4p80CiPn2FDdqw5mnwTq+mQA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1122122365-1538593244=:2527"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1122122365-1538593244=:2527
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 3 Oct 2018, Dafna Hirschfeld wrote:

>
>
> On Wed, Oct 3, 2018 at 7:06 AM Julia Lawall <julia.lawall@lip6.fr> wrote:
>       > > Then in run "make menuconfig" again and under "Device
>       Drivers -> staging
>       > > drivers" I chose "MediaTek MT7621 PCI Controller"
>       > > Hoping it will solve it , but it didn't.
>       > >
>       > > The files I prepared the patchset for did compile ok , is it
>       important that
>       > > all files will compile?
>       >
>       > I think for these changes just use that .config supplied by
>       the distro
>       > at /boot/config-*
>       >
>       > But IIRC `make allyesconfig` should be used(not sure though..)
>
>       Dafna,
>
>       It is important that the driver continues to compile.
>
> Hi,
> Fixing the compilation error in drivers/staging/mt7621-pci/pci-mt7621.c is
> not triveal,
> It is not clear what type `port` and `tmp` should be.

pcie has a type.  I think it is possible to figure it out from there.  YOu
can also see how port is used, for confirmation.

julia

>  
> Dafna
>
>       Make allyesconfig is often a good option.
>
>       julia
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAJ1myNRF%2B1S%3DepCMJxU
> a1YrdPK4p80CiPn2FDdqw5mnwTq%2BmQA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1122122365-1538593244=:2527--

