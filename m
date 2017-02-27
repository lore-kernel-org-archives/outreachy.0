X-GM-THRID: 6391475391095111680
X-Received: by 10.107.162.209 with SMTP id l200mr5594292ioe.4.1488175849232;
        Sun, 26 Feb 2017 22:10:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.196 with SMTP id x62ls12599470ota.32.gmail; Sun, 26 Feb
 2017 22:10:48 -0800 (PST)
X-Received: by 10.31.164.141 with SMTP id n135mr3438645vke.26.1488175848878;
        Sun, 26 Feb 2017 22:10:48 -0800 (PST)
Received: by 10.202.168.12 with SMTP id r12msoie;
        Sun, 26 Feb 2017 16:08:18 -0800 (PST)
X-Received: by 10.200.36.27 with SMTP id c27mr4541002qtc.0.1488154098805;
        Sun, 26 Feb 2017 16:08:18 -0800 (PST)
Return-Path: <scott.branden@broadcom.com>
Received: from mail-qk0-x229.google.com (mail-qk0-x229.google.com. [2607:f8b0:400d:c09::229])
        by gmr-mx.google.com with ESMTPS id u30si1637774ywh.7.2017.02.26.16.08.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 16:08:18 -0800 (PST)
Received-SPF: pass (google.com: domain of scott.branden@broadcom.com designates 2607:f8b0:400d:c09::229 as permitted sender) client-ip=2607:f8b0:400d:c09::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com;
       spf=pass (google.com: domain of scott.branden@broadcom.com designates 2607:f8b0:400d:c09::229 as permitted sender) smtp.mailfrom=scott.branden@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: by mail-qk0-x229.google.com with SMTP id n127so74924319qkf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 16:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=9yuOG/JNR5JYufnZI1Olh+dXwfTVNAfK0EghN/yt8MA=;
        b=MUsy9trebibComcPOUZrugDpi4ry1QWRAS1FgFp/Nuf3YOJOiH/s6AfYh4b6Go1h5m
         jm6MqpfLk3qT1uu6XAkuSBvhexa5YHNOWdO6YC1OP7w78A6nnPxQd7pAAw6wcT7jAcpK
         2GhuDrnEUgstCJbB2syqmNHCajvjflVwpgfj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=9yuOG/JNR5JYufnZI1Olh+dXwfTVNAfK0EghN/yt8MA=;
        b=gFL900aa5JVAcJ4hhVM3wv51agjSBbe0xy/7nUKU9Cpv/JfZd8OBsZRBqFCOTSklXQ
         zXEVFFCfvcD5LsinTbVwJ3zL9TmjyK3U/UNFkDb5iLC3DpnXnwWzKjwD256NnAbcj7rL
         NbDzUoN3IiBgd4Mj+QXgOeFtYdcliQYlDNAca8CJ6j3u2VySGqzAHk4PK9FkWmaW3SwS
         SM3kQK+x1nTwa0LR9p1UTP+aMZFvX+2aF4L1flxPyVZ6ELuJTtyxmW1mJ8+6T7asZh7X
         hqYTxLePAyHMllWm3b4gDb47sM3UEuLw/KfHPBbBk379rA2SxmG4EulQwYTjzj8PrA+d
         IcUA==
X-Gm-Message-State: AMke39nxTWS/B0rM9Pe4LCkObw0KKIoqi8AIQZ9iAtzpOIVVC5x03oICZHHiHBiNzFQqO2eA
X-Received: by 10.200.58.167 with SMTP id x36mr14149650qte.217.1488154098443;
        Sun, 26 Feb 2017 16:08:18 -0800 (PST)
Return-Path: <scott.branden@broadcom.com>
Received: from [10.136.13.65] ([192.19.224.250])
        by smtp.gmail.com with ESMTPSA id q188sm9426071qkf.20.2017.02.26.16.08.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 16:08:17 -0800 (PST)
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fixed spacing
 around '&'
To: Joe Perches <joe@perches.com>, Julia Lawall <julia.lawall@lip6.fr>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>
 <alpine.DEB.2.20.1702261901180.2056@hadrien>
 <1488134072.9188.3.camel@perches.com>
 <alpine.DEB.2.20.1702261956070.2056@hadrien>
 <1488137824.9188.7.camel@perches.com>
 <alpine.DEB.2.20.1702262038560.2056@hadrien>
 <1488146211.9188.10.camel@perches.com>
Cc: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>,
 swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 daniel.baluta@spamfreegmail.com, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com, bcm-kernel-feedback-list@broadcom.com,
 mzoran@crowfest.net, danielperezdeandres@gmail.com,
 dan.carpenter@oracle.com, devel@driverdev.osuosl.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <3ed05e4f-b00a-8a4b-f4f2-de23ff9b461e@broadcom.com>
Date: Sun, 26 Feb 2017 16:08:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1488146211.9188.10.camel@perches.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 17-02-26 01:56 PM, Joe Perches wrote:
> On Sun, 2017-02-26 at 20:40 +0100, Julia Lawall wrote:
>> On Sun, 26 Feb 2017, Joe Perches wrote:
>>> On Sun, 2017-02-26 at 19:59 +0100, Julia Lawall wrote:
>>>> On Sun, 26 Feb 2017, Joe Perches wrot
>>>>> Mailing lists _should_ be copied on patch submissions.
>>>> The idea of outreachy is that it should be a place for people to get
>>>> started without too much criticism from the outside.  Originally, only the
>>>> outreachy mailing list received patches.  But staging maintainers were
>>>> confused to have their drivers receiving patches that they had not seen.
>>>> So we expanded it to maintainers.
>>>
>>> That also doesn't make much sense as patches
>>> should not be applied that have not reached
>>> a mailing list for review.
>>>
>>> As long as initial outreachy patches are not
>>> applied and are just for internal review by
>>> any outside person but the outreachy list and
>>> are not be applied by maintainers, then perhaps
>>> it's best if neither maintainers nor lists are
>>> cc'd on the patches.
>>
>> The patches are applied by Greg.  Greg suggested the policy of adding
>> maintainers but not including mailing lists.  I'll let him consider
>> whether the policy should be changed.
>
> Well, I will comment on patches sent to the kernel list.
>
> I'm not subscribed to outreachy and I don't want to be
> subscribed to that list either.
>
I would prefer this outreachy work uses their own mailing list and 
reviews their patches first.  Then once they have everything sorted out 
they send out the patch series to the proper maintainers/mailing lists. 
That way we're not spammed with all these emails of people as they are 
learning how to format and send out proper patches.

Thanks,
  Scott



