X-GM-THRID: 8221215424512
X-Received: by 10.194.161.194 with SMTP id xu2mr7976528wjb.1.1426336891288;
        Sat, 14 Mar 2015 05:41:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.4 with SMTP id dc4ls516232lac.73.gmail; Sat, 14 Mar
 2015 05:41:30 -0700 (PDT)
X-Received: by 10.112.13.228 with SMTP id k4mr7813779lbc.8.1426336890245;
        Sat, 14 Mar 2015 05:41:30 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id bz6si303107wib.3.2015.03.14.05.41.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 05:41:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id k59so8897573wet.3
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 05:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=w46+8UrQfYt8bECk+hKQyhQY/VQ0JTaIFqJvjKTHGBs=;
        b=WEBzSimqY1Ge9a8otgQ31Xd4vT3+/YreBP/hPV7p/QsQ5Ua3R/Gb62OFiMd+XnC3Tz
         YW94cDUmlzbn+SLsY1SovK0IdEmQcP47ZAoTNhTYfMipibuEjx3ee3VFwXgN9haWMgto
         Jc+yqjZkilBZr3FWdfXW6KX0xU9YoudkydoQ1sHLqp6gXEeLFddiPk7WXO4S4E1W0i1o
         qwzflZdYVtYy0xzw2sqA8Bn1AOrRb+sEj7cCFQ1zFQ0R8cILIr8stuqEW2PRwSAW4lfp
         2oGDLg40JfHDD8Jqd/Ve8W7gutGjEAQExOIdi6MmSTM7HyiqkSUbMc2K7/gF6nrRZtPA
         p3Ow==
X-Received: by 10.194.205.138 with SMTP id lg10mr101723774wjc.130.1426336890134;
        Sat, 14 Mar 2015 05:41:30 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.101] ([46.214.223.212])
        by mx.google.com with ESMTPSA id e18sm6874459wjz.27.2015.03.14.05.41.28
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 05:41:29 -0700 (PDT)
Message-ID: <1426336848.6446.10.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH 3/6] Staging: iio: Prefer using the
 BIT macro
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Date: Sat, 14 Mar 2015 14:40:48 +0200
In-Reply-To: <CAEnQRZCbvjZCnrz8e+rt20ZjfUczZ2SewzArbm=L2NqcN7puZg@mail.gmail.com>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
	 <c77aa9f0cb01943bd9b2b8afd1a87807da692eb5.1426296329.git.cristina.opriceana@gmail.com>
	 <alpine.DEB.2.02.1503140735350.2075@localhost6.localdomain6>
	 <CAEnQRZCbvjZCnrz8e+rt20ZjfUczZ2SewzArbm=L2NqcN7puZg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit


> e.g:
> 
> 2 << 14 = BIT(15) | BIT(14)
> 7 << 13 = BIT(15) | BIT(14) | BIT(13)
> 
> You could also search for the datasheet to see the correct bit
> definitions.
> 
That's a very nice idea, thank you! 

> >>  /* Command Control Bits */
> >>
> >> -#define AD9834_B28           (1 << 13)
> >> -#define AD9834_HLB           (1 << 12)
> >> -#define AD9834_FSEL          (1 << 11)
> >> -#define AD9834_PSEL          (1 << 10)
> >> -#define AD9834_PIN_SW                (1 << 9)
> >> -#define AD9834_RESET         (1 << 8)
> >> -#define AD9834_SLEEP1                (1 << 7)
> >> -#define AD9834_SLEEP12               (1 << 6)
> >> -#define AD9834_OPBITEN               (1 << 5)
> >> -#define AD9834_SIGN_PIB              (1 << 4)
> >> -#define AD9834_DIV2          (1 << 3)
> >> -#define AD9834_MODE          (1 << 1)
> >> +#define AD9834_B28           BIT(13)
> >> +#define AD9834_HLB           BIT(12)
> >> +#define AD9834_FSEL          BIT(11)
> >> +#define AD9834_PSEL          BIT(10)
> >> +#define AD9834_PIN_SW                BIT(9)
> >
> > You could clean up the indentation at the same time.
> >
> > julia

I did check the indentation, cause it seemed to be inappropriate for me
too, but they are aligned in my sources. I don't know why git diff
messes with the indentation so badly. I thought it might be the
mix of tabs and spaces, but this is not the case, since they are aligned
at 2 tabs.
I'll try to modify them by hand, without the script, to see if this
problem still persists.

Thanks,
Cristina


