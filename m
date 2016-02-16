X-GM-THRID: 6251489133143785472
X-Received: by 10.129.79.21 with SMTP id d21mr19716145ywb.46.1455589439307;
        Mon, 15 Feb 2016 18:23:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.84 with SMTP id k81ls1722996iod.108.gmail; Mon, 15 Feb
 2016 18:23:59 -0800 (PST)
X-Received: by 10.98.89.132 with SMTP id k4mr19249908pfj.4.1455589438971;
        Mon, 15 Feb 2016 18:23:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 79si3733960pft.0.2016.02.15.18.23.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 18:23:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B5F71EA7;
	Tue, 16 Feb 2016 02:23:58 +0000 (UTC)
Date: Mon, 15 Feb 2016 18:23:58 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Fix line over 80
 charcters long
Message-ID: <20160216022358.GA31935@kroah.com>
References: <20160215121052.GA9478@life-desktop>
 <20160216022130.GA31592@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160216022130.GA31592@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 15, 2016 at 06:21:30PM -0800, Greg KH wrote:
> On Mon, Feb 15, 2016 at 05:41:02PM +0530, Anchal Jain wrote:
> > This is a patch that fixes line over 80 characters coding style
> > warning detected by checkpatch.pl.
> > 
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > ---
> >  drivers/staging/wilc1000/wilc_wlan.c | 69 ++++++++++++++++++++++++------------
> >  1 file changed, 47 insertions(+), 22 deletions(-)
> 
> You sent 5 patches, but I have no idea what order to apply them in :(

Make that 6, that last one didn't apply :(


