X-GM-THRID: 6201662223213920256
X-Received: by 10.66.141.135 with SMTP id ro7mr19599760pab.27.1443937591588;
        Sat, 03 Oct 2015 22:46:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls1782048qgj.56.gmail; Sat, 03 Oct
 2015 22:46:30 -0700 (PDT)
X-Received: by 10.13.216.77 with SMTP id a74mr21985989ywe.9.1443937590945;
        Sat, 03 Oct 2015 22:46:30 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id u67si1882826ywf.5.2015.10.03.22.46.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 22:46:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by qgev79 with SMTP id v79so125754962qge.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 22:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=OBvyuotoIZHanMEdLOdGG6rp0RTd5SZ9VBTkFa3udxI=;
        b=D9pi0VUehgNVcYD/i7jr8MIU787HnxSBFhtnswB5AI/cgLxYKDiYFsw8b1MmPfX9Fh
         2WG6To9JDQ2OfGtfFoZF+SG0sXFmIQkox+Zu+lO3gHviTz6w8OGyUijtlw+lBtA0slT3
         jB4WB/jjLBEiNoX941bsZwLNK80P3guMAejnU0irQx0rO4rvOCDO11sZDT3UnKtgHHKI
         GgSHiXSClGKhy4qVOP5SQl7AmN7jSPn/zEdLuHT5w9+DOTGkmvpojQmNLIMGBEZKhEaR
         1wpy6tijtDTeww7MIuxOvuAnX3Ln+QkW0X1SoWycqxnDnJLxuXpyG37J/bKmOvIGZJVc
         vfYQ==
MIME-Version: 1.0
X-Received: by 10.140.128.81 with SMTP id 78mr33197582qha.62.1443937590727;
 Sat, 03 Oct 2015 22:46:30 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Sat, 3 Oct 2015 22:46:30 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510040738190.2173@localhost6.localdomain6>
References: <20151004052239.GA3895@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1510040738190.2173@localhost6.localdomain6>
Date: Sun, 4 Oct 2015 11:16:30 +0530
Message-ID: <CA+5yK5HmEc8+RnwonKO9QMJb6xRf0+-tT+ddsABCsQwCN6jPAA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Removed space before paranthesis
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 4, 2015 at 11:11 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> On Sun, 4 Oct 2015, Amitoj Kaur Chawla wrote:
>
> > Removed space before paranthesis ')'. Problem found using
> > checkpatch.pl
> > ERROR: space prohibited before that close parenthesis ')'
>
> Removed should be Remove.  The message should "tell git what to do", not
> describe what you did.
>
> julia

I should write remove instead of removed in the subject as well?

