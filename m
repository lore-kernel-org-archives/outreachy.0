X-GM-THRID: 6262248427873107968
X-Received: by 10.66.236.199 with SMTP id uw7mr24867704pac.47.1458593742516;
        Mon, 21 Mar 2016 13:55:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.136 with SMTP id o8ls946190qge.46.gmail; Mon, 21 Mar
 2016 13:55:41 -0700 (PDT)
X-Received: by 10.13.227.133 with SMTP id m127mr23565042ywe.1.1458593741851;
        Mon, 21 Mar 2016 13:55:41 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si4244523pac.1.2016.03.21.13.55.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:55:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 50FDC74;
	Mon, 21 Mar 2016 20:55:41 +0000 (UTC)
Date: Mon, 21 Mar 2016 16:55:40 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/6] staging: rtl8188eu:
 usb_halinit.c: fixed comment blocks
Message-ID: <20160321205540.GC25708@kroah.com>
References: <cover.1458043217.git.juliana.orod@gmail.com>
 <f5ff61beecc688c4a7482b38231ffd3b7f6ecf27.1458043217.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5ff61beecc688c4a7482b38231ffd3b7f6ecf27.1458043217.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 15, 2016 at 09:03:52AM -0300, Juliana Rodrigues wrote:
> This patch fixes checkpatch warnings related to
> malformed comments and comments over 80 characters limit.
> It also removes some clearly unnecessary/old ones
> and fixes minor check issues.

Again, only do one thing per patch.  I'll stop reviewing here and let
you respin this series...

thanks,

greg k-h

