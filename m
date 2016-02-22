X-GM-THRID: 6254092556531924992
X-Received: by 10.112.16.34 with SMTP id c2mr3713391lbd.19.1456175552429;
        Mon, 22 Feb 2016 13:12:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.138.8 with SMTP id m8ls396646lfd.21.gmail; Mon, 22 Feb 2016
 13:12:31 -0800 (PST)
X-Received: by 10.112.29.69 with SMTP id i5mr3620768lbh.15.1456175551579;
        Mon, 22 Feb 2016 13:12:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w128si978306wmd.0.2016.02.22.13.12.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 13:12:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3CCC3C7B;
	Mon, 22 Feb 2016 21:12:30 +0000 (UTC)
Date: Mon, 22 Feb 2016 13:12:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: obdclass: Replace
 simple_strtoul with kstrtoul
Message-ID: <20160222211229.GC5849@kroah.com>
References: <20160222123259.GA24119@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160222123259.GA24119@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 22, 2016 at 06:02:59PM +0530, Amitoj Kaur Chawla wrote:
> Replace obsolete simple_strtoul with kstrtoul.
> The Coccinelle semantic patch used to make this change is as follows:
> 
> // <smpl>
> @@
> unsigned long l;
> expression e,f,g;
> @@
> - l = simple_strtoul(e, &f, g)
> + kstrtoul(e, g, &l)
> // </smpl>

As you are finding out, it's not as simple as this for this type of
conversion, which is why we haven't just swept the whole kernel tree by
now and done this :(

sorry,

greg k-h

