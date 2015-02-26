X-GM-THRID: 1526974119936
X-Received: by 10.236.223.41 with SMTP id u39mr10482818yhp.49.1424995117331;
        Thu, 26 Feb 2015 15:58:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.41 with SMTP id w38ls312256qgw.85.gmail; Thu, 26 Feb
 2015 15:58:37 -0800 (PST)
X-Received: by 10.236.40.112 with SMTP id e76mr11595229yhb.5.1424995117053;
        Thu, 26 Feb 2015 15:58:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bx1si280112pdb.2.2015.02.26.15.58.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:58:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A31E0B0A;
	Thu, 26 Feb 2015 23:58:36 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:58:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: =?utf-8?Q?Ay=C5=9Fe_Melike_Yurto=C4=9Flu?= <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/4] Staging: lustre: Deleted space
 prohibited between function name and open parenthesis
Message-ID: <20150226235836.GA11653@kroah.com>
References: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>
 <20150226182002.GA7025@kroah.com>
 <CAPYvaxM7KhNmzThSQe285NmBv7v-zDkGFMgqT99ywdjivdTHqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPYvaxM7KhNmzThSQe285NmBv7v-zDkGFMgqT99ywdjivdTHqA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)


A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top


On Fri, Feb 27, 2015 at 01:40:46AM +0200, Ayşe Melike Yurtoğlu wrote:
> I compile patch before sending. I wonder , am i doing  it wrong?
> I'm doing the compiling process as follows:
> make drivers/staging/lustre/lnet/klnds/socklnd/

A simple:
	make
should be all that is needed to rebuild any changed files.

I didn't build this, and really don't even remember what this patch was,
given that I just reviewed 700+ patches in the past few hours and have
the short-term memory of a squirrel.

If you think the patch is correct, great, please resend.

thanks,

greg k-h

