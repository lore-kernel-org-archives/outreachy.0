X-GM-THRID: 6662431164424257536
X-Received: by 2002:a24:d083:: with SMTP id m125mr165277itg.5.1551287428963;
        Wed, 27 Feb 2019 09:10:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls549448itk.4.canary-gmail; Wed,
 27 Feb 2019 09:10:28 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbET/pqP9d9Qv2U6u4U07r0n16BTx4EmaS6VsOd59OMdPNW1mnOgTkdxCVtY9peFZS69oda
X-Received: by 2002:a05:660c:484:: with SMTP id a4mr154430itk.15.1551287428277;
        Wed, 27 Feb 2019 09:10:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551287428; cv=none;
        d=google.com; s=arc-20160816;
        b=Y5F33bHpmxFqMuo3aJmo6PrTi2vA0hvznYGh51NpBfBWW4eE4OvN/typB7zFa8Jrom
         ZfaRmvp+HE+YyjMSgDoatjfKAcLMtWXyaPxZVbqHCI3wpEco3iskaCQB0r9XKYet906k
         cVnf7yyoe72rJJWAC50sunrmRuH4oDjZosV61xsJxpCi95c/7r4+9ia1mIZXmpf7aGKR
         jUFZfDyb/Q2qbBXHLVTLbFoWniZYjTLVP1dI6Dgz8Q5V66yxHhdtP70qDup+o5WdhqD8
         81jmAZ0g9eIuwImymo6Ur2n6MUAVoIRkVSe9A3+JeqXdA0Kmb7pCjui7JJ9eGp9emouR
         o//A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=8nqDiKcmwryA8rjEbOouuF7icCIdM8LjoWRWtf4MOYQ=;
        b=R+QemLpsUT7BrJ6Txfk2IJXohB0T64LM+85MKd1MLAN/QXf+dH5x55LJSJxg5DshBx
         0WzwaOOMuGyRd8odUgTck3TrCVp9rVZuiDK7nqtrrzv5eSTkyyyusrXP4TzY0LMEuc7J
         kSpxZ/eyck0oHAQllt9414PLeW0QgPqgx8vbv/cVGfm6XsR6RO3+C+cW1JEtEfb6MVK8
         VmzGlYIg2jSVvHm/qkipT0Ab1cVIhTUM413MjFODzBT0lt4Kc3jBS3X5dzgmNSs//qok
         he3sLbqq9UAHAzVj2xL72Glmr6hsbhdC1jVzahZIzStjuyAQDZpVfHs8Fg43KR5gb1Fl
         IZ3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mBczJUu8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com. [2607:f8b0:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id 184si832547iou.3.2019.02.27.09.10.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 09:10:28 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22b as permitted sender) client-ip=2607:f8b0:4864:20::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mBczJUu8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22b.google.com with SMTP id b4so14043331oif.6
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 09:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8nqDiKcmwryA8rjEbOouuF7icCIdM8LjoWRWtf4MOYQ=;
        b=mBczJUu8Mavcsz7pg99ku+cw4EK6SoflL6Ixo4uej/Y9AbI2esqVUzQByOtlV5dDOV
         ImOblOOBYyCBFTKZV4+h+K0NGGL5xWiNW8LIVjzB77Nq5mQ+5wsKxwpYA+k+C8UxI0Oc
         jPpZ41tHCCf7beM/r1Z9+WjvDCAyi3Lfd6UTiqQDSOqp6mDM2zAkOy4+dAfMWc6692Co
         CoJO9r5sqIy3fUfFvl8nYyomd063yLAFgUrYBQx9iAldsJzaV5eQuSjglzRIsFGRLk9a
         K6pmzNwdANiGdbXKpm3l9m0AhWeRhZJ6ui/I4GihKtyspFfxCdEvJuhMQt8a0C+h4I5+
         Jqxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8nqDiKcmwryA8rjEbOouuF7icCIdM8LjoWRWtf4MOYQ=;
        b=WvFWVQsw6b4SWB7Vlo2dRvfG4WfoAmqRuFFLosaVln4Sjm0byVfgX7SrPbXNreasfX
         lYDXeSI8LjvE+3XlkaYLy/fHngl6ZKAYoA7XMXBaNVktALvjY39owx7t/Lmm382r6yln
         AiqjTClBFB/l/4D87aBmMdQuRMy5YldNZECTXMp7MG/5/Sx7jD9I3ovJiZIc7xL/qjP5
         NyU6hheV/dOYZ/7vLkmJgUd8Ly8rAxfQyXOWHm/kPmOddl+UARqXNiKTS+eTTU4U1NyW
         8lh3+Inbuvu7H9xRRXlLkOwPLbT5/vTZK4MXzm1ZsJ6evkxY1DQMGrmhjgRbx2MrHVY6
         gBfw==
X-Gm-Message-State: AHQUAuYRxdZndMTXlpVdIdgxUU2xDGhMj7xTjf55uiQ6lrGDkZI2idnc
	BgI8gnPOSlhQ6UfnyECzDVuxygBO0Xs=
X-Received: by 2002:aca:49d5:: with SMTP id w204mr203986oia.154.1551287427790;
        Wed, 27 Feb 2019 09:10:27 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id f43sm6534022otf.23.2019.02.27.09.10.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 09:10:27 -0800 (PST)
Date: Wed, 27 Feb 2019 11:10:23 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: vt6655: Modify comment style for SPDX
 License Identifier
Message-ID: <20190227171022.GA22572@madhuleo>
References: <20190226215531.5196-1-madhumithabiw@gmail.com>
 <20190227144836.GA32231@kroah.com>
 <20190227164328.GB22354@madhuleo>
 <20190227170513.GA18050@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227170513.GA18050@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Feb 27, 2019 at 06:05:14PM +0100, Greg KH wrote:
> On Wed, Feb 27, 2019 at 10:43:29AM -0600, Madhumthia Prabakaran wrote:
> > On Wed, Feb 27, 2019 at 03:48:36PM +0100, Greg KH wrote:
> > > On Tue, Feb 26, 2019 at 03:55:31PM -0600, Madhumitha Prabakaran wrote:
> > > > FIx the warning by changing comment style based on header file type as
> > > > per License identifier syntax
> > > > 
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > ---
> > > > Changes in v2
> > > > - Modified subject line and commit log
> > > > 
> > > >  drivers/staging/vt6655/baseband.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> > > > index f2b6a98de2c1..0cc2e07829c5 100644
> > > > --- a/drivers/staging/vt6655/baseband.h
> > > > +++ b/drivers/staging/vt6655/baseband.h
> > > > @@ -1,4 +1,4 @@
> > > > -* SPDX-License-Identifier: GPL-2.0+ */
> > > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > 
> > > This patch does not apply to my tree :(
> > > 
> > 
> > 
> > I didn't understand why it doesn't apply to your tree. 
> > 
> 
> Neither do I :)
> 
> Please try rebasing your patch on the top of my staging-testing branch
> and see if that produces a different patch or not.  If it does, please
> resend.
> 
> thanks,
> 
> greg k-h


I will rebase it and send it again.

Also, I want to make sure whether you got a similar patch with same commit log or not.

Thanks,
Madhumitha


