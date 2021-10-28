X-GM-THRID: 7024064041486123008
X-Received: by 2002:a5d:64ed:: with SMTP id g13mr5009562wri.87.1635420781880;
        Thu, 28 Oct 2021 04:33:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4e85:: with SMTP id e5ls3331382wru.1.gmail; Thu, 28 Oct
 2021 04:33:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwydYUkxVJ3Hf5ofqkdewjWS4jU/RtYkXb7DYz8VMNeccRIXI9YtYgrjtcv8QoGZZKMoYhU
X-Received: by 2002:a05:6000:11ce:: with SMTP id i14mr4891438wrx.102.1635420780249;
        Thu, 28 Oct 2021 04:33:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635420780; cv=none;
        d=google.com; s=arc-20160816;
        b=NJI0KKgzXPqf0HuDpk+0Ne3W9Ccn9FN6lkAv/iWGEIrEoqYUl1vmiAINx/LFWemlyp
         HdxuoQlSFq4shnspzOorJF5BsTBwnBaeMFbtgwUl4c7YJl4F1sr5HRo2hR0bWzOTBVKu
         KIriGyMf17YD2vxu3jkm/Tzu0X5ZXPo+zxM9eqNYlQdHYtkwgVk9/NsmpVB3ATfbldWy
         OguNRqlvCN+b8YfKHSAeLSwFHAHkRjGCagX7gOgbVAwkqLLwhhK5kwY86So3/cSjd6zz
         rat7Say9NIqBc/g5qMluyA7cY8ncEiDz8DHKZVMzu1T2TdeP34paIhxxsjtK1LtaELQn
         2Gcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=SITUA6JoXCbVrDaBoDkpDnAKBwbz4rVEI74urk7zMRU=;
        b=JseeZHfGSefWatrQ7zrIN1pdoy/0loFrDeOFt/UmY7fYJsvsI98c0vQM0eYdB21U8R
         IemTNAvxRB/MiNuWXgJONaBvVQ6s7BTlBM6oJ201K5qbqtHqg8hkXe52qWASB2BXdNVu
         4JUQ8Gdz/20oSeeuIYeh6aafYVdkbYTxIJj4d0N/mFaJ3Ce1QOKeSwl9Gn0bIbtmj+dX
         QPixBZN61UdsCRlla9EtDONNgIcaR/wTEM5AyEeniqaUdc1Sv5kAE9IWg1OhRKFvNvx5
         zpRiosFKW9mNPSk8NuGw4YkTKvHEwIGuncFsGb1dETOBW2vY4NkAp0NIIO+PnP+4jaPH
         +/rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a1si216969wrq.1.2021.10.28.04.33.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Oct 2021 04:33:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AKu29D64TDQWXMYi7ggPXwM/XdLJyesId70hD?=
 =?us-ascii?q?6qkRc20wTiX2rauTdZggvyMczQxxZJhCo6HkBEDjexPhHPdOiOEs1PWZLWrbUQ?=
 =?us-ascii?q?CTQr2Kg7GP/9StIVydysdtkZYlSaR4BdHqZGIWse/x6mCDfOod/A=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="397625768"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2021 13:32:59 +0200
Date: Thu, 28 Oct 2021 13:32:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, Karolina Drobnik <karolinadrobnik@gmail.com>, 
    Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/7] staging: vt6655: Introduce `data`
 temporary variable
In-Reply-To: <2039159.k92FijXA2m@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2110281332040.9518@hadrien>
References: <cover.1635415820.git.karolinadrobnik@gmail.com> <dc72a4c3539aed70569f66396ed3b51818bc2aea.1635415820.git.karolinadrobnik@gmail.com> <2039159.k92FijXA2m@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Oct 2021, Fabio M. De Francesco wrote:

> On Thursday, October 28, 2021 12:35:34 PM CEST Karolina Drobnik wrote:
> > Add a variable to store initialization tables. Use this variable
> > in AL2230 initialization.
> >
> > Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> > ---
> >  drivers/staging/vt6655/rf.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> > index ea74701917e5..afd202ea3356 100644
> > --- a/drivers/staging/vt6655/rf.c
> > +++ b/drivers/staging/vt6655/rf.c
> > @@ -684,6 +684,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv,
> unsigned char rf_type,
> >  	unsigned short idx = MISCFIFO_SYNDATA_IDX;
> >  	unsigned char init_count = 0;
> >  	unsigned char sleep_count = 0;
> > +	const unsigned long *data;
> >
> >  	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
> >  	switch (rf_type) {
> > @@ -699,8 +700,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv,
> unsigned char rf_type,
> >  		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
> >  			return false;
> >
> > +		data = al2230_init_table;
> >  		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
> > -			MACvSetMISCFifo(priv, idx++,
> al2230_init_table[i]);
> > +			MACvSetMISCFifo(priv, idx++, *(data++));
>
> Hi Karolina,
>
> I think you are using redundant parentheses in "* (data ++)" but understand
> that those increments and dereferences are equivalent to "* data ++"
> (according to the C precedence rules).
>
> Some time ago I suggested that you use those redundant parentheses because
> Greg Kroah-Hartman had previously explained that he prefers not to see
> "*foo++" because maintainers and reviewers are not required to remember the C
> precedence rules.
>
> I hope my suggestion isn't based on a misunderstanding of what Greg wants
> here and that your patch can be accepted as is.
>
> While we are at it, please notice that Maintainers of different subsystems
> may see this topic from a different point of view and that they might very
> well ask you for removing those redundant parentheses.
>
> I'd suggest to use grep and find out what is preferred in other subsystems,
> when you want to contribute to other parts of Linux.

Would it be better as data[i] ?

Could there be a better name than "data"?  Perhaps "table"?

julia


>
> Thanks,
>
> Fabio
>
> >  		MACvSetMISCFifo(priv, idx++,
> al2230_channel_table0[channel - 1]);
> >  		MACvSetMISCFifo(priv, idx++,
> al2230_channel_table1[channel - 1]);
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/
> outreachy-kernel/dc72a4c3539aed70569f66396ed3b51818bc2aea.
> 1635415820.git.karolinadrobnik%40gmail.com.
> >
>
>
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2039159.k92FijXA2m%40localhost.localdomain.
>

