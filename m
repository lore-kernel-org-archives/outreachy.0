X-GM-THRID: 6528173745715019776
X-Received: by 10.25.147.151 with SMTP id w23mr530480lfk.20.1520021642269;
        Fri, 02 Mar 2018 12:14:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.143 with SMTP id y137ls275306lfd.5.gmail; Fri, 02 Mar
 2018 12:14:00 -0800 (PST)
X-Google-Smtp-Source: AG47ELsKFtKZY3s/FkObSx9DF09vGNgr5TWXtytZmZqh1BLTsergse8ZeKMZ5ezDJSxcQg/LIY4H
X-Received: by 10.25.31.213 with SMTP id f204mr532440lff.37.1520021640629;
        Fri, 02 Mar 2018 12:14:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520021640; cv=none;
        d=google.com; s=arc-20160816;
        b=gPNJec8sHQXXydgJtwlEnxHMTQimhO6m9Lj1ebMx1BsOptZbbMITUtDx+RGGvRO6Sg
         PV8ruyOl2NLiJ55Pg9hsRaB92vy1kv7tAQQn+OGOjDCkF/PHvrq5EmyI3orj4MVfaNCn
         Ub+PQsA+xX2T7wwi/R3a6K0V8ZsFk8u/j29bE4sPW46sf8l7+vtldHEDk6UiJ6ZIWWpw
         nA7vTiB37y4UOR43ZDWwmwWsUJc2vj8A0fNF7+CXRgSzhi4FNwE1YDcBJHgxeeGYusQf
         1OkdUsA16EO1UhB5D+QY9Lu3z9FR2y0Lhx7iJ+dhwOyIU1Eb4fGML8e2Q6ySnxGd2ie8
         L4mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=GE6mom9VY05+Ou+V1JTvxVxazkS32HMvOBIhnQPukPE=;
        b=bBc/64nXviUtJRxkKZ50zWnyBNIf+dCZSttsmSs6PRgrFqb3imDMr+Eacig3yRU9LP
         Zx9EjAoH9wtBLnKTZJo/0MdGadbljfSEHI/eO3GgNx6tiqDwawSXuU9AGtcWWZC/jblq
         tYLlZAiU16yl0pt6beNYadc54VgOZTDlz7h+1Y1QD9rmQZiAmO2/7oKCBHaVV85Aj5Dl
         sD2PGBBh4PZ+GnWlifrnlaJbsStiSZgInYrScSiz4C1E02wWhKtb4Ovb15h/YKK16S/U
         OdTBZgLNg5WuPXZdRSru9L3EsaqIo3BHGrkbbNIZldpfkqVyYhUqQXhwBilS1En7pax2
         bB7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m18si315546lfj.0.2018.03.02.12.14.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 12:14:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,413,1515452400"; 
   d="scan'208";a="316130681"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 21:13:59 +0100
Date: Fri, 2 Mar 2018 21:13:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Fixed 'tabstop'
 coding style warning
In-Reply-To: <13357f14-fb50-45cd-bbc0-930b39468f5b@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1803022113310.3114@hadrien>
References: <20180302024749.GA16440@seema-Inspiron-15-3567> <alpine.DEB.2.20.1803020732170.2214@hadrien> <13357f14-fb50-45cd-bbc0-930b39468f5b@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1850226930-1520021640=:3114"

--8323329-1850226930-1520021640=:3114
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 2 Mar 2018, Arushi Singhal wrote:

>
>
> On Friday, March 2, 2018 at 12:03:12 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Fri, 2 Mar 2018, Arushi Singhal wrote:
>
>       > Replace a mix of tabs and spaces indentation by tabs only.
>       >
>       > Fixed checkpatch warning "Statements should start on a tabstop" in
>       > rtl8712 module.
>
>       There is no need to say "in rtl8712 module".  That is apparent from the
>       subject line and the diffstat just below.
>
> Hello Julia
> As you pointed out in my recent patch that my signed off email ID is not same as one in the from line. Should I resend this one too as here is the same case?

Yes please.  Sorry I didn't notice about it previously.  You can keep the
ack in the new version.

julia

>
> Best
> Arushi
>       >
>       > Signed-off-by: Arushi Singhal <arushi...@gmail.com>
>
>       Acked-by: Julia Lawall <julia....@lip6.fr>
>
>
>       > ---
>       >  drivers/staging/rtl8712/drv_types.h | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
>       > index ae79047..ede99e9 100644
>       > --- a/drivers/staging/rtl8712/drv_types.h
>       > +++ b/drivers/staging/rtl8712/drv_types.h
>       > @@ -161,7 +161,7 @@ struct _adapter {
>       >          u8        EepromAddressSize;
>       >          u8        hw_init_completed;
>       >          struct task_struct *cmdThread;
>       > -         pid_t evtThread;
>       > +        pid_t evtThread;
>       >          struct task_struct *xmitThread;
>       >          pid_t recvThread;
>       >          uint (*dvobj_init)(struct _adapter *adapter);
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to outreach...@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180302024749.GA16440%40seema-Inspiron-15-3567.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/13357f14-fb50-45cd-bbc0-930b39468f5b%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1850226930-1520021640=:3114--

