X-GM-THRID: 6332661608531099648
X-Received: by 10.46.0.208 with SMTP id e77mr3762293lji.7.1474477284727;
        Wed, 21 Sep 2016 10:01:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.146 with SMTP id f18ls1407007lji.28.gmail; Wed, 21 Sep
 2016 10:01:23 -0700 (PDT)
X-Received: by 10.25.15.104 with SMTP id e101mr1466010lfi.24.1474477283832;
        Wed, 21 Sep 2016 10:01:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e21si2675550wmc.2.2016.09.21.10.01.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 10:01:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,374,1470693600"; 
   d="scan'208";a="194206784"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Sep 2016 19:01:23 +0200
Date: Wed, 21 Sep 2016 19:01:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: Alison Schofield <amsfield22@gmail.com>, gnudevliz@gmail.com, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Mutt/Gmail Issue
In-Reply-To: <CAKHNQQEPaRidGeQr1QAZFdBcWi2X27XV9fqic1w7fACtebKH_w@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609211901090.14829@hadrien>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com> <20160921162649.GA2358@d830.WORKGROUP> <CAKHNQQF3MsCTkicKWN3MvWBtdneHb0_dkPs4v0apW5yRZ8D3Gg@mail.gmail.com> <alpine.DEB.2.10.1609211852230.14829@hadrien>
 <CAKHNQQEPaRidGeQr1QAZFdBcWi2X27XV9fqic1w7fACtebKH_w@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 21 Sep 2016, Shivani Bhardwaj wrote:

> On Wed, Sep 21, 2016 at 10:22 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Wed, 21 Sep 2016, Shivani Bhardwaj wrote:
> >
> >> On Wed, Sep 21, 2016 at 9:56 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> >> > Hi Liz,
> >> > Similar to Namrata, I don't know answer to specific question, but
> >> > I can share my .muttrc and .esmtprc that got it working for me.
> >> >
> >> > And then there were some things I did over in my gmail account settings
> >> > probably related to selecting IMAP.
> >> >
> >> > amsfield22@d830:~$ cat .muttrc
> >> > set sendmail="/usr/bin/esmtp"
> >> > set envelope_from=yes
> >> > set from="Alison Schofield <amsfield22@gmail.com>"
> >> > set use_from=yes
> >> > set edit_headers=yes
> >> > set spoolfile="imaps://amsfield22:mypasswd@imap.gmail.com/"
> >> > set folder="imaps://imap.gmail.com/"
> >> > set record="=Sent"
> >> > set postponed="=Drafts"
> >> >
> >> > amsfield22@d830:~$ cat .esmtprc
> >> > identity "amsfield22@gmail.com"
> >> > hostname smtp.gmail.com:587
> >> > username "amsfield22@gmail.com"
> >> > password "mypasswd"
> >> > starttls required
> >> >
> >> >
> >> Hello,
> >>
> >> Just in case you don't know the exact settings to be done in your
> >> gmail, you can check my blog post here:
> >> https://unixia.wordpress.com/2016/05/01/setting-up-mutt/
> >
> > Thanks Shivani.
> >
> > Could I put a link to this in the kernel tutorial?
> >
> Yes, please. It would be great!

Done, thanks!

julia


>
> > julia
> >
> >>
> >> Shivani
> >> > --
> >> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160921162649.GA2358%40d830.WORKGROUP.
> >> > For more options, visit https://groups.google.com/d/optout.
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQF3MsCTkicKWN3MvWBtdneHb0_dkPs4v0apW5yRZ8D3Gg%40mail.gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQEPaRidGeQr1QAZFdBcWi2X27XV9fqic1w7fACtebKH_w%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

