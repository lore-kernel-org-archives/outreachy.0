X-GM-THRID: 6667274731711889408
X-Received: by 2002:a5e:8c1a:: with SMTP id n26mr5540842ioj.16.1553876672850;
        Fri, 29 Mar 2019 09:24:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:455f:: with SMTP id y92ls844109ita.1.canary-gmail; Fri,
 29 Mar 2019 09:24:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzk66QjFXnJfNShyZORI3GGYKW/UoXCxcFWLadiTP1o5214DdkygzLY01bE3MGuBrfI4mhD
X-Received: by 2002:a24:da44:: with SMTP id z65mr1983126itg.26.1553876671911;
        Fri, 29 Mar 2019 09:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553876671; cv=none;
        d=google.com; s=arc-20160816;
        b=oj/0Z/P0peLWci8yZ9Nk1riTRa7NWF2Xvc+qoxLgB6qahQG8eJvI2UE5BVCtA4+aSM
         JYgEotuYjo6N2GmauR5VUowszVRlwlDHHcKmlekpRN12OhsozDADir0CkRJsRnA4KECk
         SIhzDQgfn2YQ8UWKJy7SzGuHD7q9bD5icX1h7ZxzDQwzeFkYY+ZbTNiYZAxa4Biq3nSV
         iFQjHRoqJmlHgjqn0zaNzXn8Pdu7ibc2+zAvQ5mxyZUQFfZn2LTeHhh7/YpwK+epGhbf
         TREwTQQKIsz1Yqavm2LUT2KWnN30er8dtCxF8YIyGo+RVQtEnIcINyJhzeo5ei1r3VmN
         i5Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=wIh5t3XITdhNWc1aQEtRE+Hwenwz4go4AtLPXTO4l+M=;
        b=Syd+3oW5Jdll8alUiGhnKIO/yNEWSZH6vh+rpSCMSMCOYdVAkPiclMiC4kp4wJa01b
         dsn/URk/HWlQ5U7kdf7j8PYVHKC6rrPDeMtTcSeOQ1sHnYEGj6gyOwuUgfkNTOXOCJAM
         7BTodrMCsympRRxKtcJQLnAVe/O/4vxZKNB3k21AAsbYBriYEfScD4qdQPOy33j1n+1Q
         vsh3YdBbL1XNkojgjQ+097yOgIpIOimcost3ChzyC1TpC0hkRrpsVGcO+PuNGXIzhiGu
         a7m+ozzKJphyCCpMhFzeKY8cmqT0yLOypXuI1BUiZAhiREomtOYTg8bJqj/mGnhlHTna
         LtLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nIXzNca0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 3si127573itz.0.2019.03.29.09.24.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nIXzNca0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 84712218A3;
	Fri, 29 Mar 2019 16:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553876671;
	bh=wIh5t3XITdhNWc1aQEtRE+Hwenwz4go4AtLPXTO4l+M=;
	h=Date:From:To:Subject:From;
	b=nIXzNca0YhexvwEE280g8CrRBok4SgRDUOiOJJyVzBWCFh0BopDveL03BMhEUml6+
	 t3ryJt3HykqGNiHFyWb5qBCgdmtz1/Prmg/iLt0hAZL9Ge8qbt/PfkNESBd3le2f2W
	 mGkI1jgdzuwkl+wdJcV4iQA0KYUbZz+a9pToTDqA=
Date: Fri, 29 Mar 2019 17:24:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on again.
Message-ID: <20190329162428.GA16275@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

My travels are complete, for the next week, so expect me to have a
faster response time for at least 5 more days :)

thanks,

greg k-h

