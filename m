X-GM-THRID: 6473412482924806144
X-Received: by 10.157.12.3 with SMTP id 3mr9101960otr.87.1508335170531;
        Wed, 18 Oct 2017 06:59:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.211 with SMTP id e77ls1264246ote.21.gmail; Wed, 18 Oct
 2017 06:59:29 -0700 (PDT)
X-Received: by 10.157.72.212 with SMTP id a20mr8953106otj.34.1508335169728;
        Wed, 18 Oct 2017 06:59:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508335169; cv=none;
        d=google.com; s=arc-20160816;
        b=hdMvVAioU/mcdm36c/ATVe9K5AlaDCfjU+cY8qE2ctmaILV0ULSMOtC2P1/vqYkpAs
         +DBiiH9olX+dl1YMQ6T1MwwH27AEcKoFwKqzbp7/BQlLCKjBtp5VhPWVV+bh2U1HFq4d
         SSdQLh4YBOMlPDoBEOL5yc07ivrZiu4A/Tk1+iClKiw/kCS/j0F/jmfn8QxLxkYs4Stv
         trsH8ysOZ9hDMY5icUp/DPM+tzEXhTmviZQyoFZMgeCV9HJIwa6IYYh8gplvlQBSoNMF
         fH24nstm6Whd08HDff5wZXM+pIjZz4VIVv+Xpu1OchPCzA59nRhvfUEyInVPPoStpIjh
         TKkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=dUueWAUjqywMBYKfgIMXQYCk/RbkDbpNxaWoJ9u7+Ng=;
        b=JoYqqPWnhLhOlc/9c2wCfEERub/+FjbxYnS3vUd+XfVoyHNOrcWF3A/RG1XjSmvXib
         LlHmE7GvK6L7Q/vy3IPGVA36UKaYL2ez8tJxaX4fG6HdHQFLScXl8zmfVheP/UQiHZt1
         yHMUQ7/PG+gNsGzq1UCeh2zQYy0rx4YW0KXoaBe0JcOlQXd1HEjWuZuI1Xycn6NOmJ6b
         OBNqjvpukFDXWwPGLwtagEklCZRAk0K9QVYiJypYpj3PDV6AeUtRu7Jo/0UOO4Q/JTk4
         KDa+fdlqcpqA9UIWwayqoLYMo3NtY5AIN5RhMqxaeRoMLkOJo/sEeZzDwxernMVxvJLk
         iboQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bS+9wkSa;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::231 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x231.google.com (mail-vk0-x231.google.com. [2607:f8b0:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id 43si886735otz.5.2017.10.18.06.59.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 06:59:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::231 as permitted sender) client-ip=2607:f8b0:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bS+9wkSa;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::231 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x231.google.com with SMTP id g11so140489vkd.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 06:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=dUueWAUjqywMBYKfgIMXQYCk/RbkDbpNxaWoJ9u7+Ng=;
        b=bS+9wkSaFYUVtpPERvol8RgFnREkAlvuH4m2LHyvhS6UxR1Gdp+RFqc14Cysv9e2F1
         jbFN9/1yplWmNT+5ltaA5CFpkntd0MAA6abA1dzHmmR4p9DOhUwvcCddpvgvoxS0e0w1
         YgMy+Mo9xycsDshs385Tn5FUV6RiavK5SQ8wghYh0e3vyYCGRk/U7NfFM0J5HpZlc79k
         3gkWEkDhYlowmQibQKni9C+18hABAitujY21OT14rilg3Bm8umLsJGsgzyVKxpb3U1mM
         GjczMgPW17rP1s6nhvV4OpViai5NQ3iDAhc8toqSLn+FX5z8VQIPwZd+WKFvXcr/dRm+
         8qsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=dUueWAUjqywMBYKfgIMXQYCk/RbkDbpNxaWoJ9u7+Ng=;
        b=RT0hvyIjKNNH62V0l9AatyRKJ31EvhyYiB/5HYnsWLrB8j7Aj8qlhUbmDGxVd9AvAx
         M+Fx+Q3Ns7l0U1JvfuWrKLqqZ8s4VphX8ei8be7oneq7vZn5WtZuwhMPOZSRPNqkYHWr
         YkZHgiUEkn0V2Tzaa2CKqWu/D8qy04Kq+G92wH2qblcaFutFJuXUhEByIqFHoKwt2Z6I
         V9DGIpzaLkXiCmu8XHgNi21QatV+WQ6lG84bGmTIOLm3yhnWou+cDYZq3TyBUCQnzQT5
         JDQ/oIlmTelJyzn4Uht1wSaGjd+iv3gnuqXiI5cdNudXqjITdMU9Qw0L9Q/zn4u7PdOm
         bNCw==
X-Gm-Message-State: AMCzsaU51vkFRr8RT+8d0Go25hIhqC5pevVeu6pbRmh7MjJ/oNCXgxeo
	AcxqnjsQtHulEu7It43FqpJJrz9Z6vZBAwOnUqehw8Ud
X-Google-Smtp-Source: ABhQp+QX+f+YEqSvdgUmJSzvDDlc9Sy29UZ+154qoJfU+hUCyeaEEZddA0WhyFykmjXY+TmGxjulCcESv02XJMqvwMM=
X-Received: by 10.31.171.130 with SMTP id u124mr5567800vke.20.1508335169239;
 Wed, 18 Oct 2017 06:59:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Wed, 18 Oct 2017 06:59:28 -0700 (PDT)
In-Reply-To: <20171018134247.GA9535@kroah.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507208787-18008-7-git-send-email-aastha.gupta4104@gmail.com> <20171018134247.GA9535@kroah.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Wed, 18 Oct 2017 19:29:28 +0530
Message-ID: <CAHXiS58RzA_Eqd5A8J=NkyaWYVN6Q2CR9yAWjdK0aGu3nB77PQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] staging: rtl8188eu: prefer using BIT macro
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 18, 2017 at 7:12 PM, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Thu, Oct 05, 2017 at 06:36:26PM +0530, Aastha Gupta wrote:
>> Fixes checkpatch.pl:
>>       Use BIT(x) instead of using (1<<x)
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/include/ieee80211.h | 78 +++++++++++++--------------
>>  1 file changed, 39 insertions(+), 39 deletions(-)
>
> This patch causes all sorts of build warning errors, dso I've dropped it
> from my trees.
>
> Please always test build your patches :(
>
> greg k-h

I am sure that I did check all the patches (including compilation)
before sending it for review. But as you are saying, I will do a clean
build again on remote branch copy and find out what is wrong. I am
really sorry for all the trouble. Please give me couple of hours to
fix this. I will make sure that this won't happen from now onward.

