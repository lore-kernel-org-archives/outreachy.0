X-GM-THRID: 6388168209387749376
X-Received: by 10.129.117.86 with SMTP id q83mr1336465ywc.63.1487957311662;
        Fri, 24 Feb 2017 09:28:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.196 with SMTP id x62ls7699408ota.32.gmail; Fri, 24 Feb
 2017 09:28:31 -0800 (PST)
X-Received: by 10.157.18.196 with SMTP id g62mr1297059otg.9.1487957311292;
        Fri, 24 Feb 2017 09:28:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si1773051pfd.3.2017.02.24.09.28.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:28:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9C1AA9FA;
	Fri, 24 Feb 2017 17:28:30 +0000 (UTC)
Date: Fri, 24 Feb 2017 18:28:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Subject: Re: [PATCH 0/4] staging: rtl8712: Fix multiple checkpatch issues.
Message-ID: <20170224172824.GA395@kroah.com>
References: <58a75522.07cf620a.9c799.fc53@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58a75522.07cf620a.9c799.fc53@mx.google.com>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Sat, Feb 18, 2017 at 01:25:04AM +0530, Varsha Rao wrote:
> Fixes multiple checkpatch issues in rtl8712 driver.
> 
> Varsha Rao (4):
>   staging: rtl8712: Remove unnecessary parentheses.
>   staging: rtl8712: Removes the FSF mailing address.
>   staging: rtl8712: Remove space after a cast.
>   staging: rtl8712: Match alignment with open parenthesis.
> 
>  drivers/staging/rtl8712/os_intfs.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)

Can you resend a whole version 2 (or is it 3) of this patch series?
I've dropped your previous patches as they seemed to need more work
based on the reviews.

thanks,

greg k-h

