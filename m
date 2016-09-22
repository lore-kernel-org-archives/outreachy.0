X-GM-THRID: 6332397835299848192
X-Received: by 10.98.206.67 with SMTP id y64mr127083pfg.20.1474528453095;
        Thu, 22 Sep 2016 00:14:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.72 with SMTP id f69ls258582ita.11.canary; Thu, 22 Sep
 2016 00:14:11 -0700 (PDT)
X-Received: by 10.36.73.15 with SMTP id z15mr2084954ita.24.1474528451736;
        Thu, 22 Sep 2016 00:14:11 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id n65si24901vkf.3.2016.09.22.00.14.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 00:14:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9DE44B12;
	Thu, 22 Sep 2016 07:14:10 +0000 (UTC)
Date: Thu, 22 Sep 2016 09:14:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8188eu: hal: rtl8188e_cmd: Use
 ether_addr_copy() instead of memcpy()
Message-ID: <20160922071416.GA22392@kroah.com>
References: <20160920125740.GA13784@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160920125740.GA13784@fireworks>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 20, 2016 at 03:57:40PM +0300, Georgiana Rodica Chelu wrote:
> The checkpatch.pl found the warning:
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are __aligned(2)
> 
> Checked if the the Ethernet addresses are __aligned(2) by using pahole
> tool. The type of pwlanhdr is struct ieee80211_hdr and pahole shows that
> addr1, addr2, and addr3 are aligned to u16.
> 
> struct ieee80211_hdr {
> 	__le16                     frame_control;        /*     0     2
> */

Your changelog here is line-wrapped, can you fix it up please?

thanks,

greg k-h

