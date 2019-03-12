X-GM-THRID: 6667559870599790592
X-Received: by 2002:a24:c546:: with SMTP id f67mr3000007itg.28.1552421334447;
        Tue, 12 Mar 2019 13:08:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a783:: with SMTP id e3ls2934708jaj.1.gmail; Tue, 12 Mar
 2019 13:08:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwNbg2WCn3hRKyjaSarPqEtu1j/PwwlxD36tI/GFlI8XQpRMODDJEhMBbOYWthZAAocK7Mv
X-Received: by 2002:a02:3d7:: with SMTP id e84mr23175123jae.20.1552421333501;
        Tue, 12 Mar 2019 13:08:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552421333; cv=none;
        d=google.com; s=arc-20160816;
        b=uxjft3LCM94vgJ4aIkO4ugitiPgqB+VYyqccaFOSrJHhkBQLWCiOlyvszkVO6RGT6e
         EoHStYttRldkhWdq2YT7Scicyspxyw8JiX4CSZx2vaJReEvN03l50yBrLV5RtXRHlRpI
         X/TXnTBN8Wkpf7+INl6E/NeskTJaUjGO5As91sKEP289ovMUgujUI/hyQ9LKt3aJOUPv
         0KJlUkTls4SCOpn9A0qqii0R/7SPEBmwr7xS6I6gmJSBm3TnJY3VljQTv/5FDlyV8syh
         JP0ufeCj5j8J6u2FQAMggIs3p2GcDqSI82nZSzFLJfOxq2al/nlD9fek3cQTx+r0+1Yw
         Z4jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=J6RrOaOdTW9eVEvMv9TnWnvgqjSMM5gxQOmlA2AXZco=;
        b=QDw0ljF+aT6EarRT4FgGjdI4KIzJM2HnXWHvrEsE2cN7txP2EnmWUElMtR98af4CdL
         bOZZSsVyGFs0PTtfxMRGi1Ap/OCCuC6kvvQjzEUe4KxaWA0aaUXIy1Ic3Gq4Wulh4AWn
         tttKE383YHANchOrtErF4ODLiy4xgOGq/MCpr2RZyINaX41WeR4Pvjp6YBO47QbaQAfA
         saFXEcRjL/f2/di2lkbPZQtnOIumPeAIam4zwZf5NRW/0hhoaO/DEltR54Lgxd8smdHa
         q9UkYRP9iq3568kv7PiatSzqO5RXLi+H1l862fSSCfzt58haVyz6lxFg39rybjMXbNI8
         X0kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Us9jolKD;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com. [2607:f8b0:4864:20::233])
        by gmr-mx.google.com with ESMTPS id 65si172888itx.1.2019.03.12.13.08.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 13:08:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) client-ip=2607:f8b0:4864:20::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Us9jolKD;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x233.google.com with SMTP id k8so374883oik.8
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 13:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=J6RrOaOdTW9eVEvMv9TnWnvgqjSMM5gxQOmlA2AXZco=;
        b=Us9jolKD1ISzjw2fzdeMm7TRNBsmKFsWA/6HOQOCw7R0zovI1cZQV+0Ry2XyhlAp32
         e5O2jHRzn7DM8dzMou1efbkVXu8NjkfLOhk+ra0WuSx9yl4Ty7nIVJMacmRJHGrszhRD
         PY5NI9jv2wGW8bmQHZAYfrfWbBwFS8VpKQGHVuMmX9Tvwgehy59VpmgCG+h8nKLAilGL
         kT7NX+stBroxoxc8cH5zLbH9fEFVeKm5KTuFMDYQkFZPkqQtRLZuttkBLtP96pn5aVEc
         vxX2GkWdcUfEWsOKUsm3inV/S7FsZpami1cAs4I3wcVADRUxIu7g/48Fdeg7t/PFGpKK
         m8Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=J6RrOaOdTW9eVEvMv9TnWnvgqjSMM5gxQOmlA2AXZco=;
        b=LrGlWRBDAmqBowslnBerKA/uicqQKV6fQG8TM+myIaC0DiU8byXskR4PTBFqABct45
         5iwkOK+8+3Y2YKj2JHMZcoC3oKpDsAg+YLhPkM4rNSdDzS3aTLWhiCXpoOjkEhNYjeVI
         dutsGa3boeaVcfrt47AgSbquUx3FUam9cQux1HPf6CTW6Q6/uzFycLk+OZHLIgyb63K0
         HgA45ptE07rb4MityoOJ6QDvsvpkwgy75EoSAH8JdeGeyQId08tsOK2qgX0LV3sSHnlq
         y9Ja3EWHdjQni3pCyq99qtJ5bjxRxodIrRC/wcDc9L4eFBDLLg6slXFLWgZpCyXOLh6g
         ahTg==
X-Gm-Message-State: APjAAAUqD6tFOnpFXFwigWcFe3sQMQFYlr5uqLTX59eElnvpCqP0wxsI
	gfPaq3sDs6XgcRss0w7nLIG/u465S+s=
X-Received: by 2002:aca:4103:: with SMTP id o3mr2896772oia.71.1552421332983;
        Tue, 12 Mar 2019 13:08:52 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:e4:1d2b:f2ed:b6ff])
        by smtp.gmail.com with ESMTPSA id g128sm3963618oia.32.2019.03.12.13.08.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 13:08:52 -0700 (PDT)
Date: Tue, 12 Mar 2019 15:08:50 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Remove an
 unnecessary initialization in function
Message-ID: <20190312200848.GA2689@madhuleo>
References: <20190312173730.23281-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.20.1903121850370.4097@hadrien>
 <20190312180344.GA17075@madhuleo>
 <alpine.DEB.2.20.1903121912480.4097@hadrien>
 <20190312182531.GB17075@madhuleo>
 <alpine.DEB.2.21.1903122008400.2722@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903122008400.2722@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 12, 2019 at 08:12:27PM +0100, Julia Lawall wrote:
> > Output of file -
> >
> > ...
> > ...
> > HANDLING: git/kernels/staging/drivers/staging/speakup/main.c
> > HANDLING: git/kernels/staging/drivers/staging/speakup/speakup_bns.c
> > HANDLING: git/kernels/staging/drivers/staging/speakup/speakup_apollo.mod.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_sii164.c
> > diff =
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
> > diff =
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_swi2c.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_mode.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_dvi.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750_accel.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750fb.mod.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_hwi2c.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_display.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_power.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750_hw.c
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750_cursor.c
> >
> > Here, Do I need to consider the file, which states diff =
> > HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
> 
> You would indeed find changes on standard output for the files that have
> diff here.
> 
> If you don't want to see this output, you can use the option --very-quiet.
> Usually I put both standrad output and standard error in files, so I can
> look at them later if there are any issues.
> 
> I don't see the entry for the file that was incorrectly transformed, so I'm
> still not sure what the issue is.  Can you try your semantic patch on just
> the file drivers/staging/speakup/speakup_decpc.c?  Are you sure that your
> semantic patch has the word "local"?  If you have idexpression without the
> local, that would explain the result.
> 
> julia
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903122008400.2722%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

1. Output for spatch --sp-file Coco/ret.cocci --no-includes --dir git/kernels/staging/drivers/staging/speakup/speakup_decpc.c > ret.out -

init_defs_builtins: /usr/lib/coccinelle/standard.h
HANDLING: git/kernels/staging/drivers/staging/speakup/speakup_decpc.c

Content of file ret.cocci

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

2. Output for spatch --sp-file Coco/ret.cocci --no-includes --dir git/kernels/staging/drivers/staging/speakup/speakup_decpc.c > ret.out

init_defs_builtins: /usr/lib/coccinelle/standard.h
HANDLING: git/kernels/staging/drivers/staging/speakup/speakup_decpc.c
diff =

Now, content of file ret.cocci

@@
idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret; 

So, there was no local when I tried earlier. I will fix it and resend another patch.

I will drop this one.

Thanks,
Madhumitha


