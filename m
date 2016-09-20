X-GM-THRID: 6331676159841927168
X-Received: by 10.157.19.117 with SMTP id q50mr1145905otq.54.1474371381768;
        Tue, 20 Sep 2016 04:36:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.195 with SMTP id g64ls3781596ioj.37.gmail; Tue, 20 Sep
 2016 04:36:19 -0700 (PDT)
X-Received: by 10.107.169.220 with SMTP id f89mr5527896ioj.40.1474371379313;
        Tue, 20 Sep 2016 04:36:19 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si6177518pfw.1.2016.09.20.04.36.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:36:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7EE2126C;
	Tue, 20 Sep 2016 11:36:18 +0000 (UTC)
Date: Tue, 20 Sep 2016 13:36:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, amitoj1606@gmail.com
Subject: Re: [PATCH] staging: rtl8188eu: core: Remove unnecessary parentheses
 around pointers
Message-ID: <20160920113624.GA23521@kroah.com>
References: <20160918141656.GA8430@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160918141656.GA8430@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Sep 18, 2016 at 07:47:04PM +0530, Anchal Jain wrote:
> No need for the parentheses around any pointer.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)

This patch does not apply, can you fix it up and resend?

thanks,

greg k-h

