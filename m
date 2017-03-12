X-GM-THRID: 6396588867730800640
X-Received: by 10.99.250.21 with SMTP id y21mr12336718pgh.21.1489329321621;
        Sun, 12 Mar 2017 07:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls11401154otd.46.gmail; Sun, 12 Mar
 2017 07:35:21 -0700 (PDT)
X-Received: by 10.157.11.211 with SMTP id 77mr12837933oth.142.1489329321245;
        Sun, 12 Mar 2017 07:35:21 -0700 (PDT)
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id x124si1941395ywb.1.2017.03.12.07.35.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:35:21 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id D2BE4206F2;
	Sun, 12 Mar 2017 10:35:20 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
  by compute6.internal (MEProxy); Sun, 12 Mar 2017 10:35:20 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	smtpout; bh=secmBXmDtHWsb/AnqdftevAClHo=; b=TvyiHjllOSECxVV+HVP0
	n78faSj7a+U1hBW1mRB/ZcYvjC7xKzGLmS81IqJHlcRSxBBeeFpeNJR6okQyaQjQ
	gzGsCjHKaxP3Ke4OU4S3A8WPAdTQJbUsjfRjLUVWgdKOqsqFRa8gVqFZdFy2SFHJ
	X/5WU8mZNSzgUs7mplnTEPY=
X-ME-Sender: <xms:qFzFWGrAfcZ_dfiB__Y_sh9NqF-gaZijR6ICo9qj1KCIRfIXosSPRQ>
X-Sasl-enc: LaKuMbQ4cHCsq8k4krUi6eqRYzrUz4epYG4ErNTQ7TFw 1489329319
Received: from localhost (unknown [88.128.80.189])
	by mail.messagingengine.com (Postfix) with ESMTPA id 3B0097E30E;
	Sun, 12 Mar 2017 10:35:19 -0400 (EDT)
Date: Sun, 12 Mar 2017 15:35:01 +0100
From: Greg KH <greg@kroah.com>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: comedi: Compress return
 logic into one line.
Message-ID: <20170312143501.GB32168@kroah.com>
References: <58c53fae.4737620a.4ce3e.692c@mx.google.com>
 <20170312135543.GA1209@kroah.com>
 <0409aeaa-40e5-489c-bcd8-62e1b5724772@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0409aeaa-40e5-489c-bcd8-62e1b5724772@googlegroups.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 12, 2017 at 07:07:59AM -0700, Varsha Rao wrote:
> 
> 
>     That broke the driver :(
> 
> �
> 
>     Please be more careful in your review.
> 
> ��
> ��� I had compiled it before submitting the patch and it did not cause any
> error or warning.
> ��� Is there something else to be done?

Yes, you need to look at the logic that you are writing/changing to
determine that it is not incorrect.  This is valid C code, so no build
warning will happen, it's just the logic is totally wrong :)

You do see the problem, right?  If not, please take the time to read it
and figure out what is going on here, as it's important to know.

thanks,

greg k-h

