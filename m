X-GM-THRID: 6387808706287894528
X-Received: by 10.157.32.105 with SMTP id n96mr1533754ota.8.1487282082748;
        Thu, 16 Feb 2017 13:54:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.1 with SMTP id f1ls876574iof.6.gmail; Thu, 16 Feb 2017
 13:54:42 -0800 (PST)
X-Received: by 10.99.135.193 with SMTP id i184mr1469422pge.90.1487282082050;
        Thu, 16 Feb 2017 13:54:42 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z73si348029pfa.2.2017.02.16.13.54.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 13:54:42 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.55.107.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AB754258;
	Thu, 16 Feb 2017 21:54:41 +0000 (UTC)
Date: Thu, 16 Feb 2017 13:54:40 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: drivers to avoid?
Message-ID: <20170216215440.GA10588@kroah.com>
References: <alpine.DEB.2.20.1702162139150.2121@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1702162139150.2121@hadrien>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Thu, Feb 16, 2017 at 09:40:10PM +0100, Julia Lawall wrote:
> Greg,
> 
> Are there any staging drivers to avoid at this time?

Nope, all should be good.  During the merge window (the next 2 weeks) I
will queue things up in the staging-testing branch, so people should use
that, but note that it will be rebased at times, so things will get
tricky until 4.11-rc1 is out.

If anyone has any specific questions about this, please let me know.

thanks,

greg k-h

