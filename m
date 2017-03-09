X-GM-THRID: 6394871652191043584
X-Received: by 10.99.44.131 with SMTP id s125mr5794637pgs.150.1489067239290;
        Thu, 09 Mar 2017 05:47:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.7 with SMTP id u7ls4827144itc.19.canary-gmail; Thu, 09
 Mar 2017 05:47:18 -0800 (PST)
X-Received: by 10.107.139.139 with SMTP id n133mr4073697iod.100.1489067238445;
        Thu, 09 Mar 2017 05:47:18 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si1184052pfb.7.2017.03.09.05.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 05:47:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A3E6B305;
	Thu,  9 Mar 2017 13:47:17 +0000 (UTC)
Date: Thu, 9 Mar 2017 14:47:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH] staging: wilc1000: linux_mon: Rearrange the code
Message-ID: <20170309134708.GA25303@kroah.com>
References: <20170307212751.4152-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170307212751.4152-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 07, 2017 at 11:27:51PM +0200, Tamara Diaconita wrote:
> Put a part of some lines in a new line to have less than 80 characters.
> 
> Fixed the checkpath.pl issue:
> CHECK: Line over 80 characters.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_mon.c | 27 ++++++++++++++++++---------
>  1 file changed, 18 insertions(+), 9 deletions(-)

You have sent a lot of different patches for this driver over the past
few days, and I now have no idea what is, and what is not, a valid patch
:(

Can you please resend all of ythe patches I haven't applied yet, as a
patch series, properly linked together (i.e. reply-to is set), so that
they can be reviewed easily?

Remember, I have to deal with hundreds of patches, you want to make the
maintainers life _very_ easy to figure out what is, and is not, a valid
patch to apply.

thanks,

greg k-h

