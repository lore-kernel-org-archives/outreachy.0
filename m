X-GM-THRID: 6948024355480666112
X-Received: by 2002:a37:9fd7:: with SMTP id i206mr3726885qke.194.1618410917319;
        Wed, 14 Apr 2021 07:35:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:c207:: with SMTP id i7ls1353873qkm.9.gmail; Wed, 14 Apr
 2021 07:35:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwoiSqUL250pJxKteYCA1uu1zsR40xm5uHH/7ZcL89BLAEPTnhjLUnt4cPmJSF43m5FcIOS
X-Received: by 2002:a37:4091:: with SMTP id n139mr36855726qka.360.1618410916288;
        Wed, 14 Apr 2021 07:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618410916; cv=none;
        d=google.com; s=arc-20160816;
        b=R3LUr15dFtYlpM8j2tD4UKh1wxT4mQS/ZrEqNsIkHcgK04hJcs462TNZ2tczAlbO7A
         4vMjk5y6tlq9Ls80okiPSC2uFrT6iAc81JNsUY2TU2fFFf1KKU6yVc6KhOpaOmsiBBwe
         O8eDkHirl584E3UW+Bbse1ajPUSWciozuYa1KjYGr9F+WmbgKKFTLIOpi0LrMnikR+wa
         TrZ1eL82g7nR3sfF/4y6tDOyNshVTRMdD5d45uSj6NelK+gnNysaKHgaw3P3IaDWltRs
         VT/wGUceYtEYzx5uTJ/MT6guaTy+L7qSs3jN+JzQejHmaXeBGNgt+Hf0pYYdqXbW6ulz
         EYgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2rbXicCAr8vD+feC/9JhEPaSLkL44d68CS0R7zJKVxY=;
        b=FMmqQPE7hnCeaq1HvRh/2+3MwgYmzRBczdAWXs9CsghqLg5IU4wXhunyVaPCmNTZxq
         c1gFpmWRF+2SIWogmGDG3x81nmGFz+EPrcQcIwb718Ycl6BIKYgU8LWnV8Ozu/XyBp7B
         wsL1GUQi9W3wQdEX80ncYaGOglyaSyH0HQX3djSWtipngkq7P6JNhUCk5w+4Z5AKvo6R
         2NE1KjKzrJnJAPfcl2AfdKhuaLI8+f35/kblG8Og5Bha1KwsoLYyP6/RwL6PkkQdCc7l
         zlUvzsTl0P6k7F+k429a7yoY9W/I4ZnomVS4Svct6AvXZPPH/jNzVsy3Ry1jN73rvWyO
         eFfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ieee.org header.s=google header.b=hEUjns1Q;
       spf=pass (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=elder@ieee.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ieee.org
Return-Path: <elder@ieee.org>
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com. [2607:f8b0:4864:20::132])
        by gmr-mx.google.com with ESMTPS id z143si521086qkb.6.2021.04.14.07.35.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 07:35:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::132 as permitted sender) client-ip=2607:f8b0:4864:20::132;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ieee.org header.s=google header.b=hEUjns1Q;
       spf=pass (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=elder@ieee.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ieee.org
Received: by mail-il1-x132.google.com with SMTP id l19so13412927ilk.13
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 07:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2rbXicCAr8vD+feC/9JhEPaSLkL44d68CS0R7zJKVxY=;
        b=hEUjns1QGUe9hO2hoejJrRwZPEIjpifBEJDMGjE71lvLMG3wCP4ayf8yeetHwOrBLn
         SZFrt0tVnp6XeO2vmAN20wXb/LfZEFZH5t62jn/mYvVPBf55tw4UixdpuI4TjimH9QiW
         THDaF4uAun6+vww12gQSxvamWIYPqGhQzq4Ko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2rbXicCAr8vD+feC/9JhEPaSLkL44d68CS0R7zJKVxY=;
        b=qGjI0LsWtELO19H6XQCoVd9kFjDL4VNmfkruf+zzfQcTr+YH+TQJxw9ovCeCLZB5Hf
         6JYJf8mkHQLrh0T8cQfeD7ka/hYzlEHm8WX6MfSRyR43RQcVwrDxJZRky4iGpe/Mf6/A
         oj1DqaWnqfTcxOFq123w6uBrnyTOs7FSIJj7WUR7yyYN+TZrI0YWQ7/02y6j4CxOhUnq
         C5/dlS9144MZhSyiVUK99q0uuf9PYgcFoJwgziIGLmdK+AlWfpU3n7Ry5B5UIAhb11cg
         /cLFKMJIJBsmXQm3SR8iWdvNES3jzT/jkJ0xvHiNf3KoVwNWGhbaH5tcPG9P0+IfbfGY
         LGmw==
X-Gm-Message-State: AOAM531j4RHY21Ap7OS97i3cEm1j/TwfURecTqVuqDCafi9SgKLNx0Nf
	xP7N5adxr8o4rXI66fzGrxvMaMLtCOn7aO5g
X-Received: by 2002:a92:ab01:: with SMTP id v1mr29484106ilh.230.1618410915925;
        Wed, 14 Apr 2021 07:35:15 -0700 (PDT)
Return-Path: <elder@ieee.org>
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id o6sm8257245ioa.21.2021.04.14.07.35.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 07:35:15 -0700 (PDT)
Subject: Re: [PATCH] staging: greybus: Match parentheses alignment
To: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>,
 Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
Cc: johan@kernel.org, elder@kernel.org, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, Dwaipayan Ray <dwaipayanray1@gmail.com>
References: <20210406124259.GA96537@zhans> <YGxhrLZPIPjILWUH@kroah.com>
 <7d7be8bcc0e80d826083890ed7791070ad25e603.camel@perches.com>
 <1607b040-6bc4-9a58-ae81-4ea0adf5885d@ieee.org>
 <b22ffa716ee871f7e09ad7321213a897156edab0.camel@perches.com>
From: Alex Elder <elder@ieee.org>
Message-ID: <78c88472-9ed9-bade-407c-23bd557f19bb@ieee.org>
Date: Wed, 14 Apr 2021 09:35:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <b22ffa716ee871f7e09ad7321213a897156edab0.camel@perches.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 4/14/21 9:29 AM, Joe Perches wrote:
> On Wed, 2021-04-14 at 08:17 -0500, Alex Elder wrote:
>> Perhaps (like the -W options for GCC) there
>> could be a way to specify in a Makefile which checkpatch
>> messages are reported/not reported?  I don't claim that's
>> a good suggestion, but if I could optionally indicate
>> somewhere that "two consecutive blank lines is OK for
>> Greybus" (one example that comes to mind) I might do so.
> 
> checkpatch already has --ignore=<list> and --types=<list>
> for the various classes of messages it emits.
> 
> see: $ ./scripts/checkpatch.pl --list-types --verbose
> 
> Dwaipayan Ray (cc'd) is supposedly working on expanding
> the verbose descriptions of each type.
> 

That's awesome, I wasn't aware of that.

Any suggestions on a standardized way to say "in this
subtree, please provide these arguments to checkpatch.pl"?

I can probably stick it in a README file or something,
but is there an existing best practice?

Thanks.

					-Alex

