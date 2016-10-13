X-GM-THRID: 6339053517033963520
X-Received: by 10.36.211.76 with SMTP id n73mr2129505itg.30.1476361495153;
        Thu, 13 Oct 2016 05:24:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.105 with SMTP id 96ls5721355ott.41.gmail; Thu, 13 Oct
 2016 05:24:54 -0700 (PDT)
X-Received: by 10.157.41.3 with SMTP id d3mr1691257otb.69.1476361494835;
        Thu, 13 Oct 2016 05:24:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 203si2307244pfw.0.2016.10.13.05.24.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 05:24:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4114C7AA;
	Thu, 13 Oct 2016 12:24:53 +0000 (UTC)
Date: Thu, 13 Oct 2016 14:25:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
Message-ID: <20161013122502.GB15134@kroah.com>
References: <20161008112506.GA12694@euri>
 <alpine.DEB.2.10.1610081940270.3259@hadrien>
 <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com>
 <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com>
 <alpine.DEB.2.10.1610091553500.5891@hadrien>
 <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com>
 <alpine.DEB.2.10.1610112221080.3192@hadrien>
 <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com>
 <alpine.DEB.2.10.1610120710390.3282@hadrien>
 <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Thu, Oct 13, 2016 at 05:18:06AM -0700, Varsha Rao wrote:
> 
> This patch fixes the checkpatch issue by replacing BBvClearFOE with
> bbvclearfoe.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
> �drivers/staging/vt6655/
> baseband.h | 2 +-
> �1 file changed, 1 insertion(+), 1 deletion(-)

It's also sent in html format which does not work :(

