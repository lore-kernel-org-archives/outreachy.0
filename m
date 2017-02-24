X-GM-THRID: 6388519093491728384
X-Received: by 10.107.191.68 with SMTP id p65mr1440901iof.102.1487956638157;
        Fri, 24 Feb 2017 09:17:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls7869693otc.30.gmail; Fri, 24 Feb
 2017 09:17:17 -0800 (PST)
X-Received: by 10.157.31.102 with SMTP id x35mr1261333otx.61.1487956637856;
        Fri, 24 Feb 2017 09:17:17 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h130si1654491pfe.1.2017.02.24.09.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:17:17 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4795AA67;
	Fri, 24 Feb 2017 17:17:17 +0000 (UTC)
Date: Fri, 24 Feb 2017 18:17:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 6/6] staging: rtl8192e: Removed unnecessary parentheses
Message-ID: <20170224171711.GA3159@kroah.com>
References: <20170220171147.GA15849@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170220171147.GA15849@singhal-Inspiron-5558>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Mon, Feb 20, 2017 at 10:41:47PM +0530, simran singhal wrote:
> Extra parentheses were causing checkpatch issues
> and were removed.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  
>  v2:
>    -Removed parentheses around argument of cast
>    -Removed cast

I can't keep track of random patches in the middle of a series that is
updated.

Please fix up and resend the whole series, as a series, that are linked
together in an email client, not as independent emails (i.e. use
git-send-email properly).

thanks,

greg k-h

