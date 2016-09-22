X-GM-THRID: 6332934688128106496
X-Received: by 10.200.36.41 with SMTP id c38mr111063qtc.21.1474527648890;
        Thu, 22 Sep 2016 00:00:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.86 with SMTP id v83ls3295886ioi.3.gmail; Thu, 22 Sep
 2016 00:00:47 -0700 (PDT)
X-Received: by 10.36.14.84 with SMTP id 81mr212468ite.7.1474527647573;
        Thu, 22 Sep 2016 00:00:47 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 70si26836vkd.0.2016.09.22.00.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 00:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 63600B02;
	Thu, 22 Sep 2016 07:00:46 +0000 (UTC)
Date: Thu, 22 Sep 2016 09:00:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Align arguments
 with open parenthesis
Message-ID: <20160922070051.GA16666@kroah.com>
References: <20160921234053.GA2534@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160921234053.GA2534@katie-Inspiron-5748>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 21, 2016 at 04:40:53PM -0700, Katie Dunne wrote:
> Issue found by checkpatch.
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/wlan-ng/prism2fw.c | 49 ++++++++++++++++++++------------------
>  1 file changed, 26 insertions(+), 23 deletions(-)

You sent me two patches for this same file, but I don't know which to
apply first.  Please resend this as a series so that I have a chance to
be able to apply them correctly.

thanks,

greg k-h

