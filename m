X-GM-THRID: 6335101576926986240
X-Received: by 10.36.60.15 with SMTP id m15mr1450402ita.5.1475006671552;
        Tue, 27 Sep 2016 13:04:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.133.70 with SMTP id r67ls3347611itd.6.canary; Tue, 27 Sep
 2016 13:04:31 -0700 (PDT)
X-Received: by 10.36.112.140 with SMTP id f134mr1496110itc.1.1475006670979;
        Tue, 27 Sep 2016 13:04:30 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si913448par.0.2016.09.27.13.04.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 13:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so1132779pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 13:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wDQ10hRknlVwJKKCAYjyhn//Vnv8HjFFPeucKdd/7OI=;
        b=Ziod8G7FGj+us7LfKxRTwxPRmE6spWqoKEBdh1ja5t1DffqLYCY9hYkKndJbFt5OIo
         SE6Or6n5zDFtKSda43UZQ8GU93iOWDby/hKeGCEv2DQpJPdYdKgmmt1mgtrcJ8kJ66qO
         ViUT5HPjAOTx7Ytb+hSTqy7oe2/sT6BXAjxB5uDRkcm5A4VUrj6N924Lli3CPitS3xwZ
         dY9O6GCABa/hItIin1Jnwm358xTY+7fMySTcVbGFfxx8FszwHmljv+1l3pPCs3AcJPV8
         Y/28Ie3Fo5qg1I2rhYIQ1IS27EH+/TAq/bMNRLJB2m4hYGyKtKFfK2ZZYfSlg8tt4G+m
         4+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wDQ10hRknlVwJKKCAYjyhn//Vnv8HjFFPeucKdd/7OI=;
        b=fsL0nKUPWnVDsDayDEzx/chyGXGbswBic43kAshGcsrWikqo7OkfOMcdkSlyLekkB1
         NfLVNiw3hhE69tMI2qk4PxaSl56oSyFDWqAHeyBK9pPaXPoydMFoHiG+41+CPnoLXuT1
         uy0GSnAoWt9HXWJl0uGaHp8QzURNGEbTdt3kQvN0PIWujpz7k4ALo1FvWuRWZDegBNrt
         7eITnT4RaKZxL3cgfuhB6M4kruU3UL1hlDQ5XcQknAw1tbiZl0u0HmsHonT2+RwVQpVG
         1CD5Vbo28rSrHmsjLNc6867cAymljKRZbU+eipV4CsvtxIBbRoPX2Q+KTC63SxM08KaX
         /j5Q==
X-Gm-Message-State: AE9vXwMxMpUrQCRsQ+6L4Z6y3yKVQYsNkLaHtI6tgO1ps+tzz36CABZwU05rCVHm+ONNoQ==
X-Received: by 10.98.223.218 with SMTP id d87mr51786978pfl.48.1475006670787;
        Tue, 27 Sep 2016 13:04:30 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id q14sm6840681pfg.63.2016.09.27.13.04.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 13:04:30 -0700 (PDT)
Date: Tue, 27 Sep 2016 13:04:29 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: gnudevliz@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] TODO/comment questions
Message-ID: <20160927200428.GA20525@d830.WORKGROUP>
References: <44f080fb-8ee2-4de0-8480-7b21534757ab@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <44f080fb-8ee2-4de0-8480-7b21534757ab@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Sep 27, 2016 at 12:49:37PM -0700, gnudevliz@gmail.com wrote:
> I'm seeing a "Block comments use * on subsequent lines" checkpatch error in 
> many spots on one driver so I thought I would change a few of those in 
> multiple files and put them all in one patch. I think that's better than 
> submitting multiple patches just for comment revision, but you tell me.

Sounds good.
Single driver with multiple files needing same type of change.
So the commit msg applies to everything you did..ie use kernel preferred block
commenting style.

> 
> My second question-- one specific comment that is missing an asterisk 
> includes a TODO line. Is it good practice to have a TODO in a comment? I'm 
> not seeing anything about it in the style guide. If it's fine I'll just add 
> an asterisk there and leave it the way it is. 

When I "git grep TODO", I see the TODO inside comments a lot.
Don't know if it's good practice, but certainly common.
What would the alternative be?

alisons
> 
> Thanks,
> Liz
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/44f080fb-8ee2-4de0-8480-7b21534757ab%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


