X-GM-THRID: 6330560970566402048
X-Received: by 10.237.53.90 with SMTP id b26mr3505185qte.8.1473960809352;
        Thu, 15 Sep 2016 10:33:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls4173487otc.12.gmail; Thu, 15 Sep
 2016 10:33:29 -0700 (PDT)
X-Received: by 10.237.45.39 with SMTP id h36mr676325qtd.14.1473960808049;
        Thu, 15 Sep 2016 10:33:28 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si1424889pab.2.2016.09.15.10.33.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 10:33:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3E278941;
	Thu, 15 Sep 2016 17:33:26 +0000 (UTC)
Date: Thu, 15 Sep 2016 19:33:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ronald Rojas <ronladred@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v6] Staging: octeon: Fix blank lines warnings
Message-ID: <20160915173333.GA30131@kroah.com>
References: <20160915140941.GA22631@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160915140941.GA22631@fedora>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 10:09:43AM -0400, Ronald Rojas wrote:
> Fixes several of the checkpatch.pl warnings to
> not use multiple blank lines
> 
> Signed-off-by: Ronald Rojas <ronladred@gmail.com>
> ---
> v6 changes: Corrected patch name and commit log
> 
>  drivers/staging/octeon/ethernet.c | 3 ---
>  1 file changed, 3 deletions(-)

This doesn't apply to my tree, are you sure you are working against the
staging-next branch of the staging.git tree?

thanks,

greg k-h

