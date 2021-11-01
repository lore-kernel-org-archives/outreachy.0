X-GM-THRID: 7024064041486123008
X-Received: by 2002:a05:6402:289f:: with SMTP id eg31mr9428505edb.192.1635760035310;
        Mon, 01 Nov 2021 02:47:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:168f:: with SMTP id hc15ls860402ejc.9.gmail; Mon, 01
 Nov 2021 02:47:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZJO6RKXv8LLIf9bgoW61kCkLLZ2DdFLWKneTZKmJotwweBcjjK3o43peb20+3+U2KMdP9
X-Received: by 2002:a17:907:94c4:: with SMTP id dn4mr9921241ejc.512.1635760033685;
        Mon, 01 Nov 2021 02:47:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635760033; cv=none;
        d=google.com; s=arc-20160816;
        b=g4qOBaj0c/QWlBvcQ48bXALeVLgOS0A+6DHm/JKSwAzicqYs5MBGxhMMOjYvemxMJZ
         jI4DR0gN4gj60K/ciPePOXf2G98J01Z/x8GCdMmLqkA45IpUdR8m4YW0F28Ii+vYBNXy
         ci0Etjneh0+wUSwB2JWHRdOm75aG5X2yNFsjRT+8+vpf4k1DHxowO3HOHWN3h1hO15Ax
         hErpZivihHYcucX2RLMfpmX8TFramQcQwiy56lPLx1i8FfXLK+ManRLWXHMbUOJ5Wy9R
         16HY34Y+zsxbHafBW6tKFSQ916cBjMKbLn24HtJdY+lyBLaJsIBXhEjMy5ihWAmyORyg
         JNow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Yd+6d9rV/jwVQTnJUI4OXG6oZzc52v/02f336NZqpBQ=;
        b=bCM4ZerbMG6chTw8fixpzwe1ZJqJp+t7HRBFHJ2kNF46N3IngVuEVbFhH2nOqB4tRd
         u86QyStMruOt971rBSR4auz+ggLLUEyohUCVGId5ZBQTKoXtOvoe9TAmmiF3IzqijqyN
         3syh3y//yBEzl/BNZxsISW1S3WHxfI9VMHj7+GoGcL+Ff0DKd7TCqP/b5vWU2Gfn51TB
         48q2DhTIDvK+ha0OSQ4nNkOQ/Zx5HdCyI5e6jpkNrug58RFOqXWo502IdEcDiDO8EUKe
         Bk3WtgZitj5eC+sutY1V+s/VmSEz5F0/rckG1qa+s0TZhOg4XWmIVzpxYgwmDvBPGXkB
         ZVrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ESR8ImqD;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id bi21si1133055edb.0.2021.11.01.02.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 02:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ESR8ImqD;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id b184-20020a1c1bc1000000b0033140bf8dd5so5175825wmb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 02:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Yd+6d9rV/jwVQTnJUI4OXG6oZzc52v/02f336NZqpBQ=;
        b=ESR8ImqDefVwdNZn36vjzxKy9cfDJwpjgvG7tncJRYpKBqxF98ptBevmJntsYy36mf
         83ES21LRyQIK39LEfbldGPUh4Ex0Qh80ZLDZOe+AH9qqjRzHZmqr9q5FQVnL3nqgHGPa
         UmynCX04VLmp0yDaev53yxrO6DjVykuNLlHSpuxiKzWVxjctCg99Uofy8xntaMPLoMy5
         61Cxt9w6QiNuWzyLMsGS47i/jmYBsAPgdxSDPzl4wIGGpE4qNvKmHbtVQhncJdz128R7
         KW93uvHy5XuedUQKgcEk+VqzivNh6QiNgtmn7e1eBTxSdQdLOrWlueOM4ugfnG2WCkjS
         H1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Yd+6d9rV/jwVQTnJUI4OXG6oZzc52v/02f336NZqpBQ=;
        b=8AuWzd0QFoh+V1enQRopcYMUKy/DvEoermoxPR5q6uAF4w1N7gCJRVW2SwqBocinS6
         rHOGmHRyhBaRIXiC4TWEjg1rdXrjs0+wIegoTolYqNOofmDm8GXsBL1V4cPSW1LzG5IN
         rtFGqWmoNayzVCa2d0X1uAHNNeT1aARKwxrlXK5P6etmf8waqNyA4pfYj4rl17JKgfJQ
         DjcwBCjID0uxImf9hoUVxZWBONcx/C8jAczx73Gg92+cQ7jsBgFsSplAUCVaQdBK7vg+
         OsNA0Oz/AjyUkQIzrEO3bbwkQp5xv0M+t/2N+mnOBhCsPUmyMrPc2iji3GveloCdtBAr
         awDA==
X-Gm-Message-State: AOAM531u+3rvPVfGb/qPPHcxM6M5rTWZdSfLznGWPgfuC9e1haC8vq+I
	G0Zw7uEYdhkEiLwNZ+acVX4=
X-Received: by 2002:a05:600c:4303:: with SMTP id p3mr27583945wme.128.1635760033466;
        Mon, 01 Nov 2021 02:47:13 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id q1sm11696229wmj.20.2021.11.01.02.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 02:47:13 -0700 (PDT)
Message-ID: <edf5d0899f13414b2e5c1a6f1b6da08291e26e95.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: vt6655: Use
 incrementation in `idx`
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Praveen Kumar <kpraveen.lkml@gmail.com>, 
	outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Mon, 01 Nov 2021 09:47:07 +0000
In-Reply-To: <edfd74c7-9b6d-f8f5-65c4-c1bae3015247@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
	 <c569952d92ba51f32679c2fd87fd48ad8e49e3fc.1635415820.git.karolinadrobnik@gmail.com>
	 <3dfc45e5-12bc-72da-a260-5551a483fe6e@gmail.com>
	 <edfd74c7-9b6d-f8f5-65c4-c1bae3015247@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi Praveen,

On Fri, 2021-10-29 at 21:11 +0530, Praveen Kumar wrote:
> However, as mentioned in previous patch, we can also make *i* as
> unsigned short and that should IMO remove the requirement of cast.

I agree, it should remove the cast but I think I'll leave `idx` as it
is.

> But again, this works as well. I'm fine with either. Thanks and sorry
> for the confusion.

No worries, thanks for looking at my changes. It's good to double check
everything :)


Thanks,
Karolina


