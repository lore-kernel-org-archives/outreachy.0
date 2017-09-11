X-GM-THRID: 6463032628218953728
X-Received: by 10.202.173.15 with SMTP id w15mr6803101oie.57.1505150279157;
        Mon, 11 Sep 2017 10:17:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.11 with SMTP id 11ls5772229itj.13.canary-gmail; Mon, 11
 Sep 2017 10:17:58 -0700 (PDT)
X-Received: by 10.31.219.66 with SMTP id s63mr6481883vkg.30.1505150278469;
        Mon, 11 Sep 2017 10:17:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505150278; cv=none;
        d=google.com; s=arc-20160816;
        b=JFuOMy/7YAkeSJyXZ8bLHZeBN81+w7NC7cxptnVYZdR8XVj5DcZkMOlrfw0NmHZYjd
         PflOtA0526oqg89hOmgnrEQUIfCa1x3xZ9BVq7G8sRIqBbSaIzG6jEWDOo+YBmJ9r4PT
         kUqzDIUItnPmLSbXP2eRO7s4cwf9E26l7kjR7bN4cEgM3Ta3M5u/1qmtV3taaZtkLXU7
         2tBKysQhs8ZjoBaC+sRgucvi4jHQpJC98YYdWTQWXXMMsSohqCA6P78O+VX7XVXWeYqr
         d0qjl6kpkdFFVMReOg+SOEdeIyAo/7ivMPHo9CRNnndgw5MaLx2GF3m18dOSMYucHbgA
         Yn/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=xuidk9bvCrJc8QrDZkBe7/TtIflfBZXP+6qAH9SNQBA=;
        b=I6jZfBnl8T262TDHmLtciCh3OIdRWWyiQ8pg4XHicMP6rnt6hG+7A4VnLQTbYy3g8q
         Ubfr1IN5M6ylgg1itY4sB7G7VaWafFRB9NGkzKjZRViqQNZzb3S8X5SRVbVQNLoX9kj9
         elJe6LFryQb9o2WJrZ9ptFsddAqAPuIxfCn8QjhKSQ/n5qHnDLvLnQS8win12GmhCjN5
         Nq+XdlsIFCFLnh0juFkbayownYdSfqGmsPmu9HTS0xDrntXkaQDafrA5VrMUD2Qct09S
         Ouig9cN7dynVQw+oZkbT2oytxkX5hI8Mx3DtmvmoOOP8zfDXuaF7l6HhfGJrxM/YQRTl
         aPrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QInjO7zZ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x230.google.com (mail-qt0-x230.google.com. [2607:f8b0:400d:c0d::230])
        by gmr-mx.google.com with ESMTPS id o65si620983ywf.4.2017.09.11.10.17.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:17:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::230 as permitted sender) client-ip=2607:f8b0:400d:c0d::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QInjO7zZ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x230.google.com with SMTP id m35so20496051qte.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=xuidk9bvCrJc8QrDZkBe7/TtIflfBZXP+6qAH9SNQBA=;
        b=QInjO7zZLTnaDtOnGnTWBNnwF6Of9KX1SnqDcfkhiftsgW8Zo8nrH0cPCW9NHza5Iw
         i5mun0AOJltbcFYWIun4CaQjiBRPcLIMdHtdWQbIlnvJIV1zG0wh39EHMOpY6cGOuMdj
         dYj6nmilo7nQ2Fa8JoIGQkSKWscWvlPQ+jXHE7sFvwqBjcvrs1+XOQ/VUA513Gyz28C5
         XrVo6WVsLucoR3a3pELP3diL1Z7UbrFgD1L++RdTqqBPIxMen1ZZzeRkBiDHv0TnO2QI
         t0lUhvepJye3q0trXwT44CKWy1WItkIazd5jXi2gAUPD5HUD3j8ZnCC1Osdy3F8Lov9+
         Gcbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xuidk9bvCrJc8QrDZkBe7/TtIflfBZXP+6qAH9SNQBA=;
        b=g4MWmyXrnBJq7Z9lTjm6ieryQgwCYwcoRCufdMnUNLStz03H3AAl35Acfl25npBTi3
         L6zbS/nN8Ar9Iv+KC47Y8djn7Z5fQXfvNxSeO4z3T6i+uWfIZknEN1J9+tQOwls1zwzU
         5A3r40daZm8+xy9jbuTcm4g47eH5gZeLKsqpRtk6g+lFuNhNDFc002P/ZQLOCEZJBbLl
         SsHyoSL66StoW0xqQGYeQ3EX81GcVuCxRVQwTxSwvaQTAGN5Y5bsLBkJU1wHHWtmUWEp
         9K2y94QB8rhTx7oayxdAiolgeFCdnXWaIMjSxYCadMrz0MZPwBtBGwpmbGntCWOS+W55
         saRQ==
X-Gm-Message-State: AHPjjUiOFo7dHDQAv239uoTKQdB2RtR6/V7QBGJbg9frEDD676g9z3MW
	RIP2OStBU2LN2DOO/OuppvLmSk45+w==
X-Google-Smtp-Source: AOwi7QDEajKtzSZdauOzxdL48Ikpod0t9T7YWK/JmG0I1CM7VmK+sANKvY/FTyJSZg64VJEifom+wKSMYGgVoOupz0M=
X-Received: by 10.237.63.15 with SMTP id p15mr16877752qtf.117.1505150278173;
 Mon, 11 Sep 2017 10:17:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Mon, 11 Sep 2017 10:17:57 -0700 (PDT)
In-Reply-To: <20170911162458.GA24025@kroah.com>
References: <1504793692-8996-1-git-send-email-srishtishar@gmail.com> <20170911162458.GA24025@kroah.com>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Mon, 11 Sep 2017 22:47:57 +0530
Message-ID: <CAB3L5oysec19U1WBAJrSb_qck7kJ_p9gj=wae-0w3y-pDDoDVw@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: ccree: Prefer using BIT macro.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Gilad Ben-Yossef <gilad@benyossef.com>, devel@driverdev.osuosl.org, 
	driverdev-devel@linuxdriverproject.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 11, 2017 at 9:54 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Thu, Sep 07, 2017 at 07:44:52PM +0530, Srishti Sharma wrote:
>> Use BIT(x) instead of using (1<<x), reported by checkpatch.pl.
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>> Changes in v2:
>>  - Add tab spaces before BIT macro.
>>
>>  drivers/staging/ccree/ssi_cipher.h | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> This change is already in my tree from someone else, sorry.
Oh.. It's okay !

Thanks,
Srishti
>
> greg k-h

