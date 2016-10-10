X-GM-THRID: 6339736406394404864
X-Received: by 10.107.35.83 with SMTP id j80mr1081854ioj.43.1476085439527;
        Mon, 10 Oct 2016 00:43:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls9726039otc.1.gmail; Mon, 10 Oct
 2016 00:43:59 -0700 (PDT)
X-Received: by 10.129.108.132 with SMTP id h126mr8445100ywc.173.1476085439191;
        Mon, 10 Oct 2016 00:43:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si8127149pab.2.2016.10.10.00.43.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 00:43:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 69CA42C;
	Mon, 10 Oct 2016 07:43:58 +0000 (UTC)
Date: Mon, 10 Oct 2016 09:44:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Stagin: wilc1000: Use
 ether_addr_copy() rather memcpy()
Message-ID: <20161010074407.GA10568@kroah.com>
References: <20161010073505.GA7227@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161010073505.GA7227@domino-MS-16Y1>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Oct 10, 2016 at 10:35:05AM +0300, Mihaela Muraru wrote:
> This patch fixs up a issue found it by  checkpatch.pl tool.
> 
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are __aligned(2).
> 
> Check if the addresses are aligned with pahole.
> 
> struct sta_inactive_t {
> 	u8                         mac[6];               /*     0     6
> */

Odd wrapping of changelog comments, please fix this up and resend.

And also, your subject line has a typo :)

thanks,

greg k-h

