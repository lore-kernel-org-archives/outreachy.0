X-GM-THRID: 6803716874412490752
X-Received: by 2002:a17:90a:1a51:: with SMTP id 17mr18197337pjl.118.1584252007249;
        Sat, 14 Mar 2020 23:00:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls7254650plo.8.gmail; Sat, 14
 Mar 2020 23:00:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvIj7SCbSpxuPHGhD57Kvh6YudiS6OIe/8CwcWczUVWOAowf4PVK1PSSht1Cm+eqPSFMe2j
X-Received: by 2002:a17:90a:d806:: with SMTP id a6mr19012306pjv.13.1584252005475;
        Sat, 14 Mar 2020 23:00:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584252005; cv=none;
        d=google.com; s=arc-20160816;
        b=sp9md3xfMXc8hgVbthGhdV1BhA6uyhb8+kwgt8bWJftnBikFkUd/8iOYBKH+tEpRXs
         zrTk1q/nroi/fgf76kbouioXh8FfDzHkGnx0KoE+fO3GBuIXCyf86siAmgUvf0dfDqxL
         7fS0FkggHuqjPF/e8ex1ZDFwo6FlXFvLbQ9zUSzk9VAemZk2Lvpth5cd2rJZwpbHLZ0I
         TwZaK0G7+p6VBDBqpJOPLRz0h3ushzEb2CDuwa9GPyg4xCzhAfZbLSaY+JrSxw4FSvZr
         3V95d9m6vc9HE6ZAeD2R9e5SfWagqTeZP5Bnum8Sd3fVmH/chEJVneKuxuvDmlwo35QH
         fPAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=mRojUiF1/s/s3BBMAgnI9G4V+4fA00CNtLSh/KueI7Y=;
        b=V3MZjx8o/0n4sUt8StngJWyYS8Rs84Eb5LHv7cGGqHrvhQ+vCcN2ceIitxQ4DqaW9Z
         XbCgL9qAouSltYbrlXaiauR4CnhQgYCWdf6k3l/7x8+bUtT/pWA6oNLQFl5IIi7nUF+2
         /Xci4novS08wy375l4WlWTLjATWKmOem4WG9VXs4c5XIX+fyc1TXipO/OnhocSByDmrZ
         mCOsoUXzm3b5cGMZiUlo/s1rXAXlGiFqWRzRDPs23L/h67DM/pRVGZ1WEInRk2zNPvKh
         NGhCTqUB4OkVKav/rB+EHTcBNfCLy5eePYzNHcI7AJM2R+XaDRuX1sWM+bp4gZu3tJK3
         4Uxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eC99rWhD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id h10si822925pju.1.2020.03.14.23.00.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 23:00:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eC99rWhD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id t3so7634011pgn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 23:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mRojUiF1/s/s3BBMAgnI9G4V+4fA00CNtLSh/KueI7Y=;
        b=eC99rWhD8U6MGxxdCXysTijTKZuQyPJahuGirIDHttu3Cok6ED5GYsEAI5nNboFSR2
         MLoUGbFfJK2FiDl/ZOXFUR7maGBhaosMo8P+aZ8w7G6HNsJf9KMBnOQcGvFdfrZRNsvH
         Ytv3sweqDZ8lnoCMvExjmSIbdF1cxf1lisdw6MTGdgmmd9daqkV99mASDqx5DtQ3L5PC
         lsrMo32zprPiLaRKz7hcGInq9w5H5XL/FnPtNSiGL7FSXAcsERMfYGxLP10Fzq3E1bzR
         Gqcy5R9GHMPkJTvv1cBRGueMsEpkDmyh4FdG7usCXGhFL+KOBNMVNx8X135mRHZWgShP
         1Udw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mRojUiF1/s/s3BBMAgnI9G4V+4fA00CNtLSh/KueI7Y=;
        b=dyj8rv6PND2l/jZ3IqQcmJABrb3aZ41uMkL0QgYWmnMN5yeBJ25nzrQO6lb/9flDlr
         kKD6KxJ/fndYWxRcdZvc7YrN0yz+kZtDiklmbdSdxkNgNF2rcRJ7bOtbtBiz4a7WKqw5
         aPll2lsFes8MUwxZLg/ufjOZBWuanUP33iBlcu7lwzVg3hx1LYROHVs5KLOYjhkIdGuE
         13rwI5GWM0py1pjjUXCDLiBfTKIMDpafOTDyCEfPjFLi+seEHTvCGLU1tIRoh6zUig84
         lIT3ut4pkZuCx3UNMrnBnqsEMZuq00b6R5lL+ChO0U1DNGPZcTnSfUM2VegLC8QfoPyF
         RFZA==
X-Gm-Message-State: ANhLgQ0qjFDZrRWV1VUu+fJ6IVCDLOJAbVK17S6N9RzLBEkdvVxdfBhT
	nTvV/18mI08bn/7MaFhx4uE=
X-Received: by 2002:a62:195:: with SMTP id 143mr22613887pfb.17.1584252004990;
        Sat, 14 Mar 2020 23:00:04 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.11.198])
        by smtp.googlemail.com with ESMTPSA id a24sm13221553pfl.115.2020.03.14.23.00.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 23:00:04 -0700 (PDT)
Message-ID: <5dd7e63b4fea205ec7a45456794ec8b12d8faa4f.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: rtl8723bs: remove
 unneeded local variables
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Date: Sun, 15 Mar 2020 11:29:59 +0530
In-Reply-To: <alpine.DEB.2.21.2003132025350.2355@hadrien>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
	 <alpine.DEB.2.21.2003132025350.2355@hadrien>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-13 at 20:26 +0100, Julia Lawall wrote:
> 
> On Fri, 13 Mar 2020, Payal Kshirsagar wrote:
> 
> > Remove unneeded variables and their declarations from the files of
> > staging/rtl8723bs directory.
> > 
> > Payal Kshirsagar (3):
> >   staging: rtl8723bs: hal: hal_com.c: remove unneeded variable
> >   staging: rtl8723bs: core: rtw_io.c: remove unneeded variables
> >   staging: rtl8723bs: core: rtw_pwrctrl.c: remove unneeded variable
> 
> The subject lines should be created according to what others have
> done for
> these files.  In any case, there should not be .c
> 

Since I had done same change in all the files in only a single
directory, I needed to add their names to make the seperate patches for
each file.

> julia
> 
> > 
> >  drivers/staging/rtl8723bs/core/rtw_io.c      | 9 ++-------
> >  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 7 +------
> >  drivers/staging/rtl8723bs/hal/hal_com.c      | 5 +----
> >  3 files changed, 4 insertions(+), 17 deletions(-)
> > 
> > --
> > 2.17.1
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/cover.1584113084.git.payalskshirsagar1234%40gmail.com
> > .
> > 


