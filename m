X-GM-THRID: 6673122111994724352
X-Received: by 2002:ab0:21c5:: with SMTP id u5mr1932814uan.22.1553718932427;
        Wed, 27 Mar 2019 13:35:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7c4a:: with SMTP id x71ls2475196vsc.0.gmail; Wed, 27 Mar
 2019 13:35:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZA8rcHdUVKQwWycr1RiWtQ8d0nL8hY+tHOy41iPZBFw4q/G5QIWYxOudeHgG8eorPUDUr
X-Received: by 2002:a05:6102:151:: with SMTP id a17mr2005523vsr.37.1553718931629;
        Wed, 27 Mar 2019 13:35:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553718931; cv=none;
        d=google.com; s=arc-20160816;
        b=K5qesAkUxPes/GZE5TUWIdT0GTUoVqQIy+hsU29cSPEZ2p9x94onPC90KngXFGuia8
         qSiUH7w8tfHZhoY32dEfNrk77g+UTXPB+6jEVcVm1UFRZnGBYuJvDdD5nhloaTBXBf1I
         rf5B1Yb5honWz+MTWC6g6mQTaS2sqk14Y+aUE6lWwMjOa7+Tw46uHDrSrbuRePnUjaje
         AnZHVDcxm4kyC5JKqqTHdHvqN6ExcPVrhKJc1eQGRjQQ6uESx+8qdymmnrxBiRalGoMW
         lPp0tTgyPwsO7rCabfXbCMG/u7Stwvn7iRkgaZ0UbmuoWrBwEQ6J0XIiVxeF1rMyFb15
         oVVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=2RByet8FTT7hf/mfVDHkFVtfKFO9VzeMQ98ju/2w9TA=;
        b=Fh/VPPV78cYvQ0xgyLZjEeUxEPxoM1w5x1xj1sJbbVUuNQWNSsceg5fZC1z5+v8OyI
         JEXVRCip8eQ92jbtM1EEfb6C17ix/3B5GlBNt8eB4O0Ex6wuLKSg4Bo7mftFzZktb+bs
         l+HrKPk04DkraGPT3yPUFlKlK1MTazEgQBp3YfifLTP3xvM/wm9vjauRMWBmkeac1Z2o
         8BBD/c297oitJkbLDDG+j26DxO9eppGBieKAymXe9C+oCu6FHYtpw64e43cuGRzhB+Dr
         wOeqnvwJqcihT+yw1WILDKSW1DouSE7IoCifm6p0scXqV4Xl0dUTOR9e1evFZ0u9fIN/
         ziVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=erZuSzLe;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id w71si1018477vsc.1.2019.03.27.13.35.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 13:35:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=erZuSzLe;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id x188so13986592oia.13
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 13:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2RByet8FTT7hf/mfVDHkFVtfKFO9VzeMQ98ju/2w9TA=;
        b=erZuSzLe7fEyW5BgYgPNZvTQBELvfjEESNCLUabPM6DQovjsYzVneq4u9zso5cJDwt
         hGaFDGT3LINoH9RplYv816fT7BWxT8AsKg+9Y7S6WnsPLeAvrPQZpekzW+grCXaVNm34
         ziZ8W8H1XXiKvG+JwwmZxs6d/xbZf0AUkV5By5Glh9F8rYJ2E3J04cxCjswpRGkKQhrA
         uVGLxylP3xQDeMb3gE9NvfSViAM9gtqkRpK7UL1cb/xaa5CV9Pnr3ZWDjLwo10zcTIJD
         8QcUIl0CXd/ncfoZnBBRoqMvmcrYjwfu47iedGnP3nr+XsNh11KfYDtA1dXykw2cjJQI
         nbfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2RByet8FTT7hf/mfVDHkFVtfKFO9VzeMQ98ju/2w9TA=;
        b=fH2EZEz2rJdk24qk0ylp7MJPxNxV10tent1mk77UHPLG1vYhEiiU2c3vUcrkWHBmZJ
         l46MaRgHUfrg2dCrVecZi69TDu1k8uaqGfftnF7jokS8ElHmYIqZUhr4DrY+Wpnrmnl/
         NKlrRv8ztAJ01733+ZMo/YmEMMpBcltZSJ5BABFcJpv5L4G8iVMfzPZ+5NVzKdSTQACV
         uIEeGZb98zwgF2Y+i9T0bS7q3UhUKIn+2+mJcsFMO03wo6BH6S5EajC0HU5FlJeruQPO
         kc5dcsCaDTqYgMo0QPojicUWHTjrfqNG8u5fqkU120qWJJB7lXkisctIi9QjefLthEOZ
         KS8w==
X-Gm-Message-State: APjAAAXcShBnaXY4n/QkhXMWtt7k3bcZGcgqut+NrBD6i5NEkcH3pY5N
	CoUZoWiTFr5/sbVbisv15pMutAUq
X-Received: by 2002:aca:c141:: with SMTP id r62mr19446621oif.160.1553718930863;
        Wed, 27 Mar 2019 13:35:30 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:5484:e912:7e6f:7f24])
        by smtp.gmail.com with ESMTPSA id a131sm3180387oif.23.2019.03.27.13.35.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Mar 2019 13:35:30 -0700 (PDT)
Date: Wed, 27 Mar 2019 15:35:27 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: media: davinci_vpfe: Remove unused macros
Message-ID: <20190327203526.GA2510@madhuleo>
References: <20190327172150.15319-1-madhumithabiw@gmail.com>
 <20190327183606.GA9920@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190327183606.GA9920@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 28, 2019 at 03:36:06AM +0900, Greg KH wrote:
> On Wed, Mar 27, 2019 at 12:21:50PM -0500, Madhumitha Prabakaran wrote:
> > Remove unused macros from kernel tree.
> 
> That says shat you did, but why?  What if someone wants to know this
> information in the future?  Deleting unused hardware description macros
> isn't always a good thing to do, as sometimes that is the only way
> people can find documentation on the chips involved.

I will drop this one

Thanks

> 
> thanks,
> 
> greg k-h

