X-GM-THRID: 6473369006202945536
X-Received: by 10.31.79.4 with SMTP id d4mr586504vkb.27.1507362079731;
        Sat, 07 Oct 2017 00:41:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.190.209 with SMTP id o200ls142785vkf.9.gmail; Sat, 07 Oct
 2017 00:41:18 -0700 (PDT)
X-Received: by 10.31.164.71 with SMTP id n68mr591108vke.66.1507362078631;
        Sat, 07 Oct 2017 00:41:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507362078; cv=none;
        d=google.com; s=arc-20160816;
        b=jV7XsNhsFGXRrfdrdh2BXBfFF0zFpQwqQF3snatJ65b84icdg9aiCn1BeJ3U4HCR+5
         LCJ9pQzZb0FAwqZ0lqEpK41sKhNARIKEvsAw3I1OcCrzQTXhGRnpC5XKT+a4sh74ir20
         IMTQ6D1m0ggmfOD0K4D4drMQLklduyRXgT/+G6M5j7TLz33NKD/PHg4QgsWxhO/EYkox
         g55GM7GzYlVSe2VifZbeTWrzeYFixqD3x/4TfiQzq8llaJ5U0z7hCwtb3NaMzAGZANFb
         a8jsn5HNPG85neewmSPAH4imzZE7ZyQ9gC4/xu+g7ONvMMgoFh1ZGSemX3lGs87q3XtS
         XTfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=x40xb9AzSo97E3DObI8H3Tt/c5d/m/XXfpLszMGdOio=;
        b=K7KeR9FEoZ4NJHHPbR74D3UH4O+e08ibBcs5GplBenxV5m/QR1JFjVYWl5deIqH8B/
         1lwEgwTcRPU3lwsZ/VFGsg2rvy7Fvt+ZWPApzE/SsET5G4llUPDmQ81+ChNhtMjhtG7n
         OjE6q84nW0XRrzIFkIp56pMO2ZGGwxnYAvK2QNU/S04ed/DJ9tCMaR750/iPMOScn4Qo
         ZD82lIGEhyM3PsliDMF6as+kKE6+6N92TnmDgDlj7wAawLEYXUoL6HA9ccnWoGFNFc6I
         Lhqp8swFjokdfzpVuqC4Av1XuGvjcdVIjJ7a0IEH3M3/7Rh3HoYwsAWNaW0Toi3Qgarx
         wd5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i4tOR8ft;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id p68si171768vkp.7.2017.10.07.00.41.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 00:41:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i4tOR8ft;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id 103so4237769uas.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 00:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=x40xb9AzSo97E3DObI8H3Tt/c5d/m/XXfpLszMGdOio=;
        b=i4tOR8ftm4soZQhgkD1PlKPZn7eh4TJJi0cE14IdMBJvjHuB2OB5VVzaKafyLfFmVc
         97Shz9L8VZj/BaOUMkEOBb6gD0te6FjAij2s57AER9jNKAXG/y4EzVUhnc25A5bL3D92
         55aRzsay+pNxtERNFmpLE9pW/2m1zOrXCi4Ngp3zsGSzYVFaJK0demehlX3SfO0acI4m
         QnIxLXevdrOBzQbh+yyWNOVVfpLAlX21jk+CSsc7Tvrn3hFRl25mE/X6Q//cVDHoqSZg
         TWPLVg5MprHTOLP273Gc93hxYRrvImK/uDWOgmyCJN1byQBozhqvFMOsG7ntsqkCSdAx
         8RVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=x40xb9AzSo97E3DObI8H3Tt/c5d/m/XXfpLszMGdOio=;
        b=D5ELjU6etF4m6ocC852XQU1i4arz1nH27Kd8LWqDoMiP0Drnu8YseGT78hc4DQLbUj
         5K4Q+rZfswjRv1YMCSIhdETF+KstwFzfIMp5r9nixdDs4+iKmVeTWOtYlp7lriO5gJSN
         xm8u4sGm/jyse2+NdkaNZPQp3XiEKG1b9uih/X2uVITlHC1cfsEpTMG2mlcp0iFFh6HS
         HdJeZ0jK9RbydRB3EXfY+WdYpgeA3sDBSippBU0oxVtu+KlTXYvBj1baobFJmuaDmLep
         WKADvqCyMnlX2PbqYQPASE0OXkmHSA9VgCdTNisM54IidwSCyxIqhIpJWiNwrY7mBrAP
         SziQ==
X-Gm-Message-State: AMCzsaVmJ6hCgAnjW8LWSBwzcvScc3M3SjSEFlZOArrEa9DdKL6JDsfq
	wsgOWCt2nUMn0+IjBIgBfqIkMT0qdpib0uTxGgJaOw==
X-Google-Smtp-Source: AOwi7QAhP8JkleCsMFfAvEYtQhW3sqYLqyPBF9LcNmGorUWuu2/sbZXVikzTOh1KLmrQdY47u15hsAC85ojIk3lDBQg=
X-Received: by 10.176.21.136 with SMTP id i8mr2188463uae.142.1507362078337;
 Sat, 07 Oct 2017 00:41:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.26 with HTTP; Sat, 7 Oct 2017 00:41:17 -0700 (PDT)
In-Reply-To: <20171006123835.GC4713@salvia>
References: <20171005101539.32010-1-harshasharmaiitr@gmail.com> <20171006123835.GC4713@salvia>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Sat, 7 Oct 2017 13:11:17 +0530
Message-ID: <CANMOCy0E1zpo_0ajtf0jvvZ7oGB1YKtQNkHAK8wEViiaVnsZ8Q@mail.gmail.com>
Subject: Re: [PATCH] tests: shell: add testcases for named objects
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 6, 2017 at 6:08 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> On Thu, Oct 05, 2017 at 03:45:39PM +0530, Harsha Sharma wrote:
>> Add testcases for creating named objects with unique name, defined
>> by user and referencing them from rule.
>
> Also applied, thanks.
>
> Could you add another tests for 'limit' objects too? I think I posted
> an example to the mailing list.

Hello,
I have pulled to latest tree, then make and make installed all changes
but still I'm unable to add named 'limit' objects. If there is something that
I'm missing, please let me know.
Can you also please suggest some more tasks ?
Thanks in advance.

Regards,
Harsha Sharma

