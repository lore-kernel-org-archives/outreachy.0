X-GM-THRID: 6264247085046956032
X-Received: by 10.50.13.101 with SMTP id g5mr12408750igc.6.1458588460325;
        Mon, 21 Mar 2016 12:27:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.37 with SMTP id c34ls3868608qgc.26.gmail; Mon, 21 Mar
 2016 12:27:39 -0700 (PDT)
X-Received: by 10.140.101.242 with SMTP id u105mr24816357qge.12.1458588459635;
        Mon, 21 Mar 2016 12:27:39 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si4153505pfa.2.2016.03.21.12.27.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:27:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1CE482C;
	Mon, 21 Mar 2016 19:27:39 +0000 (UTC)
Date: Mon, 21 Mar 2016 15:27:37 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: lustre: rpc: Use sizeof
 type *pointer instead of sizeof type.
Message-ID: <20160321192737.GA19063@kroah.com>
References: <cover.1458482776.git.bankarsandhya512@gmail.com>
 <76c8444c410c148c89a8e76d8ef0dbbf486d2e8f.1458482776.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <76c8444c410c148c89a8e76d8ef0dbbf486d2e8f.1458482776.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 20, 2016 at 07:53:17PM +0530, Sandhya Bankar wrote:
> Use sizeof type *pointer instead of sizeof type.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lnet/selftest/rpc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You already sent this patch.  Or you sent this again with changes, yet
did not provide a 'v2' marking and description of what changed.

I'm going to drop both series, please resend in a format that explains
what changed.

thanks,

greg k-h

