X-GM-THRID: 6806516278512058368
X-Received: by 2002:adf:a18b:: with SMTP id u11mr17051069wru.390.1584781841344;
        Sat, 21 Mar 2020 02:10:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls4162408wmc.0.gmail; Sat, 21 Mar
 2020 02:10:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv0SDNHgzBvCmP2oZvh1HKNYWc6QM70jCmLexWnE8ck20C1jioXNuPswbNbnbj9hkKpi1me
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr15711578wmj.39.1584781840051;
        Sat, 21 Mar 2020 02:10:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584781840; cv=none;
        d=google.com; s=arc-20160816;
        b=Ht+JyhOCNIMMzCMxIQRQGveA2AALvRmybsvdWJ6kBzYO+06R62t2pfQKv43/aE9St2
         Hb7gmRwoqETrSDsyMrGmiAoVNpLGlIcPjIVjFfvPmfpRVqV9aAvukVU17oA2YfXQmBDw
         xPlmzWv7P0N+Urwx3wCyUTGz3BRKlTpuSqTiQGDDareI+6eQxw3wxrqmPWviI/YKLEsS
         E/fjwpLBXGpwyjnsgcmNm9r4GxJDLBqyVnddkXoictCMocfEDfeDIMc8XXWayM5cA3cy
         dmf5K5CFM/unCXK3/BushuUxUZ7BDZrja89dLHTRSCkhvwP4cFWFPWXT+BO0LTCLoNV5
         TUwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=4ReA0hxGPFwlo43jhs8FbJaSRTSXAgZdjZikkIqt8lA=;
        b=JPxmxmnX4FkuxI1vXuAJygJpUfZrUqcl4OPttr3O3cHnxjGqxakqBcfkVzWHA8UJt9
         44F3t8HdsgGKfk2tGh+TxdC0wbeKjyH+3GZBq5y92o03AjbzEjxVSXBfHMOmmRSbVLNh
         yPesSwxLqhttmrzLxMf8GBZTH0EBLTyaf0Kw7cYEJJVeX05i3IiWkDKVZMM6q2FYcE4R
         VmNeOtp87dZwIp+rxeO8NsyfwWq+2PHK+LloqYRD9UMmIQFVzj4LjgPRMF/crG6UztEP
         /ApRSI9rsyDgbyD+g39zh8GIdE3ljt5SL37suUVPMDnt7Iqa5nxBD331vMOLPZ0ZzEVk
         oUQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id b17si73043wme.3.2020.03.21.02.10.39
        for <outreachy-kernel@googlegroups.com>;
        Sat, 21 Mar 2020 02:10:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27768 invoked from network); 21 Mar 2020 09:10:38 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.249.250.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 21 Mar 2020 09:10:38 -0000
Date: Sat, 21 Mar 2020 14:40:26 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: rtl8723bs: os_dep:
 Remove commented out code lines
Message-ID: <20200321091018.GA1978@tulip.local>
References: <cover.1584764104.git.vkor@vkten.in>
 <a62d2fbb77990210b939a5ec99ee27cfa5749a09.1584764104.git.vkor@vkten.in>
 <alpine.DEB.2.21.2003210832000.2522@hadrien>
 <20200321080741.GA1942@tulip.local>
 <alpine.DEB.2.21.2003210945070.2522@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003210945070.2522@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Mar 21, 2020 at 09:46:01AM +0100, Julia Lawall wrote:
> On Sat, 21 Mar 2020, R Veera Kumar wrote:
> 
> > On Sat, Mar 21, 2020 at 08:32:49AM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sat, 21 Mar 2020, R Veera Kumar wrote:
> > >
> > > > Remove multiple commented out code lines.
> > > > Remove blank lines next to them.
> > >
> > > You don't have the change it, but mentioning removing the blank lines was
> > > not really necessary.  It is normal that you should clean up the
> > > adjacent whitespace when you clean up the code.
> > >
> >
> > Sorry I can't make out: "You don't have the change it"
> >
> > So I keep those commented lines or remove them.
> 
> I was commenting on your log message, not on your changes.
> 
> There was no need to include "Remove blank lines next to them." in the log
> message.
> 

Okay.

Since that log msg is going to be included in git repo commit log,
do I have to remove it and send a new patchset revision.

Veera

> julia
> 
> >
> > But Greg said in comment to patch:
> > Again, this is not a long-line comment, it is a code line that is
> > commented out. "Remove it in a patch previous to this one please."
> >
> > Veera
> >
> > > julia
> > >

