X-GM-THRID: 6253388834415837184
X-Received: by 10.112.156.33 with SMTP id wb1mr2621963lbb.7.1456010905656;
        Sat, 20 Feb 2016 15:28:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.215 with SMTP id 84ls160571lfv.57.gmail; Sat, 20 Feb
 2016 15:28:25 -0800 (PST)
X-Received: by 10.112.135.234 with SMTP id pv10mr2557715lbb.24.1456010905012;
        Sat, 20 Feb 2016 15:28:25 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v197si587207wmv.1.2016.02.20.15.28.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 15:28:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A4BEE1028;
	Sat, 20 Feb 2016 23:28:23 +0000 (UTC)
Date: Sat, 20 Feb 2016 15:28:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: slicoss: Remove __func__
 from dev_err
Message-ID: <20160220232809.GC13165@kroah.com>
References: <1455980536-16152-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455980536-16152-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 20, 2016 at 08:32:16PM +0530, Bhumika Goyal wrote:
> This patch removes __func__ argument from dev_err as dev_err includes
> the function name in the log printout, so there is no need to
> include it  manually.

Same thing here, I can't take this change.


