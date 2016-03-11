X-GM-THRID: 6256792083376373760
X-Received: by 10.66.102.8 with SMTP id fk8mr8927214pab.44.1457732988870;
        Fri, 11 Mar 2016 13:49:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.10 with SMTP id b10ls1455520iod.101.gmail; Fri, 11 Mar
 2016 13:49:48 -0800 (PST)
X-Received: by 10.66.63.68 with SMTP id e4mr8612271pas.40.1457732988490;
        Fri, 11 Mar 2016 13:49:48 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si1551547pfa.2.2016.03.11.13.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:49:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 407C5CA3;
	Fri, 11 Mar 2016 21:49:48 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:49:47 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/5] Staging: gdm72xx: Remove
 unnecessary goto.
Message-ID: <20160311214947.GC24083@kroah.com>
References: <cover.1457269114.git.bankarsandhya512@gmail.com>
 <97bfd9b96f8f4a9c01a0a5257b90d10a0d9beea7.1457269114.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <97bfd9b96f8f4a9c01a0a5257b90d10a0d9beea7.1457269114.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 06:41:07PM +0530, Sandhya Bankar wrote:
> Remove unnecessary goto.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/gdm72xx/usb_boot.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Driver is no longer in the tree.

