X-GM-THRID: 6208306877755817984
X-Received: by 10.182.95.101 with SMTP id dj5mr11895908obb.13.1445761723120;
        Sun, 25 Oct 2015 01:28:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.178.175 with SMTP id cz15ls592271igc.0.gmail; Sun, 25 Oct
 2015 01:28:42 -0700 (PDT)
X-Received: by 10.107.10.153 with SMTP id 25mr20476808iok.3.1445761722857;
        Sun, 25 Oct 2015 01:28:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id fa8si3047383pab.1.2015.10.25.01.28.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A8A7790;
	Sun, 25 Oct 2015 08:28:41 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:54:44 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: Re: [PATCH] Staging: lustre: lustre_log: Remove unused functions
Message-ID: <20151025015444.GA14640@kroah.com>
References: <1445484078-23008-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445484078-23008-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 22, 2015 at 08:51:18AM +0530, Shraddha Barke wrote:
> Remove the functions which are defined but not used anywhere
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/lustre_log.h | 90 ----------------------
>  1 file changed, 90 deletions(-)

You sent 3 patches for the same driver at the same time, and I don't
have a clue as to what order to apply them in.  Please resend them as a
patch series so I know what to do here.

thanks,

greg k-h

