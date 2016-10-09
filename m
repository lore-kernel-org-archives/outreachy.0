X-GM-THRID: 6339181082300121088
X-Received: by 10.157.63.238 with SMTP id i43mr7808893ote.5.1476021837521;
        Sun, 09 Oct 2016 07:03:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.10.13 with SMTP id 13ls2881053itw.16.gmail; Sun, 09 Oct
 2016 07:03:54 -0700 (PDT)
X-Received: by 10.107.19.211 with SMTP id 80mr6575167iot.90.1476021834116;
        Sun, 09 Oct 2016 07:03:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si7353628pac.1.2016.10.09.07.03.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:03:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7E6D8892;
	Sun,  9 Oct 2016 14:03:53 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:04:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] Staging: vt6655: Rename dwIoBase as iobase
Message-ID: <20161009140401.GA14623@kroah.com>
References: <20161008194005.GA18035@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008194005.GA18035@euri>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 09, 2016 at 01:10:05AM +0530, Varsha Rao wrote:
> In this patch dwIoBase is renamed as iobase.
> This is done to fix the checkpatch issue of CamelCase.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c |  52 +++---
>  drivers/staging/vt6655/baseband.h |   8 +-

This patch fails to apply in this file, perhaps you are out of sync with
my tree?

thanks,

greg k-h

