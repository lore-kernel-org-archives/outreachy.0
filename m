X-GM-THRID: 8139195809792
X-Received: by 10.66.157.129 with SMTP id wm1mr63887965pab.15.1426518637893;
        Mon, 16 Mar 2015 08:10:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.101 with SMTP id m5ls1018805ige.28.canary; Mon, 16 Mar
 2015 08:10:37 -0700 (PDT)
X-Received: by 10.50.109.202 with SMTP id hu10mr87281282igb.4.1426518637644;
        Mon, 16 Mar 2015 08:10:37 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si1988741pdo.0.2015.03.16.08.10.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:10:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A413FAF3;
	Mon, 16 Mar 2015 15:10:36 +0000 (UTC)
Date: Mon, 16 Mar 2015 16:10:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Taiane Coelho Ramos <exhora.tat@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: iio: ade7758: Remove
 braces on a single statement if
Message-ID: <20150316151034.GA18907@kroah.com>
References: <1426274564-4074-1-git-send-email-exhora.tat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426274564-4074-1-git-send-email-exhora.tat@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 13, 2015 at 04:22:44PM -0300, Taiane Coelho Ramos wrote:
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: braces {} are not necessary for single
> statement blocks
> 
> Signed-off-by: Taiane Coelho Ramos <exhora.tat@gmail.com>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
> ---
> Changes in v2:
>   - Make the commit message more clear.
> 
>  drivers/staging/iio/meter/ade7758_ring.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

This does not apply to my tree :(

