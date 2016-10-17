X-GM-THRID: 6341087993048072192
X-Received: by 10.200.50.52 with SMTP id x49mr6637726qta.45.1476690729319;
        Mon, 17 Oct 2016 00:52:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.147 with SMTP id u19ls12351771ota.0.gmail; Mon, 17 Oct
 2016 00:52:09 -0700 (PDT)
X-Received: by 10.157.44.5 with SMTP id f5mr1750536otb.133.1476690728997;
        Mon, 17 Oct 2016 00:52:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si4885722par.0.2016.10.17.00.52.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 00:52:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 42CC471;
	Mon, 17 Oct 2016 07:52:08 +0000 (UTC)
Date: Mon, 17 Oct 2016 09:52:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vt6655: Removes unused
 macros.
Message-ID: <20161017075216.GA15020@kroah.com>
References: <1476399126-20282-1-git-send-email-rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1476399126-20282-1-git-send-email-rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Fri, Oct 14, 2016 at 04:22:06AM +0530, Varsha Rao wrote:
> This patch removes the macros BBvClearFOE and BBvSetFOE. As they are not
> used anywhere else.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  Changes in v2:
>   -Both the macros are removed completely instead of solving camelcase issue.

Did not apply as I think someone else already did this before you did.

thanks,

greg k-h

