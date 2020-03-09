X-GM-THRID: 6801960387185999872
X-Received: by 2002:a37:496:: with SMTP id 144mr66827qke.403.1583732950325;
        Sun, 08 Mar 2020 22:49:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7358:: with SMTP id q24ls2764689qtp.4.gmail; Sun, 08 Mar
 2020 22:49:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvw92xnQLzWRWn9NgRzs8o36Aj/tYql51A3oCURI9CccVLzwz5QD7MaK4sZ4AiKC8B8VZ0h
X-Received: by 2002:ac8:b42:: with SMTP id m2mr13199535qti.67.1583732949191;
        Sun, 08 Mar 2020 22:49:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583732949; cv=none;
        d=google.com; s=arc-20160816;
        b=k9IZUXr/melo8kq2g0rdC18kCYPfz6SpJITGzgSizsp/cZcvz4kNjIH38jOzJwWWjN
         XA2LUPSghsGAeC2369uylboIQ+WdfFKP8qjXir1dYm/9Bek914G9SSHm+X+XZUXjlmEv
         YD9nk3okokhJ6DeGSKMMdvGNpfLg4YBgRb6G4nKFGtbuUk11f9Jjatx/yd+8Wlzfne6y
         2OpGiQu8BqcIHrsf7Cp5al3q0ma30BlyovBxe98BSRdwBJFa8/nojSgpj+5c0TgiX/QJ
         A753p23w3SuCMFix3I8PZu5+P4h96m1zElPwsHXDXEF71iaGfLGnY5Q7mgUaZGZsr7XA
         WXHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=oZkC5jhk4EOPYchWGqBHGQPJ7o1ZBAozfok1ceDhJV0=;
        b=PhvUo6iMKngNPb31//AKM4qyegYZDOZT6/OBba6l7Ze0sej+6UlALwbtSBmgX03yzP
         PboBpQDCLwh1hWASI+l5C4j88fz7ox7SetS+zpElYv3SS6RMSBJnu3EXBE+cUlWGQ5eA
         bQnayjz3IwibyddEXB1t5F9QT0untOMz+JlGQmpOXvCPRXNxvaJdAY0wPXDU21sUmh33
         D+jYNQF8BA8EYjdhAGbmN1AVxr2rq3TkrSfM2zfWccoikrjF3IPBZgc/h9JFX8St1GLp
         5h9UtO4tZLbrBPiLbdRV5Aw+urIC6lk+DdEKsd0JeFS48pbtAHZD+cDpMaNtt3T2GbgU
         ttjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZASaf3Yu;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e26si463421qka.2.2020.03.08.22.49.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 22:49:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZASaf3Yu;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 37so29663pgm.11
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 22:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oZkC5jhk4EOPYchWGqBHGQPJ7o1ZBAozfok1ceDhJV0=;
        b=ZASaf3YuN3B+j/KI/qNDSYWrHHUZtHeQwHKi0PaCz9w4R3sv9X+Ksj14Jcde5QYK9+
         dxykImt3KiJAW0tX9DwbFamh1V39kcau1SxtGpbJrPjy+2z+wzWqaLdSx3RGvbGbYZP0
         Yr8VXYTO10Hu9jB0QT0+VYkHVnz2m44MHYvZErpnNVAcEQquneuZT8UhihN8gSexas2F
         dca1plE3EKhNXfT8p1yqwI+6byGh2w6K585Uawprfk61UtLxU9CxNL54BDGzRC3d26W0
         jzWKqP49f9ELw1MzdPkaQiY4HBCJv5U6IZfCdY5Wxvq5N907h35Yi8C4Ul12IXr08xvi
         vTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oZkC5jhk4EOPYchWGqBHGQPJ7o1ZBAozfok1ceDhJV0=;
        b=l1DKpHNYIeV0pWVQmkRsnTjEYILGNFjNOqqu8s5kPLvjgtvr89g6Ogw5Ir9yW5gWiP
         IScU5buxFS3aabOAlyQHCOf3PA5bbDR3bhHiHA1KTQtdIWHT80ar6y07FCKj6K0QfzsG
         YlwkR/kmSiMp/pjv5RgGATs9w9PMOfTcfPAZuBKFOhzgG863uYSvoXg4qJ8atgWq5yRy
         /JeIa+jdDJHHXgcV0eshFyeU3hrwkW9gDtk5dDwO06mpPLVr+41RsavzGfI5MF171VaJ
         hPn8l4WIH425ViZ1uDJrbFWRXzmc5t9VB7ag+7L8aA5TF1trOI052F5qz5Cu2v9ZIaRY
         5g4Q==
X-Gm-Message-State: ANhLgQ12YKoatVaxu4UZ38L521qB8tZ8DnliRNvS5kagh2p5Grhe0jzV
	YCU5W1UX7bTatYyUsU/5Q+I=
X-Received: by 2002:a63:f243:: with SMTP id d3mr7471050pgk.254.1583732948106;
        Sun, 08 Mar 2020 22:49:08 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from Shreeya-Patel ([2405:204:2188:9cfe:18bc:a849:c699:3914])
        by smtp.googlemail.com with ESMTPSA id j5sm16904080pjz.44.2020.03.08.22.49.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Mar 2020 22:49:07 -0700 (PDT)
Message-ID: <e392f09212ef4ad6dc917503e3e9782b7fefc07c.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, outreachy-kernel
	 <outreachy-kernel@googlegroups.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, sbrivio@redhat.com, daniel.baluta@gmail.com, 
	nramas@linux.microsoft.com, hverkuil@xs4all.nl, "Larry.Finger@lwfinger.net"
	 <Larry.Finger@lwfinger.net>
Date: Mon, 09 Mar 2020 11:18:59 +0530
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

Oh yes, thanks for correcting me.
> 
> And it would be good to show in the changelog that you
> have compiled the file pre and post patch without object
> code change.
> 
> Also, it's good to show that git diff -w shows no source
> file changes.

okay will do this in v2.

> 
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

I am doing this against the latest -testing tree

Thanks
> 
> 


