X-GM-THRID: 6340087850722131968
X-Received: by 10.66.17.228 with SMTP id r4mr494700pad.101.1476170959686;
        Tue, 11 Oct 2016 00:29:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.123.72 with SMTP id q69ls3796693itc.3.canary; Tue, 11 Oct
 2016 00:29:18 -0700 (PDT)
X-Received: by 10.36.156.3 with SMTP id b3mr839224ite.9.1476170958129;
        Tue, 11 Oct 2016 00:29:18 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id t8si303897vkb.2.2016.10.11.00.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 00:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id p80so2118343lfp.1
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 00:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rgVPjM7Q70cYpalmerI1z/O4ImboYIKKUikqUWjpnA8=;
        b=KvIg1h01YvaUXEUaZ2XmUTAP8JdR0TMgjfLEKqOgOUpuENRkfBLVifums9J3lQ1UCP
         3E5mcca3Z8anS5Z628hyXEQHk0sNW6SH2vOWf07wjeeQ9STg577GjJ3xLVC6KTTZQf8K
         26Ln7oW9aF/SCjAasJOpqiJwavAfCHcEFeaYd2h0qgzKKpAhpMXAYWRsiRvXDyd+dRZQ
         Uz6Jm3JuPXhmN0SxzNUUzr9ZKu07fyhuFbF4yHFELt6L+tFLnolOjUgZIDHeckz1giN7
         bmBqh1zwVWAoT9WphrLS3RszZA3k8kX4+1JkNuoE+lSOYt5Z7CdqV/g+QOmVZTPRY7Tl
         Mfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rgVPjM7Q70cYpalmerI1z/O4ImboYIKKUikqUWjpnA8=;
        b=ZD/1IQqlZZxfBjhhdjO18UNJN+DEIv77NojB2YL1BSZoiVEJPprv81eeIiEdxCb/TO
         QgqPPeaBVV7XpEPiPvQoZcPQ94C7PFktJbpuMcZ8pGi2iAjZBIB17uI48vLcSqWFD4J5
         EXoIu+FGQymgTPBwFUfYcFFXaPGHIgxVFy7yeQDMPNO28BCIjaP0N4MwUFhfT2jmyY7i
         37em1iXK9F25kF6QbLjaHbyjaPMWuk5bdJ1z5KrSy/IYZg0DeKFIyuvOk3HPl0kva4aX
         IOIlwuNoZWLhh+0BrBlIwzaioyNRd95gImOSqGilQVxLWejdFWcijADW/FMS8jbWGxCI
         E4qA==
X-Gm-Message-State: AA6/9RnKUbgJwNbs6MjWHdtWPLeB2iejVt8y9G3nUS92psbjUAd4kSd+TuxeUvOVJFFDrw==
X-Received: by 10.194.11.100 with SMTP id p4mr2776402wjb.125.1476170956297;
        Tue, 11 Oct 2016 00:29:16 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id 17sm3931525wju.44.2016.10.11.00.29.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 00:29:15 -0700 (PDT)
Date: Tue, 11 Oct 2016 10:29:14 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: speakup: Replace simple_strtoul with kstrtoul
Message-ID: <20161011072914.GB8031@domino-MS-16Y1>
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

Thank your for reply.

I am going to check it.

mihaela





> thanks,

> greg k-h

