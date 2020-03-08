X-GM-THRID: 6801796609244921856
X-Received: by 2002:a0c:db05:: with SMTP id d5mr10379194qvk.226.1583668929860;
        Sun, 08 Mar 2020 05:02:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7208:: with SMTP id a8ls2163336qtp.10.gmail; Sun, 08 Mar
 2020 05:02:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtXB2i8m+1Nhg37Qtsza/ikjtmVQRMg3lPcPVVKIktm3hYRQ81lZqL6PyXDy+hAI+WlkOFx
X-Received: by 2002:ac8:48cf:: with SMTP id l15mr3552566qtr.234.1583668928554;
        Sun, 08 Mar 2020 05:02:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583668928; cv=none;
        d=google.com; s=arc-20160816;
        b=B4Wa3m4qyRM8/oUuJ0CY8e9c7WAiVRB1+TDw9MJbhO1fdbuQnw1Flpqof4netKpZqg
         S2unu137flebV/Jv2Pox/BMv5GvLrHfnWuHoJGRK19KsCscLZorRYjF4uzj5NMJSDAg5
         HI2nWZZj+CWKqgq/+9U6Ni4luaCIoJFgnNvgj8sllEMJ0lAEpTMvq5RbD0AwDCLVqTTa
         Mrz1SS8lcRPAx+hW4U/0UxGb7fL4WPGxbbZ0I/4DVG1ghfTdTX8OkR6HwaaqRxDxfmb0
         rZHM34FLg4a0PnjYqaPI8gY8J58KpMCMeVBtdq71Nv2AbimgJOqi2sZ1uSv3zYz8g4Ob
         vrvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=U0CTm/gndw6X4L+YAsjye951fjoiXXX46yIFfGU3ci0=;
        b=oKdAxd29ggQMgBn00rXSJRyu1VXZTBJee1QmLHfSW2EwmHcKhDWCE71gQRWaTFT7ix
         MW9U5rzbJFEKyLp60BKBpN8gYEk/IkajR/GNU6LM82JFEURcTfwdNlvUc+s8wDGEuojw
         wYYEVkbY1m05jJslnn1lpxnAWGycPXY8RPWoIuojag2ttJTrRCPf4jwW0TNMGfn6j/PX
         PL1iYoiEk7nRzLzvS4U/EH/PNmwcJybMQIuMfyJhJlf4q3Ow1BonXN6SrGk8GGOg93gH
         LxV+70pC42HQFSmuIONdtozZ88gGdVAW74zFvvxp7hcQwX23Jh94zp//pEgJ/hVBpxfU
         QL8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZWA9iikj;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id i26si370617qki.1.2020.03.08.05.02.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 05:02:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZWA9iikj;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id w3so2858964plz.5
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 05:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U0CTm/gndw6X4L+YAsjye951fjoiXXX46yIFfGU3ci0=;
        b=ZWA9iikjlqkyvgb6KtFbeBcofJ/LPKvdxj1PszvoX/rEzxViZjCx29kWj4P68n4JZ9
         ybxG8XUBfUHcvEuakorPLmg1KphcqWrpwZSI4UkBTHhWpA50fAXT5qUj8S5xAu9EnhcS
         IOXLglNiaGgv/RHZ6MO2m/anVaUtFYjGTKSr1LGcy+aWpGC+5cH2LBnIUpvqlkqYuv+G
         llw6Mw5N9L3SJBbHcPuvIC+inP/nUkj4WI/05juthOPBJwKQgmStGhoYK7DaqsOb8pzz
         BOtDJf5DafNBmCFc1pHuG85b706CrBfmbLci5Y62E8/6EfTDymWwkK3NFrbFnuon1bvn
         uVWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U0CTm/gndw6X4L+YAsjye951fjoiXXX46yIFfGU3ci0=;
        b=AkZ/g4/NZZwftEXimBVtyaR9UEO1Hl8aWs01RyDouDReVbVfbd6o2Fj2eko4xI2pK0
         AtRwWT/yeyppShx7i9Ow4M2acSsM5Ee636kO9JHQmAyH1th//fLgR6ZMRvhE/C887Jjf
         i7rtWeLdI5297MFhFKT4+JzrVIGH+COfIG/GtDwj9NZ4zafB871pOp67+qs6Cp0+JQEg
         QBQrq4W1jrgzsqk190YdVsjrXqXptTheEZsLJib9M6N1i7pTQiq6s2CXoqYq4B67uYBl
         ofOPyt7ZXASNPNwlLElncCvbxBoExJzXk+WMfn4jJqTRU8F0RoWwePjzSXeDFAS7FKQ4
         rr1w==
X-Gm-Message-State: ANhLgQ2nCttfIM33c5Q5xHsv1xIs58O9qiIqlPdYcRxGE9WTDFSBecZU
	iLfHPpILibBGHvoumK0vS5E=
X-Received: by 2002:a17:902:8f91:: with SMTP id z17mr11524641plo.234.1583668927511;
        Sun, 08 Mar 2020 05:02:07 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from Shreeya-Patel ([113.193.39.44])
        by smtp.googlemail.com with ESMTPSA id c207sm919635pfb.47.2020.03.08.05.02.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Mar 2020 05:02:06 -0700 (PDT)
Message-ID: <b3982c66e671c3d8730a778301eed324d2c2226d.camel@gmail.com>
Subject: Re: Using 4.18.0-rc7+ kernel
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Vaishali Thakkar
	 <vthakkar@vaishalithakkar.in>, helen@koikeco.de, Greg KH
	 <gregkh@linuxfoundation.org>
Date: Sun, 08 Mar 2020 17:32:03 +0530
In-Reply-To: <alpine.DEB.2.21.2003081232330.2400@hadrien>
References: 
	<CAND3PyeWnvf4Zu87m_kOBw6Vz7MOwJfpR7wHUyh_udvEDvpJdw@mail.gmail.com>
	 <alpine.DEB.2.21.2003081232330.2400@hadrien>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi Greg and Julia,


On Sun, 2020-03-08 at 12:38 +0100, Julia Lawall wrote:
> On Sun, 8 Mar 2020, Shreeya Patel wrote:
> 
> > Hi,
> > I am currently using 4.18.0-rc7+ custom kernel so to start with my
> > contributions is it recommended to compile the latest kernel or it
> > will be
> > fine to just update it using the following commands.
> > git fetch origin
> > git rebase origin/staging-testing
> > Since the compilation process is very lengthy and takes a lot of
> > time I
> > would like to know if it is just fine to update the kernel rather
> > than
> > always upgrading it.
> 
> -----------------------------------
> 
> You should be able to follow the instructions in the tutorial.  Clone
> Greg's staging tree:
> 
> https://kernelnewbies.org/OutreachyfirstpatchSetup
> 
> Then use the revision control system called git to clone Greg
> Kroah-Hartman's staging tree repository:
> 
> git clone -b staging-testing
> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> 
> -----------------------------------
> 
> I'm not sure to understand what you mean by updating and upgrading.

By upgrading the kernel I meant to get the latest kernel ( compile
staging code and create a new image).
By upading the kernel, I meant to just pull the latest changes and
compile only the the required drivers where I made the changes. ( not
creating a new image ).

But as suggested by you and Greg, I think I should use the latest
kernel version.

>   To
> keep up with Greg, you can pull.  When you work on a driver in
> staging,
> you should be able to compile just that driver.
> 
> https://kernelnewbies.org/Outreachyfirstpatch
> 
> Compiling only part of the kernel
> 
> There are several ways to compile only part of the kernel:
> 
>     make path/file.o: This compiles only a single file. It may not be
> sufficient to check changes that affect interactions with other
> files. It
> is possible to build files that are disabled in .config this way, but
> that
> can fail in some cases, e.g. when the file includes architecture-
> specific
> headers.
> 
>     make path, e.g. make drivers/staging: This always succeeds. It
> does
> nothing at all because the directory exists.
> 
>     make path/, e.g. make drivers/staging/: This descends into that
> directory to build all the files in it, but does not try to link the
> modules.
> 
>     make M=drivers/staging: This seems to try to link the modules in
> a
> previously build vmlinux file. After changing options in .config or
> rebasing on a newer git tree, this can fail unless all other files
> are
> built once using make -j2.
> 
> Make path/ could be a reasonable choice for a localized change within
> a
> single driver, or for a change localized to drivers staging. In any
> case,
> as a minimum always check that compilation produces a .o file for
> every
> file that your patch changes. If there is no .o file, you have not
> compiled the file, and you need to look for other compiler options.
> 
> -----------------------------------
> 
> There starts to be a lot of information in the tutorial...  Maybe we
> need
> an outreachy project to make it more organized :)

Thanks for the detailed explanation Julia and yes we definitely need an
Outreachy Project for this one :)

Thanks

> 
> julia


