X-GM-THRID: 6394986223504457728
X-Received: by 10.99.156.18 with SMTP id f18mr2270710pge.41.1488973636824;
        Wed, 08 Mar 2017 03:47:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.212 with SMTP id e78ls2955117ote.9.gmail; Wed, 08 Mar
 2017 03:47:16 -0800 (PST)
X-Received: by 10.129.130.7 with SMTP id s7mr2334873ywf.134.1488973636459;
        Wed, 08 Mar 2017 03:47:16 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si539158pfa.4.2017.03.08.03.47.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 03:47:16 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id v190so3566403pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 03:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/bDfP2oExykQX3qTqk8si5jLyVb4BWLgmz+79tSQOLE=;
        b=JHujmZ58KYbCvXarlktcwajN4bDYXjU7WLVOiKBqNmwfykE8rcRdH1caEjC+BHg3S/
         dQDT0ni9Fs51osvZ8KheBV10rcBmFloN1GaLBiYprstV5xSPAXKScwNZ2RcV8o8WwZBd
         ORREDGOF+7ruaOTTRTsJfQunpwudxj2CfcF7/6ScbzNcBYaLZ0d/zZeu2mBWGe1qj4dc
         Ec4GJlAhaXr8Pn5uWxvh7DMj1Zgnq9szXheL7L1YOYr+1jPqoOAy9N3dyMLmoMEqzmXs
         xu5QhZi8rAV23sZE75GE9MMMb+4Eo/gxfjDdVzEr6HfgvEviMEbS2Rf3ZGT/DGuo5vhj
         rrmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/bDfP2oExykQX3qTqk8si5jLyVb4BWLgmz+79tSQOLE=;
        b=TpyiNheCw8FnrY/W/l5/t7y/3JrygxjIPNUHjXNgGdumT7RRT59eIOEie4wjOfv4OC
         Funzry5qt56VuguAL7AUAqE0x3MmeEXP+D5rPP0Q3J6z/oktx3+g/K7EBOqEiwZRPytp
         owLLKSLxpGAqMYSJvkCL2xLJ/r729yzbgHv3jgGcVwDF4bpIHu1zAGBJHrh6I6q3FzQU
         amVYUsy3blXIm5UjvIDYttn05xirPRUWgNZEOYLjaFEdYk734KOayYmvtVjQ/7e1/K6S
         u88Dk6IJX9wNTLio6xTC208gJNleJuQGlDceftBCbr8ZGuqgQ0Rdc+mj2/LyUnaivM2w
         0nDw==
X-Gm-Message-State: AMke39kaeFyRTXftp5ArjW2voJqiLas6Dbr4d4vwdMIHw8Df7f7WGSuiiWU9m4JRXolLlQ==
X-Received: by 10.98.25.202 with SMTP id 193mr6628010pfz.134.1488973636110;
        Wed, 08 Mar 2017 03:47:16 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id r17sm5864308pgg.19.2017.03.08.03.47.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 03:47:15 -0800 (PST)
Date: Wed, 8 Mar 2017 17:17:09 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: bcm2835-camera: remove
 get_msg_context() and release_msg_context()
Message-ID: <20170308114709.GA2707@aishwarya>
References: <cover.1488948214.git.aishpant@gmail.com>
 <alpine.DEB.2.20.1703080841250.2108@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703080841250.2108@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Mar 08, 2017 at 08:41:38AM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 8 Mar 2017, Aishwarya Pant wrote:
> 
> > This patch replaces in mmal-vchiq.c:
> >         - get_msg_context(..) with a kzalloc at the caller
> > 	- release_msg_context(..) with a kfree at the caller
> >
> > Aishwarya Pant (2):
> >   staging: bcm2835-camera: replace get_msg_context() with kzalloc
> >   staging: bcm2835-camera: replace release_msg_context() with kfree
> 
> 
> Haven't you sent these before?

I had sent patch 1/2 before as a two part patchset. Greg asked me to re-send 
the patchset as a single patch. Later I noticed the function release_msg_context()
could also be removed and added it here.


> 
> julia
> 
> >
> >  .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 29 ++++------------------
> >  1 file changed, 5 insertions(+), 24 deletions(-)
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488948214.git.aishpant%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

