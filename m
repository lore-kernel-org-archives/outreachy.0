X-GM-THRID: 6340087850722131968
X-Received: by 10.157.50.165 with SMTP id u34mr596879otb.45.1476168420273;
        Mon, 10 Oct 2016 23:47:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.15 with SMTP id p15ls367811iod.36.gmail; Mon, 10 Oct
 2016 23:46:59 -0700 (PDT)
X-Received: by 10.107.200.203 with SMTP id y194mr799323iof.101.1476168419507;
        Mon, 10 Oct 2016 23:46:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z76si267666pff.1.2016.10.10.23.46.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 23:46:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [94.186.205.99])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BC4FE949;
	Tue, 11 Oct 2016 06:46:58 +0000 (UTC)
Date: Tue, 11 Oct 2016 08:47:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: speakup: Replace simple_strtoul with kstrtoul
Message-ID: <20161011064706.GA4428@kroah.com>
References: <20161011061851.GA5714@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011061851.GA5714@domino-MS-16Y1>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Tue, Oct 11, 2016 at 09:18:51AM +0300, Mihaela Muraru wrote:
> This patch fixes up a checkpatch.pl warning :
> WARNING: simple_strtoul is obsolete, use kstrtoul instead.

Please look at the mailing list archives for why I'm pretty sure this
does not work.  Have you verified that the code still works the same as
before by looking at how the data is handled?

thanks,

greg k-h

