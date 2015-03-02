X-GM-THRID: 5258052894720
X-Received: by 10.180.101.101 with SMTP id ff5mr1955919wib.5.1425283540524;
        Mon, 02 Mar 2015 00:05:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.102 with SMTP id q6ls405651laa.24.gmail; Mon, 02 Mar
 2015 00:05:40 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr3289363lbb.15.1425283540134;
        Mon, 02 Mar 2015 00:05:40 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id el6si616131wib.2.2015.03.02.00.05.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 00:05:40 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MJYNz-1YVMQi23Cd-0037Uz; Mon, 02 Mar
 2015 09:05:39 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Remove semicolon after if.
Date: Mon, 02 Mar 2015 09:05:38 +0100
Message-ID: <5610621.s2AZIK4DQm@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1503011637440.2545@hadrien>
References: <20150228220347.GA5430@localhost> <alpine.DEB.2.10.1503011637440.2545@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:my1czl64DfRiKzqRDNyn3XdNq0FDxBMWLA77Mr60tTm09pvF6bM
 wUchjUX8uWF0ejSB+RquqSOTlGzkEM/BqcWmoBmQb62kbQOgvUgBU1GgdOulRm6qyve3g40
 1FDqUTgxqPTWGEQ1vgL8lpP58PxH2XLwsAqXeZs+OK2z3YcixdBwvVzg9ypRKvi9DxeV1is
 bzU9K93rM+q+NFoC9Qiag==
X-UI-Out-Filterresults: notjunk:1;

On Sunday 01 March 2015 16:37:57 Julia Lawall wrote:
> >       while (inb(dev->iobase + DAS1800_STATUS) & FNE) {
> >               dpnt = inw(dev->iobase + DAS1800_FIFO);
> >               /* convert to unsigned type if we are in a bipolar mode */
> > -             if (!unipolar)
> > -                     ;
> > -             dpnt = munge_bipolar_sample(dev, dpnt);
> > +             if (!unipolar) {
> > +             dpnt = mungef_bipolar_sample(dev, dpnt);
> 
> You need some indentation here.
> 
> julia
> 
> >               comedi_buf_write_samples(s, &dpnt, 1);
> > -
> > +             }

It rather looks to me that the patch fundamentally changes the 
behavior of the function, but calling two functions conditionally
that were called unconditionally previously.

There is also a typo in 'mungef_bipolar_sample' that will prevent
this from compiling.

	Arnd

