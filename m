X-GM-THRID: 6340039489286569984
X-Received: by 10.129.92.67 with SMTP id q64mr253982ywb.34.1476278638161;
        Wed, 12 Oct 2016 06:23:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.22.69 with SMTP id 66ls1379550iow.31.gmail; Wed, 12 Oct
 2016 06:23:53 -0700 (PDT)
X-Received: by 10.107.10.139 with SMTP id 11mr341788iok.84.1476278633886;
        Wed, 12 Oct 2016 06:23:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a143si1377727pfa.2.2016.10.12.06.23.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:23:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 46EA21BB;
	Wed, 12 Oct 2016 13:23:53 +0000 (UTC)
Date: Wed, 12 Oct 2016 15:24:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/7] staging: greybus: Format block comments.
Message-ID: <20161012132401.GA22452@kroah.com>
References: <20161011031105.GA21887@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011031105.GA21887@lennorien.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Tue, Oct 11, 2016 at 12:11:05AM -0300, Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: Block comments use a trailing */ on a separate line
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/greybus/arche-apb-ctrl.c | 5 +++--
>  drivers/staging/greybus/arche-platform.c | 3 ++-
>  2 files changed, 5 insertions(+), 3 deletions(-)

Does not apply to my tree :(

Can you refresh this whole series and resend it?  Keep the acks that
were sent for some of the patches, and fix up the subject: lines.

thanks,

greg k-h

