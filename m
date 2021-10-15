X-GM-THRID: 7018941118564794368
X-Received: by 2002:a17:906:1706:: with SMTP id c6mr5661674eje.343.1634290340500;
        Fri, 15 Oct 2021 02:32:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:cc15:: with SMTP id q21ls8329281edt.0.gmail; Fri, 15 Oct
 2021 02:32:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJehQVOaElQXuzfFCLlRtNsOy6Dew1bNqgn5HeMr0qchpBBz/B8rZBdjT6aIL7iVjNrhCk
X-Received: by 2002:a05:6402:848:: with SMTP id b8mr16308170edz.328.1634290339050;
        Fri, 15 Oct 2021 02:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634290339; cv=none;
        d=google.com; s=arc-20160816;
        b=0C6i3pbXh1RfrPzkwmpYrayDnxWTn107MJwqT1gbe3Rbkkro9AOA5vidMjekPxau8b
         dh/8BxXfd8yqoqrERDyKdBxUth2DcEeu00R6HqdmXVAPFsZjKNQQpN28tsLVXoiwWyv9
         c1NE4wYz2xcVdzB7s80zD9sx36ZtvianABlz7lffhFV6tOYm1RcpRIfjxozuCHuT0Ytw
         RNZZz4ZVrxmDE1HC6JxevRQ9xe2fLWGJ/UaR1AVilIGFB1Gmrs0oe+w/uL4edhO1GvVJ
         QOXN1QRcSfv8X3OmASfsyAj/cHOfesowQhWWOqV61jnq1U8NQhTG8ZwZQctTfZ9tLftG
         WG0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=MpuiGoftVeVQk4qZ1iidd5xAbmx8e1VavBoPy0otabE=;
        b=lkIljpe0p/GW+q69kkJqjVt5vnG2kcusWQJx2A27gcJbW0VtX2c8SwgRedbesYx2GV
         iBYFnNc1MvK7lw6VrGBI9PqlDva8Mb5J0HfR9ztGJsWZBKGKxUFsWMd1KFgWF+Lkc9mT
         pSh9j33Wh56flTID+SNivtMSfsuhfIFUo5uJ/RmX29wYwxTyPdolPj1Z+eKZj7Vs32SN
         +r3W7gV0PlBY70mqAq/SlSMm7cDHRYMoNXPyBjHdzk1elVtAhAhBpoxj+66M4Ii1mPrp
         TxlgektLapkfiCf6guQAQSOXJtFYw7cTRE5GUAmxFkW2JiuRppTAi0EKd/9drFu9noMU
         DDdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=papbz8Kx;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id i5si315402edk.3.2021.10.15.02.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 02:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=papbz8Kx;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id s198-20020a1ca9cf000000b0030d6986ea9fso1884905wme.1
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Oct 2021 02:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=MpuiGoftVeVQk4qZ1iidd5xAbmx8e1VavBoPy0otabE=;
        b=papbz8KxOtkldL37Xcaed0z0Yjmdt64HtiN0uUfzQXQn5f2Jeaq2Oo2jEi8cnVY2Jm
         W8RplKm26tYbtK+PEC9mITtGHsTZhR7J3fPe0PwRm5FvbAIo0jC1GVs5h34Sdfl6D8tu
         uAtI0HPbgJU9yc8Or0C52Bhv/vWKILPlb9o8cJVQxWmXkr0oxaQbalFqbMXFCtHG4kIY
         l+b6klXARXQFaZp7+rzwiZnNKnMTwHRNOdWyGlrIpHbrJ4hMqytmf4idEMAQeBn3/W0z
         xBM5miayZS1D3+4m+w8rSoqpqe7m7w/0ch2+Y5fspCWD5puYeQMfWNpdcLtkaMXUR5Xn
         C/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=MpuiGoftVeVQk4qZ1iidd5xAbmx8e1VavBoPy0otabE=;
        b=IgxE2au6vSFc9t8xNznZ53agiG94hVBp/EydigGC9QJK1kLGFRcxdHcHcHVlQE0YzQ
         MFfLNWBQ91kAmD33EQEd+nN/WseQPrTFD+kVoWdvsR8ZUdaUXGe9GVhTXP9WwFHXR5b3
         Hnreh4yzhRzkgCWO5EFWQdN7n0zRbaVNee08ZMM76cwtuvZrm2PztaCGIC96ymDYlqMt
         ++7iuNb2/hf0wcLPHQWLKNp3o78EWVp7GSD2XAbNP4vmT5S+dedcIttpwgAyHM/KnNH6
         E3I7HF53iRn1C/gGyTuq9Dqvu4QrIiSmcugefPzBDLYq7qbFS477aGV7rcRTR+0NMW8K
         tWXQ==
X-Gm-Message-State: AOAM5333itKz87bcMswobe3t469yo31HGe47MN6iRlDNxGVgCucSiamB
	27hi0e56Q+Oob8pgn/vFBa0=
X-Received: by 2002:a1c:a783:: with SMTP id q125mr25119573wme.108.1634290338815;
        Fri, 15 Oct 2021 02:32:18 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id b3sm4560733wrp.52.2021.10.15.02.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 02:32:18 -0700 (PDT)
Message-ID: <efc35d98c888f489c3e50a7bec647b1de2960c93.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6655: Rename
 byPreambleType field
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Mike Rapoport
	 <mike.rapoport@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com,
  "forest@alittletooquiet.net" <forest@alittletooquiet.net>
Date: Fri, 15 Oct 2021 10:32:17 +0100
In-Reply-To: <YWlBadCKQ7mEnXJx@kernel.org>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>
	 <YWhOfPhVRBrH3gz8@kroah.com>
	 <e9c9154ba03e704c1e415c66f2d57f73a2379144.camel@gmail.com>
	 <YWhus0EGaPJXhsHv@kroah.com>
	 <db3c6775c578eb0fc34726e7bfaa89b4267e30a9.camel@gmail.com>
	 <YWlBadCKQ7mEnXJx@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2021-10-15 at 10:48 +0200, Julia Lawall wrote:
> Hmm.  I see that the definition of 3 for PREAMBLE_SHORT is in some
> different drivers.  They seem to have a concept of preamble mode.

I see, it makes sense to keep it consistent type-wise and leave it as
u8 then.

> Therefore, it looks like it is not a boolean, the by prefix should be
> dropped, the == 1 should be turned into == PREAMBLE_SHORT, and the
> comment should be removed.

Sounds like a plan, I can address that magical number in the next
patch, thank you.


On Fri, 2021-10-15 at 11:52 +0300, Mike Rapoport wrote:
> AFAIU, this variable defines what type of a preamble will a packet
> have and its value determined by a bit in WiFi packet header. In a 
> sense it's a boolean, but it's perfectly fine to use u8 and 0 and 1 
> for it.

Thanks for explanation, I wasn't sure what the convention is.

Who would've thought that so many interesting things can come out from
just one variable rename :)

Just to double-check - should I cc the mailing lists returned by
get_maintainers in my V2 patch?


Thanks,
Karolina


