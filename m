X-GM-THRID: 6948915129226362880
X-Received: by 2002:ac8:6ec2:: with SMTP id f2mr25706702qtv.334.1618221697251;
        Mon, 12 Apr 2021 03:01:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:f97:: with SMTP id b23ls8998122qkn.0.gmail; Mon, 12
 Apr 2021 03:01:36 -0700 (PDT)
X-Received: by 2002:a37:a144:: with SMTP id k65mr2313318qke.6.1618221696565;
        Mon, 12 Apr 2021 03:01:36 -0700 (PDT)
Received: by 2002:a05:620a:859:b029:270:850a:c07d with SMTP id u25-20020a05620a0859b0290270850ac07dmsqku;
        Fri, 9 Apr 2021 12:45:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw3v3jmKRmgUIxO4InD43lhGY1mQYWJPyZf8UIXP4mHGkbIzf0sXHGWv7/tF9im3VU0vuL9
X-Received: by 2002:ac2:53b5:: with SMTP id j21mr11697765lfh.75.1617997527581;
        Fri, 09 Apr 2021 12:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617997527; cv=none;
        d=google.com; s=arc-20160816;
        b=TMYi3mZYZzDYKmOEY9QMOmhz2szDY4NBHCj3A/C4Dzor6TfFCDUCUy+r4h2Hg6kiec
         uAmp7QlOgVVCnsmUO5hMEOgivX+N5Y+qIPeucz0vhiAzpRnz/e4HJorJ02WGqbhlA+nd
         Jvv7ngeNLcoKrvqxrT4ePuwdoo4IaX6Fsi2ztDm7pds4DDLB7tY6UwL0X9n3Q/KocFag
         lxi7DRjIYLNudDnRaX1W0Lsv5+pGthAQLE+/Hl1epo9/qaWv0NEtJH0ZfvfTVov/6kYP
         05p7GY8sOXWyVeT2I9vKn+oYjlH+VTD1Dxc6BDZyDyFnYQppfJMWXn1IUuoPdi/0U+8l
         I9/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3vT8V0pxZKkWGNrSwjIst4xZQ3JRTUytna9sd7X+Ifc=;
        b=1AVtP05OchRLoMorvOFhKSpAfisK01xvawUWWT/YvY43olZx3c1BvUYTBwQUSewr16
         dN8/dk2Z/vZf0RglZcqxCHL8M16NUlBRgOkHuoTlW+QZ11e0Taw7CnIO4zd2u108KecS
         PNRVpoB/R6vF2xS2KstWUnDBeX0z3KdeSA0fufeuCCxeOq+HvAuz8DZwg0yOw9OAntIf
         XzWfOdMmnXXgSs1+D9B09JyK62kXJwHNjm8oENAkr5hdIeXHvo2w7jqVl7Kymcudpve5
         NVZakdBsaZGQufPM0V0AqI5NFdSoEkvF/4eIyUvFH3fcmLuPz4ADcu8AVtyfuoUuRkUm
         H9Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@googlemail.com header.s=20161025 header.b=r3ByeAfR;
       spf=pass (google.com: domain of martin.blumenstingl@googlemail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=martin.blumenstingl@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
Return-Path: <martin.blumenstingl@googlemail.com>
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com. [2a00:1450:4864:20::632])
        by gmr-mx.google.com with ESMTPS id z5si221073ljj.5.2021.04.09.12.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 12:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.blumenstingl@googlemail.com designates 2a00:1450:4864:20::632 as permitted sender) client-ip=2a00:1450:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@googlemail.com header.s=20161025 header.b=r3ByeAfR;
       spf=pass (google.com: domain of martin.blumenstingl@googlemail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=martin.blumenstingl@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
Received: by mail-ej1-x632.google.com with SMTP id hq27so10419356ejc.9
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 12:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3vT8V0pxZKkWGNrSwjIst4xZQ3JRTUytna9sd7X+Ifc=;
        b=r3ByeAfRml5P26RhY7xVUnS3OQO7CWqiSfKHe32BZm209A6l5zDfBc3l7fq3bMrjDq
         UFI9RA/eNo3CR59j7sm7LxPTp3afskPf9WtLFb1cuImdAFZWDIMaN1CGOo1gI1Yq/G4X
         0FR92g62s4g7YZenz9mJTGIG2Fx+JfPA2Jo8EPXbW63K5UgK+a0QOLX2DDXEF0wjsET4
         Qcw16HpipocVMkYsSi3cJdjNe3a3MZNN+B0ODDBynmuSzNkEBWloooekGc0ZSkhniwo6
         TsBlxk3muPPQu3Ps42z0mY1l4DNxUJbjklzsqdrRw4fttPoPvamWafiCka4zVlKKJIMM
         cO1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3vT8V0pxZKkWGNrSwjIst4xZQ3JRTUytna9sd7X+Ifc=;
        b=WzVh6Xs2M+X/iCNQavVuPrR4MMG7NqLcZev1EAmFCQQQShtCiLZl7cIXavSeIv4kt8
         CyEB1p4a+1N2TPSu1h7PPF+T5noKDctHPqHPIPN9Wc57mRvLq/JZta62AtypE9CFS6oT
         0xzFdECGVf0MBwCRDUJA3qKjunkyjmbEsQuHrLKsw3DwfGeRnTzwZh4FO1jFQarDMnwY
         BZBL75+sWGyyUCVfCM/BZqOnPNkNYS0+obtHcOr7l4hJIc9od4vZ9LY9Ra1ws4Hxtond
         rOBBxNDO/4jvOD7/qIg7TfOoHgXj45+3iS9K2f3Lc5HoHanpGXhCqN0lHSsnG5y8M521
         y+zA==
X-Gm-Message-State: AOAM5327dqI1bTxcTtJgca0LoZ0IIS7icTiPgnrBs8/+ZwBSixj5MtvI
	M34g+QEhuWCWgmYokQ8GvFUIMZfpHcMEYqJ64Q0=
X-Received: by 2002:a17:907:e87:: with SMTP id ho7mr17221105ejc.2.1617997527137;
 Fri, 09 Apr 2021 12:45:27 -0700 (PDT)
MIME-Version: 1.0
References: <YG+Bcqxetfj98l6V@kali> <479be6a4-2e6f-98a6-045f-d7c2132137c4@xs4all.nl>
 <05802da66d3751611b85eb63d566220e09ef4bb7.camel@perches.com> <CAHWmKdgj67+T=tWKPMDRt1fbLm7_VLiOmgKcrzBj6oCd5Xv8sw@mail.gmail.com>
In-Reply-To: <CAHWmKdgj67+T=tWKPMDRt1fbLm7_VLiOmgKcrzBj6oCd5Xv8sw@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 9 Apr 2021 21:45:16 +0200
Message-ID: <CAFBinCBOf9U41r2oVOA-b+m3H=iQvjn6qYxLDLTH8LBhAwjyEw@mail.gmail.com>
Subject: Re: [PATCH] staging: media: meson: vdec: matched alignment with parenthesis
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: Joe Perches <joe@perches.com>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, khilman@baylibre.com, jbrunet@baylibre.com, 
	linux-media <linux-media@vger.kernel.org>, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
	MITALI SUNIL <mitali_s@me.iitr.ac.in>
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 9, 2021 at 7:00 PM Mitali Borkar <mitaliborkar810@gmail.com> wrote:
>
> Looks good, will try this.
if you re-send this patch then please include our mailing list:
linux-amlogic@lists.infradead.org


Thank you!
Martin

