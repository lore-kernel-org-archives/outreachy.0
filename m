X-GM-THRID: 6950732007035895808
X-Received: by 2002:a1c:1bd0:: with SMTP id b199mr3869182wmb.127.1618504154481;
        Thu, 15 Apr 2021 09:29:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls3094913wmk.0.canary-gmail;
 Thu, 15 Apr 2021 09:29:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxbn3/24CQSsXrFjX9f5vCrDue2TtWCxjvttGLAkXk5/M3A/KEI18wHQhWOd5szblAedx1M
X-Received: by 2002:a05:600c:4f54:: with SMTP id m20mr3948295wmq.58.1618504152892;
        Thu, 15 Apr 2021 09:29:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618504152; cv=none;
        d=google.com; s=arc-20160816;
        b=qaUyySBEl27HwWkucr0ojeNOfeVLfTvdYZYQ2mNE8zuHaoFYSIzx7XSVB/vDvEjVF9
         YcODIBhtQzTS/2NoMsmYEgyjtk6cYh/REimJgD9lgaevAAriVIebEltbImDOn63RzFjk
         ezvgD0LTtTIlFC+182LHSBAwZxddm246bXMkxy+pkxAwz/cK82EXzlXrqqFadn0dntuH
         bPz5K9LbH0/vdjABbq6o6cX42qBhdM54PDG6EVmIZ5yL6NPnFKdldgaAV9KhuH3Zv5E7
         Q/g9KAVQa27xp9fTcz8GtKXPozsZXgjKNFQ96u5JhRM2F5mB6vL5gp/BE5+tSxYESHdi
         QSRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=UWT2idxN09CHDglQaD+B0NBTODhKJC6BixQucUdcTVM=;
        b=DCNvHPXKYmogsW9fLQaXquhEIx6SrNW+PaYcnEIYb5RDsMrurBTaLaeVMrPdSMPcUT
         4FQ9v2k8VF+RFWA2idsf2LRuB4nyGZ5zRpfFTLNKI4VVE8cHgpju4Mxvjo7+foKnpmYC
         eRKfhTr1+fM0d1bbDQt2AoSuPE1eZ+yWud/W8/UGVGXR2iqsiAUK9VnOD0ynWiaQkyJA
         DwGFJXCDpHlCeTTDehVo+4vQMTcEtZc1mI+hbxQGr1N/4nAZWq7osZmCIWGUkMDKeCfv
         rhc/vsijgEVv85D+k124riQjeuttg2LvH52F87+AnuA8uYRFLBvavs3COT27GK9ED0cE
         hi8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n35si195724wmp.0.2021.04.15.09.29.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:29:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AWDSKhalXtj+1cLvCFRdsdpuSO9rpDfLN3DAb?=
 =?us-ascii?q?vn1ZSRFFG/GwvcaogfgdyFvImC8cMUtQ/eyoFaGcTRrnnqJdzpIWOd6ZNjXOmG?=
 =?us-ascii?q?ztF4166Jun/juIIUzD38p88YslTKRkEt33CjFB/KPHyS21CcwpztXC0I3Av4fj?=
 =?us-ascii?q?5kxgRw1rdK1shj0RYjqzKUF4SBJLApA0DvOnl6l6jgC9cncaZNnTPBc4dtXEzu?=
 =?us-ascii?q?emqLvbexIcQzYo5A6S5AnYioLSIlyomi0TVD5C2t4ZnFTtmQaR3Mqej80=3D?=
X-IronPort-AV: E=Sophos;i="5.82,225,1613430000"; 
   d="scan'208";a="378783588"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 18:29:12 +0200
Date: Thu, 15 Apr 2021 18:29:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Mitali Borkar <mitaliborkar810@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v4 2/2] staging: media: zoran:
 add BIT() macro and align code
In-Reply-To: <1786879.usmzhG7KoZ@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104151828001.32851@hadrien>
References: <cover.1618342050.git.mitaliborkar810@gmail.com> <YHg70mRLN5S8mywn@kali> <alpine.DEB.2.22.394.2104151540360.29064@hadrien> <1786879.usmzhG7KoZ@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 15 Apr 2021, Fabio M. De Francesco wrote:

> On Thursday, April 15, 2021 3:41:23 PM CEST Julia Lawall wrote:
> > > > > +#define ZR36057_JMC_JPG_EXP_MODE		(0 << 29)
> > > > > +#define ZR36057_JMC_JPG_CMP_MODE		BIT(29)
> > > > > +#define ZR36057_JMC_MJPG_EXP_MODE		(2 << 29)
> > > > > +#define ZR36057_JMC_MJPG_CMP_MODE		(3 << 29)
> > > >
> > > > Same as above. Please change back ZR36057_JMC_JPG_CMP_MODE to be (1
> > > > << 29). Then this 2 bit field is consistent.
> > >
> > > Sir, I guess this BIT(29) was already present. I didn't changed this.
> > > I will change this as you said.
> >
> > It comes from this patch:
> >
> > 5e195bbddabdd94b15eeb60439cece996d58b329
> >
> > Probably putting it back should be a different patch in the series.
> >
> > julia
> >
> Interesting... How do you find out which patch a specific change is in?

I tried git blame, but that just went to a commit that made another change
on the same line.  So I tried something like git log -L 125,125:file.c

julia

