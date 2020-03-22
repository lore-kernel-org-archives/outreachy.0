X-GM-THRID: 6807107593039773696
X-Received: by 2002:a1f:b4d3:: with SMTP id d202mr4549244vkf.15.1584920172124;
        Sun, 22 Mar 2020 16:36:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab51:: with SMTP id u78ls43001vke.8.gmail; Sun, 22 Mar
 2020 16:36:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvRGUj3pAWCeEPgs0CJVqka69Lj82HbdQ+mMJcZeLYFGUgdVBsj9Sawjwxiybvfgct0PxzU
X-Received: by 2002:a1f:bf95:: with SMTP id p143mr13281122vkf.29.1584920170940;
        Sun, 22 Mar 2020 16:36:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584920170; cv=none;
        d=google.com; s=arc-20160816;
        b=qznxlJRNE/+N1QjtS+pbOPz0lews61JR3W+sRsRs+w4HIkaecWujK1xZ5RqzqB1/vw
         b60GBhOnLoSzP3tMVT6J1YCcHiBAbjNVKObesn3dz6TGCag2AzylTkWGndELndE9XmRu
         zcDnoJhdxFSsy8ftuA8xWHrDLYePdcRMooRW3SqJCNE5sO30K57Ao5kTuuU/rBjHJgEc
         eGq0+AA+/RDTG2XMTejA5r3NN1vFciQqrmzAuUtJO+ivQmkEzSJHJ8D1nuks5HBbT527
         wPiJOr77hRrNiFw8ohFwx7144ZFJb/47tqrmgOLxyUxt53/XqK2H5eitybQRh0u9XSar
         QMSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LZZN17605p3Wkg+GwpkypM2qbP4Tm2zfjDHOlZTvOO4=;
        b=A3TmOIUJo3UXHxDVIyfzH8XAAgUTiaxuIc5WBbf/erSgt8QS+Bbqfhwp4IPb1CgZbH
         onemyHMYyZCCAGrdB8Pgz9FrwLvYZjlvBuyR1qxJ/BEM+9jOOi9+S1YZ/Ui1SW40M9Py
         UYnCgJok651VoWJMHXKstuKc34EXWP2sXHaV6AN38LwwHNS0hWmWYF11SbkPkPK6/Rkn
         9ESIBhuuM5VdMocjxJzHbD1tElbSlUr67ne7yOEnXYCgXpkl5Qufod4rhyKxKNyMJ9Eg
         zGw8hWP8qL4+uPPYzbhW7MV8b31Xm8fjKZiQQWT7YPapgC6nGHEsFYJ/QDgblE8PiGoA
         YnkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZklPp4G;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <andy.shevchenko@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id t191si605444vkt.0.2020.03.22.16.36.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 16:36:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZklPp4G;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id q16so5065300pje.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 16:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LZZN17605p3Wkg+GwpkypM2qbP4Tm2zfjDHOlZTvOO4=;
        b=CZklPp4Gm+W8yjuSlg1T59mDHIcxG8wVZSOvFaZPGjT+U4uuxfSZG5a1SVdAN0QdHl
         42ZWF2PIZ/u0oWCrlub7zHLdlhm+Hh0W1/xx6OXqDYT7akVytAXvYkiHyv/Pl413xLxx
         t3tB2AYMv5jZtcT7u2QeEWiVeSFSy8xDh/x/bmQuME1qA/VRX8F9DSKxMsTVCleaIntp
         YiIqlE8X92zFzXOqIxDGrqn8Bbjr40cIaSZrYABTslYYrgTFNnl1g2o8axerhqZ31PUj
         OIEyOJrbsNIwzKc2JNVmZCJK5JcUtG0uwCh1RV8XLQVQikD4R16hfIy/RgzyCwHXgC/0
         W4pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LZZN17605p3Wkg+GwpkypM2qbP4Tm2zfjDHOlZTvOO4=;
        b=ElrNKW+BRPQ1Sv4rp7qJ65dF8vr+PgZORo3WfJ2hBoWm/9glqOaFV4ULLD089X4ekN
         Huh9lZP2FBjsqSthySJ8GI1pWicu6dx8lJa0IvLj+0zViQXPeS5b2LPutfm6YSXiGJAJ
         r69ZHnWT+PBdHzbgFYivwkvHUdkEXXOOcTQKobhn9XhPw0bDbyQWvOfGx225mok9bpw1
         fL/RulHJfd/czrW6cEZtI7RpW6t5hfu2aeJEPQlN68bEGUnn80c2OftD41GnhAQt07Yr
         PeESSN9J/HED8mWQ7R61PQa1K3E3s6I46hFkoY0f57wu6nJDderWfA37RGjUkovR0UYu
         +4IA==
X-Gm-Message-State: ANhLgQ15PpbgAoT9kc5mpokhVQ6DC4+oQvTb4dJkU39xedcxZOq6noPX
	amcV1pmUDlXN1EnxYbwxX1wAN3jqS1ISqtHxs0E=
X-Received: by 2002:a17:90a:8403:: with SMTP id j3mr22345063pjn.8.1584920170006;
 Sun, 22 Mar 2020 16:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200322185350.GA12377@deeUbuntu>
In-Reply-To: <20200322185350.GA12377@deeUbuntu>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 23 Mar 2020 01:35:58 +0200
Message-ID: <CAHp75VcP1O_QwepgAHPBaTLcr_3=ynV6hsmcgvYnBCz7DdoWxw@mail.gmail.com>
Subject: Re: [PATCH v2] media: staging/intel-ipu3: Reformat pointer initialization
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Daniel Baluta <daniel.baluta@gmail.com>, 
	kieran.bingham@ideasonboard.com, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald <pmeerw@pmeerw.net>, 
	linux-iio <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 22, 2020 at 8:54 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
>
> Reformat pointer initialization to make it more readable as per the
> coding standards. Problem detected by checkpatch.

> -       struct imgu_v4l2_subdev *imgu_sd =
> -               container_of(ctrl->handler, struct imgu_v4l2_subdev, ctrl_handler);
> +       struct imgu_v4l2_subdev *imgu_sd = container_of(ctrl->handler,
> +                                                       struct imgu_v4l2_subdev,
> +                                                       ctrl_handler);

I'm sorry I don't see benefit of this change, actually an opposite.

-- 
With Best Regards,
Andy Shevchenko

