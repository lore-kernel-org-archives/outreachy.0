X-GM-THRID: 6391852583766458368
X-Received: by 10.46.21.11 with SMTP id s11mr537322ljd.23.1488309498667;
        Tue, 28 Feb 2017 11:18:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls213128ljd.21.gmail; Tue, 28 Feb 2017
 11:18:18 -0800 (PST)
X-Received: by 10.25.29.11 with SMTP id d11mr484379lfd.14.1488309498155;
        Tue, 28 Feb 2017 11:18:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si1193625wmg.3.2017.02.28.11.18.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:18:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,221,1484002800"; 
   d="scan'208";a="262498737"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 20:18:17 +0100
Date: Tue, 28 Feb 2017 20:18:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>, 
    lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 5/5] staging: gdm724x: Remove
 unnecessary else after return
In-Reply-To: <CALrZqyMUbKUO4it-kmDGwaZJS8b4hrpihDf7jpGPaRmN4_hOzg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702282017300.2171@hadrien>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com> <1488219268-3006-5-git-send-email-singhalsimran0@gmail.com> <1488224468.25838.11.camel@perches.com> <CALrZqyMy3q1GOj3uDK3VpXCs4rNrX2R7WM5wHgFXQTaH-U0utA@mail.gmail.com>
 <CALrZqyMUbKUO4it-kmDGwaZJS8b4hrpihDf7jpGPaRmN4_hOzg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, SIMRAN SINGHAL wrote:

> On Tue, Feb 28, 2017 at 1:49 AM, SIMRAN SINGHAL
> <singhalsimran0@gmail.com> wrote:
> > On Tue, Feb 28, 2017 at 1:11 AM, Joe Perches <joe@perches.com> wrote:
> >> On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
> >>> This patch fixes the checkpatch warning that else is not generally
> >>> useful after a break or return.
> >>
> >>> This was done using Coccinelle:
> >>> @@
> >>> expression e2;
> >>> statement s1;
> >>> @@
> >>> if(e2) { ... return ...; }
> >>> -else
> >>>          s1
> >> []
> >>> diff --git a/drivers/staging/gdm724x/gdm_endian.c b/drivers/staging/gdm724x/gdm_endian.c
> >> []
> >>> @@ -26,30 +26,26 @@ __dev16 gdm_cpu_to_dev16(struct gdm_endian *ed, u16 x)
> >>>  {
> >>>       if (ed->dev_ed == ENDIANNESS_LITTLE)
> >>>               return (__force __dev16)cpu_to_le16(x);
> >>> -     else
> >>> -             return (__force __dev16)cpu_to_be16(x);
> >>> +     return (__force __dev16)cpu_to_be16(x);
> >>
> >> again, not a checkpatch message for any of the
> >> suggested modified hunks.
> >>
> I am not getting what's the problem in removing else or may be I
> am wrong you just want to say that I should change the commit message.

Yes, I think that the issue is just the commit message.  Was it really
checkpatch that motivated you to do this?  Joe maintains checkpatch, and
he doesn't think that it gives such a warning.

julia

