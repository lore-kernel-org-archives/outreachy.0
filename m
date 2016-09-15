X-GM-THRID: 6330577059983654912
X-Received: by 10.129.167.65 with SMTP id e62mr6924557ywh.3.1473960318995;
        Thu, 15 Sep 2016 10:25:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.112 with SMTP id 103ls3776353oti.11.gmail; Thu, 15 Sep
 2016 10:25:18 -0700 (PDT)
X-Received: by 10.129.79.144 with SMTP id d138mr7247305ywb.19.1473960318444;
        Thu, 15 Sep 2016 10:25:18 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z4si1442270pam.0.2016.09.15.10.25.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 10:25:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8DE919B4;
	Thu, 15 Sep 2016 17:25:17 +0000 (UTC)
Date: Thu, 15 Sep 2016 19:25:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jon.nettleton@gmail.com
Subject: Re: [PATCH v2] staging: olpc_dcon: Prefer using the BIT macro
Message-ID: <20160915172523.GA20506@kroah.com>
References: <20160915154838.GA7175@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160915154838.GA7175@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 09:18:46PM +0530, Anchal Jain wrote:
> This patch fix the CHECK
> CHECK: Prefer using the BIT macro
> detected by checkpatch.pl
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
> 	changes in v2:
> 		-modify commit message

You're previous commit message was a bit better :)

And again, did you build test this?  Just looking at it, I do not think
it will...

thanks,

greg k-h

