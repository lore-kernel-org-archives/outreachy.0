X-GM-THRID: 6330560970566402048
X-Received: by 10.107.9.139 with SMTP id 11mr5749185ioj.51.1474372273743;
        Tue, 20 Sep 2016 04:51:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls1579410otc.12.gmail; Tue, 20 Sep
 2016 04:51:13 -0700 (PDT)
X-Received: by 10.129.21.214 with SMTP id 205mr5647585ywv.164.1474372273450;
        Tue, 20 Sep 2016 04:51:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z4si6018912pam.0.2016.09.20.04.51.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:51:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B6342722;
	Tue, 20 Sep 2016 11:51:12 +0000 (UTC)
Date: Tue, 20 Sep 2016 13:51:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ronald Rojas <ronladred@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v7] Staging: octeon: Fix blank lines warnings
Message-ID: <20160920115119.GA14587@kroah.com>
References: <20160918230417.GA5289@fedora.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160918230417.GA5289@fedora.home>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Sep 18, 2016 at 07:04:19PM -0400, Ronald Rojas wrote:
> Fixes several of the checkpatch.pl warnings to
> not use multiple blank lines
> 
> Signed-off-by: Ronald Rojas <ronladred@gmail.com>
> ---
> v7: changed to staging tree instead of torvalds tree
>  drivers/staging/octeon/ethernet.c | 2 --
>  1 file changed, 2 deletions(-)

What branch are you using?  This still doesnt apply.  Please use the
staging-next or better yet, staging-testing.

thanks,

greg k-h

