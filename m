X-GM-THRID: 7019965111499489280
X-Received: by 2002:a2e:7007:: with SMTP id l7mr25178003ljc.28.1634474040979;
        Sun, 17 Oct 2021 05:34:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:1a4:: with SMTP id c4ls597887ljn.1.gmail; Sun, 17
 Oct 2021 05:33:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzn7s0IsBC6qNtzNAlZF0kvKGHFL0clnAt6iCA41v4EfLAfGqjVBvOvi90GMV6OHtMIH9br
X-Received: by 2002:a2e:8841:: with SMTP id z1mr18974339ljj.180.1634474039232;
        Sun, 17 Oct 2021 05:33:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634474039; cv=none;
        d=google.com; s=arc-20160816;
        b=ZYdeULNUJ1RFnnKQV7zSVXYrcLtKUOKLY0+SgBc8H5TxXDtw7ejGrdWhdTntJcyTi4
         cu/+YuplntmFLvHh0Ry43/qWz1UygugzbOnGTPAwQTWWNLOGWqpt7b+DEW+0XeAWDQyR
         QNensGQNdghtFNfcUjwpKMXsTFj++HI2Y9CZji/28vo2gIxmdh7H2JHqBmjK5vIQF2nJ
         BKbGcaxuIUcaOzWbMLB6mXkd6ekaOBPRGaMm5AGLmH2LpXqTbMym5gIDeMtnQ9iDL2aR
         tNK11/EgG4QCW11R0+PIquHC8pAo1q240/nwNRC9lq1uO4W+2lwzPoMqwRKAsboIHNgd
         sNUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=dULlVPyt3fgcTZjG8vqP3A4wwpH0rtCc4+UOlTDYi9M=;
        b=Jr2vOpfr9t5q7H9p8U5knVY/4zah8g/+YiqsJINy3WD+L8UCmLV08/HjRmspcf0Ljm
         NkK51RXUQGaLjmcdwkAFnYcOsBIPWPvv3EL0gajKzU6nl1G2j1wjnxwQddQfmkPNKtr7
         lqzcf1+XVBOKSKUrbWbDr3KAmeq++uoOiZubagCv2ZFCUqjqSpiCmc743TYDk/Go4kbH
         pIiXX9P1ptqR43a1RbtFhF/yA332aq+Piruquq/Xb2bdcPmIbKRSfnP/4Bs1oE0zU/Tx
         abCBzZwVB8y+UKe1UNAg2x4KrEOiB7U9MNeFBpD6AdRHP1Sgi/PWX3KiF94V99So11zV
         /GpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 8si328838lft.11.2021.10.17.05.33.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Oct 2021 05:33:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Adpz58asSHLVfAgw7szFQVONF7skD7NV00zEX?=
 =?us-ascii?q?/kB9WHVpm6yj+vxG+85rrSMc6QxhIU3J+7i7VpVoJEm8yXcb2+ks1NuZLWrbUQ?=
 =?us-ascii?q?iTXedfBOnZslnd8kTFn4Y3v8sOT0EUMqyUMbEVt7eZ3OD1KadG/DHAmprY/9s3?=
 =?us-ascii?q?qB1WPHpXgy4M1XYIe3WmO3wzYhJHC94YLfOnl7V6jgvlQG8QaMujAHkDQqzsm/?=
 =?us-ascii?q?3n/aiWHSIuNlof8w+Jgiqv6LnmVz6i/jlbfQ9u7N4ZgBX4eyqQ3NTTjxh+8G6j?=
 =?us-ascii?q?61Pu?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="396163947"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2021 14:33:57 +0200
Date: Sun, 17 Oct 2021 14:33:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Stefan Wahren <stefan.wahren@i2se.com>
cc: Kushal-kothari <kushalkothari285@gmail.com>, 
    linux-arm-kernel@lists.infradead.org, mike.rapoport@gmail.com, 
    kushalkothari2850@gmail.com, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, 
    linux-staging@lists.linux.dev, nsaenz@kernel.org, 
    bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH v2] staging: vc04_services: replace msleep() by
 usleep_range()
In-Reply-To: <83076fd7-3183-5665-a9df-63a0b7e13c3f@i2se.com>
Message-ID: <alpine.DEB.2.22.394.2110171433141.3026@hadrien>
References: <20211017092900.134752-1-kushalkothari285@gmail.com> <83076fd7-3183-5665-a9df-63a0b7e13c3f@i2se.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Oct 2021, Stefan Wahren wrote:

> Hi,
>
> Am 17.10.21 um 11:29 schrieb Kushal-kothari:
> > Fixed the warning:-msleep < 20ms can sleep for up to 20ms by replacing
> > msleep(unsigned long msecs) by usleep_range(unsigned long min, unsigned long max)
> > in usecs as msleep(1ms~20ms) can sleep for upto 20 ms.
> >
> > Signed-off-by: Kushal-kothari <kushalkothari285@gmail.com>
> > ---
> >
> > Changes from v1: Reword both the subject and the log message.
> >
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > index 6fbafdfe340f..80a7898c5331 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > @@ -857,7 +857,7 @@ vchiq_bulk_transmit(unsigned int handle, const void *data, unsigned int size,
> >  		if (status != VCHIQ_RETRY)
> >  			break;
> >
> > -		msleep(1);
> > +		usleep_range(1000, 2000);
>
> there was a recent discussion about this checkpatch warning [1]

Should there be a comment about it?

julia

>
> Best regards
>
> [1]
> https://lore.kernel.org/linux-staging/260b38b8-6f3f-f6cc-0388-09a269ead507@i2se.com/
>
>

