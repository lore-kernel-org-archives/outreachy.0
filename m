X-GM-THRID: 7018941118564794368
X-Received: by 2002:a05:6512:3084:: with SMTP id z4mr9649781lfd.167.1634287737214;
        Fri, 15 Oct 2021 01:48:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3081:: with SMTP id z1ls1764580lfd.2.gmail; Fri, 15
 Oct 2021 01:48:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4Nqlv7qQ65Xo18aYVsxuIE7eebV6F1ZSgACK8LE63f1mnP9ONTeuGD8PoBTJCMCnMt/Ec
X-Received: by 2002:a05:6512:3f1a:: with SMTP id y26mr9820093lfa.372.1634287735533;
        Fri, 15 Oct 2021 01:48:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634287735; cv=none;
        d=google.com; s=arc-20160816;
        b=pwzMk9c/GanQQVtuSO6q7pwLGlBtbHC9dmsm8M6DigBQL5YgBA3SL5jflXIAwDR/8I
         8XSFSAg94n2aeiUSem4lvFa3U4DyISY4ZJ4cWgL02+FLsYFRsiTq1r9ASgjrj/Dlz6d/
         9WO+b77/pndrmapwRl2yUzuPpHkeTmH5gEyRjousWAT1opx91hMLfTeBfGRWFjEG1SP7
         E0UgD0oryDxBfaYYEbEAx7dPWrLzXHwjgvFtX10ES0bmobznV0/lImVQ5e7wemWUDZFl
         wkp1M/GTTff3yJG1R8ePgG5wLZ1r+UUlsL2qihAxPZn233kYxYtPqQNKuhqVbFHnsFQQ
         yjVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=zSihhzhUHtP3jfj5Punx3axdm6w0beRiLPC5Hyvsx28=;
        b=AedklBwA9OEVue5UZRQ2PWd8vGYIkNQxo+LeTQ7oST9crXTx6wYv0+6z1aNmgVFWAz
         U19ao883K4Wa5n2SV8nyYOzDl7WfOEksT1OLzcf1dtcuGCVNp8v+tTsb1lD3VsqIPqMK
         ObRzGGR+BB4P5E1UPA7DRxAatdM+sCZDjiGywadf1q6Nuy99g1JWbUXsMP3N2UtED6Ef
         cKzey0PRobF0EKWjRMUc1mPiAGIwSJrFeuvLR0ZOy9qyeX8eNYxCLKVEtaoIitSGX7vH
         ZfQJllcAsau8To3gW1U/1IEGo5o1eP5KUITFbxEA+2dI5Lm/tm2ufNhWuxHH800ygN/6
         tAuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f20si186512ljn.4.2021.10.15.01.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 01:48:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AWYGNSqnBAL48neXYDrlYvj8/mejpDfL93DAb?=
 =?us-ascii?q?v31ZSRFFG/Fw8Pre4MjztCWE9Qr5PUtKpTnuAtj+fZqiz+8Q3WB8B8baYOCkgh?=
 =?us-ascii?q?rMEGga1/qA/9S4IVydygc/79YHT0EdMrPN5DFB5K6R3ODSKada/DDoytHRuQ/u?=
 =?us-ascii?q?pE0BcehCUcBdB/QTMGqm+loffml77OICe6Z1zKF81l2dkN8sH76GOkU=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="534099890"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2021 10:48:54 +0200
Date: Fri, 15 Oct 2021 10:48:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    "forest@alittletooquiet.net" <forest@alittletooquiet.net>
Subject: Re: [PATCH] staging: vt6655: Rename byPreambleType field
In-Reply-To: <db3c6775c578eb0fc34726e7bfaa89b4267e30a9.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110151037440.7123@hadrien>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>  <YWhOfPhVRBrH3gz8@kroah.com>  <e9c9154ba03e704c1e415c66f2d57f73a2379144.camel@gmail.com>  <YWhus0EGaPJXhsHv@kroah.com> <db3c6775c578eb0fc34726e7bfaa89b4267e30a9.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-14732819-1634287734=:7123"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-14732819-1634287734=:7123
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 15 Oct 2021, Karolina Drobnik wrote:

> On Thu, 2021-10-14 at 19:53 +0200, Greg KH wrote:
> > Each patch should only do one logical thing.  And every "thing" you
> > do, has to be described in the changelog text.
>
> Ah, I see. If this is the case, I'll leave tidying the comments up
> until the end of the cleanup work and make a patch of it.
>
>
> On Thu, 2021-10-14 at 20:40 +0200, Julia Lawall wrote:
> > > I saw that functions and parameters use it[1] so I deduced that
> > > "by" might stand for byte.
> >
> > OK, I see your point.  I originally thought that doing something by
> > the preamble type might be true or false.
>
> Agree, in such case that would be a well-named variable.
>
> > But it looks like the developers
> > have considered the use of booleans and that is not what they are 
> > using here, so it seems that my original idea was off the mark.
>
> I read through the code and it looks like indeed the developers
> intended to use it as a boolean but this "by" didn't mean to mark it as
> a predicate (if that makes sense).
>
> > There is also this code:
> >
> > vt6655/rxtx.c:          priv->byPreambleType = PREAMBLE_SHORT;
> > vt6655/rxtx.c:          priv->byPreambleType = PREAMBLE_LONG;
> >
> > PREAMBLE_SHORT seems to be 3, which is not a boolean.
>
> Not sure how I missed that, thanks for digging it out. 
> Hmm, but in baseband.h they are defined as 1 and 0:
>
> ```
> #define PREAMBLE_LONG   0
> #define PREAMBLE_SHORT  1
> ```
>
> Or am I looking at the wrong definition?
>
> > There is also
> > vt6655/rxtx.c:  return cpu_to_le16(wTimeStampOff[priv->byPreambleType
> > % 2]
> > which also makes no sense for a boolean.
>
> `wTimeStampOff`, defined in rxtx.c, line 57, stores two arrays of
> shorts, first for the long preamble and second for the short one. That
> modulo confuses me because if we were to take these values as they are,
> we'd get the right array anyway. Or maybe there's something more to
> it/I am misreading it.
>
> It looks like there are two issues here:
> 1) Probably we're dealing with a predicate so "byPreableType" can keep
> its "by" prefix
> 2) This variable is not defined as a boolean but it looks like it
> should
>
> For this patch, I think I can add `by` back, so `byPreambleType`
> becomes `by_preamble_type` and exclude the space change pointed out by
> Greg. After doing this, I can take a look and try to define this member
> as a boolean. To be honest, I'm worried of doing so as there's no way
> for me to test it.
>
> What do you think about this?

Hmm.  I see that the definition of 3 for PREAMBLE_SHORT is in some
different drivers.  They seem to have a concept of preamble mode.

The following code is in your driver
(drivers/staging/vt6655/baseband.c, function bb_get_frame_time):

                if (by_preamble_type == 1) /* Short */
                        preamble = 96;
                else
	                preamble = 192;

It is indeed the case in your driver that

drivers/staging/vt6655/baseband.h:#define PREAMBLE_SHORT  1

Therefore, it looks like it is not a boolean, the by prefix should be
dropped, the == 1 should be turned into == PREAMBLE_SHORT, and the comment
should be removed.

julia
--8323329-14732819-1634287734=:7123--

