X-GM-THRID: 9152848986112
X-Received: by 10.180.211.199 with SMTP id ne7mr774594wic.5.1426865748796;
        Fri, 20 Mar 2015 08:35:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.202.133 with SMTP id ki5ls452985lac.90.gmail; Fri, 20 Mar
 2015 08:35:48 -0700 (PDT)
X-Received: by 10.152.164.171 with SMTP id yr11mr10275025lab.4.1426865748153;
        Fri, 20 Mar 2015 08:35:48 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id na10si144911wic.0.2015.03.20.08.35.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 08:35:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id gn9so17916090wib.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 08:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=GQzWLFMSSb0UVVh+1i74BC40UpQc4e3UtWJvlKPR4T4=;
        b=AII+eYrbGSms6pSwbyAVGowTKdEEg405lo8mfIQUGvEYqPeYDvBmSgZFLHymP1Dh4K
         zOf1l5TzPselexWYPMFAsPPGfonzB2nG8CrCtod1GHuNMpukemUxWz9dJTvKl+ywp6OT
         qD4BLazKPxzJCg183kHTHCX1s8rSKrEhnvzzVdd+1vg9huFntW0yO0yaiXPkUarhK/ce
         Yg5GuSdyvEhhxqpu1jeCPEHZJu8JJFIt8ssoC0+JqKWK+fl9+iYSp1Yy7DDvQFlQCZ2E
         aRwZkS1BoAhdXYLDmUfEfCCKx9jH8OmTBlMj5fX05fdQsbCwvroAztYxKmoRzgLjsZup
         FHXw==
X-Received: by 10.180.86.162 with SMTP id q2mr16786723wiz.26.1426865748074;
        Fri, 20 Mar 2015 08:35:48 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.104] (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id dq8sm3499630wib.9.2015.03.20.08.35.45
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 08:35:46 -0700 (PDT)
Message-ID: <1426865696.8174.2.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: iio: Place driver in
 sleep mode on error
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Date: Fri, 20 Mar 2015 17:34:56 +0200
In-Reply-To: <20150320123933.GA2001@kroah.com>
References: <cover.1426790651.git.cristina.opriceana@gmail.com>
	 <ff210f9a653e92e158858d4beef1d9dc38106c63.1426790651.git.cristina.opriceana@gmail.com>
	 <20150320123933.GA2001@kroah.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Vi, 2015-03-20 at 13:39 +0100, Greg KH wrote:
> On Thu, Mar 19, 2015 at 09:19:08PM +0200, Cristina Opriceana wrote:
> > Added sleep_mode label, on which the device enters sleep mode if
> > encounters an error after initialization. This helps saving energy
> > consumption.
> > 
> > Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> > ---
> >  drivers/staging/iio/magnetometer/hmc5843_core.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> This series doesn't apply, and also, if forced, breaks the build :(
> 
> Please fix up and resend.
> 
I'll fix and resend. Sorry about that, I changed some .config options
and forgot to put them back.


> thanks,
> 
> greg k-h



