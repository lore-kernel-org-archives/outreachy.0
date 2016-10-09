X-GM-THRID: 6339043757720076288
X-Received: by 10.237.36.107 with SMTP id s40mr4684956qtc.88.1476021071031;
        Sun, 09 Oct 2016 06:51:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.139 with SMTP id d11ls2693451ioj.20.gmail; Sun, 09 Oct
 2016 06:51:06 -0700 (PDT)
X-Received: by 10.36.115.194 with SMTP id y185mr2090041itb.24.1476021066589;
        Sun, 09 Oct 2016 06:51:06 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 80si3703459pfw.0.2016.10.09.06.51.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 06:51:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C178578D;
	Sun,  9 Oct 2016 13:51:05 +0000 (UTC)
Date: Sun, 9 Oct 2016 15:51:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] staging: vt6655: Removes the FSF mailing address.
Message-ID: <20161009135113.GB30914@kroah.com>
References: <20161008104710.GA4950@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008104710.GA4950@euri>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 04:17:10PM +0530, Varsha Rao wrote:
> This patch fixes the checkpatch issue by removing the Free Software Foundation's mailing address from the sample GPL notice.Because the FSF has changed address in the past, and may change again.Linux already includes a copy of the GPL.
> 

Please wrap your changelog comments at 72 columns.

thanks,

greg k-h

