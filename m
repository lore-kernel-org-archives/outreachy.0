X-GM-THRID: 6811040563999014912
X-Received: by 2002:a7b:c7c7:: with SMTP id z7mr142223wmk.142.1586231899348;
        Mon, 06 Apr 2020 20:58:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls1658082wmb.1.canary-gmail; Mon,
 06 Apr 2020 20:58:18 -0700 (PDT)
X-Google-Smtp-Source: APiQypIRu3HOJ9ubVXPhrY3FrvX0XL6jpdK9F22xewd4u0sieG8YtAojRLdrb6SxjPRuKVp5plAL
X-Received: by 2002:a7b:c0cb:: with SMTP id s11mr141063wmh.180.1586231898235;
        Mon, 06 Apr 2020 20:58:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586231898; cv=none;
        d=google.com; s=arc-20160816;
        b=hXag802p2Fa4rkB/qhqqF1nKAojZqh9iZAF7QblWTtvM15Pq8MqJ45aQKiqRGsHEXQ
         qWPlEiVHXZnYWxVKXTcE8akBmzbhac3kvSWZN5rMR2BMXGTEXDoYcm7jJjJC/hTT0JBo
         740aB3sBppR3Z/21hC5V9ZKIFAiAo3hgNmmjQWqsCpB5u6mV7+6pDehhfQRQKtdnBicm
         lxRl7colFeEMn34kZIgBfWdF3LNrvSGPIMNz+nEvHE5pJplor0vf0g73VntmjNo2T6Ya
         jp2QpdaFCPzQRkb6zT6meKaaauTtpK4dH+6l7mwyOWJKEIi80c78uTuJbbsinWEmK7V0
         cDfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=N8GfUR6cIC/+1GB4aY86euuXDgS7/KGjLBrUIYIqBIU=;
        b=Guhvyh/G3VaBf2/RnBFkDD3PfDdBUOtx2aMaA5xuYuIH/RDWJoZViEc+iEXKBDlNpd
         wYhNYsoe5xwf4DbybCOKwavSRC7tIR8vwCGs2hFzNDsYs0jYhTSoo3kQPBO49Le1Vp6s
         kU/F8OM5QrvCvqPCyQdQveUL1X2nAXQkAsgtOVlrNjKsarbHWwdAklf8nAJpQkc08Nol
         rn+NYhkeMA9C7AxDqtVfk1SufSoE4C92eSlM83ex3XCgPTywnV8ZhOO5hDa4qz1HTNNW
         +51UOZLJajn+1xJuNBV8/Ktw2B0w0PQWB3PQwnUSTPjrHEq10VsZ6ws/ASO+urzK7AC6
         +oHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ee8BmfUk;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id g78si22946wmg.0.2020.04.06.20.58.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 20:58:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ee8BmfUk;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id d77so323538wmd.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 20:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=N8GfUR6cIC/+1GB4aY86euuXDgS7/KGjLBrUIYIqBIU=;
        b=Ee8BmfUkamB5V+fGmQY9nLl0lDZEbHe6WgVNyyXi+j1Ks743K+pQgYuewPpR5ddPDJ
         sk0weCTRXnNBFbXdG00/bJuHcE2+GL+M9rxp/t/sHZJa1omymSVQdPkTo919XacgW4pR
         Sbd5qgKAErwT0u47Ij3kbfkncJITDZ9hzCUOisHkMAt8TEEdvJo/g2UWWsLcFJPcIgIr
         ho9MZCxrfXQEHv14pfEncAwA7AufYYUk1+urX/qItxmp3BebTlGlSLhGb57fjc0M0ccr
         1THM+okehVPGaiwybfUd5KHvrsCOuyGhfb/W22YqbzWFNP8S9+Dgt8nJUmMDQdckTE31
         HHCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=N8GfUR6cIC/+1GB4aY86euuXDgS7/KGjLBrUIYIqBIU=;
        b=s8dXOKGR3Pn/CIx2eFD/iJAXwhEV1MX4VpiG85SxjI8lrgIA8Uiklnpvj8SRDyN5Vw
         TCoetmw9PJWKB+BwkZkpuDxN5efp5UgpVW4e767/9V/6f2BxOw1AnteU9ZgTwSbUs9RF
         X96LU1dhs+KwWI2+fYdxgolEy8dk+SkFLGscAYTVujVWyH5YtDrMFyTN+k8stq3M0ouB
         +qA6Uo4K0A6AQ+LFUZjKR1r3rARc2yOcMb4GqDwI/hhZioPorxdeeZtXi718u2Vp28PO
         aCjDy0YpXjs8yWZ8lbn9Hm0R2nLtFosnbjBVn9+6RiK7mxS5nRijnYeEn0EmU0aZE0rk
         AgOw==
X-Gm-Message-State: AGi0PuYhuaHc5GrYSNIeyAqvnMHuu6Bw8El+rZzGPrdhtvX3Gub7rlz8
	ha27VoP3tvank6w4O/4chAQp68UhLoQ=
X-Received: by 2002:a7b:cb51:: with SMTP id v17mr133580wmj.164.1586231897842;
        Mon, 06 Apr 2020 20:58:17 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id f187sm608427wme.9.2020.04.06.20.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 20:58:17 -0700 (PDT)
Message-ID: <63d5bc81d678c725f75f2775c2a4b1bb58e02106.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: Outreachy reminder - final application
 deadline
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, Outreachy
	 <outreachy-kernel@googlegroups.com>
Date: Mon, 06 Apr 2020 23:58:15 -0400
In-Reply-To: <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
References: 
	<CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
	 <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-04-03 at 06:17 +0530, Vaishali Thakkar wrote:
> On Thu, Apr 2, 2020 at 2:45 PM Vaishali Thakkar
> <vthakkar@vaishalithakkar.in> wrote:
> >
> > Greeting Outreachy applicants,
> >
> > Thank you for all your contributions in the Linux Kernel. This is a
> > reminder for you all that Outreachy's final application deadline is
> > approaching on April 7, 2020 - 4pm UTC.
> >
> > Now is the time to record all your contributions and apply for the
> > projects you're interested in. We would advise you to at least apply
> > for 2 projects of your choice. And please do not wait to apply on the
> > day of a deadline. You can always add more contributions until the
> > deadline. Don't forget to add links to your patches while recording
> > contributions on the website.
> 
> Also, I forgot to add it here but as it says in the welcome message
> please do not forget to add your project preferences in the
> 'community-specific questions' section of the application, if you have
> applied for more than one project.
> 

The final application + contributions are recorded / submitted.
but the outreachy website says: _quoting_

You'll be able to edit your application until the final application
deadline has passed. The "Save" button makes the latest version of your
application visible to Outreachy mentors and coordinators. Saving your
application effectively submits it. There is no specific "Submit"
option. If you wish to withdraw your final application, there is a
button at the bottom of your application to do so.

now I'm confused, is there a Save button?, or the submitted
application/contribution will be automatically considered the latest
version and will be sent to the organizers right after the deadline.

in other word, is there anything else to be done after recording a
final application/contributions?

Thank You

Sam
 
> Thanks!
> 
> > If you have any query, feel free to contact me and project mentors. We
> > wish you all the best for your applications.
> >
> > Have a nice day!
> >
> >
> > Helen Koike and Vaishali Thakkar
> > Outreachy Linux Kernel Co-coordinator
> 



