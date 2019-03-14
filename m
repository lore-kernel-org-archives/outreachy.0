X-GM-THRID: 6667904381849960448
X-Received: by 2002:a02:3c06:: with SMTP id m6mr28749481jaa.9.1552579426956;
        Thu, 14 Mar 2019 09:03:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6f44:: with SMTP id x65ls493650itb.1.gmail; Thu, 14 Mar
 2019 09:03:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxLyADmUiGXUYw6/EFunDYp23KDkRKAp6u+NvtYQwjDNa3/VVXf5VP/Qm86rnqNcPr5M9zR
X-Received: by 2002:a24:a14f:: with SMTP id n15mr2619451iti.1.1552579425959;
        Thu, 14 Mar 2019 09:03:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552579425; cv=none;
        d=google.com; s=arc-20160816;
        b=m8S8/2/EIKerv5Kr+t5q1NdjYMK5RrqtObLJU7B1olA6vH077LcXLLc5ofYKPIgDB3
         ikDpnzhPCQEyIm5IMfrLX1CShCXfaVAnahALB/h4deoDkz2zcWYvHKc24xhJ0vKEXvJ4
         tvgJjlnNxjiSZyYMPfg3ikQ5POCcsTiqSbes1z4VUuZF6uNDQlsppIKvOamT9RL3ylS2
         kfol8TGY3RifF8eTGO2QsGur/h1ta7KDENeGQ8AqN7yj18riWmn/+0aCNF/1gnZpLjGb
         LoxLj0U29blfkB5HEO3eUGeMxinETJ2ce4YeLEoPcrtym+GWjoVX/5o8njGeCCQvgJ+U
         dmqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=JKSJVz4eI/344/qSs6lN4nu7rfnZZDnN7S46EbFlM+U=;
        b=JwdU4IRDVJwzegYT5cs0KM7aAxzJ0EUt6Y/5XwDCDvyOPbQWksGtTagRGsq6xPgxC7
         XbQwFCkDF+2mCdy0oAZxeiqHN4fpVlZn+gm3VcvkOpYHgajQZzkPtfxfTCYG2iI8Ve9j
         zX43C4bcluVAbW6fUj3h4hKq7taJFCs6XJ0KqORWGiSESBRZOgdXljfwYJTax8lKnbSM
         seuFJBV4XFP96wbrjK3SrT0OQNU1iFW7oEx+tw+kC1erHfhIIt5FGBpLnjJus8x6EPyB
         LpN7jrPD3y16s1TfpPbiGmkDFR3vb90yPGWDHNhkFdgwKpNMkyX1sOY0emdmAQ6b+XtR
         WzHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=igP43DeA;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id e74si85631ite.1.2019.03.14.09.03.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 09:03:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=igP43DeA;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x333.google.com with SMTP id z25so5601813otk.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 09:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JKSJVz4eI/344/qSs6lN4nu7rfnZZDnN7S46EbFlM+U=;
        b=igP43DeABOF5Z6Pp4koU8X2lD3LZVAVQWUqoGBQ48oh/Lin2x1Z4C8hguwfNS2CVgx
         NgIhQqtN1X0WuwQoFiZf0/k/yH2w6il9QIeKJdvPwWjK6/nExAHBTurJuxDRm5/gmvMz
         AXe/ettRPTSchNPCX2o83g3a9xBW/dCFJPja7sHDePUjAPWvTwYh9IiSa8GNuJnNMNg7
         g/giPFGiA+w8Byhu0+smoZvs98K3DXGoTTyRWH80NzjfKpz1Wbq0Jvd7kr9vwJYWekuL
         BRcwqEei9R9tn6ywOOE7N8PlUhC0I6p8kWECFZAau4cdBawgYPtS/8Wbl4d/fO32e91E
         3UEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JKSJVz4eI/344/qSs6lN4nu7rfnZZDnN7S46EbFlM+U=;
        b=VDHHGTWK59vwfDy/EbN8vZ36Xq8/366thncotHvNwy9AGdNBGWORplBe3z6t2QKIZW
         DBihiNxumghZ38amPDQeEIZ6sVyHbMKzhpOpeyq6N/PUiFdgqlczT3duIcBHV0Aenw62
         furOSVoowb/Xmm1h9FX2VHWyU2FhBwRM+GYX/Ga3nO46krbdHgWBu4+DgyBB27e+xRea
         xuVRHpJo2eibNA93Bxs1Guk+WzC1ob8f26uxQBV1VEILyygffA0Mfpp7yfx1oPFfa1TK
         2Knprqb9XZJsbb54zTig7htMQGyhP2+wbzpLJTgasfxEKmDGkly4b0Nklo7WQs4J7DsT
         AuSg==
X-Gm-Message-State: APjAAAVvoQOaBE7RGP7XTazCCPXOKYf0ZKiMI/csIRdW2zMGtfiBSKXo
	Ie0jL0hBa4kbJ3XwX3I42DMnSpMaKSk=
X-Received: by 2002:a9d:76d4:: with SMTP id p20mr32280209otl.11.1552579425612;
        Thu, 14 Mar 2019 09:03:45 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:8990:5097:524f:ad64])
        by smtp.gmail.com with ESMTPSA id c131sm5972343oif.3.2019.03.14.09.03.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Mar 2019 09:03:44 -0700 (PDT)
Date: Thu, 14 Mar 2019 11:03:39 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl872bs: Remove local
 variables in functions
Message-ID: <20190314160338.GA14192@madhuleo>
References: <20190313155425.5548-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903132045230.2515@hadrien>
 <20190313214945.GB5065@madhuleo>
 <alpine.DEB.2.21.1903132304420.2515@hadrien>
 <20190313223559.GC5065@madhuleo>
 <alpine.DEB.2.21.1903140708190.2814@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903140708190.2814@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 14, 2019 at 07:15:45AM +0100, Julia Lawall wrote:
> > The change need to be made in two files -  drivers/staging/rtl8723bs/core/rtw_cmd.c
> > 1) drivers/staging/rtl8723bs/core/rtw_cmd.c
> > 2) drivers/staging/rtl8723bs/include/cmd_osdep.h (to remove extern from function prototypes)
> 
> If you change the .c file in the first patch and the .h file in the second
> patch, then the first patch will break the build.  On the other hand, if
> you change the .h file in the first patch that will not change anything,
> because no one cares about the declaration.
> 
> Still I think it would make sense to do the whole thing at once, in a
> single patch.  A function definition and its prototype go together, so if
> you change both it would make the most sense to do the whole thing at once.

Will fix as a patch. 
> 
> > So that's reason why I asked whether it has to be send as patch series or I can submit it as individual patches.
> 
> Not individual patches.  Either a series with the .h file first and then the
> change in the .c file, or a single patch.
> 
> 
> > In rtw_cmd.c, along with the change already made, I will change the
> > return expression. i.e.
> 
> Your message got broken off here, But you don't want the change already
> made.  There is no point to have a function that has the only statement to
> call another function.The two functions that you changed should just be
> dropped completely.

I will drop the patch. But the function is calling same function with
different return type. I never encountered this type of function in C. 
This is function overloading in C++. Based on Brian and Dennis, only
change I can make on that function I can edit the return type with 
return (u32) _rtw_init_cmd_priv(pcmdpriv).
Am I thinking straight for fixing it? Need for suggestions?

> 
> Again, please put your replies inline after the text that you are
> replying to and not at the very end of the message, after the list
> management information.
> 
> julia
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903140708190.2814%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

