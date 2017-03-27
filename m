X-GM-THRID: 6402257939123404800
X-Received: by 10.46.80.79 with SMTP id v15mr151436ljd.27.1490650637758;
        Mon, 27 Mar 2017 14:37:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.235.203 with SMTP id f72ls1239832lfk.51.gmail; Mon, 27 Mar
 2017 14:37:17 -0700 (PDT)
X-Received: by 10.46.21.28 with SMTP id s28mr152790ljd.14.1490650637218;
        Mon, 27 Mar 2017 14:37:17 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x188si208769wmx.0.2017.03.27.14.37.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 14:37:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,233,1486422000"; 
   d="scan'208";a="266448078"
Received: from 109.236.136.163.wls.msr91gkk3.adsl.fix.edpnet.net (HELO hadrien.local) ([109.236.136.163])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2017 23:37:16 +0200
Date: Mon, 27 Mar 2017 23:37:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: Pablo Neira Ayuso <pablo@netfilter.org>, netfilter-devel@vger.kernel.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] iptables: Constify option
 struct
In-Reply-To: <CAOCi2DFc2aURc5gAuF5q6NLvBwiVSbF6cpoF=ipfVwntz=86Hg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703272336390.3204@hadrien>
References: <1490641815-12741-1-git-send-email-gs051095@gmail.com> <20170327191239.GA18080@salvia> <CAOCi2DFt9kYKDE8Cn47Pbh=B4-E_PLSKLxXLmsdjfdyNWwcm7Q@mail.gmail.com> <CAOCi2DFc2aURc5gAuF5q6NLvBwiVSbF6cpoF=ipfVwntz=86Hg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 28 Mar 2017, Gargi Sharma wrote:

> On Tue, Mar 28, 2017 at 12:45 AM, Gargi Sharma <gs051095@gmail.com> wrote:
> > On Tue, Mar 28, 2017 at 12:42 AM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> >>
> >> On Tue, Mar 28, 2017 at 12:40:15AM +0530, Gargi Sharma wrote:
> >> > The struct  of the type option is only used to initialise a field
> >> > inside the xtables_match struct and is not modified anywhere.
> >> > Done using Coccinelle:
> >> >
> >> > @r1 disable optional_qualifier@
> >> > identifier s,i;
> >> > position p;
> >> > @@
> >> >
> >> > static struct option i@p[] ={...};
> >> >
> >> > @ok1@
> >> > identifier r1.i;
> >> > expression e;
> >> > position p;
> >> > @@
> >> > e = i@p
> >> >
> >> > @bad@
> >> > position p != {r1.p,ok1.p};
> >> > identifier r1.i;
> >> > @@
> >> > e@i@p
> >> >
> >> > @depends on !bad disable optional_qualifier@
> >> > identifier r1.i;
> >> > @@
> >> > static
> >> > +const
> >> > struct option i[] = { ... };
> >>
> >> Applied, thanks.
> >>
> >> You can probably have a look at ebtables.git, probably there are more
> >> things to constify there.
>
> Hi Pablo,
>
> There are around 18 files being affected by this semantic patch in
> ebtables. Should I still send them as a single patch(since it might be
> difficult to review a large single patch)?

If they are just independent structures, you can cut up the patches if it
seems best.  If the changes are interdependent, then one patch would be
better.

julia

>
> Thanks!
> Gargi
> >>
> > Okay, I will. :)
> >
> > Thanks!
> > Gargi
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170327191239.GA18080%40salvia.
> >> For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFc2aURc5gAuF5q6NLvBwiVSbF6cpoF%3DipfVwntz%3D86Hg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

