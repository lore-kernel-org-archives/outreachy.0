X-GM-THRID: 6523195637320646656
X-Received: by 10.107.197.65 with SMTP id v62mr8789018iof.3.1518801888881;
        Fri, 16 Feb 2018 09:24:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.17 with SMTP id a17ls659504ioa.8.gmail; Fri, 16 Feb
 2018 09:24:48 -0800 (PST)
X-Google-Smtp-Source: AH8x225ZcQbOj8T2QpAaCvis/2dD2p8Z3wcXtZcZgHQJh2N3SlTDYJPeCReqTi8xyxsjIlEOdkZI
X-Received: by 10.107.9.67 with SMTP id j64mr8373370ioi.93.1518801887984;
        Fri, 16 Feb 2018 09:24:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518801887; cv=none;
        d=google.com; s=arc-20160816;
        b=Zx53tcAqDFLs3aK9AUzVHD7tuL25nY9oN0BEHx9OVXXpYYpmXUFbVlv/ReCiHD86mV
         PZMNSnYAv6QbmBzbDJvom53P3fsnma1kDT/3EDd1tiFhQ7oBDRS4LL7Zixf5hM9gP9ZV
         FvKCyr4XzjIazOod9uPNq5VYO6gHc17Vhi6qGrgG8BJukqHopAAFAb5SYVVqmlPKOfxF
         G7aSUHvzsLtUfonZigQd6PddTkCIe4g0i9H6o1/1kKyi8+EeEgqFaTbWLaP7YMPZ2fo2
         009vtNq2swSEkRzho2PpbOGLPCRAO6ANKuPkLUvzw2/TFA1GclKMP8RXHUfmlWZtN9GE
         YByQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=n1p5NwOIvVvYNaATTD5QOQ/CYBS3s3vyjYVX52rAWL0=;
        b=nhAQDdHilp+ENoYf4ijxhIeJamNX/gJ5y55O3GuAqa5u6IfMyRkuh4RY9p6iKgdV6T
         1nJZcY2sq6EELHDY6q69PhkAKrsU+Y+Wi+5FdW5TT4BXgD8JLiqQAeiapW29FDy0x8uM
         59gsreCfHtliKfT3aCU38pPdclvx4AHseAOLSq53M41BD3yp3pgg9BgWjPWzyXdMfsC9
         glTSXSZiF4t9OGtvU0h7MkVrnAtyvk/PG3ElUI23RS/eS1wUURuSBhvcayITFHPHc/fl
         ATsU1HQialBdRGD0eqLrlVD76TOXZbbqr/Bukva/iqKmU2pVnQ8pvcL2H2SeK9CjUdNJ
         vzZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=j4gqUUqy;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Return-Path: <ezequiel@vanguardiasur.com.ar>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id l7si21438iog.5.2018.02.16.09.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:24:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=j4gqUUqy;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Received: by mail-pl0-x242.google.com with SMTP id v3so2023464plg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 09:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=n1p5NwOIvVvYNaATTD5QOQ/CYBS3s3vyjYVX52rAWL0=;
        b=j4gqUUqyL8S6+321jIGmmEblET7Fc1qP6vsUnPx8426dy3dFRwngaEvwrqWa6wlXoS
         KYgCm+AeeZmFelzBNsKjL6t0xxMri1ZIsMdQtuDZh/2qEOoZ0THA5wF6N4cshUNJjEq8
         5V3vFeUyg9Gxy1J8s6fqTCZhV2kkIjNlpyppdkcBvUuIsqFZVAyXMMgHb+HGkMBPrkER
         tua1ltoh+8sLwDiY6eVFsBsfiP+ZWrraZacsV1SCj9ImHiYYnZmpCUgI6p3e2olx5PXm
         3uLLsqqzU6N8ibU9BgBNed/f4TLy1azLi5OTuvlw5SxAaU0l2kKb4bMbO4oFmbMuIEF3
         RSgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=n1p5NwOIvVvYNaATTD5QOQ/CYBS3s3vyjYVX52rAWL0=;
        b=hAQQqEeYQD9RprYXYmAixBuGn9kao5GXqsWaZuI9ne0DQ9ywn8DRTvw5TWXXxCP7Xc
         wUoCI7X8WBaHDxaU7v5KiE6l75k69jLy2taQA2jcmrrJM8cnz4xl7b1DPXFWZ+vWUBVB
         +SoIM164R70Q/WuureQfUcNFf5iRpkVs55zH70HJn0Z9z7tDbBN+RUkXwDBfJGBvz2c3
         ExdASSUpHxljJ+nfo7mGdOYW0OLVGLHeDqZeVpfDZ7JTn4WNscIH4ulq+0/40LH1sK5G
         LXv68rG82bD0Ei2zZQfJFy8crdairwGoHZYGsUlms6Yd6SVVIzTi9cn4sDLm9WkM46Zh
         jtdA==
X-Gm-Message-State: APf1xPB5U/LaZnWBbEsnNNB8aeKavfTU9n3wsXQnUJEn/G7aXSgroeNT
	41xwQY4gNaI87jz+BIqDoCK1HqQpA1Tn3t79su5O/Q==
X-Received: by 2002:a17:902:9893:: with SMTP id s19-v6mr6408124plp.101.1518801887390;
 Fri, 16 Feb 2018 09:24:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.140.23 with HTTP; Fri, 16 Feb 2018 09:24:46 -0800 (PST)
In-Reply-To: <1963507.Bpu1nn9g4S@blindfold>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com> <1963507.Bpu1nn9g4S@blindfold>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 16 Feb 2018 14:24:46 -0300
Message-ID: <CAAEAJfD6CbWOfrYOY4QDW0tte-yOebcZTGjUDQhR8uE+fsOs3w@mail.gmail.com>
Subject: Re: [PATCH NAND 0/5] Replace printk statements with pr_*macros
To: Richard Weinberger <richard@nod.at>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>, 
	Boris Brezillon <boris.brezillon@free-electrons.com>, David Woodhouse <dwmw2@infradead.org>, 
	Brian Norris <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, 
	Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Richard,

On 16 February 2018 at 14:19, Richard Weinberger <richard@nod.at> wrote:
> Am Freitag, 16. Februar 2018, 17:50:09 CET schrieb Shreeya Patel:
>> This patchset removes all the log levels i.e. KERN_WARN,
>> KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
>> statements and replaces the printk statements with appropriate
>> pr_*macros.
>> According to the kernel coding style, pr_*macro is the preferred
>> way to print the message.
>
> Beside of that, how does it improve the code?
> Don't get me wrong, pr_* is the way to go for new code, but I don't think=
 it
> is worth "fixing" in existing code and make working with git blame more
> painful.
>

Shreeya's intention is to work on [1], migrating drivers to exec_op.
As a first task, before being accepted, she is required to submit
cleanup patches (or small tasks).

Since I couldn't come up with small tasks for MTD, I suggested
starting with printk cleaning. So this was my idea.

Printk to pr_{} or dev_{} is not only aesthetical, it's also a consolidatio=
n
change. Centralizing prints allows for other improvements.

See for instance Wolfram's work [2, 3].

In any case, does it hurt git-blame so much? It only affects
the lines where the print is performed.

BTW, should you have ideas for small cleanup tasks in MTD,
let us know.

[1] https://www.outreachy.org/communities/cfp/linux-kernel/project/migrate-=
nand-driver-to-new-exec_op-framework/
[2] https://elinux.org/Refactor_kernel_strings
[3] https://elinux.org/Refactor_kernel_strings

Thanks,
--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar

