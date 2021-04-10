X-GM-THRID: 6949196106394763264
X-Received: by 2002:adf:f303:: with SMTP id i3mr22172184wro.310.1618042817446;
        Sat, 10 Apr 2021 01:20:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls657525wrb.1.gmail; Sat, 10
 Apr 2021 01:20:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwPhaTc1PTRhDdJLOkrT5K6ptpBq73WZyvZQe5JoQCXl24SL4WwK7JXdDLyA0iuKL5sbSFe
X-Received: by 2002:a5d:50c7:: with SMTP id f7mr21918488wrt.18.1618042816086;
        Sat, 10 Apr 2021 01:20:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618042816; cv=none;
        d=google.com; s=arc-20160816;
        b=HKbl9kdt8gFzyF4yLJfybfueBnogyw9xkKpQ6m4f5Qu1NETKSyMZcd5AVBLb9QfLWK
         2g+xF8ySXmWEQFjyVY8DLir2jLv7n5ewMzUbhlDU5+jD8Z+n0FqlmnLlOU649r4XsKEJ
         lrPQ2a2wEQn81b4O4r8TSKiexCxuS76/ugSrI3SRWZuxq43m151D+nRtCnMRJ+khUAiw
         9qjISjK9fJxmXdhhIJV8bxAuWdY9L6xzKgrfaNVotJn5KFQQDIq1pHS65wcmCFFSN45C
         uoDzl35mznz8+obNZ1pbbk75DukKSATCi2qKKicKlH79wsHQTM53i4asXkCR4ehkkGfD
         vfyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=TO2CmzACikn5G2vs7qHuERYfHLUBsUFwQFch0q3N6aA=;
        b=OxHMses0sBgo3O0HhVIeA5sKpo0kqvIylIeIiW7MDO1TZ4PPE3RXM9TvcUmapkdov3
         SuLjCCoWkm0O8+iTtutXb1mTpycKsDkwV3ajTPMu8xmgvZ+9ClctAnMzG77JgADXy/zH
         tBA4HAV2hkCn5oIXqENCTDsxKi+/7OSMyAk444y9Bl/kBlnpwNRbARGO4UCbVFT5yMyR
         +YhfDfJ52Gs83V9GhqaOZlQHN55zFfvw2CnodkapmUNgGsqdIjpRkoHvY0hsI9gnpfDz
         KKCuKxVooCM2OTeeKoPViq6hXVj7vJpUSpkD4MEZjCxUDyZNKKoFSlQ9ZPiUVNO0bfcD
         QizA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a4si561528wrc.0.2021.04.10.01.20.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 01:20:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AclY1+6r9oDSMCBuxoPG6VwkaV5rKeYIsi2QD?=
 =?us-ascii?q?101hICF9WMqeisyogbAnxQb54QxhPE0ItNicNMC7Kk/02oVy5eAqV4uKfA6jg2?=
 =?us-ascii?q?ewKZEn0I2K+VzdMgnf0sIY6qt6aah5D7TLfD1HpOL3+hOxHdpl4PTvysCVrNzT?=
 =?us-ascii?q?xXtsUg1mApsIhztRMQqVHlZ7QwNLH/MCZfmhz/BarDmtc2l/VKqGL0QCNtKum/?=
 =?us-ascii?q?T2jp78JTYJCxk7gTP+7w+A2frKVyKV2RoTSFp0rIsK+2KtqWPE2pk=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="502532650"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 10:20:15 +0200
Date: Sat, 10 Apr 2021 10:20:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [Patch 0/3]
In-Reply-To: <2101069.1PIH1tPmJ7@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104101019210.2975@hadrien>
References: <6552860.D8CPca6BT0@localhost.localdomain> <YHFT2S31kFy72DMv@kroah.com> <2101069.1PIH1tPmJ7@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:

> On Saturday, April 10, 2021 9:29:29 AM CEST Greg KH wrote:
> > On Fri, Apr 09, 2021 at 06:29:59PM +0200, Fabio M. De Francesco wrote:
> > > This patch series removes camelcases, changes the type and use of a
> > > variable, and correct misspelled words.
> > >
> > > Patch 1/3: staging: rtl8723bs: Remove camelcase in several files
> > >
> > > drivers/staging/rtl8723bs/core/rtw_cmd.c       |  2 +-
> > > drivers/staging/rtl8723bs/core/rtw_mlme.c      |  2 +-
> > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 18 +++++++++---------
> > > drivers/staging/rtl8723bs/hal/hal_intf.c       |  2 +-
> > > drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    |  6 +++---
> > > .../staging/rtl8723bs/hal/rtl8723b_hal_init.c  |  2 +-
> > > drivers/staging/rtl8723bs/hal/sdio_ops.c       | 14 +++++++-------
> > > .../staging/rtl8723bs/include/rtw_pwrctrl.h    |  2 +-
> > > 8 files changed, 24 insertions(+), 24 deletions(-)
> > >
> > > Patch 2/3: staging: rtl8723bs: Change the type and use of a variable
> > >
> > > drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > >
> > >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > Patch 3/3: staging: rtl8723bs: include: Fix misspelled words in
> > > comments
> > >
> > > .../rtl8723bs/include/Hal8192CPhyReg.h        |  8 ++---
> > >
> > >  .../staging/rtl8723bs/include/basic_types.h   |  2 +-
> > >  drivers/staging/rtl8723bs/include/drv_types.h |  2 +-
> > >  drivers/staging/rtl8723bs/include/hal_com.h   |  2 +-
> > >  .../staging/rtl8723bs/include/hal_com_reg.h   | 34 +++++++++----------
> > >  drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
> > >  .../staging/rtl8723bs/include/hal_pwr_seq.h   |  2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_cmd.h   |  6 ++--
> > >  drivers/staging/rtl8723bs/include/rtw_mlme.h  | 18 +++++-----
> > >  .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_mp.h    |  2 +-
> > >  .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_recv.h  |  4 +--
> > >  drivers/staging/rtl8723bs/include/rtw_xmit.h  |  2 +-
> > >  drivers/staging/rtl8723bs/include/sta_info.h  |  2 +-
> > >  drivers/staging/rtl8723bs/include/wifi.h      |  2 +-
> > >  16 files changed, 46 insertions(+), 46 deletions(-)
> > >
> > > Fabio M. De Francesco
> >
> > I have no idea how you created this patch series, but I do not think it
> > worked well :(
> >
> > Please use our standard tools, that do this all for you automatically,
> >
> Apart from the fact that I forgot to save the subject, I didn't know that
> there are standard tools for doing Patch 0/N. Therefore I thought to make
> an email message that contained the information about the patch series.
>
> I was wrong, sorry. I have to research this topic in the git manual or
> somewhere else.

Everything should be clear in the Kernelnewbies outreachy tutorial.  If
there is something about this issue that is not clear, please comment on
it or propose a fix.

julia


>
> Thanks,
>
> Fabio
> >
> > and send them out in a series of emails that have a proper subject line
> > (look at what you used here...) and are properly "threaded".
> >
> > thanks,
> >
> > greg k-h
>
>
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2101069.1PIH1tPmJ7%40localhost.localdomain.
>

