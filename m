X-GM-THRID: 6752263859613990912
X-Received: by 2002:ac8:2dc9:: with SMTP id q9mr4277659qta.219.1573068346788;
        Wed, 06 Nov 2019 11:25:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a5d3:: with SMTP id o202ls1133828qke.5.gmail; Wed, 06
 Nov 2019 11:25:46 -0800 (PST)
X-Received: by 2002:a37:a345:: with SMTP id m66mr3595041qke.487.1573068345953;
        Wed, 06 Nov 2019 11:25:45 -0800 (PST)
Received: by 2002:a37:6312:0:0:0:0:0 with SMTP id x18msqkb;
        Mon, 28 Oct 2019 13:07:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw/pB+nExyGkMMZ0T3s/NgF4k7tC5nRcAWpf80V4zT27lueP/vQiQTRt5zcVR0qaLJ0I70Z
X-Received: by 2002:a37:e50d:: with SMTP id e13mr17971267qkg.288.1572293229454;
        Mon, 28 Oct 2019 13:07:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572293229; cv=none;
        d=google.com; s=arc-20160816;
        b=oKHrJ1BQvoalwRnUwwpvs1zYQqcqiqyVx76RFLCXm7WvHMSa3SsYfc4f/jir8NfKRS
         XncqDYnHUESoU59HcsYjklccXOfc/USOLsHYhMFeRa5chP+X+WrMfl73WyVOVwKeY1UC
         1dBQeQz1BwvZaIHfzWrNC+84RVMq3lx6W2MEAV+gyX9daB2aJNxrla5n1hZKmcUxqdFK
         7B8hV80dHixuTDW8JM/PBj6ITp3p7kGNFEC1MZx50+ptigjvyb1h/VN666q31kDi197Y
         qDb+rXSc6ocSQ/wGsnRipPl59gJ0hNBSHAf27EeNn27JKbrByI0gnksWkGJn97sU4J4g
         qGHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3mQDuj70BWGu3VV82uhzxy+YFUqHzoQtIwn3n2CdLRE=;
        b=JnLUNNupcxWTySEQOY4IM4sjOYnrmdvul71920cx7OGiI44MCSjsY7OO86uQ34X2bL
         j63bWi8tttG6OVsI9aZ7Yn2+WhYxzIog4Cf4MxHnq3vZpx/pjWaVuQYfBPax63AowVjJ
         z3/lN0wGf6r09RD/SDyGZkDMNkXRkBzDKFUoKBfGx+2fzo0x11E8aVNzUdSk4a2b+ZIT
         coarGUlqwaTLyz1CPQ+PILLEC3IDweWsLxrslp3jczAB+Aq8dAiyvgv1ZEJQSG/0awWD
         9s8YE9Iu4xxXjvQjP4eUEFkHKonUlYCJvEcGSRoExnK3rrTTygM/J0gkt2787P1f1S8t
         KYzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IKRTi0Ru;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <thesven73@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id w140si31714qka.6.2019.10.28.13.07.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 13:07:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IKRTi0Ru;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id g81so7003270oib.8
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 13:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3mQDuj70BWGu3VV82uhzxy+YFUqHzoQtIwn3n2CdLRE=;
        b=IKRTi0Ru0Z2CZbiYPkjt54bUYiDtVaLg+wn4YyYerarxbCvkOD2U/mcIHPOQz64Haa
         XrfFy2TQFH5aVL0nzNtKDHymWwtz5Ccjl7VFl4vKgvaTJ3oRibpddsJMnqf0ULhxNPxD
         v96ZxjlvApCzyCG0XcjM9amYcFNFK2JAHQQE2pycicmBnkZ9I0lHDly7sdJZR00n3OKx
         7ZLenlwm+qBBy0nDvOU744qKrRA/MKmsGi+kHLCA3f/apkLPZHPwgQdYfYyFFshmxlv6
         OaWn5K/e5yKAMtTqqvXjQ6DVPpPyFuq7sLePYWBM4vbM8IuPyytnSeAimXkVGKw1MFw6
         XbSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3mQDuj70BWGu3VV82uhzxy+YFUqHzoQtIwn3n2CdLRE=;
        b=tn4ssx7vCXiBcrKkhAEav1mbOS1wyNMl/TQkAVDtgh72DIiMzgieFQRPkNsMiRMyJe
         ukCwMCajXjraQRby8FttW5WYIFV8NV3ZMv4dzXwNWxxXb1v/EWe2EOhNTisrnS8yAa3Q
         R8ySBqQ84g3Iwv+q276yf4hW9vWLved7jpM0rw62TRlHz1kci7nZf1t9JSeZyymSDw/c
         lLe3LcKfGT9iMjd6tBo6snay/Pj6A5ToiVjRXvEyYkOAFLAe8/YgHtIsNBV0XI4nuOs8
         168uaP8mxPcz1l2P6GcnIMVAHiQMkVkWyMCjOO1xT6QMhURp+JpWXgZKs3oiv43t/RTC
         2j3A==
X-Gm-Message-State: APjAAAU3tkgyotKDvxE8krhzk/I/L+ffwdg5CTB/yVR2Q09Tslwemw5I
	eC9eKfOcoEV2s5SevlEhUUQ4Gu6dGfANOldgdVE7olUD
X-Received: by 2002:aca:2112:: with SMTP id 18mr860588oiz.86.1572293228699;
 Mon, 28 Oct 2019 13:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <20191026235214.GA11702@cristiane-Inspiron-5420>
 <CAGngYiV0hCjXigVhijoTmwMfS4mM+hC-aVFsu6VDT-WmKsNsJQ@mail.gmail.com> <20191028182847.GA2311@cristiane-Inspiron-5420>
In-Reply-To: <20191028182847.GA2311@cristiane-Inspiron-5420>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 28 Oct 2019 16:06:57 -0400
Message-ID: <CAGngYiU10LH6v6Z2DvfZ9_v=zuzfmDQEzixteFFeGMf4kSeXKA@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: use devm_platform_ioremap_resource
 helper
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 28, 2019 at 2:28 PM Cristiane Naves
<cristianenavescardoso09@gmail.com> wrote:
>
> Sorry, I was searching for the issue only on outreachy mailing list and
> had found nothing about it.
> I didn't know about these other mailing lists.
> Thanks for the feedback!

No need to apologize, most of us are always learning !

Next time, you can get the mailing lists to check by running the
get_maintainer.pl script on the file(s) you are going to modify:

$ ./scripts/get_maintainer.pl drivers/staging/fieldbus/anybuss/arcx-anybus.c
<snip>
devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)

