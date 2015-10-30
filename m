X-GM-THRID: 6211442001355735040
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.31.153.195 with SMTP id b186mr6327736vke.5.1446214708846;
        Fri, 30 Oct 2015 07:18:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.38 with SMTP id rt6ls186513igb.25.canary; Fri, 30 Oct
 2015 07:18:28 -0700 (PDT)
X-Received: by 10.107.160.8 with SMTP id j8mr7564743ioe.4.1446214708420;
        Fri, 30 Oct 2015 07:18:28 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iz5si638013pbc.2.2015.10.30.07.18.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 07:18:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 094F925A;
	Fri, 30 Oct 2015 14:18:28 +0000 (UTC)
Date: Fri, 30 Oct 2015 07:18:26 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Question regarding patches
Message-ID: <20151030141826.GA25795@kroah.com>
References: <59a30a98-4f7f-4845-a048-dbf4d88af8fd@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <59a30a98-4f7f-4845-a048-dbf4d88af8fd@googlegroups.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 30, 2015 at 07:07:18AM -0700, Shraddha Barke wrote:
> I want to do 2 changes in same header file - 1. Remove unused functions and 2.
> Remove the function declarations of static functions.
> Should I split this up into separate patches considering that it is the same
> header?

Yes, make it a patch series, showing which patch should be applied in
which order.

hope this helps,

greg k-h

