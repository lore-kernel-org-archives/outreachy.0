X-GM-THRID: 6811040563999014912
X-Received: by 2002:a92:3b86:: with SMTP id n6mr8508319ilh.270.1585920444018;
        Fri, 03 Apr 2020 06:27:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls3600668ild.7.gmail; Fri, 03 Apr
 2020 06:27:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypIj9eX/CAG7VDjRqxfRsfheWG93p+P8zWBBg6cjjXK/JUFvx2noZZmUcL69laa0/UETDT2C
X-Received: by 2002:a92:680a:: with SMTP id d10mr8771854ilc.84.1585920441550;
        Fri, 03 Apr 2020 06:27:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585920441; cv=none;
        d=google.com; s=arc-20160816;
        b=qco4yWyixnFfvjhCvd76Vp0vIWHUXRF8OCXCNEEHTxLMPiTYnEZre51HHDRs7EZUUM
         pIhwY9c95F/VNUmhc818rKgMrI4niVtcwI0nvvNEAf7numwYwAoEo4KNKPTJlDcyvc7s
         3re/JV5JPwk3+dNHWy/n9CXK9oOIk6gAweBc/8fX3PT7BV62VRtmbzkkgoFQs3dakSiw
         xJEWltFUzqEPBlPP2zBjc9D3JmQZ/wVHKSN48eZ44YhsPQGYdN9vaKZ3YbZs3mAzRFFF
         59SyRTPtEuq8oUxNQP4gkF+gaV7kPC8V7Jo3xyimhWnsD1Bzl+Z1JqUAF48YDpCi5AIU
         3MYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Y200S7u2m91Mt65ozv5RX6eEnHx6dzEdtFFZwQ9u+D4=;
        b=hbUV6qKLfNfoQBfM0bKExOIjU6l3cV+n83wnaED1RQOjOqpp7nN1G49wX+IiyRZxO4
         OxT52ED8CNJ0T2zeFZ3aLU1U7fHWsB5p2s1iq8q2fRXNCJJ26SDCt+jbjVmS+tdPqWTW
         Y/N0BRr1oygUyWkJwp9RDgePPoAiJo2E5gIH7BlyhsjsoNqLSNJlqi2+7/e8WuOmYtSz
         iJLyO4cQgrW5+YS1iTtdTu07gSzHfjWz8JDi8xNYTinlFyf9hdLlNiHffCNHpzz43Lxb
         uXSl575cw+p4RHkahHcTiAZgtYpboBW3Tv5RqHWQ/E7P7qU9/D9nNdROHB9Q0Ae4fvAa
         xI9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.111 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-10.prod.phx3.secureserver.net (p3plsmtpa08-10.prod.phx3.secureserver.net. [173.201.193.111])
        by gmr-mx.google.com with ESMTPS id m8si729673ili.2.2020.04.03.06.27.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 06:27:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.111 as permitted sender) client-ip=173.201.193.111;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.111 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lf1-f48.google.com ([209.85.167.48])
	by :SMTPAUTH: with ESMTPSA
	id KMLvjfAG3iTqzKMLwjdIdm; Fri, 03 Apr 2020 06:27:20 -0700
X-CMAE-Analysis: v=2.3 cv=SYWJicZu c=1 sm=1 tr=0
 a=3W+P1/uuTVQes7LsJ5/gAg==:117 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=cl8xLZFz6L8A:10 a=pFd2Zl5z2vwA:10
 a=ZZnuYtJkoWoA:10 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=VDxRAwm8vqx6A6xO54EA:9
 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lf1-f48.google.com with SMTP id c5so5803709lfp.5
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Apr 2020 06:27:20 -0700 (PDT)
X-Gm-Message-State: AGi0PuYrfMmEclsh0oIz99AC56kKhxfPZFaZWJTsUTPiyTIZ6lHeaPBD
	zxYTJ1iCEF4GW6PhtBif3aIX0FkoEfNaXTgJO4E=
X-Received: by 2002:a05:6512:1109:: with SMTP id l9mr5556576lfg.50.1585920439291;
 Fri, 03 Apr 2020 06:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
 <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com> <20200403122733.GA506@tulip.local>
In-Reply-To: <20200403122733.GA506@tulip.local>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Fri, 3 Apr 2020 18:57:07 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLpVh6TmuDL9Ro0mFOHdzY5jsoRa+aeZDHdQTx_TRx87w@mail.gmail.com>
Message-ID: <CAK-LDbLpVh6TmuDL9Ro0mFOHdzY5jsoRa+aeZDHdQTx_TRx87w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Outreachy reminder - final application deadline
To: R Veera Kumar <vkor@vkten.in>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfHTkXuKxaYWLieQqWbTne/oKP3xD6qybKqM4p33nLVtgYPSrv8KrUZa2iHj3TXPhbTjL7Bh/Tozc92wVRHuAnW4KHmFLKaM9jFOmeKvvXvaxyjPV/rnI
 9iTcB/yfIf5Fj3/eZ56BRK5Cs8HElMnQo7N99DK1OCil2vnaY/+/LyaHtc53gBfeAAvcKZCgYcZOcUNImkg5lSMMUeBXiX9t5g4=

On Fri, Apr 3, 2020 at 5:58 PM R Veera Kumar <vkor@vkten.in> wrote:
>
> On Fri, Apr 03, 2020 at 06:17:52AM +0530, Vaishali Thakkar wrote:
> > On Thu, Apr 2, 2020 at 2:45 PM Vaishali Thakkar
> > <vthakkar@vaishalithakkar.in> wrote:
> > >
> > > Greeting Outreachy applicants,
> > >
> > > Thank you for all your contributions in the Linux Kernel. This is a
> > > reminder for you all that Outreachy's final application deadline is
> > > approaching on April 7, 2020 - 4pm UTC.
> > >
> > > Now is the time to record all your contributions and apply for the
> > > projects you're interested in. We would advise you to at least apply
> > > for 2 projects of your choice. And please do not wait to apply on the
> > > day of a deadline. You can always add more contributions until the
> > > deadline. Don't forget to add links to your patches while recording
> > > contributions on the website.
> >
> > Also, I forgot to add it here but as it says in the welcome message
> > please do not forget to add your project preferences in the
> > 'community-specific questions' section of the application, if you have
> > applied for more than one project.
> >
>
> Need clarification.
>
> Project preference within Linux Kernel's 5 projects or all Outreachy
> projects.

Project preference within Linux Kernel's projects.

> R Veera Kumar
>
> > Thanks!
> >
> > > If you have any query, feel free to contact me and project mentors. We
> > > wish you all the best for your applications.
> > >
> > > Have a nice day!
> > >
> > >
> > > Helen Koike and Vaishali Thakkar
> > > Outreachy Linux Kernel Co-coordinator
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200403122733.GA506%40tulip.local.

