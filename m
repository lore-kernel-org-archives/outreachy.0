X-GM-THRID: 6331560092699197440
X-Received: by 10.13.228.66 with SMTP id n63mr13981541ywe.57.1474217255984;
        Sun, 18 Sep 2016 09:47:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls9109435otc.12.gmail; Sun, 18 Sep
 2016 09:47:35 -0700 (PDT)
X-Received: by 10.129.167.65 with SMTP id e62mr12736571ywh.3.1474217255496;
        Sun, 18 Sep 2016 09:47:35 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z4si4043174pam.0.2016.09.18.09.47.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 09:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9B56F2C;
	Sun, 18 Sep 2016 16:47:34 +0000 (UTC)
Date: Sun, 18 Sep 2016 13:10:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Anchal Jain <anchalj109@gmail.com>, outreachy-kernel@googlegroups.com,
	jon.nettleton@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: olpc_dcon: Replace a bit
 shift by a use of BIT.
Message-ID: <20160918111028.GA18602@kroah.com>
References: <20160918064513.GA3810@life-desktop>
 <alpine.DEB.2.10.1609181239060.3238@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609181239060.3238@hadrien>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Sep 18, 2016 at 12:41:05PM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 18 Sep 2016, Anchal Jain wrote:
> 
> > This patch replaces bit shifting on 1 with the BIT(x) macro
> > as it's extensively used by other function in the file olpc_dcon.h .
> 
> I think you have already made this mistake before.  The macro is BIT, not
> bit.  This is a header file, so you can't compile the file directly, but
> you should be able to compile some file that includes it.

Ugh, I missed this one again, now reverted...

greg k-h

