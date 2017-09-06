X-GM-THRID: 6462776611954491392
X-Received: by 10.200.7.133 with SMTP id l5mr370076qth.34.1504734146721;
        Wed, 06 Sep 2017 14:42:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.11 with SMTP id 11ls111622itj.13.canary-gmail; Wed, 06
 Sep 2017 14:42:26 -0700 (PDT)
X-Received: by 10.98.224.210 with SMTP id d79mr347238pfm.47.1504734145954;
        Wed, 06 Sep 2017 14:42:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504734145; cv=none;
        d=google.com; s=arc-20160816;
        b=c/TFqYUINRbm6J6y3/ykyQv3NB66oSNk4SXxBeAVNaNtCnrcPMtTTWc+m6u7+dTIbe
         rd+qYghDCNU/E9hNKrLGcaZ0Bk6jKs9GRPfeDofvPvuqvhoeZCPykrFyqjVPZLN5iHZa
         VGcN3VFa/faiR3u+zPDIvMv2mNtLkUEwZfPriGYtzntbruDz2RYRVE6DlaAmfGena9tC
         lItOT3OgQWPsHpvLarHicLQgt04BV9YpOGDcv+LGwi4P9WTfU0Hr/rGmrVyZ3b7NfgCX
         N1kd2Nolssf2sJbMxcr2e6K+wXQDEkr1WRSuXhoHtUQwaZ2HPqrdOdhVcYuWxA68Snya
         Wpfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=DpqVhFkAOfN33tjoPKlH3Z6bKs3IVYGr2dIhynQ9lXs=;
        b=UDhBnLBUMJUTCGX+pNKBTTUkcCIJUSpi4IAv9TAKQK10nYekOGeRd+TYQP6eyl8NKn
         e2ea1PlZaPzgfrx1eFCEYZ9i0GcQ1O4QdQRzSl2fR8nWfdbJNEFByKSgSehMfWDqoEU9
         TRamKULoaVLbf0EXebL5Ygj8S82TEFo1u9Y4WWiMN1zTHeWB2WP7ELpr9VtydiP74clv
         p1AW516BOR1Sqcjxmt9mtK/qIlTUGeLFqHgEY1b5ljh3YjEfoBFFITBuYEuP4VnRR+AN
         IcJvfAt1SLckt/e2E3GDPp58UVpaROrnA2zTlETkuBgruzGFKYlgVs+2wddoLd4yvDts
         RUsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CNCKK4Zt;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::22d as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x22d.google.com (mail-qt0-x22d.google.com. [2607:f8b0:400d:c0d::22d])
        by gmr-mx.google.com with ESMTPS id v23si63556ywg.5.2017.09.06.14.42.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:42:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::22d as permitted sender) client-ip=2607:f8b0:400d:c0d::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CNCKK4Zt;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::22d as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x22d.google.com with SMTP id h15so23286443qta.4
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 14:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DpqVhFkAOfN33tjoPKlH3Z6bKs3IVYGr2dIhynQ9lXs=;
        b=CNCKK4Zt1m9anvz1F3yQeHLSJ+03aRm1G60RyRGLI7rGuW34+C1a5UQrnMTFNrXyL7
         apn+qyd1pCywSPyVWIHfAmGmjTGZ5RBP9rDPZ2b5r2B52ZebsW3zAdbZP2GIZKiTYF5+
         Syd9vGeXKPsT9u13IvBgAI7EBkwoKLsV9ogce5ZY7V+sLfcYIq1CgL2XHB2bg/pYIk7e
         hLDoLVzncKXV5O2/SELB/ACAunKwRJRROo/iFT3WsMsjcLVKqvzky5l6Nltelqfffp9O
         B0RMoEuGCNpasC++AedCD5BubtFDlF3Y31HfUGAQJzfDxl5QlrKCfis1bflcZUTATAKm
         KqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DpqVhFkAOfN33tjoPKlH3Z6bKs3IVYGr2dIhynQ9lXs=;
        b=gF5URddUaAi8n56iPM2qD24vjQWFl7gzB1OlkxaQpHn9FlFLkvjH6ZMe+keZGE93o5
         0V/ZqK2iXwyprHgqwtwkvzNbso+OnCFx006mTbIgM7AGPf2iI6lrsHundUG9lR/9xk4u
         GKz4ALIh+mZNfX23NUbBrA6SRDrBRjvm9+3cE8PRb/hnHVqmI5uJvLW2BRGB1RDO0muR
         epGmMgEzJ1SFpc0RXe6pWpRwA/shorpQaXyjwyVchDnGm6OM9Car6NnJzBQgUbnZE2I4
         zfFo+yR4PH/G4NxMTPph1CVtNhrM+qeVthgOItaM/5H7e7AuqzVv8tCHMzRGd3UK3krd
         xfng==
X-Gm-Message-State: AHPjjUiEwUzxRZQzrNzkyKl6LLQ6ISBC7qj7l/1K1NuP5UhO0GLtQkDs
	fFsDQ1rh4f5y2mLXwUwdYAdwwJ5WGQ==
X-Google-Smtp-Source: ADKCNb4AT5OmXIs6LQ7dWMgI9vzL8aNAMk399sEMXdF5vVY0wL84PxSfNxjB5usWWaiIdVkdGAaQEHo5uCB7r3Bm9cU=
X-Received: by 10.237.53.23 with SMTP id a23mr924900qte.125.1504734145700;
 Wed, 06 Sep 2017 14:42:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Wed, 6 Sep 2017 14:42:25 -0700 (PDT)
In-Reply-To: <20170906213243.gyttos3s64ckoswp@mwanda>
References: <1504732426-9765-1-git-send-email-srishtishar@gmail.com> <20170906213243.gyttos3s64ckoswp@mwanda>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Thu, 7 Sep 2017 03:12:25 +0530
Message-ID: <CAB3L5owK3M3fZJwXAiuSY9bggxVpn2x=pZ_MfBQiGfW00G7Eaw@mail.gmail.com>
Subject: Re: [PATCH v3] Staging: ccree: ssi_cipher.c: Remove unused variable.
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	outreachy-kernel@googlegroups.com, driverdev-devel@linuxdriverproject.org, 
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 7, 2017 at 3:02 AM, Dan Carpenter <dan.carpenter@oracle.com> wr=
ote:
> Always compile your patches.
>
>   CC [M]  drivers/staging/ccree/ssi_cipher.o
> drivers/staging/ccree/ssi_cipher.c: In function =E2=80=98ssi_blkcipher_co=
mplete=E2=80=99:
> drivers/staging/ccree/ssi_cipher.c:700:6: warning: unused variable =E2=80=
=98inflight_counter=E2=80=99 [-Wunused-variable]
>   u32 inflight_counter;
>       ^~~~~~~~~~~~~~~~
>
> You need to delete the declaration as well.
>
> Don't be in a rush to resend patches.  I normally write them then let
> them sit in my outbox overnight and send them in the morning.  The extra
> delay helps me to calm down a bit and focus better.  Even though I've
> sent thousands of patches, it sometimes still stresses me out.  It's
> like you're disagreeing with the original author and the reviewers are
> disagreeing with you and everyone's trying to be nice about it but
> patches are fundamentally points of disagreement and that's stress.
>
> regards,
> dan carpenter
>
 Thanks , I'll be more careful !

 Regards,
 Srishti

