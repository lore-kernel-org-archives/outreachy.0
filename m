X-GM-THRID: 1026580021248
X-Received: by 10.68.95.100 with SMTP id dj4mr9796911pbb.9.1424985683211;
        Thu, 26 Feb 2015 13:21:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.68 with SMTP id j65ls315399ioi.40.gmail; Thu, 26 Feb
 2015 13:21:23 -0800 (PST)
X-Received: by 10.50.154.41 with SMTP id vl9mr59085igb.6.1424985683025;
        Thu, 26 Feb 2015 13:21:23 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id nt14si240751pab.2.2015.02.26.13.21.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:21:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AAA28B50;
	Thu, 26 Feb 2015 21:21:22 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:21:22 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove brake
 statement
Message-ID: <20150226212122.GA30897@kroah.com>
References: <1424384019-21836-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424384019-21836-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 19, 2015 at 11:13:39PM +0100, Ksenija Stanojevic wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "break is not useful after a goto or return"

You mispelled "break" in your subject line :(


