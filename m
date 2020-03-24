X-GM-THRID: 6807744599816142848
X-Received: by 2002:a2e:8e77:: with SMTP id t23mr17746200ljk.221.1585061382327;
        Tue, 24 Mar 2020 07:49:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls3596258ljp.1.gmail; Tue, 24
 Mar 2020 07:49:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtfFjkCJH08XTWd95CsbCOfVvnXNVb/YOSAeLyqCk55NS2PKpgOzezme6SVRZUFQ5/KouDh
X-Received: by 2002:a2e:a401:: with SMTP id p1mr17429415ljn.106.1585061380518;
        Tue, 24 Mar 2020 07:49:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585061380; cv=none;
        d=google.com; s=arc-20160816;
        b=p0vKHbGIvWN3DSuKSeEoPS/EpAE0lzZOm+FRKz1o9CNFLLbTStuJt0bc333tDmFlHJ
         dsiiF1sN0ktAezMDLo2yX5eRXk1wD+oM9Ey6zfCQVu+5SChDRuQCdbuoPfuDYf+nL2QR
         wscXCwoSOvpFi8KbzxrIukqkFxOJT6C+oyjM0C+K5buRv8yFy3sL8AfFFJ2T7vXqVZZh
         R/mKAtIZtM433FQrso0cTve+arFxGnUSC2IFuAorcztxcweH0wVGzdrT+0Fp6tBNylTj
         lg6Aje15JDB1kmM1ODQ/dp6Uxm//SdfjeJV/YjkSsr/oHJP0Quow7w1Mif5Qev6cQubk
         +Hrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=a7UaagtfTtwQA4YR4FV4Q+2jVBC5MA6ZAjuOcQAIr0k=;
        b=Ue7M8yBe69Fy8fzUCpiLZEw1Buf3TnG1RtRTgrVCZz70yctovwOyasKFOZkeaOQJQl
         M/VosiEJWHmEfs1gfUW84fdqJPHzm+5soW5VK+Maf3uv3Tr00tDEzsj4m4N9j9pzb+Ua
         OHdsi0G68rIq+nGL/lyUdu38pFEJe1Za1S7eY9PaK7/hVw4/9Fp62h4fFfERaD8Kd2d0
         eMiwQbXWL2CRzTXKZKP/I6rL8BYU32AY/i106WeE9xJA+qzPs9SAYAysA2UGcCpch8bZ
         k8fhY+Yr6WKQpY9R1xYLcroQddGXjvgw+5qR3q53RBaa0lZFEcMKKvdpD6MYljJoc+VY
         Fa/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d12si1058064lfi.2.2020.03.24.07.49.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 07:49:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,300,1580770800"; 
   d="scan'208";a="343474978"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2020 15:49:39 +0100
Date: Tue, 24 Mar 2020 15:49:39 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, 
    "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: Following up on Coccinelle.
In-Reply-To: <8249c08d6c739a40441d2bb066e828d004d56d02.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003241547480.3306@hadrien>
References: <eaac641de00be14d48192180c624c2e13f7d897a.camel@gmail.com>  <alpine.DEB.2.21.2003241334100.3306@hadrien> <8249c08d6c739a40441d2bb066e828d004d56d02.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 24 Mar 2020, Sam Muhammed wrote:

> On Tue, 2020-03-24 at 13:39 +0100, Julia Lawall wrote:
> >
> > On Tue, 24 Mar 2020, Sam Muhammed wrote:
> >
> > > Following this thread:
> > > <20200311181134.GA17847%40supernova>
> > >
> > > While tinkering with Coccinelle, i found that this error:
> > >
> > > coccicheck failed
> > > make: *** [Makefile:1742: coccicheck] Error 255
> > >
> > > only happens with (as far as i tried) two COCCIs:
> > > using MODE=patch
> > > scripts/coccinelle/api/atomic_as_refcounter.cocci
> > > scripts/coccinelle/api/check_bq27xxx_data.cocci
> > >
> > > So running make coccicheck with no COCCI= will always fail at the
> > > scripts/coccinelle/api/atomic_as_refcounter.cocci
> > >
> > > Adding that MODE=report is okay to report all ERRORs ..etc
> > >
> > > so specifying a COCCI to get round it worked for me.
> >
> >
> > Could you try with the option DEBUG_FILE="err.log" and then see what is in
> > err.log when it crashes?
> >
>
> Okay, on both files, it complained:
> virtual rule patch not supported
>
> and when i looked into both COCCIs i found both only support (virtual
> report) --both are rules with no +/-/*--
>
> i put "virtual patch" anyways and it obviously complained:
>
> No rules apply.  Perhaps your semantic patch doesn't contain any +/-/*
> code, or you have a failed dependency.  If the problem is not clear,
> try --debug-parse-cocci or check whether any virtual rules (e.g.,
> patch) should be defined.
>
> So i guess both of these COCCIs are only for reporting?
> thats why its fine with MODE=report.

Yes.  But make coccicheck shouldn't crash if you run it with MODE=patch
and some semantic patches don't support that.  It should just move on to
the next option.

julia

>
> this has a workaround until we depend on make coccicheck with with
> MODE=patch and no COCCI=
>
>
> > >
> > > ++
> > > but i have a question, maybe a couple:
> > >
> > > + If i have a simple .cocci and it produces patches, how do i make a
> > > commit of it?    _newbie_ :)
> >
> > Apply the patch to your code:
> >
> > patch -p1 < the_patch
> >
> > Then proceed as if you had made the change by hand.
> >
> > > + If this .cocci propagated across a driver, a patchset of this change
> > > across the driver will have the same subject for all patches, I guess
> > > thats not okay? so one patch of all the driver files should do it?
> >
> > It depends on the changes.  If all of the changes are quite uniform, then
> > putting multiple changes in a single patch could be ok.  If each change is
> > a special case, you may want to put more detail about the file in the
> > subject line, ie before the :
> >
> > In general, the point of a patch is to make something that is
> > understandable for the person who has to review it.
> >
> > > + Basically, how to format a patch found by EITHER an existing .cocci
> > > in the source tree, or one that is made and not included in the
> > > /scripts/coccinelle ??
> >
> > If it is made by a semanitic patch that is in the kernel tree, then you
> > can use the tag Generated-by: and then give the path to the semantic
> > patch.
> >
> > If you do something on your own, it could be helpful to include the
> > semantic patch in the log message, or a simplified version.  The point is
> > to show the maintainer what reasoning you have used to come to your
> > change, without overwhelming him with tedious detail.
> >
> > julia
>
>
>

