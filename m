X-GM-THRID: 6527357137219223552
X-Received: by 10.157.64.143 with SMTP id n15mr1973300ote.36.1519963959862;
        Thu, 01 Mar 2018 20:12:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.54 with SMTP id j51ls4188621otb.7.gmail; Thu, 01 Mar
 2018 20:12:39 -0800 (PST)
X-Received: by 10.157.35.16 with SMTP id j16mr2200329otb.44.1519963959077;
        Thu, 01 Mar 2018 20:12:39 -0800 (PST)
Received: by 10.202.204.196 with SMTP id c187msoig;
        Thu, 1 Mar 2018 07:15:16 -0800 (PST)
X-Google-Smtp-Source: AG47ELsbySDYUA6CoYx+euoemuX34o9AHISS/qGS61Jp/3h/QVN8T4mM0E/RTshgnXlAjoDmH6Kl
X-Received: by 10.202.177.67 with SMTP id a64mr924422oif.82.1519917316115;
        Thu, 01 Mar 2018 07:15:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519917316; cv=none;
        d=google.com; s=arc-20160816;
        b=rzK9Wdo/96yyE7PYGFX/pvSJ27lB6YaSy9rkhK1osYuHlUUKsPt1HgF2kyugsYUmxv
         CTYcotSFGQUdkGEjfF7LGXJN/EA6JSYGdXL6xJJ6CB8Y4u8Uf2S/QSEjv2bdnWgSygeJ
         MLjCtSFRVwS8KesuphSQhwZEYXUEJ0aOL8jzdBDSGcWlwzYiWrumJU20va+6kUHBNyr0
         eoqcoVopCUIE7Op1zM2hDdqYtDDUgEtDowidvzwBmvN317a+CZZyGdmZwfuQbV2qZyAu
         okYIn0TM7+Sv+W6azR8Bwmugmv6P62/NR6oRPF6ajsyu2Z2RSkObqSmMWEtJmjswBD/P
         B0Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:dkim-filter:arc-authentication-results;
        bh=J9I35bdh+3X4D5kEXAa20L765Aj7Q7mXHBElLWTMcF8=;
        b=c0Rdxm521c76kMA827mXXuhanuXfP7Os7U94Syi6owQDRJ6xZyM6tYD6vDiSO8D4KC
         N1oLg6fIThSlD4FsG5pIyRMDuQWT+m26JwXzx5GYFlpxnWyo3o7NDQFm7rvYQkm1mX9Y
         UxEWmUpcKUsKB7BhmLxMetwLt7T65uzgRXcQWScSgZU/uju5L4SI60OSyiD4+D1Nh8gF
         R4vui0SosASUekdBOBLViJRNUKLxxtcU2eAr6c1xfNStoZIBkM8u8jSSRBxXcZKziOwS
         L79b/NJXUV2Ua4wMzccOPxo4XMmhRcJUxyd7hsaXDkRV6EQguMTV0C3+tMwx9t2t4Pwt
         0rOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Z3QZAvna;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Return-Path: <yamada.masahiro@socionext.com>
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id l10si284495oth.1.2018.03.01.07.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 07:15:15 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Z3QZAvna;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com [209.85.217.171]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id w21FEtjh018593
	for <outreachy-kernel@googlegroups.com>; Fri, 2 Mar 2018 00:14:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com w21FEtjh018593
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
	s=dec2015msa; t=1519917296;
	bh=J9I35bdh+3X4D5kEXAa20L765Aj7Q7mXHBElLWTMcF8=;
	h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
	b=Z3QZAvnam1j7hw30/WbcLgvQfQqLFTS1/p8O0fycf/y1U97OToJEcS6cHpLjXEyGl
	 Oz+fPg+pkVFsOMngwP4zsd4mZq/5b2L3GdO14UY51hjpyVe7P7wEACoj45b0OlMBYl
	 xeo/fDp+Q4dIOrFkbnQl/KrH9jn7OiC600ISovl3okiJ35iznND5WjBpgsylGC1Nj1
	 xr4tcILymCgltYgznoY8rM402+f4DxpfPdtzGkRiWIuwEoH2OpoafoYD3NmgyJaDgP
	 tyOiCD8AAfuBaFz0vHAelmyX6Xq4iKkm6ap+Eh6DUOa56Orq0LiYMmK65efQHp8Oez
	 yeRToO0d6wUIA==
X-Nifty-SrcIP: [209.85.217.171]
Received: by mail-ua0-f171.google.com with SMTP id x4so4061000uaj.11
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 07:14:55 -0800 (PST)
X-Gm-Message-State: APf1xPAbAXlpp6KQVWUUbIge8KALAxI2NV9x4jsHHpyigUKXUaovEr8R
	3gRlhdAgTjzTsraLoneE9wGMXGjPINJxbTsIpDQ=
X-Received: by 10.159.59.111 with SMTP id j47mr1492612uah.140.1519917294666;
 Thu, 01 Mar 2018 07:14:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.32.138 with HTTP; Thu, 1 Mar 2018 07:14:14 -0800 (PST)
In-Reply-To: <20180301085717.GA4508@gmail.com>
References: <20180301085717.GA4508@gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 2 Mar 2018 00:14:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNASZo27PwwbhMPV+KPv1u=933Vkt0-ve1HG1E2gxmnCUhA@mail.gmail.com>
Message-ID: <CAK7LNASZo27PwwbhMPV+KPv1u=933Vkt0-ve1HG1E2gxmnCUhA@mail.gmail.com>
Subject: Re: [PATCH] Coccinelle: memdup: Fix typo in warning messages
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: Julia Lawall <Julia.Lawall@lip6.fr>, Gilles Muller <Gilles.Muller@lip6.fr>,
        Nicolas Palix <nicolas.palix@imag.fr>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

2018-03-01 17:57 GMT+09:00 Dafna Hirschfeld <dafna3@gmail.com>:
> Replace 'kmemdep' with 'kmemdup' in warning messages.
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---

Applied to linux-kbuild/fixes.  Thanks!


>  scripts/coccinelle/api/memdup.cocci | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/coccinelle/api/memdup.cocci b/scripts/coccinelle/api/memdup.cocci
> index 1249b72..8fd6437 100644
> --- a/scripts/coccinelle/api/memdup.cocci
> +++ b/scripts/coccinelle/api/memdup.cocci
> @@ -56,10 +56,10 @@ statement S;
>  p << r.p;
>  @@
>
> -coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdep")
> +coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdup")
>
>  @script:python depends on report@
>  p << r.p;
>  @@
>
> -coccilib.report.print_report(p[0], "WARNING opportunity for kmemdep")
> +coccilib.report.print_report(p[0], "WARNING opportunity for kmemdup")
> --
> 2.7.4
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kbuild" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html



-- 
Best Regards
Masahiro Yamada

