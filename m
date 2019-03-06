X-GM-THRID: 6664414939270086656
X-Received: by 2002:a65:51c8:: with SMTP id i8mr3269847pgq.101.1551895573190;
        Wed, 06 Mar 2019 10:06:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:322:: with SMTP id 31ls1463831pld.1.gmail; Wed, 06
 Mar 2019 10:06:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqwD0Sxc678cFfOYyj/u7SR1+kTNQ2Dj0zvutrGO/3gZeMx7ZqtuDJJSezb040MZ3JSkpQC7
X-Received: by 2002:a17:902:1347:: with SMTP id r7mr2590631ple.133.1551895572416;
        Wed, 06 Mar 2019 10:06:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551895572; cv=none;
        d=google.com; s=arc-20160816;
        b=MWJdqcqkWvhlWQRAvx3h0skZF4tox9jyF0mj6RyVdTs1R6uDs3NCDXuknmHR2r4ZPk
         HIqImTIl5jlCQrG3Dpf2417TnFBn2M2wyb5K2tWUZEyEmJexnERD0ey9jf8IsAsc+M59
         Gl66s8/QeymEn9I+Wlv3bGylWpeAsXVSE5TGAyRpwW00zFbRGpBUKcmppotCFbE+V7iJ
         eQzLR74pSQ65Ct6ZrWKmah5HAmCli4OGYcqCqD8/3gUdemiX3pj6fehQq+aNhWEWWPnC
         L5WK5wXRLd5eKU8DmyMf+oVHQ0ZttvqtDZzKAzjO9tBaDfvgBagGHbdxSk54rcZJWamv
         zcgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YqTlV/wClYWKKTmMUaRxZJ61EFDxJZiYe5q9iKrug2I=;
        b=HXSZXIK7TBrVYTHb62+yk1rWOGtrmhpO+7411RgJw83dxy8kps68sFXTt8Y9LYYBC8
         ufunfDbDPzOhjvOqTJ6UXYBXQbwqKaJlh0upsj6POoMGw5Izool4RI5tc8YMFL907EaD
         m2RHayhvGRlMExkiA8t6Yp6Fx/qwXm9wX+9FocR7h3TYj3hw/ALFkSx6PogafDLs2Rp6
         d0IhVjUuG06F51/U8J758bQk8OZKR/XSuuy8s9S7Fqpnwt03aebwG+CpEAzS1VRXviD5
         EsdOZY3KZsuPGKSyDG9Zc02yKS0eVjG40GIihe7Z0w7BO6OQduOO0Se0Lp/uj5n/CLR7
         TGpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gy7N0Gno;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id h15si94162plr.5.2019.03.06.10.06.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 10:06:12 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gy7N0Gno;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id v10so13588369qtp.8
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 10:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YqTlV/wClYWKKTmMUaRxZJ61EFDxJZiYe5q9iKrug2I=;
        b=gy7N0GnonRYvzpYw4pUfAGrH/7eeOO/XEkSWxxBDE8Ee0CvypYFKyANVslOiWZ+LPz
         PwoazhiJqy/Vk4yhjl7yG2ogliEjtGA//+t6xt/qC3oI40X5MAVoPz6XpxeSpC90onwg
         StJL6WKRSff4UXFjbbrWAJpnmID231aTR9/osmN15BN7AqZpNqntxKJefHCf9Wj6bs22
         i2FZfxL5mt0w+8GYsoGhqhUtKlVAC6ynQqki/QcxDF57zV150y8GgcwxYvFMIj++d/6m
         5OYQvO0sFZOCB7TXfAqT00KmUhmnHkIzb1OrCGOLnMPt98c7RajDPCH2H9urQzrTklCZ
         2qLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YqTlV/wClYWKKTmMUaRxZJ61EFDxJZiYe5q9iKrug2I=;
        b=GBgdBP6pit+++KGONzvpy4T23ZcbieSHGiBPGH40yWlCdlHdYUmvWWtO6tIspmcQ3g
         KsUpXjJD7Ug2j7fM4BL4j/uttXOlfcyr9O0wYzlf/6FJj8xYdSDkfKo9ZHx6t8on5YEZ
         Y/yqOTpYKJ7Y6Sixd6eTy4n1Y46oVEDRs0BMUU+eB/SMgbv2bEkY0UrYtzRMCx8iF8nU
         NPADNldcvGRAFlJSZeaSjNNEJKHzYBXnOBRmf+rrw2ASQLc6tCjRdkkf+cy6/VY6nJ5R
         HHxxUM7DyE7blAIZkt2Oz6HySE2aQJlXGp2wpkgAUs30KaexdIssRw30wTgleKPpIPBX
         NG1Q==
X-Gm-Message-State: APjAAAU+iOJUVl1/i9idkZi5VJOD9yCeTQ3C03XlsDbmlnfeMGxNx5pl
	2tN66tV7PcCtHJPqooQyaabUQfp51U1asjJOTW8W2Nmx
X-Received: by 2002:a0c:933d:: with SMTP id d58mr7299969qvd.92.1551895571819;
 Wed, 06 Mar 2019 10:06:11 -0800 (PST)
MIME-Version: 1.0
References: <20190306130624.GA12872@bhagyashri-Lenovo-G570> <20190306175758.GA19537@kroah.com>
In-Reply-To: <20190306175758.GA19537@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 6 Mar 2019 23:35:35 +0530
Message-ID: <CAOMPgjh2bNPgo44Wf-ZzM6hY9OjXgE-tTZVUZo3FrtV22fd2+A@mail.gmail.com>
Subject: Re: [RESEND PATCH] staging: fbtft: line over 80 characters.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 11:28 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 06, 2019 at 06:36:24PM +0530, Bhagyashri Dighole wrote:
> > Fix coding style issues, which solves checkpatch.pl warning:
> > "WARNING: line over 80 characters".
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_ssd1306.c |  3 ++-
> >  drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
> >  drivers/staging/fbtft/fbtft.h      | 14 ++++++++++----
> >  drivers/staging/fbtft/flexfb.c     |  3 ++-
> >  4 files changed, 16 insertions(+), 7 deletions(-)
>
> Why was this resent?
>
> Is this v2?  If so, you always need to say what changed from the
> previous version.
>
I got a mail, patch is not added in staging tree, Resend it. I thought
i need to send it with RESEND PATCH prefix.
Its a misunderstanding :(

> Remember, maintainers have no short term memory :)
Yes :)
>
> thanks,
>
> greg k-h

