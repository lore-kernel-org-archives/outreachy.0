X-GM-THRID: 7024064041486123008
X-Received: by 2002:a05:600c:1d05:: with SMTP id l5mr4916661wms.97.1635431519046;
        Thu, 28 Oct 2021 07:31:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:5111:: with SMTP id o17ls1494079wms.3.gmail; Thu,
 28 Oct 2021 07:31:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxlX1sqvlHSbukYU4+QdNMFvGwWjRNAep8bTTx8T5ELXu024jSDKcLAWncZLZKls5wpMpUT
X-Received: by 2002:a05:600c:218:: with SMTP id 24mr13136447wmi.192.1635431517612;
        Thu, 28 Oct 2021 07:31:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635431517; cv=none;
        d=google.com; s=arc-20160816;
        b=exEmuMcE1Envn0wI7f+pncGtz4oXY8xFqQnxOqeRC5V7vdYW47Jv78REEbuUyi5yOj
         5of/VFAJ14o1KFY40zakYMRRDXqOKO3byCLzmQ8TC5Y9oB411OfVJ16C6cfyweAphVNP
         oeCf7FqxhLZvohunwTFwgwMCKvowiGjwiiS8L6Wsb2eLVfbRMWD4jCoe1hi2MGmP6b41
         6kAZRxX2LSkIfwpOapiayqDx+s7lxpeWRZrsav73UxtlCSuCjcijl2TafatFD56XqrJ8
         J/n6NYdM+/wD1Ij3iU4pmomrXzJFybFLr6a1ci9Dn6XGYaKw+jC2T+xjsqlprnscAhKB
         90Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=G1URQ8lQTbKqKyy5iIiPH2GPZERZgQDiwncSKKtO3yA=;
        b=Xk2zRzyR6zRfDuJietY/m3u7y7jWzAgjPV0mc+NzhQAaubvSMmzSamK69jXTjyu4c6
         +8KtcyMC5T7AZakWAxdBola+eNzvIiRYYsspcnwkNZF9an31nG3Lo9GBFNFu8HhX3qph
         lxXqlZx8usK9Ddj1r2CMfrgzVd+rCOlYACLlmUslavW9QtiUpqTja0MythZMEtyv4nru
         lmxbGNykierTXX3wggTheTw2IcnGR92Ho/JO26Dy+PQs7I/0T/aOvD9lP0gIDOccw3Jy
         mO2Kd8Oq1yCgm1SkBn9AL45M2EQVg9xTrAdKtWRIeO4xLIw2ivs8J/Yy4KEs1wht5xmM
         xeug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fBHmbjTK;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id f9si610461wmg.2.2021.10.28.07.31.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 07:31:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fBHmbjTK;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id s13so3406716wrb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 07:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=G1URQ8lQTbKqKyy5iIiPH2GPZERZgQDiwncSKKtO3yA=;
        b=fBHmbjTKwbBV7gQItocG0wuyAy3bf5EBgQUyDfKMLm92xGS1KdK3ElxDwMrekIV/4E
         18hPsWS+TZLWBXgxqV2DRCkEmPmmrhlQr7l17pJNdFgJnGJq7DCwbJ4wWX7+pbdvEryR
         flIqtVwIMaUVc+HS+/siJkB7FS+4KrSgg18nvaVRFGw6phKW/ekqUUgDLQzJDvIubANZ
         gPqWACUta8NJLoG+p33Dzh7cgf70VksltNhfBZDIPlKyt1ZG00r4MukiwYgHHo7YHMiy
         YYp6EB0Q2GgmK7WVo3cxKv6F2V/PUcJ67OYqlVYWgUK5xbHlm4fGxO7HWHSpq5COJAzV
         Q/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=G1URQ8lQTbKqKyy5iIiPH2GPZERZgQDiwncSKKtO3yA=;
        b=nGBhxWwv6VWzLh8egdtIVSOypfiEUyRmU14CRimPmGr/+QxLsis4tdZTnmb5xokDzn
         Dd9JFUibHerYTP5qlIvszrIiwaRQ7xZkpxpD6/UxIzzIuoULBW5AhQGwGQd5ZDi8bP5q
         vxZgN4KzCPJhlaG7KBl6nedH/H6u3EVYZerHbIRCRJlwDItdF24hzaa1odT6SrZefJvK
         UXVYO1L1odwsZ/CNvnHwREPyjRm4F26VIrIiOgujSfqwzk8up2lctl/Nm9rSaxbQzgOP
         Q5nmbuatRFrG204X6t7eCJd94krLUCQHHxlf8qMzYm//qrEAMGY+kVQ51uAODcnj/5+z
         PgEw==
X-Gm-Message-State: AOAM5309Hrv2ebLrdqykA9r7VNGsqv8B5Bx2OJOZQJw3CMsUCNuHSiKK
	9gbTGx7IZYnRob+LXQO+hCo=
X-Received: by 2002:a05:6000:18c7:: with SMTP id w7mr6074015wrq.411.1635431517243;
        Thu, 28 Oct 2021 07:31:57 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id c16sm3211643wrm.46.2021.10.28.07.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 07:31:56 -0700 (PDT)
Message-ID: <186358f460f2093dc8a60a8120be3dc6f830c81f.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/7] staging: vt6655: Introduce
 `data` temporary variable
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, Julia Lawall
	 <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Thu, 28 Oct 2021 15:31:55 +0100
In-Reply-To: <39890856.3BBMun7449@localhost.localdomain>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
	 <2039159.k92FijXA2m@localhost.localdomain>
	 <alpine.DEB.2.22.394.2110281332040.9518@hadrien>
	 <39890856.3BBMun7449@localhost.localdomain>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Fabio and Julia,

Thank you very much for looking at my changes.

On Thu, 2021-10-28 at 13:21 +0200, Fabio M. De Francesco wrote:
> Hi Karolina,
> 
> I think you are using redundant parentheses in "* (data ++)" but
> understand that those increments and dereferences are equivalent to 
> "* data ++" (according to the C precedence rules).

Yes, I added them on purpose to improve readability (+ that's also my
preference anyway)

> While we are at it, please notice that Maintainers of different
> subsystems may see this topic from a different point of view and that
> they might very well ask you for removing those redundant
> parentheses.

I understand, thanks for letting me know.


On Thu, 2021-10-28 at 13:32 +0200, Julia Lawall wrote:
> Would it be better as data[i] ?
> 
> Could there be a better name than "data"?  Perhaps "table"?

Hmm, now when I'm thinking about, it indeed looks like a better option.
I would even say that `data` (or `table`/`init_table`) can be only used
in the AL7320 case and we can go with `al2230_init_table` for AL2230.
The line would be 61 characters long, way below the limit.

What do you think?


Many thanks,
Karolina


