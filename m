X-GM-THRID: 6390855341335117824
X-Received: by 10.157.45.11 with SMTP id v11mr1337416ota.105.1487986962438;
        Fri, 24 Feb 2017 17:42:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.117 with SMTP id o108ls5273577ota.18.gmail; Fri, 24 Feb
 2017 17:42:42 -0800 (PST)
X-Received: by 10.200.45.211 with SMTP id q19mr1772045qta.60.1487986962017;
        Fri, 24 Feb 2017 17:42:42 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id c123si1654466pfa.4.2017.02.24.17.42.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 17:42:41 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x235.google.com with SMTP id b129so18194795pgc.2
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 17:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wgbQFI29aE02tXzkObTvLbgFfehfjYJ8shISYhDbrYw=;
        b=JkN5feJ8w1gAZcR0JzSrMw/3aubRP+3tmQAlV67Ht4cihYjYfeS2wUf5/hVp4Eh5ie
         MN08c662v1/zIhstQPp/uFt1fnQF+2HwopxqewKj4hRf1tRixMgMz0ICRd6mZTFoPH2N
         bzsSSQOzfHFni/+nQYDJaCUpxYh8plb/XFYf7zl6mJBRTB0fHAmyrArvMaYzZv80DwJ7
         glekULzT/0e7u0p6J8Hs1z4S+CU51vuHruSxKIp3UUW1snAKMin1NnyRIi8Hailf4zly
         Tv1ah3xD0SQAASoSt48X6y8ZZuB5NfIWWoxkzEueO2mWWIgOCAL52nVdDjOM52OOEger
         XEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wgbQFI29aE02tXzkObTvLbgFfehfjYJ8shISYhDbrYw=;
        b=X8NqoA2hS3aB0B5xjanWBFVZBW2iNm2/ykBkPapeY4gs3Sp34Ndt5BSqqNYS+UHoOm
         xpv1P/seVq2YuH2L3/qVKnyUzSIbpSK1zPbR0KRB+iNM3EFsZyANF12mHxHYWuzvc2tW
         FKJHr2eDQ/W2T7FncT6I4zMJPmuA3VLtACnvZ8hTIh+Ge32mAbIGJyqcE97hG6jzoZJ1
         JxDfQ+zCdHwdS7l9CN7P51wuW/y+VpqRCtptZKcHjIWKflQ9rH+tmClGfrWcmYy5OgBk
         BgExhXEqLBPiPsi6jyONlQALrOCZ+OBV4SLuxoVfH1aYoMX3k+ldnAxD2dTMnX7pWIXn
         kGyQ==
X-Gm-Message-State: AMke39kZs6s3HsZ7e5SlQq1bnzXRBDgVJdxb/Q5qhhOfVV1TKsJWLIVERSP15nfV8Nir/g==
X-Received: by 10.99.94.195 with SMTP id s186mr7347121pgb.198.1487986961546;
        Fri, 24 Feb 2017 17:42:41 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id y21sm17227428pgh.52.2017.02.24.17.42.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 17:42:41 -0800 (PST)
Date: Fri, 24 Feb 2017 17:42:40 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Clean-up idea: IIO Headers
Message-ID: <20170225014231.GA3395@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hi Outreachy Applicants,

Here is a clean-up task for staging/iio you might like to try.

Staging IIO Header file (re-)organization:

Guidelines to follow:

(Reference  https://kernelnewbies.org/KernelHeaders)

Three cases you may find:
1) If it's a single source file, its header info should be in that source file.
   *** Do this!

2) Interfaces between source files in a single module can have a header file
   in same dir as the source files.
   *** Leave this alone.

3) Interfaces shared between modules go in a header file in include/linux/iio
   *** Leave this alone. We will do this when the driver is moving out of
	staging 

Here's an example patchset:
https://groups.google.com/forum/#!searchin/outreachy-kernel/header$20file$20ad5933%7Csort:relevance/outreachy-kernel/THYpgGyOgsI/iz8lrqwfDAAJ

Note that when you pull the header file in, there's a customary order to it
that the drivers in staging may not be following.  In the example one above,
I moved the #defines to be before the chip structure definitions.  So, you'll
do best if you look at similar drivers in the same directory upstream, to
see how they order their header information.  Always good to look at a few,
because one may not be the perfect role model.  

It is customary to alphabetize the #includes, and to separate the kernel
and IIO subsystem #includes with a blank line.  So, although we wouldn't
send in a patch just to alphabetize #includes, while you are moving them
to the .c file, and while you are checking that they are actually needed,
sure - go ahead and alphabetize them.  (Example patch didn't alphabetize,
you'll do better ;)
 
To verify the patch(set), I'd suggest applying it to a clean tree and
rebuilding.  

Questions?  Just ask on this thread.

alisons

