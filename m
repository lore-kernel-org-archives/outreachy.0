X-GM-THRID: 6250067479758897152
X-Received: by 10.129.71.85 with SMTP id u82mr49675038ywa.9.1455248191819;
        Thu, 11 Feb 2016 19:36:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.202 with SMTP id 68ls1234969qgn.3.gmail; Thu, 11 Feb
 2016 19:36:31 -0800 (PST)
X-Received: by 10.13.227.133 with SMTP id m127mr44662976ywe.1.1455248191135;
        Thu, 11 Feb 2016 19:36:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tn7si1319118pac.1.2016.02.11.19.36.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:36:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C9E2D101C;
	Fri, 12 Feb 2016 03:36:30 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:36:30 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Remove unneeded
 parentheses on the right hand side of assignment
Message-ID: <20160212033630.GA19873@kroah.com>
References: <20160211211314.GA4118@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160211211314.GA4118@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 11, 2016 at 04:13:14PM -0500, Janani Ravichandran wrote:
> Remove parentheses around the right hand side of assignments as they are
> not needed. Semantic patch used:

<snip>

The subject you used was identical to the previous patch you sent, yet
it modified different things, so I wouldn't be able to take this one.

Try putting the filename in the Subject: line if you do this again,
something like:
	Subject: [PATCH] staging: unisys: visorinput.c: Remove...


thanks,

greg k-h

