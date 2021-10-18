X-GM-THRID: 7018981355604148224
X-Received: by 2002:adf:df8c:: with SMTP id z12mr36034291wrl.292.1634565721082;
        Mon, 18 Oct 2021 07:02:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:508a:: with SMTP id a10ls6899668wrt.1.gmail; Mon, 18 Oct
 2021 07:01:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxYv/y9GIgzMN/AAKzC5hMJZz8usvg64B3EWpEt7MYP7WZDPaVzxwvb0o9PlY9GxV1Xp7dI
X-Received: by 2002:adf:c78d:: with SMTP id l13mr35256479wrg.134.1634565715492;
        Mon, 18 Oct 2021 07:01:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634565715; cv=none;
        d=google.com; s=arc-20160816;
        b=stwl5jFe1EbkvXBbdHeRsx5OyxskcYDK7H788cgL5pdSHtlqRxiTR/cV7/2HP59by+
         K9TVtY2aagmCnP/guGOYIG88UuQ956X5BOGs7giRjQ6Xr6U292dWIQSDA87vs0yYC6OZ
         ouHvkFTovaggcoGAxe0b/7CCt5z+eCvU8bSks4ZFhb2IDp2AVtrbAqJK2FasHShepKhQ
         rA3X1uSHHGkrBysd+mBnsfrg/iup1dYnrrIR2IGSzpcr8W2/+z3mxmw7Qh1XqOs2HDOk
         V2oD4+tCFzjZJqte8CYSQFpYd5qiC0YwAAPbQTpQKalmJmA/gPqERdnIxoknhIoUokvT
         aLrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Lti9U7AE0pTWNrkCXrGhNWMRjb1PyVn3fcG07hY1Kew=;
        b=k+8uT699EwFpPfm4fz+XKbIOjB/xUj6vqYMkMbMwGgYju0zXX+JxEsYqtariI+iFYc
         wunZJk1GDzXh0PPCn8mtirQie/AKVEzO25DUW9bIA8wF+ITlh6dhdFNRkJ/uuLv9IShV
         EGyrw8Tlbaok/oTqXnongpohZgz8tDEibin1lwnVE3mJorc7XM7YSNyUgrLYiN5iF4P9
         aSlcUyKXM+Q8GcYwzzlnWNP0KA3ikE4EW1ldKqQhU0POjtlaQyVbSDFXg6Yx95H0QZQk
         n/Qbvcj49884H/w6BOBBZ0vyj0vdMlBTyUcI+fk5QY6KqiLxQziychCu1EhDT3vBOgOJ
         AUzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VcZyV2jW;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id 26si4009wmk.0.2021.10.18.07.01.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 07:01:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VcZyV2jW;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x436.google.com with SMTP id o20so41716265wro.3
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 07:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Lti9U7AE0pTWNrkCXrGhNWMRjb1PyVn3fcG07hY1Kew=;
        b=VcZyV2jWbvwOJbhJ+w4ZdRUl1GxDP+JsJzdonUs5xzbxBVAfePHVb7lxV+m4bzFjw4
         H57lspEKtl9On3jrF9fOnLIyjbPt7pYsdi6WxD+g8LXQpluhwgFSMy/tT39XFRe1wvbp
         ck31R2loZ5CsBROgnYkqMdcKBgXyR0rSQminqJmVvxyHmisENPkKbEJi6vcGmTz3m6+B
         ft8EeHM1EZ+wTm8T5bAOpCP0g80WUxLj4ntz20uIfPpgoUA5o79kQa8ofsU+U3sW16ZG
         IL3D5BH24PzIb5Hzk6v1QMlKWeGq5o3TYgaHF4ytnbRmdKOT1mMe8XaZlqLCVQgeke9T
         Aduw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Lti9U7AE0pTWNrkCXrGhNWMRjb1PyVn3fcG07hY1Kew=;
        b=Hx/ktC0emTK/0WQglDr3JYd1DwJyGsRw152/BL76ml9QlA/TaSXLj2DlfEK2wt6ej7
         ZsvCvCgR2ql9dkim1Jl8LzJcjSccMyNaVoQRlxxWhdRyKOQ7N5gsyjDEmqinOw8s+e/B
         B0b23q0DQD7Yyxz1nZhOdDNeisEUvHMo6DXLg5hwGAMVaBABhzBT0fqo/4fWSx4n/8eq
         0Z9rZ2gKhUo2tXiW2kYpZvDfuWUo32phdAmvZnNB0aOwVa0kbwfmWiWpW1xFBJYzDbSq
         Amt4d2UwO3OYNCJqtWCy7aBpViHDSPN7Y6aUuqfTq9VsJyOuerqot1ePEtdAr28OH5LT
         uJQg==
X-Gm-Message-State: AOAM530BCvkCVyZf39Ui+rdfqou5CeQ4k8Fxve8njeiaPGeHn8Z2TmWX
	+DSLpSdXrlMZXFG0Ux/V7/0=
X-Received: by 2002:adf:c70b:: with SMTP id k11mr34514628wrg.154.1634565715171;
        Mon, 18 Oct 2021 07:01:55 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id s186sm14860282wme.14.2021.10.18.07.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 07:01:54 -0700 (PDT)
Message-ID: <4a2104cc5bc67387300aedfb2508f991e11bed44.camel@gmail.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Alison Schofield <alison.schofield@intel.com>, Outreachy Linux Kernel
	 <outreachy-kernel@googlegroups.com>
Date: Mon, 18 Oct 2021 15:01:53 +0100
In-Reply-To: <alpine.DEB.2.22.394.2110181207200.3174@hadrien>
References: <20211014174207.GA426328@alison-desk>
	 <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
	 <alpine.DEB.2.22.394.2110181207200.3174@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi Julia,

Thanks for taking a look at my changes. I'll update the section
accordingly after getting more feedback, hope it's fine.

On Mon, 2021-10-18 at 12:12 +0200, Julia Lawall wrote:
> > The many arguments to get_maintainer.pl cause the output to be in
> > the form of a comma-separated list and cause only the actual
> > maintainers of the affected files to be included. However, for IIO
> > drivers, please also include linux-iio@vger.kernel.org.
>
> I wonder if this sentence is still needed, if we are dropping the
> suggestion to use the --nol argument.

I'd like to still explain what the output would be like. The "actual
maintainers" can also refer to `--nogit-faillback` option that excludes
committers/git information. Can change it to something like "relevant
lists and the actual maintainers..". What do you think?

> > The second step to submitting a patch is to create and send a patch
> > as an email. You cannot send patches as attachments to the mailing
> > list.
>
> This would be better as "You cannot send a patch as an attachment..."

Can correct this, thanks.


Karolina




