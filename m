X-GM-THRID: 8658120343552
X-Received: by 10.236.70.234 with SMTP id p70mr69113801yhd.56.1426606383693;
        Tue, 17 Mar 2015 08:33:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.4.98 with SMTP id j2ls90083obj.28.gmail; Tue, 17 Mar 2015
 08:33:03 -0700 (PDT)
X-Received: by 10.182.34.133 with SMTP id z5mr75131149obi.3.1426606383453;
        Tue, 17 Mar 2015 08:33:03 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22f.google.com (mail-qc0-x22f.google.com. [2607:f8b0:400d:c01::22f])
        by gmr-mx.google.com with ESMTPS id e5si1691939qcg.1.2015.03.17.08.33.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:33:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22f as permitted sender) client-ip=2607:f8b0:400d:c01::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22f as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22f.google.com with SMTP id kw5so11700506qcb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 08:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=6i+CdIyFRialrSWQyhqZVtQqPDgX8YGQfrgZbXkZGsc=;
        b=vBFJ6tYPMDFXsyLcPKR8TzFOjCcNXEJ8TapuEuQylZn4rdHIwbWW2Q06iZCU/q7knv
         mZb770H1hEz0MTu6XgfP4w6XOmzVIk2iYFcpsBxfl1g9Jc/tm84nIHPdUNJGDYtxQtuq
         Tmlw7Ne63DWp5fWIJwBui3yWMTc7qC1gu1FxNrTYZejiLgXvjsfpSTEX72EfOYCltu7L
         9R+qLjHpZVbpLpo18OzQqPvn5p1en7shR4zeTANoX3CZfnTlgABF23tnb1WmjVl0P5GO
         aRwWdIyolB8GbF+GoCuCQ+RDLvUCXzYjSDYDzsJ1g79kRUln6oESdWdVCiTwLii2T459
         GF/Q==
X-Received: by 10.55.19.74 with SMTP id d71mr130432842qkh.92.1426606383330;
        Tue, 17 Mar 2015 08:33:03 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id f63sm9811142qkf.14.2015.03.17.08.33.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:33:02 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <5508492D.9010805@gmail.com>
Date: Tue, 17 Mar 2015 11:33:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Darshana Padmadas <darshanapadmadas@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Replace memcpy with ether_addr_copy
 and fix checkpatch warning
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/16/15 15:18, Darshana Padmadas wrote:
> This patch set replaces memcpy with ether_addr_copy if the 
> addresses of the structures are aligned. Structure layout is 
> shown by using the Pahole tool.
> 
> This patch set fixes the following warning reported by checkpatch:
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)
> 
> Darshana Padmadas (5):
>   Staging: rtl8192e: Replace memcpy with ether_addr_copy
>   Staging: rtl8192e: Use ether_addr_copy instead of memcpy
>   Staging: rtl8192e: Use ether_addr_copy replacing memcpy
>   Staging: rtl8192e: Use ether_addr_copy for aligned addresses
>   Staging: rtl8192e: replace memcpy with ether_addr_copy for aligned
>     structures
> 
>  drivers/staging/rtl8192e/rtl819x_BAProc.c    |  4 ++--
>  drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 10 ++++----
>  drivers/staging/rtl8192e/rtllib_rx.c         | 34 ++++++++++++++--------------
>  drivers/staging/rtl8192e/rtllib_softmac.c    | 12 +++++-----
>  drivers/staging/rtl8192e/rtllib_tx.c         |  6 ++---
>  5 files changed, 33 insertions(+), 33 deletions(-)
> 

This set looks good to me!

Jes


