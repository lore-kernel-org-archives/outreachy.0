X-GM-THRID: 6394884347886829568
X-Received: by 10.13.247.4 with SMTP id h4mr5460787ywf.4.1489065847214;
        Thu, 09 Mar 2017 05:24:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.79 with SMTP id c76ls1780879itb.21.gmail; Thu, 09 Mar
 2017 05:24:06 -0800 (PST)
X-Received: by 10.99.94.7 with SMTP id s7mr6121168pgb.105.1489065846347;
        Thu, 09 Mar 2017 05:24:06 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si1176894pfa.6.2017.03.09.05.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 05:24:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A6D17415;
	Thu,  9 Mar 2017 13:24:05 +0000 (UTC)
Date: Thu, 9 Mar 2017 14:23:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH] staging: speakup: wilc1000: Align the code
Message-ID: <20170309132356.GA8690@kroah.com>
References: <20170307221709.5489-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170307221709.5489-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 08, 2017 at 12:17:09AM +0200, Tamara Diaconita wrote:
> Deleted tabs and added spaces to align the code.
> 
> Fixed the checkpath.pl issue:
> CHECK: Aligment should match open paranthesis.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_wlan.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

This patch has nothing to do with "speakup" :(

thanks,

greg k-h

