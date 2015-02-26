X-GM-THRID: 4176907075584
X-Received: by 10.182.112.167 with SMTP id ir7mr10891708obb.29.1424993467450;
        Thu, 26 Feb 2015 15:31:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.120.161 with SMTP id ld1ls148438obb.83.gmail; Thu, 26 Feb
 2015 15:31:07 -0800 (PST)
X-Received: by 10.182.79.168 with SMTP id k8mr11127554obx.49.1424993467228;
        Thu, 26 Feb 2015 15:31:07 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si310442pbc.0.2015.02.26.15.31.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:31:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E08A0B32;
	Thu, 26 Feb 2015 23:31:06 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:31:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lustre: mgc: Delete
 the excess white space
Message-ID: <20150226233106.GA3020@kroah.com>
References: <1424991360-12515-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1424991360-12515-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 12:56:00AM +0200, Hatice ERT�RK wrote:
> Don't "foo *		bar" be "foo *bar". That's why delete the excess
> white space.

I can't understand the first sentance here, please reword it.

thanks,

greg k-h

