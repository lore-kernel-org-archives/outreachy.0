X-GM-THRID: 6395948698410418176
X-Received: by 10.129.208.8 with SMTP id v8mr13606014ywi.81.1489327420801;
        Sun, 12 Mar 2017 07:03:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.146 with SMTP id 18ls3621790iom.11.gmail; Sun, 12 Mar
 2017 07:03:40 -0700 (PDT)
X-Received: by 10.107.38.17 with SMTP id m17mr5576600iom.5.1489327420019;
        Sun, 12 Mar 2017 07:03:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si2586400pfz.1.2017.03.12.07.03.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:03:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 131C66C;
	Sun, 12 Mar 2017 14:03:38 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:03:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH] staging: wilc1000: Add blank line
Message-ID: <20170312140319.GB15102@kroah.com>
References: <20170311140924.18738-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170311140924.18738-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 11, 2017 at 04:09:24PM +0200, Tamara Diaconita wrote:
> Add blank line after a function to match the kernel coding style and
> improve code readability.
> 
> Problem found with checkpatch.pl.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 1 +
>  1 file changed, 1 insertion(+)

Ugh, I have over 25 patches from you, for this driver, yet no way for me
to know what ones should be applied in what order :(

Please resend _all_ of the latest ones that I have not already applied,
in a single patch series, so it's obvious to a brainless squirel (i.e.
me), as to what patches need to be reviewed and potentially applied for
this driver.

thanks,

greg k-h

