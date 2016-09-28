X-GM-THRID: 6334501758545428480
X-Received: by 10.13.209.3 with SMTP id t3mr203515ywd.133.1475042353938;
        Tue, 27 Sep 2016 22:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.77 with SMTP id p74ls147543iod.9.gmail; Tue, 27 Sep
 2016 22:59:12 -0700 (PDT)
X-Received: by 10.66.240.67 with SMTP id vy3mr6338726pac.45.1475042352102;
        Tue, 27 Sep 2016 22:59:12 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si1891620pab.1.2016.09.27.22.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 22:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 760C89C;
	Wed, 28 Sep 2016 05:59:11 +0000 (UTC)
Date: Wed, 28 Sep 2016 07:59:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Bhumika Goyal <bhumirks@gmail.com>,
	outreachy-kernel@googlegroups.com, knaack.h@gmx.de,
	pmeerw@pmeerw.net
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] Staging: iio: adc: constify
 attribute_group structures
Message-ID: <20160928055916.GA23304@kroah.com>
References: <1474866099-12282-1-git-send-email-bhumirks@gmail.com>
 <1474866099-12282-2-git-send-email-bhumirks@gmail.com>
 <10137f4a-6794-e043-1525-e4152b568ec1@metafoo.de>
 <d6a775f3-b378-3f3b-be56-78549975530a@kernel.org>
 <bf0c5fb2-8b67-320c-e164-01c37e5ba3e7@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf0c5fb2-8b67-320c-e164-01c37e5ba3e7@metafoo.de>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 27, 2016 at 09:26:26PM +0200, Lars-Peter Clausen wrote:
> On 09/27/2016 09:22 PM, Jonathan Cameron wrote:
> >>
> >> Looks good, thanks. Just as something to remember for future patches, if you
> >> send a patch for a single driver it is best to mention the driver in the
> >> subject. Usually you can also leave out the sub-subsystem. So in this case
> >> something like "staging:iio:ad7280a: ..."
> >>
> >> Acked-by: Lars-Peter Clausen <lars@metafoo.de>
> > Applied to the togreg branch of iio.git and pushed out as testing.
> 
> Greg fast-tracked this one, it's already in staging-testing.

That's fine, git handles merges wonderfully :)

