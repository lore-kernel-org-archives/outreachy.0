X-GM-THRID: 6470854058702798848
X-Received: by 10.223.164.206 with SMTP id h14mr920756wrb.2.1506691791933;
        Fri, 29 Sep 2017 06:29:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.138.131 with SMTP id y3ls1875610wry.5.gmail; Fri, 29 Sep
 2017 06:29:51 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDY08t8XbYeRN0N5Xb17PAXc/PHgf1ZqIdik2V6blWqEu01AvUiW1RnuJH0g2pZ8agIXuET
X-Received: by 10.28.138.195 with SMTP id m186mr708543wmd.9.1506691790996;
        Fri, 29 Sep 2017 06:29:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506691790; cv=none;
        d=google.com; s=arc-20160816;
        b=idCpiwFQ7S8C9Vx6bINBXGRKln4E2Mcl9OPhQjVRhY41hMAj3B2HN6xhyl6HnZ+N3m
         rTyKio/bk+SeHOYxdauIJWLc+tnN5d9v1/sJC5MgQR05+ZKD7z3IxCvAeJXCI3aZgoRU
         UyAcexLXnoZEHYse14bnSL2kwUbj/BWx8PJx53JMaUlriRWbsRjvpyGwt7ik0sdAHGGr
         2nLs6j6/biiGMoqE+RjbkksijaS1jGAFTvsjX1hroM7FzPOMF4eeGYjUZJ1nAPGo3JQ1
         Femt77/iGWP9UhWgxehh5dtwTESJ4ivz7CliW/jP4oiY1VtYQxB8I+UhbhfbB9p/5nRb
         PC+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=RBG3eN/koyWStVhsdHz0BM96CBIQ+bOb3G+pLsaeQ+Q=;
        b=HH2FkWV4SfLLh1ZnRX9UMs58JVJJjUKqLX90CTi/SR8KTZgw4vq7U5kDSulgtZx6OR
         9iC1rCbM0Knjq7rEFwYd/Amn21RUF8CPlwO+ELCCHKW/d/aBh76OMSwjpgtL1MltLqMM
         YaM5vLP7cMElRsdFk+fzng2b3E59QTPvGhXUep1Ys/XCw7SfwyT3zxWAHbD1gpbNcZTP
         /nz/04eOt30J2NlLbYaWjlRCftBBcu5ZhDyXFXiCcxB9SW4F91q8e/yYGEUOLTQ/Sk/Q
         ptq7p3WFKnRlVYm2WRCC1qnJwqKmGCmFYZSp0rXeLzXUYXnV9Y0PFF/jGCZeafIIrsh+
         kkew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=DAL6MCdS;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id b203si439345wmh.4.2017.09.29.06.29.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 06:29:50 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=DAL6MCdS;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id F2A9C21ADB;
	Fri, 29 Sep 2017 09:29:49 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
  by compute6.internal (MEProxy); Fri, 29 Sep 2017 09:29:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=RBG3eN/koyWStVhsdH
	z0BM96CBIQ+bOb3G+pLsaeQ+Q=; b=DAL6MCdSdtYI9DSqbEcoc7LjXsBw3Avlbk
	z5SQnBgyJz+DWS1lbjrGcr4n7GFrKSIfW6jhAA03hnePXOYD+MFk7Hrt6eQifEzu
	Z+xI7VRleYuxe8ShWr4u+xQ/wOQLz864gd625TBhoK2Ffw5bfd3JQ5hvcFHF9cJ2
	UVlphMDx2LYo1s0NFxAtUqKtgWkzjBywdnZc8FVFwQsRJbwTiH8IEPDZmEuFYxhp
	1JFyQILErOURqQIanQ3F0yBBn3xqVFv7/GpgzuCCE2Ho3f85STpibg1A6tlOkkHw
	P79pPmWBnkH+v17O0cvIOyoZlclGvXnrvoYouLRIr4Eh6pRaNFpg==
X-ME-Sender: <xms:zUrOWeBFGvdZCTTTbR0Qt6mR0whVZy65-0Ss_XtlYvU1J7rgPJMt-Q>
X-Sasl-enc: q2RPTzB5MwbcIr8MYR46vtuRD6IfL9ueFARWQyx1tAIf 1506691789
Received: from localhost (unknown [195.81.232.10])
	by mail.messagingengine.com (Postfix) with ESMTPA id 889ED7F9CC;
	Fri, 29 Sep 2017 09:29:49 -0400 (EDT)
Date: Fri, 29 Sep 2017 15:29:47 +0200
From: Greg KH <greg@kroah.com>
To: Keerthi Reddy <keerthigd4990@gmail.com>
Cc: outreachy-kernel@googlegroups.com, speakup@linux-speakup.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: replace 'S_IRUGO'
 macro with octal 0444
Message-ID: <20170929132947.GA22589@kroah.com>
References: <20170928153826.GA19227@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170928153826.GA19227@manoharreddy>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Thu, Sep 28, 2017 at 09:08:26PM +0530, Keerthi Reddy wrote:
> Everyone knows what 0444 means. But one has read through docs
> to understand the meaning of 'S_IRUGO'.
> 
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/staging/speakup/speakup_apollo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This change is already in my tree, please make sure you work against the
correct kenel tree/branch.

thanks,

greg k-h

