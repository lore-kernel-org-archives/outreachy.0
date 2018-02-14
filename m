X-GM-THRID: 6522348459882708992
X-Received: by 10.80.242.130 with SMTP id f2mr1477484edm.5.1518603847551;
        Wed, 14 Feb 2018 02:24:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.50 with SMTP id o47ls8817201edc.3.gmail; Wed, 14 Feb
 2018 02:24:06 -0800 (PST)
X-Google-Smtp-Source: AH8x225ZzUXH5V7Em/hEWWeQr66XCTwodSa63+yOuHZNfx69X0r7VzOa+zkBJ0mWXsfYCiWJRpSF
X-Received: by 10.80.184.23 with SMTP id j23mr1463390ede.3.1518603846145;
        Wed, 14 Feb 2018 02:24:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518603846; cv=none;
        d=google.com; s=arc-20160816;
        b=N7wZf15UtAtAt++LuNQQQQRFVV4TcDMwc228mzUDgpz2g/FseGc1rJ39bfFamsuxYM
         I2Jo+W56bSqTyHPzpSVLQmrWD1e5jEWMUlnXY8LVewr0S3a7RLUOW3o9+c+3VkYDogtO
         hjnN74PjQW8iDY+/E9X6fBLpJl/peVnA95abVRBvvhiVbnyfzuonnmrIiwUR+ENg+Ota
         KljcXC2OvKtmNTbCx2QRyImx5fPnPjDekJ7d7/l2FLa3JLad4hW1C685rh3e23NlU+pS
         vDQ10G9IDA68ZLF6c8vFPCBgT4GBSdbphBcQ5aknCLd/T+eqbnCWqYW90zVL1HW8wMg8
         CpRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=mvwSgA0ZISPd/CPnGtel6bNSSNaISp/f9N9b36lHg74=;
        b=XJbhnMM4WlBqPfKAE6fDh/POqjbjDRC/PAoxiQAtN1PJZW/po2C1xW7EWg908fmjsz
         FcBEStGzs2k3Sr0fVdPkem2QiXZJHnorRcEUqZZY9Zve+NzLhEg30BiFWObT1mTvvEKN
         /+dtmb7X2PTbstTGTT4Gz0g7u5dls6RHLNkynZ8Za1fg+m370I/EcqDmynp/qo1rWM+9
         OP9KaCLu2BaITCgkC/2Wp8f/DrQ9IxG+cMKP5JlUtE1jF4kHydeuX4rsxWqWbHsA/H1k
         UqfILduj2Lt55pBcfJYli4XIY/I9SPQG5SKVmtBl0YxNlnfcq1gpmEPa+ehKY5uYuWvR
         +5LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=Wev5ZLXd;
       spf=neutral (google.com: 66.111.4.29 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com. [66.111.4.29])
        by gmr-mx.google.com with ESMTPS id g10si327191edm.0.2018.02.14.02.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Feb 2018 02:24:06 -0800 (PST)
Received-SPF: neutral (google.com: 66.111.4.29 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.29;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=Wev5ZLXd;
       spf=neutral (google.com: 66.111.4.29 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 35DAA20DA9;
	Wed, 14 Feb 2018 05:24:05 -0500 (EST)
Received: from frontend1 ([10.202.2.160])
  by compute6.internal (MEProxy); Wed, 14 Feb 2018 05:24:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=mvwSgA0ZISPd/CPnGtel6bNSSNaIS
	p/f9N9b36lHg74=; b=Wev5ZLXddSKZm35ojWWATY9k3FVlUxOR23JJkRc1k41eF
	r7hjB78Ota+JBIW0SHMkYs1vghYZE5GDD1/CwiHWZ4S/5XhISVg2hg9O5vRGwQd0
	tL5iCyk33NXlNl8xdb7hrzNiAdSXcmzBTpEmTCTVw0LtWnKR/MhB+KGqkhXuP0Sj
	kgb77WGGltomNV0cbmjz8X+7J7Wz/ei/AiNg0jJ3M1SqECIv0jzsv9ymySQ+k3Ep
	gSsQ4GP9fWxD21OZzR8WRrmgIyRlCqVBA4wOucD35uoGL/zCGw0Tiea/4cIBvQUb
	7REiqO7e9scFdaJXJEXqbN+vn5/DfMWMssw9Wbxlg==
X-ME-Sender: <xms:RQ6EWu5CBoVgEculhm80GFbNoQTJ6Na8IeCfuBWFcZXEJEeNniFTGQ>
Received: from localhost (unknown [94.228.181.226])
	by mail.messagingengine.com (Postfix) with ESMTPA id D2C107E65E;
	Wed, 14 Feb 2018 05:24:04 -0500 (EST)
Date: Wed, 14 Feb 2018 11:24:00 +0100
From: Greg KH <greg@kroah.com>
To: Shreyasi Rao <shreyasirao97@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Compile your changes- Tutorial(make -j2)
Message-ID: <20180214102400.GA21954@kroah.com>
References: <CABwYNcVXBFj=pqj2MnbAHKZMHCpA9P=E2XgwSh5wWRTd+rMRmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABwYNcVXBFj=pqj2MnbAHKZMHCpA9P=E2XgwSh5wWRTd+rMRmw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Wed, Feb 14, 2018 at 03:32:37PM +0530, Shreyasi Rao wrote:
> Hi,
> 
> I followed the tutorial upto modifying driver on native linux but when I
> compiled my changes with the make -j2 command it gave me this:
> 
>  YACC    scripts/kconfig/zconf.tab.c
> /bin/sh: 1: bison: not found

You need to install the 'bison' package on your system.

> scripts/Makefile.lib:217: recipe for target 'scripts/kconfig/zconf.tab.c'
> failed
> make[2]: *** [scripts/kconfig/zconf.tab.c] Error 127
> make[2]: *** Waiting for unfinished jobs....
>   LEX     scripts/kconfig/zconf.lex.c
> /bin/sh: 1: flex: not found

And install 'flex'

> scripts/Makefile.lib:202: recipe for target 'scripts/kconfig/zconf.lex.c'
> failed
> make[2]: *** [scripts/kconfig/zconf.lex.c] Error 127
> Makefile:507: recipe for target 'silentoldconfig' failed
> make[1]: *** [silentoldconfig] Error 2
> make: *** No rule to make target 'include/config/auto.conf', needed by
> 'include/config/kernel.release'.  Stop.
> make: *** Waiting for unfinished jobs....
> 
> then I installed bison and it didn't make the error go away, now I am
> stuck. If you could please tell me where the problem is.

It doesn't look like bison is installed.

Try just doing a 'make -j1' to ensure that you are seeing the correct
error messages.

thanks,

greg k-h

