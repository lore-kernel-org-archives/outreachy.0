X-GM-THRID: 6256330436125917184
X-Received: by 10.107.6.149 with SMTP id f21mr8719188ioi.25.1457733218873;
        Fri, 11 Mar 2016 13:53:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.140 with SMTP id 12ls1429864ioq.71.gmail; Fri, 11 Mar
 2016 13:53:38 -0800 (PST)
X-Received: by 10.66.244.171 with SMTP id xh11mr8995783pac.32.1457733218597;
        Fri, 11 Mar 2016 13:53:38 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h69si541472pfj.0.2016.03.11.13.53.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:53:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 52F85B36;
	Fri, 11 Mar 2016 21:53:38 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:53:38 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Initialize local
 var at declaration
Message-ID: <20160311215338.GA2776@kroah.com>
References: <1456665431-24959-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456665431-24959-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 06:47:11PM +0530, Bhumika Goyal wrote:
> This patch improves code readability by initializing local variables at
> declaration.

Not really, you are removing the check from the initialization in some
places here, making it harder to understand.

I suggest just leaving this alone, it's not anything that is needed to
do here, sorry.

greg k-h

