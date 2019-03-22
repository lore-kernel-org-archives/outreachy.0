X-GM-THRID: 6671219486697193472
X-Received: by 2002:a37:4b0c:: with SMTP id y12mr20190281qka.127.1553530073839;
        Mon, 25 Mar 2019 09:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b742:: with SMTP id h63ls3040854qkf.2.gmail; Mon, 25 Mar
 2019 09:07:53 -0700 (PDT)
X-Received: by 2002:a37:b386:: with SMTP id c128mr18896546qkf.330.1553530073129;
        Mon, 25 Mar 2019 09:07:53 -0700 (PDT)
Received: by 2002:a37:4909:0:0:0:0:0 with SMTP id w9msqka;
        Fri, 22 Mar 2019 08:24:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzT4h1vUSCKCVK8uI0RQrpwma3hJ3wizTgtq6e7b/9DlPcvIR1vD+z1hlQxclej2MuBdVdR
X-Received: by 2002:a1c:2348:: with SMTP id j69mr3430223wmj.35.1553268259765;
        Fri, 22 Mar 2019 08:24:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553268259; cv=none;
        d=google.com; s=arc-20160816;
        b=kSsW/Bh7eZGAXTBMBa/kzSUOSquRCVyLwrXI+13+rVQBMFzMA3v/CMd0989YZ5snam
         9ujhkI7bBKtLr18hXWMHV4QtPCBmv1l+MIQ6ZNVVgDDnILJj/VcTYaqAHxOygJz4I/I6
         qbWWMnPBaINr1M1xUU6Wsd0P3RWMk3GjqT9mH3PoI6R9gYCYqa64pifJjwIohdZGYBdy
         iMgY0fXnkdlovlaSlkSMEuf/oyz+R5IAvCE9A/KCFbLzZFKIgYbwWenkBh/uafrzQimI
         c1IHHS03f60GqzOruXHugkddZeIO6DtGqJPZiRw1SwDUt/eKJMShJ2wniJLsNu6Xjy2+
         oOPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KTKiOCFPtcPBR0Sm7A48EpvTlZNZUFDgP5WLZCi9i6A=;
        b=rQ86E8N51pSBg9hGXYnD6YDR2wNLXEHKCrhpsrengDP7zaE+VHbjELfSitokNEBYNv
         yBn9mqCK3WbkE1QihnHhdmLHPZYlcjFcUNRLX9JeUAA2PJfVdMWxAb7nfcmut9l9Coge
         vJ1DbAP2WzO7rY50ouEK4+FDhIBu17glxJSJhehViTOHZqXRX8FGPX5MnDaWv94FqH9q
         0yfZDUvjevaRS5UgQ3/nYtcX1tOrfKopLSvLfhTUB7Y2RrcBUafVZnQJnDrN3RhhQtTB
         hlMhGYtpKWSJOO6sKW62UAoyHWiGhk0IcUoqRqTDb59pAuLTbG1QMqvdOeWcUg6Nc/nX
         Q9iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HUUxlrm+;
       spf=pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=festevam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <festevam@gmail.com>
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id a9si415337wrp.5.2019.03.22.08.24.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 08:24:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HUUxlrm+;
       spf=pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=festevam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22d.google.com with SMTP id l7so2383805ljg.6
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 08:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KTKiOCFPtcPBR0Sm7A48EpvTlZNZUFDgP5WLZCi9i6A=;
        b=HUUxlrm+8P5DkPlHa17C6/harhYyhUTGwzFOPP5POeW+o89MYslweLcj1a/SVmT7xn
         GYp+GCLIGxolXhgYeEGBVc2PJSf6Cz8zCXiCPXciNOsu5UKVJNwzFbjCy+AZTNpdMN/K
         cKIPU2tZRd5+UFLRQjnAqKA4u+1bPb0bLQuGiehKW2ZcNzJIeaOlb/5WZDXlPVCK6bCT
         33SuJJdQGUydWXoK+K8HpEB+D79dqSmDdhgStpsylgRhV1elKDO7l3ZjkB3ZKOXEBgeF
         Js0hq+bsbSPmnKTz5TYqhLhY5DdGeVvULOeXU7wyaLnIPPTHtQDMMGiQdt4V1j+ZYjXd
         7ODA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KTKiOCFPtcPBR0Sm7A48EpvTlZNZUFDgP5WLZCi9i6A=;
        b=Vav/FMnrIuoAQZ8vhw3x5+dMJrJjkW3NiNWaVjozjSbiD98pyKY4IJwHX7gj/E0I3t
         lssR7O0Bg6volcGdBHMLI//yn0388zRZ0s6ehFX0qGqg2v5bakwOM54bB0Q557b5Ep06
         v90n4+V4fxBb4133txJzt20mpsnqVpYOOAJSGFigmmb80t38vMM87A5tHP9Pa94niDVw
         kB70irVm0i2U/W9U2hNVWRv8Vgd10A1Maq5L16SXBw2J9WWKHZhv8DnWuSgbJ7FX3myT
         YbhusKtDapkBQlGd+l9eHehph0xAa4inSEP+NVu2UCfj/qVaJfHuW5VPPuPRwRGIlRrL
         Godw==
X-Gm-Message-State: APjAAAUy2+626dstEWRFZlez/rr//V2fcjkTpKyqY4+paiS0IYc15Pgc
	RC+OW/Iu/QRGavIYmvnUgNr/Ph5vazklOqRl8a0=
X-Received: by 2002:a2e:899a:: with SMTP id c26mr5598021lji.192.1553268259488;
 Fri, 22 Mar 2019 08:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190322141829.8440-1-bhanusreemahesh@gmail.com> <1553267086.8366.3.camel@pengutronix.de>
In-Reply-To: <1553267086.8366.3.camel@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 22 Mar 2019 12:24:17 -0300
Message-ID: <CAOMZO5BonsXC+yW42CkAth0L55Y0OLX10_=bfZgp2Md2_TE_nQ@mail.gmail.com>
Subject: Re: [PATCH] Staging: media: Remove unnecessary print statements
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Bhanusree Pola <bhanusreemahesh@gmail.com>, outreachy-kernel@googlegroups.com, 
	Steve Longerbeam <slongerbeam@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"

Hi Bhanusree,

On Fri, Mar 22, 2019 at 12:04 PM Philipp Zabel <p.zabel@pengutronix.de> wrote:

> It would be nice to mention that these functions already
> print error messages themselves, but the patch is fine.

One other suggestion is to try to improve the Subject: it is
recommended to put the driver name, so something like:

media: imx: mipi csi-2: Remove unnecessary error messages

Thanks

