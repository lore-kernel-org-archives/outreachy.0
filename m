X-GM-THRID: 6331328146367840256
X-Received: by 10.66.250.162 with SMTP id zd2mr2084289pac.64.1474147737024;
        Sat, 17 Sep 2016 14:28:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.72 with SMTP id p8ls2394031otd.48.gmail; Sat, 17 Sep
 2016 14:28:56 -0700 (PDT)
X-Received: by 10.200.52.4 with SMTP id u4mr2054101qtb.44.1474147736711;
        Sat, 17 Sep 2016 14:28:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si3769270pfw.1.2016.09.17.14.28.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:28:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1C1DF9C;
	Sat, 17 Sep 2016 21:28:54 +0000 (UTC)
Date: Sat, 17 Sep 2016 23:28:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com, ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com
Subject: Re: [PATCH] Staging: wilc1000: Make functions wilc_mac_{open/close}
 static
Message-ID: <20160917212857.GC12466@kroah.com>
References: <1474127171-16522-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1474127171-16522-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 17, 2016 at 09:16:11PM +0530, Bhumika Goyal wrote:
> The functions wilc_mac_{open/close} are used only in linux_wlan.c.
> Therefore, declare them static and remove their declaration from
> header wilc_wlan.h and also remove their extern declaration from
> wilc_wfi_cfgoperations.c.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_wlan.c             | 4 ++--
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
>  drivers/staging/wilc1000/wilc_wlan.h              | 3 ---
>  3 files changed, 2 insertions(+), 8 deletions(-)

You didn't build test your changes, not very nice, as this path broke
the build :(

Please be more careful in the future.

greg k-h

