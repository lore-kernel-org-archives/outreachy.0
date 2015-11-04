X-GM-THRID: 6211915181056851968
X-Received: by 10.13.248.68 with SMTP id i65mr3102522ywf.39.1446670023704;
        Wed, 04 Nov 2015 12:47:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.2 with SMTP id su2ls162343obc.57.gmail; Wed, 04 Nov
 2015 12:47:03 -0800 (PST)
X-Received: by 10.182.250.233 with SMTP id zf9mr3097541obc.7.1446670023073;
        Wed, 04 Nov 2015 12:47:03 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si332103pab.0.2015.11.04.12.47.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 12:47:03 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8B0E28B4;
	Wed,  4 Nov 2015 20:47:02 +0000 (UTC)
Date: Wed, 4 Nov 2015 12:47:02 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Remove extern from
 function declarations
Message-ID: <20151104204702.GA24075@kroah.com>
References: <20151031204323.GA9685@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151031204323.GA9685@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Nov 01, 2015 at 02:13:24AM +0530, Amitoj Kaur Chawla wrote:
> Remove extern specifier since functions have it by default.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c         | 4 ++--
>  drivers/staging/wilc1000/linux_mon.c              | 2 +-
>  drivers/staging/wilc1000/linux_wlan.c             | 4 ++--
>  drivers/staging/wilc1000/linux_wlan_sdio.c        | 4 ++--
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 ++++----
>  drivers/staging/wilc1000/wilc_wlan.c              | 2 +-
>  6 files changed, 12 insertions(+), 12 deletions(-)

Doesn't apply to my tree :(

