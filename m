X-GM-THRID: 6666290525545431040
X-Received: by 2002:a1c:1a4a:: with SMTP id a71mr143289wma.21.1552380452720;
        Tue, 12 Mar 2019 01:47:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f106:: with SMTP id p6ls248801wmh.6.gmail; Tue, 12 Mar
 2019 01:47:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUkCRC6K0bI59HqVtfqJ/05eG9z+mcExqvRWnlkV5pi/vIDbW4H6u2dSx55O0okWego0C5
X-Received: by 2002:a1c:9689:: with SMTP id y131mr146655wmd.6.1552380451865;
        Tue, 12 Mar 2019 01:47:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552380451; cv=none;
        d=google.com; s=arc-20160816;
        b=NOT34A//TkXOdBdsb+ZosMXFNnU3UdJnDv7Za0FsHf56w5/G5tcLmz1Tv9spAjiaKu
         rAsELN2wiK6JUC/ftEhVZJUTKKcLXO/YwOT6SH+S+8/PhSs2wDa2JBwmFvEa00rzP9FM
         GQozKj6AFlA/Twd5SPtkiozT1QolyxfvsyvvYsS9nIXyN3Up5JYbUNr7quPqjiWwkGL/
         tPAukwhWXRFWIVlopIcnLBpTiEV4Q2CC/k+2VQwCFCvIqIvktILNbUueOmEwda4vN6uA
         99fUzldjQZNTkEhApdc17uqZaVor07Emn46opX2svCX2kaOt5Vx+LSy2iMTOTDB4NX0t
         +k4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TGmDYtmho9+BxdWlB53nHT+UAkSQw/dRHAoxghmY8eo=;
        b=sXHcTDFoOrpebcPFsOPaLcANZ/u198gfddbZ+QDmd3S41o4+4mz6f2itv/HjaZiNBs
         MyA7715T/ZvRrrYeGBKp32k1TB3yeGpkzkicJSBHrXnO0whKz3P2mKEd7V6GBq4gpD0C
         aF1iYMgrnjcZfEeUN2GGEdGxR1ndB65srHz2VDcGS3HDRHE5hbO8i0gGy6UBLpqscg7F
         rEQj+LBw3DiB0RucG8OUuB7BatIqWCizA7pw5UJEQWI0eIuQgxE/2uL1RuflUp2QpHGQ
         My9UaCp60uFKiS/F5lr6bA0RJVT8WD/lFgmz37jbmnUMYaEvuNdFXBXKbVsO60iNP8FB
         7htg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g10si86785wmk.1.2019.03.12.01.47.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 01:47:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,470,1544482800"; 
   d="scan'208";a="298925073"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 09:47:31 +0100
Date: Tue, 12 Mar 2019 09:47:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: etsai042@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 0/4] Correct malformed
 SPDX-License-Identifier
In-Reply-To: <43cdfcbb-f6de-4a92-aa99-14bf6e7b228c@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903120946590.2728@hadrien>
References: <20190309073125.5610-1-etsai042@gmail.com> <20190309101232.GB25106@kroah.com> <43cdfcbb-f6de-4a92-aa99-14bf6e7b228c@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1385227452-1552380451=:2728"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1385227452-1552380451=:2728
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 12 Mar 2019, etsai042@gmail.com wrote:

> Thanks greg! I'll be more careful with this next time!

Don't top post.  You should put your reply under the text you are replying
to, as I have done here.

julia

> Wentao 
>
> On Saturday, March 9, 2019 at 2:12:36 AM UTC-8, gregkh wrote:
>       >That's 4 patches, which is great, but you sent out 5 patches in
>       this
>       >series :(
>       >
>       >Odds are you had a file that ended in .patch in the directory
>       when you
>       >sent this out.  It happens to everyone :)
>       >
>       >I'll just drop it and focus on the numbered patches.
>       >
>       >thanks,
>       >
>       >greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/43cdfcbb-f6de-4a92-aa99-
> 14bf6e7b228c%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1385227452-1552380451=:2728--

