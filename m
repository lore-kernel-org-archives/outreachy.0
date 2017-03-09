X-GM-THRID: 6394986223504457728
X-Received: by 10.99.66.6 with SMTP id p6mr5473132pga.20.1489066620213;
        Thu, 09 Mar 2017 05:37:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls1903617ota.27.gmail; Thu, 09 Mar
 2017 05:36:59 -0800 (PST)
X-Received: by 10.157.61.5 with SMTP id a5mr5177765otc.128.1489066619811;
        Thu, 09 Mar 2017 05:36:59 -0800 (PST)
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id d67si691414ywb.3.2017.03.09.05.36.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 05:36:59 -0800 (PST)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 790D720B9F;
	Thu,  9 Mar 2017 08:36:59 -0500 (EST)
Received: from frontend2 ([10.202.2.161])
  by compute6.internal (MEProxy); Thu, 09 Mar 2017 08:36:59 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=Ph/X8sKYbQmFI5
	j9wJt+b8JzL5Q=; b=SdCCrxQ33Xs+CKi4EfCJUsiGG4oEVJulUPjpA+AnYUN35n
	khPkjeq68eVwZapBG1b6R55cxx+bPO3BXoVkSuHQimCGpPSC1wPDeaNE6hOkhjGN
	zeIIdN7u30jx/q0D0J4m+dCNVrBn3SyJizbFDAYLkHNn4Y3wOSz9x0iN8RU3s=
X-ME-Sender: <xms:e1rBWNZ-hmEBX0LsC1-262oBYa1gsXWtkOBR6sozP36JWbDfn4oDmA>
X-Sasl-enc: r+MVKVZ2F0VmcqVVoaObm3Ow4T0qmjN5Hp2TS+bnE+tV 1489066619
Received: from localhost (lfbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.messagingengine.com (Postfix) with ESMTPA id 1D161245FD;
	Thu,  9 Mar 2017 08:36:59 -0500 (EST)
Date: Thu, 9 Mar 2017 14:36:51 +0100
From: Greg KH <greg@kroah.com>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: bcm2835-camera: replace
 get_msg_context() with kzalloc
Message-ID: <20170309133651.GA7082@kroah.com>
References: <cover.1488948214.git.aishpant@gmail.com>
 <cde948e8a5e5fcb53544d81018d67d48b7e0d141.1488948214.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cde948e8a5e5fcb53544d81018d67d48b7e0d141.1488948214.git.aishpant@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 08, 2017 at 10:14:28AM +0530, Aishwarya Pant wrote:
> This patch replaces function get_msg_context(..) with a kzalloc at
> the caller. This is safe as the only usage found in mmal-vchiq.c has been
> refactored.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  .../staging/vc04_services/bcm2835-camera/mmal-vchiq.c    | 16 ++--------------
>  1 file changed, 2 insertions(+), 14 deletions(-)

This, and the 2/2 patch do not apply at all to my tree :(

Please fix up and resend.

thanks,

greg k-h

