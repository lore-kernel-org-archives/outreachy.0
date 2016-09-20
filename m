X-GM-THRID: 6331778131378044928
X-Received: by 10.157.10.21 with SMTP id 21mr1149112otg.62.1474372738339;
        Tue, 20 Sep 2016 04:58:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.209 with SMTP id z200ls3982724iod.22.gmail; Tue, 20
 Sep 2016 04:58:56 -0700 (PDT)
X-Received: by 10.36.55.19 with SMTP id r19mr888914itr.16.1474372736509;
        Tue, 20 Sep 2016 04:58:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h124si7736584pfe.0.2016.09.20.04.58.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:58:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9F20B412;
	Tue, 20 Sep 2016 11:58:55 +0000 (UTC)
Date: Tue, 20 Sep 2016 13:59:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] staging: wlan-ng: use kernel preferred block
 commenting style
Message-ID: <20160920115901.GA15024@kroah.com>
References: <cover.1474231479.git.gs051095@gmail.com>
 <6b8722de3184861c05da59c3aad7cd6787079279.1474231479.git.gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6b8722de3184861c05da59c3aad7cd6787079279.1474231479.git.gs051095@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Sep 19, 2016 at 02:22:07AM +0530, Gargi Sharma wrote:
> Move the trailing markers to the next line to fix the checkpatch issue,
> trailing markers on the same line as the comment. Delete - in the multiline
> comments to follow the kernel coding style guide.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 276 ++++++++++++++++++--------------------
>  1 file changed, 129 insertions(+), 147 deletions(-)

This patch, and the 2/2 patch, does not apply to my tree at all.  Please
refresh it against the staging-testing branch and resend.

thanks,

greg k-h

