X-GM-THRID: 6948309790946754560
X-Received: by 2002:a2e:9a50:: with SMTP id k16mr6197236ljj.308.1628965863356;
        Sat, 14 Aug 2021 11:31:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls1850200lfi.2.gmail; Sat, 14 Aug
 2021 11:31:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYbOBDTJ+NJcFute1lOu0VJlhjn6ptAouv94ymGAlUk4BXmzUeA4VdgO9YW+7wxXc5GBcC
X-Received: by 2002:a19:4958:: with SMTP id l24mr5566554lfj.48.1628965861291;
        Sat, 14 Aug 2021 11:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628965861; cv=none;
        d=google.com; s=arc-20160816;
        b=kgYsWektfBwONnHKFbxG1tpQVLVzwefG0s65vSJiu6sTCKBJwkL7/laI/Xqw35hrl7
         Jp9/XTM9K92wCMH1zN0rNDH84loz2aAujyTFNZbTMyTG0bgQC1ZFawLyeSRDHv/JXGIz
         Ugi9EuTlh14bsQm11i5CLBLsWYiJrvmb3payG/BuM3IS8cHI3jE42dW45qxQs/Teq5XS
         3F/vURXTPDbuym1xz927WLDZxe7CzIBwcztcnGPN449BbixMs9MEk+ObOejJkIK7zsV1
         ZVXaZqWzoPOkx0OmJ5g0o57N4lfQe/XWRlxmKoAfJTXRmw7bcZk6xeUOSZedWqUN03y3
         lspg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JnqZXILM1RIhP57Il3WYBQqjCn7LvCxoyqcHO0oJx6s=;
        b=kXpLfq+pHp5p1qVzQmCwj4tYsL/1vsVJJwuGpTscn69Qd1eQSIiCcUVm+Tjdb9Rxmz
         v26OeaDdTVOkfOc/f0NmrTpYEQnIMBwq24V64a153E1goQ91hf6DsDfNuVLFXOJB5mw/
         cBU8bxqhGpHMlWZsXFNRDPEIb0o+ial2igBgPo4ed9A7fQqWHcYSYXptD9eaKw+M+g/N
         qDgOonApOVjjB43vrulARV9AuDQKgxRFntyggEcmYk3aflQd3pujQsF/gfwhIVLP3rek
         3KRXUVCu58XK5bin8/zyJI1uBqrGwY13yj+RGnE+9jR88xX5Zsa0t1IW4Ek03at5zESO
         lkLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpD4e76Q;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id t8si270092lfc.11.2021.08.14.11.31.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 11:31:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpD4e76Q;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x631.google.com with SMTP id h9so24369229ejs.4
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Aug 2021 11:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JnqZXILM1RIhP57Il3WYBQqjCn7LvCxoyqcHO0oJx6s=;
        b=rpD4e76Q3yBeM8HfJaRRbyrloBmbZrqekzzYuTfCnkwq3Gh/olbqofr2Hf+ndR9uJq
         lZc+6Q3H4GLAyh8XSkLUiRq/UGDh4WnqhknVnVTzMd8WOHPaALNOjsTj/uWTG1IP97Lj
         AHpktPK+y/u330xFZJ1uplf6ZrFIaRct37vyiEauxAnjaAPHgDeU0fGwN+9PsaiaNy62
         5sqcGoQ8bL5Rm3c3WmrWp44Xu6rwntAP8uXKQo3+ZTU16TRTjdrP94NIgfV6TiEjeyct
         u7wzJwHaxJQcbHd5Wde5KJEUd7v+MDlgUA/HEpUFia6paReoQj3ZsYkOoTsUoizGmHfe
         8EYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JnqZXILM1RIhP57Il3WYBQqjCn7LvCxoyqcHO0oJx6s=;
        b=rEW/sE6mRxcwp/Od68v/MMa17zVOj4DsiuVI/Rs52wplYz0cuLcEanQRG5tXxuzvya
         /4U2jrLm+X0Yq7pNVlHlIBXJNgV+l6yrUR4VlwE0mJMMWIxD2wmOY3YPRbgFDtxZu8Nv
         9Uwq89ZaosXab1vN2iCnv43EGqLkpS9I72Cm0VxnZEtaI82xXbiLaO6sjZjY8DirFxOV
         ajY1ZdcLkl/Hl6q+yTpJ8vl5HJRkiwbE7g/Al+MD3rR7TJt/HFKPtERVCH0Bj/gYlCUN
         NSHFeAwXKA0I+M/5slA/cLTjW9fLeggQ0/ilh4CrU/6DpCjEQ7cJLPPIphXvXx8BqqsJ
         4amw==
X-Gm-Message-State: AOAM530ESAgBrLzt7k7ts1KyNfxUzWmju7+sVwXVEyoyFAbCjTk98B/H
	xspusZoO9sd5hBNgmXLfIvHoq6g0GwA=
X-Received: by 2002:a17:906:119b:: with SMTP id n27mr8740645eja.388.1628965860889;
        Sat, 14 Aug 2021 11:31:00 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-22-109-211.retail.telecomitalia.it. [79.22.109.211])
        by smtp.gmail.com with ESMTPSA id r2sm2528832edv.78.2021.08.14.11.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Aug 2021 11:31:00 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Igor Zhbanov <izh1979@gmail.com>
Subject: Re: [Outreachy kernel] Re: checkpatch.pl
Date: Sat, 14 Aug 2021 20:30:59 +0200
Message-ID: <1939609.jx1U8J2NKu@localhost.localdomain>
In-Reply-To: <4b96abb2-baea-4c16-9d7b-e2ce901a3b2fn@googlegroups.com>
References: <2427703.GWXgmFPN0f@localhost.localdomain> <4b96abb2-baea-4c16-9d7b-e2ce901a3b2fn@googlegroups.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="ISO-8859-1"

Hi Igor,

On Wednesday, August 11, 2021 11:09:19 PM CEST Igor Zhbanov wrote:
> Hi Fabio,
> 
> It seems that the script uses python2, so you need to install "python-ply"
> package.
> 
> > [...]

Thanks for your reply, though I've already been able to solve this problem 
some months ago :-)

It was only due to checkpatch.pl not able to find where "python-ply" had been  
(correctly) installed. All that I had to do was to make a symbolic link to the 
target directory where the module resides.

Regards,

Fabio



