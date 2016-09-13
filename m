X-GM-THRID: 6329533652034125824
X-Received: by 10.98.95.71 with SMTP id t68mr504053pfb.7.1473771541514;
        Tue, 13 Sep 2016 05:59:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.65 with SMTP id a62ls133501ioj.12.gmail; Tue, 13 Sep
 2016 05:59:01 -0700 (PDT)
X-Received: by 10.107.11.88 with SMTP id v85mr514963ioi.30.1473771541007;
        Tue, 13 Sep 2016 05:59:01 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 142si3595930pfx.2.2016.09.13.05.59.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 05:59:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 42B839B5;
	Tue, 13 Sep 2016 12:59:00 +0000 (UTC)
Date: Tue, 13 Sep 2016 14:59:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: bus: Space prohibited before
 close parenthesis ')'.
Message-ID: <20160913125907.GA31694@kroah.com>
References: <20160912194345.GA2666@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160912194345.GA2666@sandhya>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 13, 2016 at 01:13:45AM +0530, Sandhya Bankar wrote:
> Space prohibited before close parenthesis ')'.This patch is found by checkpatch.pl script.

Please wrap your text lines at 72 columns and put a space after '.' like
you would for a normal sentance.

thanks,

greg k-jh

