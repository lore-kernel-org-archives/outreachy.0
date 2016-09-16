X-GM-THRID: 6330674938515554304
X-Received: by 10.129.155.145 with SMTP id s139mr9870375ywg.31.1474012224315;
        Fri, 16 Sep 2016 00:50:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.247 with SMTP id t52ls5652079otf.28.gmail; Fri, 16 Sep
 2016 00:50:23 -0700 (PDT)
X-Received: by 10.129.76.18 with SMTP id z18mr9176160ywa.26.1474012223926;
        Fri, 16 Sep 2016 00:50:23 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si2184334pab.2.2016.09.16.00.50.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 00:50:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1ED0C8D7;
	Fri, 16 Sep 2016 07:50:22 +0000 (UTC)
Date: Fri, 16 Sep 2016 09:50:28 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>
Subject: Re: [PATCH 5/5] staging: sm750fb: Add spaces around '|'
Message-ID: <20160916075028.GA22385@kroah.com>
References: <cover.1473975000.git.aquannie@gmail.com>
 <caa113f19cf06f4e4a0a911a0c6718da0ee2d857.1473975000.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <caa113f19cf06f4e4a0a911a0c6718da0ee2d857.1473975000.git.aquannie@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 03:03:52AM +0530, Rehas Sachdeva wrote:
> Adds spaces on either side of a '|'. Issue dound by checkpatch.
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_display.h | 44 ++++++++++++++++----------------
>  1 file changed, 22 insertions(+), 22 deletions(-)

This patch didn't apply cleanly, can you refresh it against my latest
tree and resend?

thanks,

greg k-h

