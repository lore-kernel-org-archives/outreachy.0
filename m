X-GM-THRID: 6260894981838340096
X-Received: by 10.66.221.100 with SMTP id qd4mr8669927pac.0.1457730069126;
        Fri, 11 Mar 2016 13:01:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.214 with SMTP id 80ls2963967qgj.83.gmail; Fri, 11 Mar
 2016 13:01:07 -0800 (PST)
X-Received: by 10.31.174.2 with SMTP id x2mr8650003vke.13.1457730067832;
        Fri, 11 Mar 2016 13:01:07 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si1282823pab.2.2016.03.11.13.01.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:01:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 513F4D42;
	Fri, 11 Mar 2016 21:01:07 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:01:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCHv2] staging: octeon: Use type int
 instead of int32_t
Message-ID: <20160311210106.GA28061@kroah.com>
References: <20160311203000.GA4609@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160311203000.GA4609@sonyv>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Mar 11, 2016 at 09:30:04PM +0100, Laura Garcia Liebana wrote:
> Prefer the use of type int instead of int32_t. Checkpatch detected these
> issues.

Your patch does not reflect this changelog at all :(


