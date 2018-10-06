X-GM-THRID: 6609200682225369088
X-Received: by 2002:a1c:786:: with SMTP id 128-v6mr1215048wmh.1.1538852011427;
        Sat, 06 Oct 2018 11:53:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:5d89:: with SMTP id r131-v6ls728274wmb.14.gmail; Sat, 06
 Oct 2018 11:53:30 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63v0jPX7K9qN6BpwDAlv3G12zMkHlHdP/XhsyeobOFSOsxFK/9pDfhuu/EKWwJRFopIBt5r
X-Received: by 2002:a1c:8354:: with SMTP id f81-v6mr1705354wmd.23.1538852010510;
        Sat, 06 Oct 2018 11:53:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538852010; cv=none;
        d=google.com; s=arc-20160816;
        b=rF5mKZ84DmBrgAQSsgnAG7xvMSpHbg4G3kifzn6lX2PiKlp4CBxDRMajzi4CEUk62/
         SCg9RJcIf45mrl+q6ZL427DQjBpXk07f11aQ1bhWH3v8aoRdPtGfbPYVd2O8ZuXvSgVu
         J14sKgfP5a+qIM/dxJhWNc1xl17+t3pkuVZIo8NiLzL9QN0DNao9pnmWO97MTcrtP8tz
         zKVTSXF38szDrqYjzCzzSRfRix2qw7N7jVx335kzCyE9+s5gG9lXiMKmMPFc7QdFVhs6
         2gWi16YFNvcRDt/oWzTvVOJcz8LH2Cs8jB/SAen991Y6KM2hQrizI7vwExo/yzc0Hix/
         H2ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1d0ACXJZDrOd5aM65kJDETbn94fWj63etlylAKjcvZs=;
        b=QHR9Vy8QEAPTmgy+hD8m5YXbOtr/WsTOriJk9nbMIIvzmAVgahGXT5J5mPAv+qId+9
         HnErdXVluhKbKFXrecLeBo3A69HkwglvCl5s2VhSxooe8ePOoSt0u94Nth58/Ks6L1pr
         GEPS3goM6VS9wIxOZKzQTTnN8vl8QbE8C3LtYcbfLaqBX0NRnqb6BwP5f+aX/MIl8Ek1
         LhkdhXgyDQ5m0ZQXOmOazJ42PBPu+bmwpMsCHImo2EhUadrIus5l6n08eaHN4A1kFhvz
         muSkwbjYZIX7F3nWZd3bD8VEEbDu6eGImTMZ2zr2NowTb/g/RhXfZlDBTsoeTTdl2++V
         sY/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z62-v6si351104wmc.2.2018.10.06.11.53.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:53:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,349,1534802400"; 
   d="scan'208";a="349899924"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2018 20:53:30 +0200
Date: Sat, 6 Oct 2018 20:53:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree <bhanusreemahesh@gmail.com>
cc: Himanshu Jha <himanshujha199640@gmail.com>, 
    outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3] staging:comedi:comedi_pci.h
 Prefer a maximum 75 chars per line
In-Reply-To: <4e37d6bc-9b6f-f128-38fc-8fca295573d4@gmail.com>
Message-ID: <alpine.DEB.2.21.1810062052330.2402@hadrien>
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R> <20181006175555.GE6283@himanshu-Vostro-3559> <68d61f32-294d-6056-7b3d-a89735bc539f@gmail.com> <20181006180243.GG6283@himanshu-Vostro-3559> <087647bf-36a7-870e-ff41-1b775e47cb47@gmail.com>
 <20181006182737.GB7070@himanshu-Vostro-3559> <c1c8d1b5-9e9c-9797-bbcc-4af9e9c2a826@gmail.com> <20181006183240.GC7070@himanshu-Vostro-3559> <4e37d6bc-9b6f-f128-38fc-8fca295573d4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 7 Oct 2018, Bhanusree wrote:

>
>
> On Sunday 07 October 2018 12:02 AM, Himanshu Jha wrote:
> > On Sat, Oct 06, 2018 at 11:59:02PM +0530, Bhanusree wrote:
> > > Please let me know what to do on this ?
> > > Send a new patch with v5 with changelog.
> Can I mention 'No changes in v5' in change log or am I supposed to mention any
> ?

Your comments about the changes in the version go under the --- so that
they don't appear in the change log.  If there are no changes in some
cases, then you should mention that.

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/4e37d6bc-9b6f-f128-38fc-8fca295573d4%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

