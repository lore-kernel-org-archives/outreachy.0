X-GM-THRID: 3079070023680
X-Received: by 10.50.85.18 with SMTP id d18mr452595igz.3.1424992207276;
        Thu, 26 Feb 2015 15:10:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.191.36 with SMTP id gv4ls149063obc.96.gmail; Thu, 26 Feb
 2015 15:10:07 -0800 (PST)
X-Received: by 10.182.18.102 with SMTP id v6mr10932933obd.11.1424992207046;
        Thu, 26 Feb 2015 15:10:07 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si305617pac.0.2015.02.26.15.10.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:10:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BC949B3F;
	Thu, 26 Feb 2015 23:10:06 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:10:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: rtl8712: replace
 memcpy() by ether_addr_copy()
Message-ID: <20150226231006.GA10059@kroah.com>
References: <1424724987-16511-1-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424724987-16511-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Feb 23, 2015 at 10:56:26PM +0200, Melike Yurtoglu wrote:
> Replace memcpy with ether_addr_copy, as the ethernet addresses are
> aligned.  This change was made using Coccinelle, as follows.

<snip>

Someone already sent in this patch before you did, so I can't apply your
versions, sorry :(


