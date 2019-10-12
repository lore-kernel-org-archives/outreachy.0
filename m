X-GM-THRID: 6746979289302827008
X-Received: by 2002:a17:906:a2d1:: with SMTP id by17mr2982993ejb.206.1570905340668;
        Sat, 12 Oct 2019 11:35:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c44d:: with SMTP id n13ls2475819edr.7.gmail; Sat, 12 Oct
 2019 11:35:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/mdtnvKbTAifMMOJJ1Iy/7RQNfz6fMTlBFoql5KpC4h6FNhL7ilLJnBlrqTLLTUxNNn81
X-Received: by 2002:a50:ed06:: with SMTP id j6mr20076427eds.274.1570905339855;
        Sat, 12 Oct 2019 11:35:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570905339; cv=none;
        d=google.com; s=arc-20160816;
        b=pb+NPnIfV6duwoiQy/rSn18Wo1QOZQgdMWm+DwHOqwbW9ML0pcpxByggv8aC61Zxww
         ECbLf1aDLppNivpqPg0tJU+6tuOiVvjfYAgYgDefQmGEf47JWYrlKF5FASi6KUXU0GKu
         r6EA5Tsqzrbacyx4G23pq+WUMIjhKBwFDKmnKmcb6GHgnAg02bJHB5psx8ND90xYXDsh
         Di1MKeoC5JRd6xXgUiTtqn3lxj/G5XkzbBXE5NPgur0F4xt3pJVQ6SBbJ/GKxmYvqHSS
         LXZSowdJfrSziJNrBIi3kMXAWYGin//3NI7bs1O1m1JAxmqeOtum4MGdCu3gqbJ7jEM4
         u+Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=eHCr2tgtFNQ8evL388NpHw2uDzqSyGVCU2ozf7L8yEo=;
        b=mnejS4OnLeX45mHejq5e/evRZLGg3KzY4rXHfXTcvcS0KSPpGs2eiTe9dnP84F5HmK
         B2ueZ5Bi1OmZkgXFCR1/miEovDq/SwQ/UP3lcTq0BGm3EWm75ZsOtbqs4zPuu69WyPmG
         OUgsoc+Y+DKq8Uqq2TeGvg2RWF45noFwgXi7XBu2sPeIU83HcLLH5ZPE+jWQiN8Iqh1b
         r+D+8l0hNlMz9KlRmQr8G0fmKSFZkQG9vmrR1dXWOT2hVaAV4vx4KbWlQAct2yh3BvBy
         PbIn2p9/ffwnIgaZvC1ZKaKPMoYP3cS563adqrRHcjFs2ROxByJp6asyRFL1ipP1Bfq0
         UUkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d11si222375edh.3.2019.10.12.11.35.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Oct 2019 11:35:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,288,1566856800"; 
   d="scan'208";a="322499627"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2019 20:35:19 +0200
Date: Sat, 12 Oct 2019 20:35:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] Remove typedef declarations
 in staging: octeon
In-Reply-To: <cover.1570821661.git.wambui.karugax@gmail.com>
Message-ID: <alpine.DEB.2.21.1910122034390.3049@hadrien>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 12 Oct 2019, Wambui Karuga wrote:

> This patchset removes the addition of new typedefs data types in octeon,
> along with replacing the previous uses with the new declaration format.
>
> v2 of the series removes the obsolete "_t" notation in the named types.
>
> Wambui Karuga (5):
>   staging: octeon: remove typedef declaration for cvmx_wqe
>   staging: octeon: remove typedef declaration for cvmx_helper_link_info
>   staging: octeon: remove typedef declaration for cvmx_fau_reg_32
>   staging: octeon: remove typedef declartion for cvmx_pko_command_word0
>   staging: octeon: remove typedef declaration for cvmx_fau_op_size
>
>  drivers/staging/octeon/ethernet-mdio.c   |  6 +--
>  drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
>  drivers/staging/octeon/ethernet-rx.c     |  6 +--
>  drivers/staging/octeon/ethernet-tx.c     |  4 +-
>  drivers/staging/octeon/ethernet.c        |  6 +--
>  drivers/staging/octeon/octeon-ethernet.h |  2 +-
>  drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
>  7 files changed, 43 insertions(+), 41 deletions(-)

For the series:

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1570821661.git.wambui.karugax%40gmail.com.
>

