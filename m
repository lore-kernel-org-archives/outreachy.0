X-GM-THRID: 6802590976179175424
X-Received: by 2002:a4a:2cc6:: with SMTP id o189mr1874421ooo.20.1583965844493;
        Wed, 11 Mar 2020 15:30:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls981552oto.3.gmail; Wed, 11 Mar
 2020 15:30:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuKseWC2aZ/XWmUEomE2ML3apElK7xtZWYYAh9F4UKoeO/PN3bgcq0i2sWBa6qxHARDelUe
X-Received: by 2002:a9d:67c3:: with SMTP id c3mr4133155otn.340.1583965843253;
        Wed, 11 Mar 2020 15:30:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583965843; cv=none;
        d=google.com; s=arc-20160816;
        b=p7Y+HHwlSqKKdjj3sE0wEfzOqNnMg47x19Lq9b4vKkDYt83HptbLhuUiqFEKb7i9f/
         QExEjCikbQQFIodED7tfbAIXJubpUJWpahZBi1U+3i+LROxlDqNn4fjb4odoB8aFTk/N
         m/qUPZWQFaAvnnkCDbalcRTXBpZmkinOYLwFqttHOIABxJGvcRcP91KU3109MP5R28sx
         cvB9Q8ze3g/MlGKeigEcW49Z8sy+6IOAzDOcu3Gn5RAd1wvBEQESTDUgPvpDfrBLMJHF
         i/ufD9RTsD7vcCqka7TwK5pGyEg36pZCguyIbZwpwstRYJyx9PrHivYIIIq1wzZqPD7Z
         Fv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature;
        bh=VxId/5R2+lzGKp4xsQtvfpVORMMHYVxgyqrgJySMYzY=;
        b=PpWFhSjHRSjA4NZyMEjwuLddRmsSnxbgK5SN89PVXjfd54Vcm4zpq9y0Gjzso/UNwO
         zIuVcYhOH42JYYhDK6be6jECN7+gzy7EL4kZ6d9TnhdNS4y60U1AIzau3T4Es8pzIeiN
         NWol80rmUtLLo1sLRpoQNE/AxP6uZgc+bQFyPHOVhyNMOU7QQNKlK+1el+BYsmaAH/bV
         D/K540CXMDIGuiTxVPULzNLXC8+lBWyEp80AfW40LxG8Y4ae/8yVyz3NbIc56EuxHAWS
         MbYc50TA3++ZGcBR7AvjqwcThX+qYUqGzHyrLbTakKBxfxmSYbbROZTr29WA+TLrZyHY
         sR3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TbSHiffg;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u22si282887otg.4.2020.03.11.15.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 15:30:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TbSHiffg;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id h8so1968650pgs.9
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 15:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:cc:from:message-id;
        bh=VxId/5R2+lzGKp4xsQtvfpVORMMHYVxgyqrgJySMYzY=;
        b=TbSHiffgBHgwXtx6lWGtUCIGwYo7aHUsh3UxIgr4iUYGZj78Lkbv3m0bjNFEsPt+/G
         0aomm2mocu8Rf+ku5opnW2fnZ/LiSJ3eE8sRt1RZNJlFdGa0RJnRWRxX8yulkaJjZb+4
         I0Wq7BvsQpJObzG9dYfRtLMo7agM/Z13SNVfjv0rAxaVjvwZcFME9jKgB5GqQ2GJUYQS
         +AH08f80G47e5pKa7h7HIxxP3t67tHVKGrTW6AnglzAQK62Spb6YJrGFNtHSCDxYzGdZ
         UK8EQIeIqZ0S6KqtKjYpU8EDkerh/V7WIOPN72DAbjdzhMimCQITvjoa3Yivn9ZwM03c
         smjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:cc:from
         :message-id;
        bh=VxId/5R2+lzGKp4xsQtvfpVORMMHYVxgyqrgJySMYzY=;
        b=PggIVUwZVXRkAhjgTbCtsr5jSpJbTI3W/DIULIFT/p1u51eEhkr5GKYtr8I6Tdf/Zo
         9KdyvTcjIDO8lMRxvrn5kcBtToNl8vBR/2YBCxV6t5oWMIbtDSPiqTz+dq9euPpWdhJm
         cSdr/ssqkyx+L8c1YJ78xdbcEdgUAS8dnc9OZVRgz+Q98DgYvcsHz8p1vJF8RvdrkUl5
         xDG2QIn5rs9hMzE+MLfvR0KWjMAcxuYbElisiTyRZzdWFUpSctKpjHnWlHIcVJ/+z8CW
         MPab0GGW7+OLszElQQdsLDqvpVh/AEBgqdmCka2+WnQWBjkVNUIFkduj9DZ7gl04wGnY
         pSWw==
X-Gm-Message-State: ANhLgQ2Bw4NoBLXc1BhS9jCn2YC5HycwqmR86m0zxXN+bR7oab6Dbw/X
	A3B7UTKijXq9zxuVTv7VYT3dJqNsseE=
X-Received: by 2002:a62:f842:: with SMTP id c2mr5017437pfm.104.1583965842272;
        Wed, 11 Mar 2020 15:30:42 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [192.168.0.100] ([113.193.33.106])
        by smtp.gmail.com with ESMTPSA id v5sm1592244pff.209.2020.03.11.15.30.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 15:30:41 -0700 (PDT)
Date: Thu, 12 Mar 2020 04:00:40 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <20200311180428.6489fe9b@elisabeth>
References: <20200311131742.31068-1-shreeya.patel23498@gmail.com> <20200311180428.6489fe9b@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: rtl8188eu: rtw_mlme: Add space around operators
To: outreachy-kernel@googlegroups.com,Stefano Brivio <sbrivio@redhat.com>
CC: gregkh@linuxfoundation.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org,daniel.baluta@gmail.com,nramas@linux.microsoft.com,hverkuil@xs4all.nl,Larry.Finger@lwfinger.net
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <181B01E8-5D92-458F-9C5E-7271333B96F4@gmail.com>



On March 11, 2020 10:34:28 PM GMT+05:30, Stefano Brivio
 <sbrivio@redhat=2Ecom> wrote:

Hey Stefano,

>On Wed, 11 Mar 2020 18:47:42 +0530
>Shreeya Patel <shreeya=2Epatel23498@gmail=2Ecom> wrote:
>
>> Add space around operators for improving the code
>> readability=2E
>> Reported by checkpatch=2Epl
>>=20
>> git diff -w shows no difference=2E
>> diff of the =2Eo files before and after the changes shows no
>difference=2E
>>=20
>> Signed-off-by: Shreeya Patel <shreeya=2Epatel23498@gmail=2Ecom>
>
>This looks good to me=2E Further clean-ups here could probably make this
>look less messy (there are long lines, unnecessary parentheses that are
>rather confusing, especially on that 4/5 factor, "magic" constants that
>might make sense to figure out the meaning of, etc=2E)=2E
>

Thanks for reviewing=2E I will surely look at the other clean-ups as well =
:)

Thanks

>Reviewed-by: Stefano Brivio <sbrivio@redhat=2Ecom>

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

