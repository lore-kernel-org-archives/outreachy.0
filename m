X-GM-THRID: 6340087850722131968
X-Received: by 10.28.169.81 with SMTP id s78mr27802wme.15.1476215366553;
        Tue, 11 Oct 2016 12:49:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.166.200 with SMTP id p191ls35327wme.23.gmail; Tue, 11 Oct
 2016 12:49:25 -0700 (PDT)
X-Received: by 10.194.220.66 with SMTP id pu2mr454957wjc.4.1476215365943;
        Tue, 11 Oct 2016 12:49:25 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id v63si23006wmf.2.2016.10.11.12.49.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 12:49:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id 123so356600wmb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 12:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jh1UZI60ffwiO0LEoEvnP8K+j00+9SURDkcz62kYSWU=;
        b=y8sBllVRt5K9D+AMcdeYv8OJmLssC6laTrOuz0hYwuC6gHAep2+0CBmveCVXenMu2E
         FxOuUtKFYY7J4+dKMtCdgK1TpoMbUtBpoNDFpXneK+4Z7G4Z3P8OD/GVmzgFzZSL1DF+
         4XCB6QzxgwcEw73+3WDyI0QySB5XiTnVpULsgmGKo21AADkc005iH28rDSl7aMFKdaNZ
         q2eRTcKXwts8meZ6cvkzCCB0ft9roRoSqzBlJyy0xsMr8Hpe3pue7YQGvNJ106i8RMib
         iQNNGmZpI4E1Ymsk6z4eQRwTFht8jt/NN3AyFrqvcke2Of0xqXg5v9ghsRv0KuaQrJyl
         xdsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jh1UZI60ffwiO0LEoEvnP8K+j00+9SURDkcz62kYSWU=;
        b=Y0IRqlbfO8DzP4bHarWfKoVTMYslHjBWgCp0NsDHIHlAE8FML7rhmQaU9vbIQffQ1h
         zAhCenDAws/0DqhSYUI3XZdLIh/MVB1ZMXhTncaC+f/jR2Joc1ZvN7dcLzxAUDIgwhYs
         Oc8oQZcqDrvnzRmvzFYhYwRYDTpWhpuBKgW88dCOaM+26GP6cr2IvjotRifT1QQgbzxF
         iPQ7WsiSSqpYV0yPW7LAqC2ZCj2g7muY79M4DUPUNH+7mq8Q5HK7ZsHhvdCJE2xne6Ly
         nHmNhdScGTSYlmIyTEupEcpX3qeEHO3THBrbEZlNzBWMN3245ecrCDD4T/Ku7rAxCe9Q
         W1/A==
X-Gm-Message-State: AA6/9Rnl8zbba40Mc3krGokg+Hfi8PrDuxoh50MBrOHJW3v/sGwz6S676/t4jM+ea/H89g==
X-Received: by 10.194.104.40 with SMTP id gb8mr6750430wjb.28.1476215365749;
        Tue, 11 Oct 2016 12:49:25 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id g9sm8714212wjk.25.2016.10.11.12.49.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 12:49:25 -0700 (PDT)
Date: Tue, 11 Oct 2016 22:49:23 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: speakup: Replace simple_strtoul with kstrtoul
Message-ID: <20161011194923.GA5138@domino-MS-16Y1>
References: <20161011061851.GA5714@domino-MS-16Y1>
 <20161011064706.GA4428@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011064706.GA4428@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 11, 2016 at 08:47:06AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Oct 11, 2016 at 09:18:51AM +0300, Mihaela Muraru wrote:
> > This patch fixes up a checkpatch.pl warning :
> > WARNING: simple_strtoul is obsolete, use kstrtoul instead.
> 
> Please look at the mailing list archives for why I'm pretty sure this
> does not work.  Have you verified that the code still works the same as
> before by looking at how the data is handled?

After I read the mail list and after I did some researches indeed I
cannot change replace simple_strtoul with kstrtoul.

Thank you for telling me where to search.

mihaela

> thanks,
> 
> greg k-h

