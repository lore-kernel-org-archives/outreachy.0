X-GM-THRID: 6472784237919469568
X-Received: by 10.129.161.85 with SMTP id y82mr34327430ywg.3.1507134748317;
        Wed, 04 Oct 2017 09:32:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.168.4 with SMTP id f4ls1074325ywh.27.gmail; Wed, 04 Oct
 2017 09:32:27 -0700 (PDT)
X-Received: by 10.129.109.199 with SMTP id i190mr4441020ywc.196.1507134747443;
        Wed, 04 Oct 2017 09:32:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507134747; cv=none;
        d=google.com; s=arc-20160816;
        b=qnGI6/3oNgZNtUM9CPhMAPZWkQLkMrEwV10D4dJdvOr/ceFvCWid+1NhzjWGQwasSC
         Q3FsKawGyPEs2Inc070zc1/U/4not4Fhi8ujY0qXG6s0iEsepPUPThpSrKmEFASgJB3d
         aA8z9TvHqTfVgs80xl91rkCUPyEqzHNlu/pSA0uiqhldSgtjKWPWVYNeQSepePqAmPm9
         jxUHy7wld8QtiW6AN+zDRhy/ulfJfinbtbNBJ625RG9ROhjbtaXaT2cMs9ugHMFVubZt
         kJZBEErQCDDiHYWUkRkJnqIsSdKysXQNdcl/4k7Ng1GpX/nIIFYnF5zBpW51XxmQdc6i
         U4Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=JESR2yDaHxyubnmdJx4iGc+asUYMyvwCSUp/mAZns8I=;
        b=RLCt7kfQSzTnyAYVk568FUODhGqrG3Q/WFzjx5/KeW6GHkMA5jqhnx6DUD2iARUmiw
         JBVxg8WWjluUWFCjk2j4kseQCUesc92DH/GrQSe772aNFOOtj6aCz+hUviQA9Gfspe3l
         DBNJZAyRVcOp7WXYGD6UYR9B43lYE6gZh3qeVm/aNWeYOJgCaFA5vbkRPoVSCJYM7qpk
         bcL7Zfa+NE6xsJHSiYYv3ok08ArjgJ2dVPK5JZ2P0LK+k8LsAbLKNcm6rnyFRKa4LpwG
         HUySzkGd72xl6FFI+MVMmTUUPaAZRKLWCT43Ul/oOjN8YnIXG2oGcVOTb1e6ycU87npv
         +jtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c1M5KBQj;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id b16si906095ywe.25.2017.10.04.09.32.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 09:32:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c1M5KBQj;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id a43so14373163qta.0
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 09:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=JESR2yDaHxyubnmdJx4iGc+asUYMyvwCSUp/mAZns8I=;
        b=c1M5KBQj9+xfVnuHwy8Tt1L/YM7GluATRvhWrKbYEUa8xOu9iqy/blL5bS8eq3hAqz
         vLuGsT613IMQJz6cWDMnDweaTLyJR7V5D3AG1TLUUzxdJQot606pfA4sy5bSVTbb9vph
         0xnRoc3ZhkmpnvkUgjly6gSNpMwWl/Q0acFrIEKjTCIxeJy/1aasOaGce4TY0HwQVRsZ
         cE0OeUQWsy1rjznVHbQivl71yP3dPMuPTVyOIeQV30w61acnUtNKhrY2BGdy5QgmyI/d
         38TBypYwBNg47MfDyhyCUuOMhYoZehdTRMaWctszOyLZVzjmQ2yms/0fiqH0ORvdTXcq
         MF+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=JESR2yDaHxyubnmdJx4iGc+asUYMyvwCSUp/mAZns8I=;
        b=c3V02+blZLNRe97vNl0fMqpw61lKgB8Gv3dCdOUqGTwIQZjIUm3vAT9Epd3FoNhVEa
         2JM3SPMPf5iGajMRC9Bc8ZtiHZWuybeaQPH5PdJHI72TKPfMBK2A/QfFPh3TXBlFPHZ9
         FYd4pi40YGqqK92/DmUi7u1upDnCXBmiH/coLbaGv94bfOM79YYSc7eBqgg1dIAVmFKw
         8vE3gd6E2xjKOvG86SiOs2uvg5EIbo5e5itVWnvtyIkrfQD7EdfvgO4dYPVt2PSZAIA1
         uLMQmJ7n9tSaJtcxpcKSF+EY+C45Ab97u4lRi+E1LLPn9hXahkTYmIDFsEZ2Pufqlyck
         v2rw==
X-Gm-Message-State: AMCzsaUU0tys26MJiQqGNqUhQAQoCjySKj7Ll4kchFlmLpyxnxA0uvbA
	Ic+Wohyt9NXQf0+qo0X/ZHvW6bKNJuaPvjlea5I=
X-Google-Smtp-Source: AOwi7QD/W9MhW3BV4hQYAhju91raEekEDZaUKwy9WvJYsoz9q59FlaEM1mopIKnaVZAU9wv2snBfDFrkcp0LngR9Jyw=
X-Received: by 10.200.11.130 with SMTP id h2mr5853772qti.194.1507134745753;
 Wed, 04 Oct 2017 09:32:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.57.196 with HTTP; Wed, 4 Oct 2017 09:32:25 -0700 (PDT)
In-Reply-To: <20171004150813.kajdk27w4ngrz57w@mwanda>
References: <1507122755-5489-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1710041533110.2815@hadrien> <20171004150813.kajdk27w4ngrz57w@mwanda>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Wed, 4 Oct 2017 22:02:25 +0530
Message-ID: <CAB3L5owT483S1ytafbS1CVLS06069CtiB7LFcmQCTSOFMH3Exg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use list_for_each_entry_safe
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, devel@driverdev.osuosl.org, 
	Greg KH <gregkh@linuxfoundation.org>, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 4, 2017 at 8:38 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Wed, Oct 04, 2017 at 03:34:05PM +0200, Julia Lawall wrote:
>> Again, you have three patches on different files with the same subject
>> line.  You could add the file name eg rtw_ap: to the subject line to make
>> them unique.
>>
>
> And the subject needs to start with [PATCH v3] and then after the
> Signed off by line put:
Shouldn't it be only v2 as I haven't sent a v2 for this before.

Regards,
Srishti
>
> ---
> v2 and v3: Changes to the subjects and changelogs.
>
> regards,
> dan carpenter

