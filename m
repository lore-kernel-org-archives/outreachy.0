X-GM-THRID: 6803716874412490752
X-Received: by 2002:a05:651c:1072:: with SMTP id y18mr13523723ljm.243.1584261644459;
        Sun, 15 Mar 2020 01:40:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls2047333lfe.3.gmail; Sun, 15
 Mar 2020 01:40:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsdxFOaYr0JnYFg5zgG8M3LidGmWeeJL8Hf0qhr630c3ShIAHxwuWMdHY//E0rDv+Jl+9yd
X-Received: by 2002:a19:6746:: with SMTP id e6mr13273157lfj.43.1584261642888;
        Sun, 15 Mar 2020 01:40:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584261642; cv=none;
        d=google.com; s=arc-20160816;
        b=UnucejR19us4VurRyVZQL/a4vOSWJgfN2XJixgFvGpLK7qykZcDWPKTU4FucpusD9a
         suufWn7Rb7Wteh8DeAYRfv8doSofyJkUaksyZdkas1nCcrYrjpBsYK9mZRdyOp5iDCsW
         FAVwAv/rFYY24e01QQEDIW3XCb0YvbbQqbN0cKtNrjDtbXISBFrUeOxE++ktxXeFbxld
         WgHVYH7JDKRjKbfWOQIYYBSP81Oo3B+v7a+3W1U8//aUt0as5aSNFevSHUaUFe5F3h31
         kR3BBXlhK30/HsIDd9itu3C8Y9n4m5mi6OuNGaK13FAULjjL2/PQwyOK8kv5Dgrpc7FW
         w/vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=R3L4UJW5iuMTHDcHj5DnWoUyVYN1uH1kBobMMCJujsM=;
        b=kIz7ed/cOJVQwy9hvP3KhNb2ZA/1vVbI5NkKbl4UN0r10MAJmIbPHgVPQYOJGY0th9
         aYe1507Sy/2FTkjMCcfhIpkjfSXWa8ygsj5ffmUf7ZxaC2Qdt6+RGOtH9GzVF42od4Oj
         1a76cLG5pzIZBrE1rZ56sUtwP2crzSMBzP6SO/YnMSoeJRraHw7OaW0LlX8tPSah2rQ5
         28e4/4dP6L/QeflThI/4T4R1rWWAqtlm5TkOo6MIRJeWR7NElL6HH2V0U/GNDnxeAfsZ
         ViiqUkbaAVJ3T3z7FEZS1EKow8GTsofrSxxHWk5GoR7WWSc9Zot9ZpMXyF97g5sIdwhU
         38cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d12si635946lfi.2.2020.03.15.01.40.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 01:40:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,555,1574118000"; 
   d="scan'208";a="342396647"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2020 09:40:41 +0100
Date: Sun, 15 Mar 2020 09:40:41 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: rtl8723bs: remove unneeded
 local variables
In-Reply-To: <5dd7e63b4fea205ec7a45456794ec8b12d8faa4f.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003150940050.2645@hadrien>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>  <alpine.DEB.2.21.2003132025350.2355@hadrien> <5dd7e63b4fea205ec7a45456794ec8b12d8faa4f.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 15 Mar 2020, Payal Kshirsagar wrote:

> On Fri, 2020-03-13 at 20:26 +0100, Julia Lawall wrote:
> >
> > On Fri, 13 Mar 2020, Payal Kshirsagar wrote:
> >
> > > Remove unneeded variables and their declarations from the files of
> > > staging/rtl8723bs directory.
> > >
> > > Payal Kshirsagar (3):
> > >   staging: rtl8723bs: hal: hal_com.c: remove unneeded variable
> > >   staging: rtl8723bs: core: rtw_io.c: remove unneeded variables
> > >   staging: rtl8723bs: core: rtw_pwrctrl.c: remove unneeded variable
> >
> > The subject lines should be created according to what others have
> > done for
> > these files.  In any case, there should not be .c
> >
>
> Since I had done same change in all the files in only a single
> directory, I needed to add their names to make the seperate patches for
> each file.

Someone suggested that still there should not be the .c part.

julia

>
> > julia
> >
> > >
> > >  drivers/staging/rtl8723bs/core/rtw_io.c      | 9 ++-------
> > >  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 7 +------
> > >  drivers/staging/rtl8723bs/hal/hal_com.c      | 5 +----
> > >  3 files changed, 4 insertions(+), 17 deletions(-)
> > >
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> > > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/cover.1584113084.git.payalskshirsagar1234%40gmail.com
> > > .
> > >
>
>

