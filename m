X-GM-THRID: 6530656197776769024
X-Received: by 10.98.178.72 with SMTP id x69mr5965439pfe.9.1520543721984;
        Thu, 08 Mar 2018 13:15:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.137.157 with SMTP id n29ls471628pfk.2.gmail; Thu, 08 Mar
 2018 13:15:21 -0800 (PST)
X-Google-Smtp-Source: AG47ELuvsNJn+eloqWakNfxPre7+uL7EwFEWam/a5Y3kh0Q0fc6cCh7+0S50l3OM0A9eJRlmskhL
X-Received: by 10.98.139.71 with SMTP id j68mr4750953pfe.1.1520543721004;
        Thu, 08 Mar 2018 13:15:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520543720; cv=none;
        d=google.com; s=arc-20160816;
        b=zg1W/3FRPqUoCvBLrnRfRuxvPRjRS+Mv1LQufzAj7nfNHFf4hjID05afHtPST7QchW
         BmeOyYWmVSFCjN8Rh+aclkCzUhEsAZOAZ6ZYTx7Bx8lzSo1zKVncksbcQOAxGCH8tE3S
         k5KODpLXBtd2kQ96eShHReBgTQQl1vZgXvKj8T06Gm/Y9hoTmAOoBN0R0Bkn6TPMHgiG
         o+79MJGpFhXC2Oqr9Y8e8bLABcgfpFSpDkfLz1shqYRTweMrk3U0GbQf4IPYkao9fu4Y
         /OcJc6Fqcy+eF1g53+2SK1uF7kVPNq1C6SSDZXcBCCjeUe7TkUIdYuKkFM+h+v/JL0sf
         JVgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=ZODiP7rcsDNARFUm2O1LdF/ODfWjZVlzxpnZFvi1iag=;
        b=CUT2UFHRuO+8MPyOljZG9swoHtOUT4CeZPyLmbql0cKGfda/6BKTr5NTz2CFowmvc8
         QqNitC5Lkk02G5OVlwqFrryfpdJQTc+ydhXdS+afmHVT0srYCygvY8oc3a6vKDjkGC1a
         pNLutwu+4JCBQ5RWpur9YlSu9Fly8gg+geZgtr0QE3dWXvmDK6hYuySO67/q9Va6Ycc3
         mUc3GpsZbJI4dKImqo3k2KH0pdcEqKDIQ3KpoGUOmDkk/kz5SrIu+F3a6TluJJ4aRdIU
         MaAhacQLEs+ulCnkkGYrPYYh2170Vqj694YC6mqmEp6LxKQMNvrA7dALu/KNZl10Xo7K
         rFSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Dm15QCeY;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x22a.google.com (mail-io0-x22a.google.com. [2607:f8b0:4001:c06::22a])
        by gmr-mx.google.com with ESMTPS id q12si1087057pgn.2.2018.03.08.13.15.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 13:15:20 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::22a as permitted sender) client-ip=2607:f8b0:4001:c06::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Dm15QCeY;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x22a.google.com with SMTP id 30so1251555iog.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Mar 2018 13:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ZODiP7rcsDNARFUm2O1LdF/ODfWjZVlzxpnZFvi1iag=;
        b=Dm15QCeYEW4JJ1Tp7w+cXfmQaKCUwXueNhKcbH/dlCk0b+njEh3vEcHuXgMGFNI+7I
         VNhgz5jhPuW1wMQqHa/1QRgYDMGQ25VYT7nUc5eBVLDJUGRcQJ/KW1g04tHFkLrm+P1R
         lNus6zdalXUp1lzjYtQwTb7msNuX2/RHJ4cLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ZODiP7rcsDNARFUm2O1LdF/ODfWjZVlzxpnZFvi1iag=;
        b=gs7xYYwc1s3/d90kjAdl2BGGm13/jgULkhAQtwNlyHAHiDC0/S6haVKktFc6D/l7YH
         1q3TaQ3XqpzH6Q5+Gkmz8EAuOwwy2bYgTjZXq8PCHJD4urP50F07pXQyih7K1ZV7Vrjj
         EjyxQs5XyHIIvxtq2QpSolwW12EuYcLwWXVI21gS0KpJ5Y3wTK+mUjZwUB75A3zgXizT
         vRPZ1PYF/oooJhWTefC2M3Fe5C1v0qHTP+057aG7hjlaFfsAISggynp1mC1I6XEmpdCO
         +S8BXxbb8O5pK/Ub2pSJ1l9VRLofzajVz2knuuiwbnhDyWEQDCoIgao5RcAsZbfLj6ky
         tG0w==
X-Gm-Message-State: AElRT7G8kCnQJy2j2hP0NjzGJmpt8nOkWlXXquPrjxV7SlrFAPleY8zJ
	aHCoIVnQvwW5uIip4wnxYUXm/rXztnSYAimeiY9LAg==
X-Received: by 10.107.55.133 with SMTP id e127mr31240815ioa.138.1520543719420;
 Thu, 08 Mar 2018 13:15:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.124.136 with HTTP; Thu, 8 Mar 2018 13:15:18 -0800 (PST)
In-Reply-To: <20180308204847.2bmei7z43tdqvsgg@var.youpi.perso.aquilenet.fr>
References: <20180308195332.2hao4ys737ubr275@var.youpi.perso.aquilenet.fr>
 <1520539425-16513-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <20180308204847.2bmei7z43tdqvsgg@var.youpi.perso.aquilenet.fr>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Fri, 9 Mar 2018 02:45:18 +0530
Message-ID: <CAC4++KCd3fAuzm3Pbz5oZEF=N9amgAd3tsBRgPzT1d39CGLF6A@mail.gmail.com>
Subject: Re: [PATCH] staging: speakup: Replace simple_strtoul with
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	William Hubbs <w.d.hubbs@gmail.com>, Christopher Brannon <chris@the-brannons.com>, kirk@reisers.ca
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 9, 2018 at 2:18 AM, Samuel Thibault
<samuel.thibault@ens-lyon.org> wrote:
> Nishka Dasgupta, on ven. 09 mars 2018 01:33:45 +0530, wrote:
>> While we are on the topic of speakup, should I also stay clear of the
>> checkpatch warnings in keyhelp.c:102 and keyhelp.c:743 to add a
>> KERN_<LEVEL> signifier in the printk() commands on those lines?
>
> That should be fine.

What Kernel message should I include within the printk statements, if
any? KERN_DEBUG,
KERN_EMERG, KERN_ALERT, KERN_CRIT, KERN_ERR, KERN_WARNING, KERN_NOTICE,
or KERN_INFO?

Thanking you,
Nishka Dasgupta

