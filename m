X-GM-THRID: 6259752100928946176
X-Received: by 10.129.3.69 with SMTP id 66mr7963326ywd.41.1457719737537;
        Fri, 11 Mar 2016 10:08:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.19 with SMTP id k19ls1212530ioe.87.gmail; Fri, 11 Mar
 2016 10:08:57 -0800 (PST)
X-Received: by 10.50.87.7 with SMTP id t7mr2927485igz.11.1457719737195;
        Fri, 11 Mar 2016 10:08:57 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si1437266pfa.2.2016.03.11.10.08.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:08:57 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E0A9AC18;
	Fri, 11 Mar 2016 18:08:56 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:08:56 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: slicoss: Use sizeof
 structure *pointer over sizeof structure in kmalloc()/kzalloc().
Message-ID: <20160311180856.GB1516@kroah.com>
References: <20160308103537.GA3305@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160308103537.GA3305@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 08, 2016 at 04:05:37PM +0530, Sandhya Bankar wrote:
> Use sizeof structure *pointer over sizeof structure in kmalloc()/kzalloc().
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v2:
> * No change.
> *Compile this patch to check nothing is broken.

Does not apply to my tree :(


