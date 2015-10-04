X-GM-THRID: 6201721942564667392
X-Received: by 10.66.102.101 with SMTP id fn5mr20910963pab.38.1443953717562;
        Sun, 04 Oct 2015 03:15:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.53 with SMTP id 50ls2080291qgc.26.gmail; Sun, 04 Oct
 2015 03:15:17 -0700 (PDT)
X-Received: by 10.13.240.132 with SMTP id z126mr21015661ywe.34.1443953717099;
        Sun, 04 Oct 2015 03:15:17 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k190si1950725ywe.3.2015.10.04.03.15.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 03:15:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [193.120.146.54])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A5C021769;
	Sun,  4 Oct 2015 10:15:15 +0000 (UTC)
Date: Sun, 4 Oct 2015 11:15:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Remove
 unused function obd_export_nid2str
Message-ID: <20151004101505.GA26845@kroah.com>
References: <1443950881-25330-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443950881-25330-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 04, 2015 at 02:58:01PM +0530, Shraddha Barke wrote:
> Remove obd_export_nid2str as it is defined but not used anymore.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/genops.c | 8 --------
>  1 file changed, 8 deletions(-)

Thanks, now applied.

I beat the 0-day bot telling you about this for once! :)

greg k-h

