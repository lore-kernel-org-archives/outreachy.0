X-GM-THRID: 6339102117474598912
X-Received: by 10.157.49.20 with SMTP id e20mr2447662otc.22.1475937411025;
        Sat, 08 Oct 2016 07:36:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.134 with SMTP id h6ls2807431ioi.9.gmail; Sat, 08 Oct
 2016 07:36:46 -0700 (PDT)
X-Received: by 10.107.3.24 with SMTP id 24mr6396026iod.23.1475937406606;
        Sat, 08 Oct 2016 07:36:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si6703154pac.1.2016.10.08.07.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 07:36:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A45E2899;
	Sat,  8 Oct 2016 14:36:45 +0000 (UTC)
Date: Sat, 8 Oct 2016 16:36:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] Staging: vt6655: Replace byVT3253InitTab_RFMD with
 BYVT3253INITTAB_RFMD
Message-ID: <20161008143652.GA5434@kroah.com>
References: <20161008143343.GA12126@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008143343.GA12126@euri>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 08:03:43PM +0530, Varsha Rao wrote:
> This patch fixes the checkpatch issue of CamelCase by replacing byVT3253InitTab_RFMD with BYVT3253INITTAB_RFMD.

Please wrap your changelog comments at 72 columns.

And why uppercase this variable?  That's horrid to read now, right?
Please read Documentation/CodingStyle for how to properly name variables
(hint, upper-case-only is for #defines, not variables.

> 
> Avoid CamelCase: <byVT3253InitTab_RFMD>

What does that mean?

thanks,

greg k-h

