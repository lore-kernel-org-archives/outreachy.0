X-GM-THRID: 6249536250396540928
X-Received: by 10.107.7.200 with SMTP id g69mr39003144ioi.3.1455090681622;
        Tue, 09 Feb 2016 23:51:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.196.105 with SMTP id il9ls109911obc.50.gmail; Tue, 09 Feb
 2016 23:51:21 -0800 (PST)
X-Received: by 10.182.221.129 with SMTP id qe1mr36757819obc.7.1455090681286;
        Tue, 09 Feb 2016 23:51:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x241.google.com (mail-qg0-x241.google.com. [2607:f8b0:400d:c04::241])
        by gmr-mx.google.com with ESMTPS id y131si149500ywc.0.2016.02.09.23.51.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:51:21 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::241 as permitted sender) client-ip=2607:f8b0:400d:c04::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x241.google.com with SMTP id e61so794882qgf.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 23:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lgpPDmRPu0fXLSYxMfNVHAbOrZe55bdOGPJIhq8gIzk=;
        b=cfpOKCIuY6qqmgAkZWXC/M1DttXb8/PIS1DLhJ83rH/d3ThVB38J6ATt+yf/XKNen1
         w+dXgLth224oba2rtvVw1E2flvLklFOkUTw451C1DBandKwjZ3DZHGAU7zGCSpfZSWSQ
         eTiEtvYiNs+02w4ybS92ojD4dJ5imEKPSPgaA8301bJwL0F1jZjO7ngNGxcMpSxjMDpu
         RfnZLjvHNE936Yl2DSkS1qSievc1935GiLaZV9gEb7GFtLUu6iTLxT+TDAQSXmFXwZp9
         pyKN8wv/S5SbNcWB11fktV4WOC6k/QGXIvwlCs5Ni/eD7qbOnF9ujRR0l9WVc+Cs5PaD
         5DOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=lgpPDmRPu0fXLSYxMfNVHAbOrZe55bdOGPJIhq8gIzk=;
        b=VEQZKE2rER4FRID6zcGDiFnM1Kr/0pPp6zUeUFuwTgkrwviaRe8Jdjn89Czg6iaZMI
         CZMqHIb28orpxy3T6ZPt40H1lm114en2zcJdOAb0hCwPlhV+AP6JLRg1SNu6Nnlo/8sV
         dnwGPN0Fm9eIUJtv7EMHXnU0EhYhW2L6sBjn0JLU0Xh1MWNTx829tpLbe9IK1qBmc84g
         RlewibHn+RA3wENlA9ruanE3/rmnLRl2Z0Dp6zV91WeyjwK01Fj21n7ALmBeskd9SQLb
         IGvGfZtfzQb0aXL7rYFK5Sr3j/5WRUiIknvJYmLxEGIYwYmqnnvPHRrajl0CwErZ6Y/T
         3O2g==
X-Gm-Message-State: AG10YORWvPkdS6ziL3NnGV8IrD10Xmplo1/pOPoMmnBeTT7zLD6z3NhDK2jwy+PKIGhzvUmx/QlCWvGGoyPgkg==
MIME-Version: 1.0
X-Received: by 10.140.93.166 with SMTP id d35mr46205299qge.29.1455090681045;
 Tue, 09 Feb 2016 23:51:21 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 9 Feb 2016 23:51:20 -0800 (PST)
In-Reply-To: <20160210062927.GE374@sudip-pc>
References: <20160210055217.GA4222@amitoj-Inspiron-3542>
	<20160210062927.GE374@sudip-pc>
Date: Wed, 10 Feb 2016 13:21:21 +0530
Message-ID: <CA+5yK5HBq-GNTU_yCO401Cz8QABr6GxX+1fNYZgB+-kCmqB0vA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: gdm72xx: gdm_sdio: Replace
 timeval with ktime_t
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: y2038@lists.linaro.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 10, 2016 at 11:59 AM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
>
> This will not apply as almost similar change has already been done by:
> 2bc29a1abc5c ("staging: gdm72xx: Replace timeval with ktime_t")
>
> which tree are you using?
>
> regards
> sudip

Sorry about this, I didn't rebase my tree. Done now.

Thanks,
Amitoj

