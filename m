X-GM-THRID: 6466263123755008000
X-Received: by 10.46.87.30 with SMTP id l30mr63616ljb.1.1505556558807;
        Sat, 16 Sep 2017 03:09:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.167.65 with SMTP id q62ls702192wme.10.canary-gmail; Sat, 16
 Sep 2017 03:09:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD/GqcWHrmbTVR0T6nOtOIpZkksqIuw2kAIKG3zRI0Ry4mo/6FNX61PUqwTZH8uzE0BltCm
X-Received: by 10.28.229.16 with SMTP id c16mr545491wmh.13.1505556557764;
        Sat, 16 Sep 2017 03:09:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505556557; cv=none;
        d=google.com; s=arc-20160816;
        b=X3eheh3Lq/RhIJdcBNF3/BthnmEXSbVqOupXn80S8Y+SwmA340YLlYEvV8+Bzm8oMP
         +MsyYQOVoB8i1DCLJJOr1tXX89pnBRPaB4h78MMzaiWnu1GRQ8tHw7T5ttLmLpckRCPW
         AHanwh71CRwoty9oZHVDV/o0gsHex7lM157ymGlVs3+7iMRl7pW7ERon0vZkHiRa/oIu
         EeAL3yKBqcqHVAGO+xBRxZphGUY2gce+iiux/dIv+0vcSAp5SQrQGkWi7SgqDKcCIrOy
         VWjJB1uiRJ3wi5z8W0bWdWbaXr9+QOF6607f9WTiYD3yECmY5oVgYE+ek4GLRuYaTLgW
         3I0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=xZrtT6Xco2PA6WeRojblGgbpIe0O/nLQ1YWU6u3TyQc=;
        b=ZALa+HCMc/KBjTDwHp2ftoQ52fxgsiomFAupyq4v35wNd2k+3DRxxUdqDgoDnERauX
         b99pvjn6S4WJ8Gkb6Z7BZX2AHI0G512JxTPO/iV2TuEy5XZ5wuSfapMghmiChIeNch8E
         PRjbY2SPkE/Or+zxfQVZxwem8hzdtQWqgXLl7Tuz8XuCRqcczoqrjoPxIEWAWlgwdYJt
         37W8+aaVCIqwbvJCWjcy6/at2BdcXOcdg844cfmMaXMWRyP52BG/Idc0kdHkPvTAaCG1
         qwBPtajSMaiTIHh2OJUOX+xnYnsiUh1t1QBFgF8Qp47tSv/5wS5ztwFNfRv4TM0qy4LS
         ZjGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 191si152630wmn.2.2017.09.16.03.09.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 03:09:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="237715425"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 12:09:16 +0200
Date: Sat, 16 Sep 2017 12:09:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Aastha Gupta <aastha.gupta4104@gmail.com>, 
    outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: add comment
 for struct mutex definition
In-Reply-To: <1505555549.16316.3.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1709161208590.2943@hadrien>
References: <1505544199-13800-1-git-send-email-aastha.gupta4104@gmail.com>   <alpine.DEB.2.20.1709160948260.2943@hadrien>   <CAHXiS5-uqsTyjXv3KjnGnL9T7hKfEnMPL+RW-CXQE+U-oDFq2Q@mail.gmail.com>   <alpine.DEB.2.20.1709161020120.2943@hadrien> 
 <1505551165.14664.1.camel@perches.com>  <alpine.DEB.2.20.1709161134380.2943@hadrien> <1505555549.16316.3.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Joe Perches wrote:

> On Sat, 2017-09-16 at 11:35 +0200, Julia Lawall wrote:
> >
> > On Sat, 16 Sep 2017, Joe Perches wrote:
> >
> > > On Sat, 2017-09-16 at 10:23 +0200, Julia Lawall wrote:
> > > > On Sat, 16 Sep 2017, Aastha Gupta wrote:
> > > > > On Sat, Sep 16, 2017 at 1:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > > > > > On Sat, 16 Sep 2017, Aastha Gupta wrote:
> > > > > >
> > > > > > > This patch fixes following checkpatch.pl checks:
> > > > > > > CHECK: struct mutex definition without comment
> > >
> > > []
> > > > > > > diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
> > >
> > > []
> > > > > > > @@ -122,7 +122,7 @@ struct most_dev {
> > > > > > >       bool is_channel_healthy[MAX_NUM_ENDPOINTS];
> > > > > > >       struct clear_hold_work clear_work[MAX_NUM_ENDPOINTS];
> > > > > > >       struct usb_anchor *busy_urbs;
> > > > > > > -     struct mutex io_mutex;
> > > > > > > +     struct mutex io_mutex; /* synchronize I/O with disconnect */
> > > > > >
> > > > > > Why did you choose this comment?
> > > > > >
> > > > > > julia
> > > > >
> > > > > The use of this struct mutex was mentioned before in the code.
> > > >
> > > > I see that it is just in the doc of the same structure.  I'm not sure that
> > > > a double comment is needed in this case. I wonder if checkpatch
> > > > should/could be extended to address this.
> > >
> > > I think that's not feasible.
> > >
> > > checkpatch is a patch context based check and wouldn't
> > > necessarily know that the mutex is documented elsewhere.
> >
> > OK.  It doesn't keep any history?  The kerneldoc is before the structure
> > field declaration.
>
> checkpatch reads and stores its input.
>
> checkpatch is, with very few exceptions, a line based
> regex scanner.
>
> An input patch context is typically 3 lines above
> and below modified content.
>
> Whatever context outside of that +/- 3 is unavailable.
>
> Kernel-doc comments are not parsed by checkpatch as
> anything special.
>
> checkpatch code that looks for specific comments looks
> only at whether or not a particular block has a comment
> at all, not the specific content of the comment.
>
> The checkpatch function test is ctx_has_comment
>
> You are welcome to try to expand the code but I think
> there are better possible tools for this.

OK, thanks.

julia

