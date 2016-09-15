X-GM-THRID: 6330466800696819712
X-Received: by 10.237.36.19 with SMTP id r19mr6105456qtc.14.1473940705471;
        Thu, 15 Sep 2016 04:58:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.70 with SMTP id m67ls1088378iod.41.gmail; Thu, 15 Sep
 2016 04:58:24 -0700 (PDT)
X-Received: by 10.67.12.205 with SMTP id es13mr5946734pad.45.1473940704626;
        Thu, 15 Sep 2016 04:58:24 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h124si2570469pfe.0.2016.09.15.04.58.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 04:58:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z84so2155218pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 04:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+iELwkECnt+papYDsiIMEtM0nvDywOX7iR1hiifxy6w=;
        b=dbSs02kKDyARYh52ixjsPD2VaK0t2h4IYN9+PPnp++fStoA7X/DbAPvkV5f7dRFUpv
         K/GoZn9vnMn0otKWrxdjzNIMSGiGMcZ7+dQku9bJYpjjLw+xJZgLay5kF97omFdO33WA
         HssDAYPMaXGcbySk0k2FFBmCW2Q9kIGh1hbEKbtW8siL8cqOv1UktSMGMSFgXBdnGwkK
         VBqBhrLQVjgkOlAb5QZMnCLRqWlXN4leQ+ZP5HQG3k7HjFcw7V42WkFJ4NxuLreEfs+D
         FrUT+f4DHdOSN8kRAHr5yXQWX4+zYT0XxxzrQU+ksZjLCy3VtLnIdVtw7vgNs6cDK2/K
         XqrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+iELwkECnt+papYDsiIMEtM0nvDywOX7iR1hiifxy6w=;
        b=hqC4j/LPmpVLDvMn+c3UgM5W6mPzmZxwyQnyWi06dqrE+qZkhMDL4uBvaVcKEDTXT2
         j66RO/5QZu+yhn/mnrKJNgx9tjm8nH/h/BOHc8kJvV+LWTTEWwOG22pFaKky2pNIPUcu
         DQNUmkPHxVFIDkFQR3XyHAsB5Zy7Du93qY87UEB4VM1s3Dc+bVALhM0dTDEsAFrs8jU7
         tr+4QgexnWG8d25j+jji8MHu3aW7pi5f3sgcLPYNq06zfj5XS+POLPwq28vq6txwJ0lh
         uZm3RZcUl0hpMREyg9QLZQfzx72x8ZRK9m1yydFD7IAjt/9riYCzDEvnW4lQ190PObf7
         NPRA==
X-Gm-Message-State: AE9vXwPLQ7wbRvsNtS2B5OvYZAc1mcYWyMQwnMNzieQaF/fQ4ut1cubPq6FpR0aQ5Ea0VQ==
X-Received: by 10.98.12.135 with SMTP id 7mr4643321pfm.15.1473940704414;
        Thu, 15 Sep 2016 04:58:24 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h67sm16158968pfg.32.2016.09.15.04.58.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 04:58:23 -0700 (PDT)
Date: Thu, 15 Sep 2016 17:28:14 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [PATCH 1/6] staging: lustre: Add space b/w concatenated strings
Message-ID: <20160915115814.GA12108@toblerone>
References: <cover.1473923837.git.aquannie@gmail.com>
 <5f0049b66e2bf80634cf510e090e6b577302cedb.1473923837.git.aquannie@gmail.com>
 <20160915101908.GA22178@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160915101908.GA22178@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 15, 2016 at 12:19:08PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Sep 15, 2016 at 01:34:48PM +0530, Rehas Sachdeva wrote:
> > Fixes checkpatch.pl warning:
> > CHECK: Concatenated strings should use spaces between elements
> > 
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/fid/fid_request.c | 8 ++++----
> >  drivers/staging/lustre/lustre/fid/lproc_fid.c   | 2 +-
> >  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> Why are you sending Lustre driver patches to the linux-usb mailing list?
> 
> totally confused,
> 
> greg k-h

Hi Greg,

I'm really sorry. It was coming by default. And I must forgotten to
remove it. Anyways I fixed it now.

I'll be more careful next time. Thanks for pointing out the mistake.

Rehas

