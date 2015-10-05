X-GM-THRID: 6202030500933009408
X-Received: by 10.50.20.227 with SMTP id q3mr11470679ige.11.1444038798688;
        Mon, 05 Oct 2015 02:53:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.98 with SMTP id q89ls2585626qgd.71.gmail; Mon, 05 Oct
 2015 02:53:16 -0700 (PDT)
X-Received: by 10.129.39.87 with SMTP id n84mr25956674ywn.4.1444038796921;
        Mon, 05 Oct 2015 02:53:16 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r189si2346079ywf.0.2015.10.05.02.53.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 02:53:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [166.170.36.102])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2DF8D1478;
	Mon,  5 Oct 2015 09:53:11 +0000 (UTC)
Date: Mon, 5 Oct 2015 10:53:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: wilc1000:
 wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
Message-ID: <20151005095302.GA5600@kroah.com>
References: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com>
 <1444026634-14551-2-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444026634-14551-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 05, 2015 at 12:00:33PM +0530, Shraddha Barke wrote:
> Use eth_zero_addr to assign the zero address to the given address
> array instead of memset when second argument is address of zero.

How do you know that this is safe to do?  You need to document the heck
out of this and why you know this is ok.  See other patches that do this
for examples of what you need to do.

thanks,

greg k-h

