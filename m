X-GM-THRID: 6746979289302827008
X-Received: by 2002:a5d:5591:: with SMTP id i17mr1880066wrv.151.1571894820896;
        Wed, 23 Oct 2019 22:27:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ba04:: with SMTP id o4ls2737521wrg.7.gmail; Wed, 23 Oct
 2019 22:26:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyzHogsab3pXNh1tUgHsX7WiLig8l05JUbbrnJ+q/AUaKadC77ymFAHMM+l4qWdKlybnvg1
X-Received: by 2002:adf:d846:: with SMTP id k6mr2022972wrl.178.1571894819818;
        Wed, 23 Oct 2019 22:26:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571894819; cv=none;
        d=google.com; s=arc-20160816;
        b=BsRNKLRTiCUXTQfmJ8goq2omFORovwE4emuZhhy5r3JpzGdFvcYAvu/mKOZe5m9YK6
         ycFNeg79wtTqM6kIjG3OeRDtf5G6ZT9+a2FshagATT0ukWlmk5GX6Ro2WRGx678f7cVz
         sqL0rlHvniGH1gz/2FvdAKi+sXSie5Z6PRyVA72WxW3vbVjUN6D+VO9RtdBHbtPWilEM
         MNdRAKUNfEcSDMY4426SUexd0+XxMYXDxGxOxmF6oMHiFBmbl3DmhVu+cqiZLVEta0/L
         /u03IdnF+dYtt/bFhPD2sqxP8Y4QPzNPkV2Ere+coj7Ulg/n+KnWocuBjqW/mPndU3Nc
         OzjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=aMVK1LtcInUmlF2BY2RpcebJX6MLBZ0QwkgJBSmtXpw=;
        b=RCcyE9qafzU9LOwngKbw/qDXXP26PwIU7LgIKsC3w8WC0hl3Onz2TsYQFrHqVyx2uT
         pk1HoIEy+K7VExoqnYnPYz38JNb7DcJrqaS9YEF1hwmiIUhkSYrvVlJQSd6QSXdF1r+c
         /cs9wmrkIIdB5hTTd4SGyqdsmrH/V3e+wZiy8Tkom1IWnuuQCTKsEFsJgvEBCgNth63e
         AMrg2CVbpE+Gva4KsoS/UJywbWLcu/9qv1HMw3sDA6Q9Gzy6ucq/tmjfvh/9GILnQ6jc
         E65E5fPtnjtBcZg3ZT3ff7xUnCXShofSCHMANpkxKf1zS9TysKaXZKsqmMv1VG0cUq22
         dkAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v2si74930wma.3.2019.10.23.22.26.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 22:26:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,223,1569276000"; 
   d="scan'208";a="407877160"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 07:26:59 +0200
Date: Thu, 24 Oct 2019 07:26:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Paul Burton <paulburton@kernel.org>
cc: Wambui Karuga <wambui.karugax@gmail.com>, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/5] staging: octeon: remove
 typedef declaration for cvmx_wqe
In-Reply-To: <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
Message-ID: <alpine.DEB.2.21.1910240722070.2771@hadrien>
References: <cover.1570821661.git.wambui.karugax@gmail.com> <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com> <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> If you're making significant changes to this driver, please test them
> using the MIPS cavium_octeon_defconfig which is where this driver is
> actually used.
>
> This driver has broken builds a few times recently which makes me very
> tempted to ask that we stop allowing it to be built with COMPILE_TEST.
> The whole octeon-stubs.h thing is a horrible hack anyway...

Wambui,

Please figure out what went wrong here.  Are there two sets of typedefs
that should have been updated?

Others,

Would it be reasonable to put the information about how the driver should
be compied in the TODO file?  git grep cavium_octeon_defconfig in the
octeon directory turns up nothing.

thanks,
julia

