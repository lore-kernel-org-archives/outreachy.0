X-GM-THRID: 6211547369470689280
X-Received: by 10.107.155.18 with SMTP id d18mr9976659ioe.0.1446336023441;
        Sat, 31 Oct 2015 17:00:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.104 with SMTP id pj8ls492285igb.32.gmail; Sat, 31 Oct
 2015 17:00:23 -0700 (PDT)
X-Received: by 10.68.180.1 with SMTP id dk1mr12523708pbc.1.1446336022965;
        Sat, 31 Oct 2015 17:00:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si1248293pab.0.2015.10.31.17.00.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 17:00:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7F92E259;
	Sun,  1 Nov 2015 00:00:22 +0000 (UTC)
Date: Sat, 31 Oct 2015 17:00:22 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: gdm72xx: Add space
 around '&'
Message-ID: <20151101000022.GE10644@kroah.com>
References: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Nov 01, 2015 at 01:56:48AM +0300, Burcin Akalin wrote:
> Add space around operator '&'. Problem found using
> checkpatch.pl
> CHECK: spaces preferred around that '&' (ctx:VxV)
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---
>  drivers/staging/gdm72xx/gdm_qos.c | 40 +++++++++++++++++++--------------------
>  1 file changed, 20 insertions(+), 20 deletions(-)

You sent this same patch 2 days ago, right?  Please always let me know,
otherwise it confuses maintainers...

