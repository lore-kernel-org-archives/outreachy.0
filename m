X-GM-THRID: 6252226232544395264
X-Received: by 10.107.152.10 with SMTP id a10mr2601313ioe.28.1455710995448;
        Wed, 17 Feb 2016 04:09:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.98 with SMTP id a2ls2276025obh.80.gmail; Wed, 17 Feb
 2016 04:09:55 -0800 (PST)
X-Received: by 10.182.46.201 with SMTP id x9mr999497obm.43.1455710995149;
        Wed, 17 Feb 2016 04:09:55 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id v197si48635ywa.1.2016.02.17.04.09.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 04:09:55 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x234.google.com with SMTP id y9so9699963qgd.3
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 04:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LzGIrh3w5Cav3UABr94yiPJ0c8fh3tGeyIHNxwCnccU=;
        b=b38PxhZPgBpqG6BHZakl+T0ZI7vqZTWARcJ9Sb5LqXloofTGJ6j9X0jAs1m4SvsahA
         XkkGYnm/pmi2XMhhSUu1T3ibivcx2hWIHoal6EN+U3cBkSnrVJ2fuctNEnMiRT3u+15E
         mgTBrxlu7MS4XjzgDrqrXu1SrDXzSXvVcYxoPJdMF4Xwm1QmNfXGGx/HnedwsYKH/Afh
         ANjVIcn/IvZZDMay7qoTeEeadbw20ALONi8lKAiS1NB7oq9+IGNvMd7zZMvCctYw72ys
         nkJhnK+3RuNxDES1XSxAoJkKcw5ghvzr2i7ARc3zpYB+6U2TeFOhQq9HDIdN7nPkDcZ+
         NLhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=LzGIrh3w5Cav3UABr94yiPJ0c8fh3tGeyIHNxwCnccU=;
        b=JDQ8EOr7OnfJploSJgx0p4MGYkHXSqerYRPa79CIDMwGHUVJqJJnGEIZWQy+BCJX8T
         ZHFRZV/UxhskTqHPxmjfJDiEXcyZBgGpPc3rkxR2BAgvjnXcQG9f2LM8JJ3d8U6ID+CT
         VIJ1jKHup+xtFtcKloNHWhAnRgOeP930D2Fq/hWGyivygsKfhNjxVDGZ6ymPc4D+o7WF
         PztWltldtY+xtp4PsXppgkSGgGquLbLpUv79HgJufeanmPchzVFTii3Ph3hIOi8tlfbB
         aifeeJd21cmqpkdTpgIUN4wnEQqMHYTcR5JT3iBCMJqpurv271XxkGZ+tnFS4nN4MWJ1
         R/+w==
X-Gm-Message-State: AG10YORXwnUMPYoCwFAmIEzEwlJgJjhHO9fxVI8voGhJhfb5Yir3qTbs93OiH393VlIfun5MquXFPTvd9eumcw==
MIME-Version: 1.0
X-Received: by 10.140.167.135 with SMTP id n129mr1322666qhn.73.1455710994967;
 Wed, 17 Feb 2016 04:09:54 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 17 Feb 2016 04:09:54 -0800 (PST)
In-Reply-To: <CAK-LDbLg72-jAbGvBtLwAj3H4KOvTxtSUXEXrXFVvnUZdtaaTg@mail.gmail.com>
References: <CAK-LDbLg72-jAbGvBtLwAj3H4KOvTxtSUXEXrXFVvnUZdtaaTg@mail.gmail.com>
Date: Wed, 17 Feb 2016 17:39:54 +0530
Message-ID: <CA+5yK5FCp9S_h+v2m8ApWMuex2d6M=kz20pm46F+FussTuZ9Tg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Red hat women in open source
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 17, 2016 at 5:20 PM, Vaishali Thakkar
<vthakkar1994@gmail.com> wrote:
> Dear all,
>
> I have a great news to share with you all. Our very own Julia Lawall
> is chosen as a finalist for the Women in Open Source Community Award!
> Red hat women in open source award recognizes the important
> contributions that women make to and in open source.
>

This is awesome! Congrats Julia! Rooting for you to win :)

> Final selection is based on public voting round. And online voting is
> open now[0]. So, please vote for her and lets make her win. :)
>

Voted!

Amitoj

