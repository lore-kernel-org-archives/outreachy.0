X-GM-THRID: 6673132168254849024
X-Received: by 2002:a02:b909:: with SMTP id v9mr67991jan.3.1554157940698;
        Mon, 01 Apr 2019 15:32:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a890:: with SMTP id l16ls2419817jam.3.gmail; Mon, 01 Apr
 2019 15:32:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyNrCxzGGmxPcEixxTa28R5O08SfLOkpDvXKj63XQhpHPk78wg41WM2mD5opTwRMv6TXuYf
X-Received: by 2002:a05:6638:198:: with SMTP id a24mr10564101jaq.10.1554157939670;
        Mon, 01 Apr 2019 15:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554157939; cv=none;
        d=google.com; s=arc-20160816;
        b=Ms1HxwTwlmVxXBoh6xWp0HbOMeTSvMIfCg0ahc+wlj1VDoZCEmyPVwgd1AbzyZta+H
         bTYuNTr+5T49iNScG9H7IQ2m7DtqfAOjv+5UrxjDrX0etltxTpb4XlkqoYvqgyiCKkfN
         ghXsby48WG+m6DHXyJ9hkVq+eGQFiNWAPKi8UNvLbIkYPRlRBoHPrXxHIyzOiK4ISccr
         vrH8qqs/vFFfwOeuAMBMHAndoJbNwKAGpwvbJYZe6Ew5zbka6wCbpfSteXyMEDIBeYBc
         l9QXUCgh1rrQe57eJwshzjUNrR/pEpzTUoWR3rXrIy1xLYOKyns9W42mLCyFwhGezhxb
         FU9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=TDzLMieonPEQ+DmD7EtwuSIEGK/XfXCTjR8b1dXIHzg=;
        b=vaybF5j2mg4ZUFTJ7d4/rV1bL/Q8xVxh5JzECSsRZzdJoTyiQMelaaF2opGuDmx4EI
         halq0w0Xi8eGjaS/PzFm1sFv0nQtyAGl/A04v9yr9qLBFJcKzL3JaQAJt2LfV6St5OEC
         nMRJNbiyk2vNsITpzZil/KzHbwf0q+/fMYvKijsrDXquw9YEmM724UICZFcy34a6drt0
         CyxW0xjaMzxL/5m2LawO2atSdjazCaetzHWMe1CNoTRcY2lkAgk7iCLi3YhRU7YTfFj5
         /kQ4pL0jTNyOOZOmKQN9N+zuCkkU2H9qdOV/YC3Y4ZPlOaY3b9lDUwQh6ybn+j3yucDE
         5Hew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p6AIg1lr;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id u1si1301695itj.2.2019.04.01.15.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 15:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p6AIg1lr;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22e.google.com with SMTP id a6so5390822oie.5
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 15:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TDzLMieonPEQ+DmD7EtwuSIEGK/XfXCTjR8b1dXIHzg=;
        b=p6AIg1lrb4y8qpe3ic9jE+ct2bOTpQzOzMnZx2/aWakT1NlToycEXqfVkddP4cYeuK
         bt2v5hyNVNgT5Mhu5Q6AmScXZ3WTAuYTKB3moK7pn6o6RscVRQ9PQ52Ur7Alks8ntRTF
         kaW0omL3AJfAN+hFKz2VePlfCMScRXIKOtrkYfa8s9umGxGnAWvCBRI0vsk909DuNwvM
         PnNR22b+2670JXo1Am89F4Src5PutMfqmt7ZZm5k6htA92pHk0DczskTuLREr9EuFEPv
         L5Fo4+Yc9Vb7xF21rhWQlpfbyOjGns1f1IHhyNyKycSuwa6OCJZ3XSgiB4w1SONS6r28
         05RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TDzLMieonPEQ+DmD7EtwuSIEGK/XfXCTjR8b1dXIHzg=;
        b=lGaafGEnAiklrEa7Hm1Sf83ZFCuCFRtrHA6j4atXAO5dawzs1nZPMQ1XBQ5vrFUUAh
         1VipasVf00R1Ni9xajOULSAbAfj/S5UmFf9NgR2sRg3u1BLr6dsHJtGFTFl7/TVtBxET
         1YWY2StzdJ+N+6osBAIhOd0hY5xQUEu03LwLOUbXcsMb4fW6CX9f2Q0guB7ESmrexdAR
         mvYzwtLCjUh+mt0EYAMXNxwz9E4zdjWSVntl58uvMxeP+5d6Vl85WnYILpq7jJbHs82v
         c5wD7Q8OxSDVAdVRC/3JYSjYLSFdZ1MQsefeJ14rCcoJgoPHbkc8UQpQqS/nsuGIcZWU
         d5DQ==
X-Gm-Message-State: APjAAAXbmLuybsUrJEoI9OH8QWy6eVxnxeusgQARjPY6lBbJv0DrPOWL
	yWiyvEHv+NpBlQdO1wjNG+Mq3ZkQISE=
X-Received: by 2002:aca:510d:: with SMTP id f13mr14889206oib.174.1554157939331;
        Mon, 01 Apr 2019 15:32:19 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id x202sm4642058oix.54.2019.04.01.15.32.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 15:32:18 -0700 (PDT)
Date: Mon, 1 Apr 2019 17:32:16 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: media: davinci_vpfe: Convert ceil macro into
 an inline function
Message-ID: <20190401223215.GA30112@madhuleo>
References: <20190327180052.30298-1-madhumithabiw@gmail.com>
 <20190329160451.GA6197@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190329160451.GA6197@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 29, 2019 at 05:04:51PM +0100, Greg KH wrote:
> On Wed, Mar 27, 2019 at 01:00:52PM -0500, Madhumitha Prabakaran wrote:
> > Convert macro into an inline function in order to maintain Linux kernel
> > coding style based on which the inline function is preferable over the
> > macro.
> > 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > 
> > ---
> > Changes in v2 -
> > 
> > - Corrected commit log spelling
> > - Made the subject line unique from previous commit
> > ---
> >  drivers/staging/media/davinci_vpfe/dm365_ipipe.h   | 5 ++++-
> >  drivers/staging/media/davinci_vpfe/dm365_resizer.c | 4 ++--
> >  2 files changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > index 174334b53f96..32dce3c95304 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > @@ -27,7 +27,10 @@
> >  #include "davinci_vpfe_user.h"
> >  #include "vpfe_video.h"
> >  
> > -#define CEIL(a, b)	(((a) + (b-1)) / (b))
> > +inline unsigned int ceil(unsigned int a, unsigned int b)
> > +{
> > +	return ((a + (b - 1)) / b);
> > +}
> 
> Please just convert the caller to use the in-kernel function for this
> instead of having a second one in just this driver.

I'm not able to find in-kernel function for ceil. Though there is ceil
function in math.h, which has return type of double, and i'm sure that  kernel
cann't accept floating type. how can i resolve this issue?

thanks

> 
> thanks,
> 
> greg k-h

