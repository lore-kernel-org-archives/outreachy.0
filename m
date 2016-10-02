X-GM-THRID: 6335855397011718144
X-Received: by 10.66.8.66 with SMTP id p2mr5002911paa.11.1475419863501;
        Sun, 02 Oct 2016 07:51:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.152.6 with SMTP id n6ls1737030itd.12.canary; Sun, 02 Oct
 2016 07:50:59 -0700 (PDT)
X-Received: by 10.98.100.208 with SMTP id y199mr4715111pfb.15.1475419859045;
        Sun, 02 Oct 2016 07:50:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si1882601pac.1.2016.10.02.07.50.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 07:50:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5EFDF78D;
	Sun,  2 Oct 2016 14:50:58 +0000 (UTC)
Date: Sun, 2 Oct 2016 16:51:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com,
	daniel.baluta@intel.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com
Subject: Re: [PATCH] staging: sm750fb: replace local macro w builtin fn
Message-ID: <20161002145103.GA8867@kroah.com>
References: <20160929203443.GA5594@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160929203443.GA5594@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 29, 2016 at 01:34:46PM -0700, Elizabeth Ferdman wrote:
> Drop a local macro definition and replace its uses with a standard
> macro function from linux/kernel.h.

What is the "w" in the subject line?

And put the function name you are using in the subject as well, to show
that this is using DIV_ROUND_CLOSEST.  It needs to be somewhere at the
very least...

thanks,

greg k-h

