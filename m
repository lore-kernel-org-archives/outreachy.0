X-GM-THRID: 6750983693634895872
X-Received: by 2002:a9d:344a:: with SMTP id v68mr4988192otb.85.1572047949309;
        Fri, 25 Oct 2019 16:59:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:1211:: with SMTP id 17ls2923429ois.4.gmail; Fri, 25 Oct
 2019 16:59:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUmWpsccrOYvKdXKmayBpX1Tm4/Dvu113SYtx21O7fSH+HIwfSUMxaGq1T5SyrVv0EuQlV
X-Received: by 2002:a54:4585:: with SMTP id z5mr5171288oib.128.1572047948578;
        Fri, 25 Oct 2019 16:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572047948; cv=none;
        d=google.com; s=arc-20160816;
        b=HJNFIWoq13oZphMhKTgtKrm+67csRdIGprvrmgkt+/1u8ihNHC2eeT6Os2E6sAvBPF
         ITo0dkxU/TDrAQRru1n/8sFN1+kMTMZGecTkOigQnVvspSNUtLFNJPLcS9B2GJVhJTuo
         curpDl0siffKWbVltoDF2GYp1Ci6cqWcIhkTIZAH3SjxeYmo8/wbGhHaQfL1pSfGAkBG
         zTQRZ4X30gv1h74edGuZySVk04yX8ckY56qeV0F8xqcAKaM/fGAhzyWIFyIa18CzTAPZ
         RUQwrJJx1aHOYTy0aEUx77MZ8WG/27NNIkLGAJknHUAquEofsE4W498RxD/ocsVQDMTD
         pZNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=qd0MFMIeDw+mXrhtEXU0UPzn6P4DJ1TK5Kb6uJSXcZs=;
        b=wsJvMVmi+Xal40NsJfLAQSG32aJyhTm5Xqdg3/n5JTW9+iinxAuZEUUFXtUmw8z3i9
         wRnfT7fTL8LAeT7EMStrS5g46kzgiJ7/x5W6JVe67cTGCcd1eGDfpeYOzVtWTS7MnEoa
         2DhlwG2sweSqsCpLlfOfgx/VUP8UIZtxwTatDKSCGm+3MGIKim6StTBIOMl86kyt3JSv
         T++0lek2pP6dRmaY8Wk2h7up6VVJyo7EpRKdsVMavKM2CyM/9hEeDn0vJd+2j67tecy7
         6tDwT2i3SPhsmU6cJ2aJ6yEy1TSFNgm9jWoXE2wvM+K8yisqac9F48+TeT8GUD7CgdvR
         XYiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WYleX9mz;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id l141si167199oib.4.2019.10.25.16.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 16:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WYleX9mz;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id o49so5856061qta.7
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 16:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qd0MFMIeDw+mXrhtEXU0UPzn6P4DJ1TK5Kb6uJSXcZs=;
        b=WYleX9mzbYM9gNO77sGXyZOND4NTI0jMtJ6quQMkh6Gcva5TF2izuTZ0TE9BE1vuV+
         p6eg1K/P4HqVKg9bJFXJlvya9xPoaM7jCA4HbkmXgI6teTXG5pU5OHJeZEbVZv7s7Qf0
         UHAnTBgTYGaWMZErMtjYaM4OL+zojHtwcMEeanAtDg2t8Rzd6l4MOqu1awmSNUH4PW9U
         eAd7nEUx7LIEC/bp5vyE71zD37Lk6ZwSF44wex6P2DWMQKEcKjHev2FQ7ILkd/i9zEv5
         mDdeAGpdlKHZ3x9ZtKcB8GfuR1vI6ic1CYtIhQew4HCyCwCj+QSecbezmU1ePaSdKcZ0
         UtNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qd0MFMIeDw+mXrhtEXU0UPzn6P4DJ1TK5Kb6uJSXcZs=;
        b=ZnS32wWbRvPEbDn0atILok0pfvHlvltfX/F/nXoAAi8zEF7EFOo32ucJVsU/D8femx
         MEOK4YQqNRBqjr8qIEg+fPBlrwVPB6KYZ44Gn9+opPvYYeA6aeQKg2bDx/GaMH9EMHb7
         aLCMJ+B1iC/JC2AgFT1e8cFHg4ejeJmMY16EDCW8s01MiHw4cj1+UHqMegrW5lbGoAlq
         uHjjwGXihPb7/pcNpfY95ty64lisi8N56QQm4tu1qmUx/1C8SJDE7HU+pSzYVN9ddxXk
         BF4h64t4sOgHwRK48V0NVBEXKO1JyPU/ic1yzFqvpKceMe2vqUeU8NIg/O/aPEPKRM1d
         pfeQ==
X-Gm-Message-State: APjAAAX34tFCjlj2IMq9yOCBqZk8WOv086UVa0bab2Pcv1SvsHHdXoXi
	oFks80sVK3KhJ/5WhzbQMBYZHg1Y+w7CaQ==
X-Received: by 2002:ac8:6e89:: with SMTP id c9mr6052729qtv.144.1572047948254;
        Fri, 25 Oct 2019 16:59:08 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id l93sm2112902qtd.86.2019.10.25.16.59.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 16:59:07 -0700 (PDT)
Date: Fri, 25 Oct 2019 20:59:04 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: r8712: Remove lines before a close brace
Message-ID: <20191025235904.GB2512@cristiane-Inspiron-5420>
References: <cover.1571834718.git.cristianenavescardoso09@gmail.com>
 <db01b7a09ad9ce47cb5f3a1c69f79deee82e1444.1571834718.git.cristianenavescardoso09@gmail.com>
 <20191025023917.GB307080@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191025023917.GB307080@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 24, 2019 at 10:39:17PM -0400, Greg KH wrote:
> On Wed, Oct 23, 2019 at 11:23:29AM -0200, CristianeNaves wrote:
> > Fix Blank lines aren't necessary before a close brace '}'. Issue found
> > by checkpatch.
> > 
> > Signed-off-by: CristianeNaves <cristianenavescardoso09@gmail.com>
> 
> The subject line does not match the driver name :(
> 
> ALso, we need a ' ' between your first and last name, unless this is the
> legal name you use?
> 
> Please fix up the series and resend.
> 
> thanks,
> 
> greg k-h

Thanks for the feedback! I will make the changes and resend the patch.

