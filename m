X-GM-THRID: 6801960387185999872
X-Received: by 2002:a63:1201:: with SMTP id h1mr15415903pgl.284.1583736227317;
        Sun, 08 Mar 2020 23:43:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:898e:: with SMTP id v14ls4327510pjn.3.gmail; Sun, 08
 Mar 2020 23:43:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs0oKlBYXrgkab7XCd883udjJH2EmXSBJvWktKmbYMlyKevl8w1f++aUk0kM3MlRSKVYRur
X-Received: by 2002:a17:90a:9a90:: with SMTP id e16mr8504757pjp.164.1583736225889;
        Sun, 08 Mar 2020 23:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583736225; cv=none;
        d=google.com; s=arc-20160816;
        b=0vi/RwHJfiVpqfxOFothKaTz18zSk/K3kMF9p0xAXSUQvCQKw4R0ezS+YmokfB1Elj
         mBcAyqCJ/cgzlaqx1uz65k1LCMH7o9RGEMZPW5TrQWPGuaG/qD7yg5RCeTVX2ff11erF
         CUQG6OA1n1NgeePKR0GbJYn3f7tQaahF6b0LOcVnB28+ZlHJQYNDfRTMxBecxzGCVuS5
         2Fu0BVsc8oJLgPB4xte25L99RyAFL52vvLHmmVuxC2MGHz6RPuFMcbyNjjxS9yvCDrwj
         MgfKIfnTbR6/IuFkFCYRhbrqkpVtIWrHzR4HIdrVAflPq1YMHxz/T7EG5Q8uBB+uClKb
         5vhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=vLzrIJTiJKWG/umLvpXl6KYDmMyAdQ96Sz6v66POXZo=;
        b=quvG8EO9JjQlQwDdRmRUqTJ9dEex1NGfP9EIhfMmTHnhr7hGo7HjtNrTQW7IPpQQyW
         24yBEyTMbIJV1+g3lRO7cr1Vt9BiWgtgflKn6zgneLIP0sU8nQ+Z+bs7Gq6r94jH3PIx
         FJAPbL7TdIbyYIv+1jWqY0Yqr2YsnZqIscC44Dp0DruUNqzzUP0f1ji4Dlbrn6n1WBtY
         YSf06Wup3Iy+gmPd7IC2TMScVB8hmUx9wGI8I4gZZ/ySbLHjBzcIt/UXZ30PND68JggU
         dnqynvUbFw0TODwuStwzJN4id/at0MJWbhOtBsnJtfiyXnuM2jhvIMnSMOZyzOcoOBGB
         8NTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JIOsbo3o;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q197si641748pfc.5.2020.03.08.23.43.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 23:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JIOsbo3o;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c144so4367463pfb.10
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 23:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vLzrIJTiJKWG/umLvpXl6KYDmMyAdQ96Sz6v66POXZo=;
        b=JIOsbo3oJ4xYG9s8Fr+jNcxbSeSP5nY8gr6LEmZwKl+1229/GElB1DADY0z9ZQYnxw
         D9tjUxq6f5RfNEclWemi5X22nj6/kZR6Qhjs9cTH35ibT5TCbK38kF+EY8RTxyw0RXYc
         Qe1P6wCYCTGIGeDFRSe0XBH1I2CKat+ocEQ6zYTOV9vPEWEUtwe0IV/3lHCusLMgYH1N
         uqdHQPSUUCRj5dxnQlyvOUUVIvXyU0JHPuakCYzOWcYxBJimQril1q8H1lfaIZ6XZlg+
         eU0lyE9iSpH+v6tqIp+F3RNBNQgDYAGRaWa/rLRF3MTZ1c7QIucsyLzIjqEiM8qyWHLp
         w2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vLzrIJTiJKWG/umLvpXl6KYDmMyAdQ96Sz6v66POXZo=;
        b=bHuyB1kSiVsTiR49pK/nNQzPk2wPCai7vn62VDGqep4wvH77FM4kUDvoeB8mHWioP9
         U4ALVsGqJ3D7SPAdawISJdAvLRyCn5u0Ql/yrkeFeni3PR7imYFnsr1oXonRUmSnZSpe
         igEBpV51BxZZniX81scGVwSy2ZppRl8un5/WR0+oN1GFo0p8na+CWSCQJogzU90kLOYh
         COigGBKLw9RwqiV/FINZKUx7zKtq6+GrlE1G6HXrMAQE1OpMgbBa9qK7cIYksK5BAXtx
         SGh3Bs0lSzenyrVN/9dYp0k4kfOQTI8QjOQJqAUx49ck5hsE3jph87mTnPyiIktniswz
         JrgA==
X-Gm-Message-State: ANhLgQ0srY7bO1MEHb+L1e3hf1DaXWCiQX8Z4TEFruO2Yu3YB6guIdD7
	b5YL9rfPjuERPGQa+pDv8MA=
X-Received: by 2002:aa7:92da:: with SMTP id k26mr5983809pfa.139.1583736225415;
        Sun, 08 Mar 2020 23:43:45 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from Shreeya-Patel ([2405:204:2188:9cfe:18bc:a849:c699:3914])
        by smtp.googlemail.com with ESMTPSA id m68sm6869638pjb.0.2020.03.08.23.43.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Mar 2020 23:43:45 -0700 (PDT)
Message-ID: <af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, outreachy-kernel
	 <outreachy-kernel@googlegroups.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, sbrivio@redhat.com, daniel.baluta@gmail.com, 
	nramas@linux.microsoft.com, hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Date: Mon, 09 Mar 2020 12:13:37 +0530
In-Reply-To: <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com>
References: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
	 <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-08 at 16:05 -0700, Joe Perches wrote:
> On Mon, 2020-03-09 at 03:30 +0530, Shreeya Patel wrote:
> > Add space around operators for improving the code
> > readability.
> 
> Hello again Shreeya.
> 
I have some questions here...

> The subject isn't really quite appropriate as you
> are not doing this space around operator addition
> for the entire subsystem.
> 
> IMO, the subject should be:
> 
> [PATCH] staging: rtl8188eu: rtw_mlme: Add spaces around operators
> 
> because you are only performing this change on this
> single file.
> 
> If you were to do this for every single file in the
> subsystem, you could have many individual patches with
> the exact same subject line.
> 
> And it would be good to show in the changelog that you
> have compiled the file pre and post patch without object
> code change.
> 
I'm not sure how to show this. Do you mean to add the output of
"make drivers/staging/rtl8188eu/core" before and after the changes?

I also don't understand the meaning of no object code change. If we are
making the changes to code and then compiling it using the make command
then a new file with .o extension is created and replaced by the
previous one isn't it?  

> Also, it's good to show that git diff -w shows no source
> file changes.
> 

And this has to be...
git diff -w --shortstat drivers/staging/rtl8188eu/core/

Am I correct?

Thanks

> > Reported by checkpatch.pl
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++------
> > ------
> >  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> When I try this using checkpatch --fix-inplace, I get
> 21 changes against the latest -next tree.
> 
> What tree are you doing this against?
> 
> 


