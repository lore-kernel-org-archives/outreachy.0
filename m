X-GM-THRID: 6390690931050283008
X-Received: by 10.157.38.162 with SMTP id l31mr1059500otb.126.1487949876016;
        Fri, 24 Feb 2017 07:24:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.105 with SMTP id r38ls7526124otd.15.gmail; Fri, 24 Feb
 2017 07:24:35 -0800 (PST)
X-Received: by 10.157.46.82 with SMTP id c18mr992106otd.140.1487949875581;
        Fri, 24 Feb 2017 07:24:35 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si1694534pfd.3.2017.02.24.07.24.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 07:24:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E8381360;
	Fri, 24 Feb 2017 15:24:34 +0000 (UTC)
Date: Fri, 24 Feb 2017 16:24:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tahia Khan <tahia.khan@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Question about resending a patchset
Message-ID: <20170224152428.GA621@kroah.com>
References: <20170224150439.GA6189@coolbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170224150439.GA6189@coolbox>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Fri, Feb 24, 2017 at 10:04:39AM -0500, Tahia Khan wrote:
> I have a question about resending a patch within a patchset. The
> Outreachyfirstpatch page says that if a patch within a patchset 
> needs to be revised, the entire patchset should be versioned and 
> resent. In my case I have a patchset which requires one patch to 
> be revised, but the rest of the patches have already been ack'd. 
> Should I still version and resend the entire patchset in this case? 

Yes.

> Would this mean that the ack'd patches need to be reacknowleged?

No, add the acks to the patches that you do not change, if you got them,
when you resend them so I know they are there.

hope this helps,

greg k-h

