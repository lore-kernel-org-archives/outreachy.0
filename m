X-GM-THRID: 6472784237919469568
X-Received: by 10.28.236.83 with SMTP id k80mr2768226wmh.29.1507136880700;
        Wed, 04 Oct 2017 10:08:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.145.14 with SMTP id t14ls649948wmd.4.canary-gmail; Wed, 04
 Oct 2017 10:07:59 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAhqLPyb5OJH7SdFIc51XRyb74sc9NQhg3XK8sMHa0KEIWMP+QmZYuhdPYB0WIHoP9yxpwo
X-Received: by 10.28.238.220 with SMTP id j89mr1166772wmi.6.1507136879714;
        Wed, 04 Oct 2017 10:07:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507136879; cv=none;
        d=google.com; s=arc-20160816;
        b=jsUszbK0riNNIbLzyPCg3B8xIJXXK+hJtuXesScizBaIRnnvkERzOq4YoeJFGNXeSz
         CBDFdBNjkTyPaRUP9BxOvn7DTYydvwzhdxDdfsi47xRpax96hII2tbLCft+SJg4WpZ9H
         GfmNWE5gnw4R2xpEM53BDig0+ZqpnNbMEK6+KB1HaR6Ts6zZxXtJQduc97r6v7+bHh1N
         0p23bbyOrk89oKQMxR6mib1uG7dkue8PSWRbbVgOiB+OUxGh4eLO/VXNo26UblqHOqKw
         KEmATDsiGFvc9C33+viDBIuZxYj5VUk5y5J+Q8wYE7sKxfu1V/9C1EgFl6VJmiInY84g
         26iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=+FLxGGDTp25G9Gh+RD2WQ/tSB5fLc3O4bd0BQ74Z380=;
        b=PoacxEU1ZMQb9U5fhAxaxRLXSRntJHFQ1T+DllysxseETw8er+NnK0vChnJ3F+OC4G
         AEWhKp+Jd5SgI8EllAE24YvvFM49FtjQuLYIj+cfmjLaI+/MXTzqXkAv9vc2ecd2RJjY
         G41paKDsPRTqQnyMziqkvvQ/Bs22oV6WpcZBJ+uJO4K5SonzeQjPheWShK5zuTB0fK/1
         r/nAXE8JAusmQ43cwu/aRC46Nd/rua0405tsE0C1ZTItcAfxyj5wfSPgb1DZDQLnD7bo
         JV5OkcKskuufMxw68lFZVc/jVw1yR8OUNJsklUCOOYwLe7ipODUBpv4PqOZYnD/RbaT4
         92kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n82si1309804wmg.3.2017.10.04.10.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 10:07:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,478,1500933600"; 
   d="scan'208";a="294292519"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Oct 2017 19:07:59 +0200
Date: Wed, 4 Oct 2017 19:07:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, devel@driverdev.osuosl.org, 
    Greg KH <gregkh@linuxfoundation.org>, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use
 list_for_each_entry_safe
In-Reply-To: <CAB3L5owT483S1ytafbS1CVLS06069CtiB7LFcmQCTSOFMH3Exg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1710041907100.2815@hadrien>
References: <1507122755-5489-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1710041533110.2815@hadrien> <20171004150813.kajdk27w4ngrz57w@mwanda> <CAB3L5owT483S1ytafbS1CVLS06069CtiB7LFcmQCTSOFMH3Exg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 4 Oct 2017, Srishti Sharma wrote:

> On Wed, Oct 4, 2017 at 8:38 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > On Wed, Oct 04, 2017 at 03:34:05PM +0200, Julia Lawall wrote:
> >> Again, you have three patches on different files with the same subject
> >> line.  You could add the file name eg rtw_ap: to the subject line to make
> >> them unique.
> >>
> >
> > And the subject needs to start with [PATCH v3] and then after the
> > Signed off by line put:
> Shouldn't it be only v2 as I haven't sent a v2 for this before.

It should be ok.  There was a v1 that only did list_entry and where all
the patches had the same subject, but Greg already dropped that one.

julia

>
> Regards,
> Srishti
> >
> > ---
> > v2 and v3: Changes to the subjects and changelogs.
> >
> > regards,
> > dan carpenter
>

