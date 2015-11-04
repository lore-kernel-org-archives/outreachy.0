X-GM-THRID: 6212179021831077888
X-Received: by 10.182.225.230 with SMTP id rn6mr27113425obc.20.1446616571082;
        Tue, 03 Nov 2015 21:56:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.38 with SMTP id c6ls1302311igl.2.canary; Tue, 03 Nov
 2015 21:56:10 -0800 (PST)
X-Received: by 10.67.7.35 with SMTP id cz3mr26493953pad.40.1446616570700;
        Tue, 03 Nov 2015 21:56:10 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si3024202pac.2.2015.11.03.21.56.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 21:56:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (64-21-211-131.static-ip.telepacific.net [64.21.211.131])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2A6268DC;
	Wed,  4 Nov 2015 05:56:10 +0000 (UTC)
Date: Tue, 3 Nov 2015 19:39:47 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: ldlm_pool: Remove
 unneeded wrapper functions
Message-ID: <20151104033947.GA29832@kroah.com>
References: <20151101134710.GA60053@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151101134710.GA60053@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Nov 01, 2015 at 07:17:11PM +0530, Shivani Bhardwaj wrote:
> Remove the wrapper functions ldlm_pl2ns(), ldlm_pool_get_limit(),
> ldlm_pool_set_limit() and replace their calls with the functions that
> they wrapped.

Please break this up into one-patch-per-thing you replace, not a bunch
all at once.

thanks,

greg k-h

