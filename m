X-GM-THRID: 9926466338816
X-Received: by 10.67.22.7 with SMTP id ho7mr4404512pad.29.1427364291636;
        Thu, 26 Mar 2015 03:04:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.98 with SMTP id t2ls416244obf.92.gmail; Thu, 26 Mar
 2015 03:04:51 -0700 (PDT)
X-Received: by 10.182.133.69 with SMTP id pa5mr14936547obb.32.1427364291361;
        Thu, 26 Mar 2015 03:04:51 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iw3si628313pbd.1.2015.03.26.03.04.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 03:04:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5734CA79;
	Thu, 26 Mar 2015 10:04:50 +0000 (UTC)
Date: Thu, 26 Mar 2015 11:04:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Move extern to
 header file
Message-ID: <20150326100447.GB8908@kroah.com>
References: <20150326092927.GA4803@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150326092927.GA4803@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 26, 2015 at 02:59:27PM +0530, Vatika Harlalka wrote:
> Move extern to header file. Functions have extern storage
> class by default so the keyword "extern" is removed."
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-mdio.h | 1 +
>  drivers/staging/octeon/ethernet.c      | 2 --
>  2 files changed, 1 insertion(+), 2 deletions(-)

Someone  just sent this patch right before you did :(

