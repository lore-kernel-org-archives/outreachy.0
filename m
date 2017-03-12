X-GM-THRID: 6395629856318554112
X-Received: by 10.99.226.3 with SMTP id q3mr14575911pgh.129.1489327285519;
        Sun, 12 Mar 2017 07:01:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls12617331otd.49.gmail; Sun, 12 Mar
 2017 07:01:25 -0700 (PDT)
X-Received: by 10.157.56.155 with SMTP id p27mr12956457otc.124.1489327285202;
        Sun, 12 Mar 2017 07:01:25 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si2652035pfa.6.2017.03.12.07.01.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:01:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 538CB901;
	Sun, 12 Mar 2017 14:01:23 +0000 (UTC)
Date: Sun, 12 Mar 2017 14:59:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH v3 1/3] staging: wilc1000: Enhance code formatting
Message-ID: <20170312135959.GA15102@kroah.com>
References: <20170311092204.3465-1-diaconita.tamara@gmail.com>
 <20170311092204.3465-2-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170311092204.3465-2-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 11, 2017 at 11:22:02AM +0200, Tamara Diaconita wrote:
> Trims line size at 80 characters wilc_wlan_cfg.c file by moving
> a part of the lines in a new line.
> 
> Fixed the checkpath.pl issue:
> CHECK: line over 80 characters.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
> Changes since v2:
> *Wrap log message lines at 72.

You have two patches in this series with the identical subject line, yet
they do different things.  Totally confusing, please fix up and resend.

thanks,

greg k-h

