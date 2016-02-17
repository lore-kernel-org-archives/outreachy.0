X-GM-THRID: 6251897983822987264
X-Received: by 10.107.12.213 with SMTP id 82mr1189638iom.18.1455686807253;
        Tue, 16 Feb 2016 21:26:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.132 with SMTP id f4ls1181973obe.75.gmail; Tue, 16 Feb
 2016 21:26:46 -0800 (PST)
X-Received: by 10.182.254.35 with SMTP id af3mr24346927obd.37.1455686806951;
        Tue, 16 Feb 2016 21:26:46 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-io0-x236.google.com (mail-io0-x236.google.com. [2607:f8b0:4001:c06::236])
        by gmr-mx.google.com with ESMTPS id p10si1868846igg.1.2016.02.16.21.26.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 21:26:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) client-ip=2607:f8b0:4001:c06::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x236.google.com with SMTP id g203so24350771iof.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 21:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=mV5dV6Le6lApx1KCX7F1XIlUTf7PjjLKoK+24MH4LG4=;
        b=Tr1+TZIi4ThPjCfJr2WfeH4Az0UcWShf2+Elg2kGshHXtZo/d4dD+CrYUr31Tc72OC
         zTSOWCq4dw3XMNQWv1FlG5DGd50+abcC4gRrbB13nYcPyuRLZcIws+WEzECj3+e6GdVG
         Dsd5zQ1id2Tkhn6vlp+A9gmQOEPSbPjXMOcct3/CjtKFiKRRU4gO/JJsQ3+WPe0+TZd3
         X2BgDAdESuT1fRT4YuF3p5UER9TQ9BeqerNBJY4fA0vXhXzVR2KgXcZzlH2ls5QaQAea
         3cgXVr3jJNwb3+JKdJG5kkfntrmFZuWJjV/ebOmCjCcYwpSjMP/t8h/7lj0SWYqUX0qg
         OV+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=mV5dV6Le6lApx1KCX7F1XIlUTf7PjjLKoK+24MH4LG4=;
        b=CAPI30bW1yfKTSOmoPI9roRcM6nDmycMrtkuYyh4wAGEVu1nCZciOBhXzRr/dvruKJ
         nZF+4dr/f+2Y/31VhKTS7oYY8O5cgTZcse6XBkaaPE+7h7a3c99QmgzWmrMeBbsM98Ch
         uG//Mb6wAOAW8Tz1z4C6C0H8fNnXrybg7hRkvmMR+L559eYmaYX81C/NWKWczrQ7aPIe
         LNwDVkPc6Ilvk7YawOFN9MhZg0+W/Po324/RN2gIZO0Sn4L9sNWuWQafmcujhNE31xBV
         dDd4d8eMwDIuGc3fX7Ng5lJ90FVLUlkg1V7St8kSPAC6pjm8zsY5bSQy/5fH4KQCgqoh
         2+8A==
X-Gm-Message-State: AG10YOSdbCUZr2VqDiQMbmT7z140M841SMvcXixvtkNiw9p5d8HgxTaDBJBHibkY+lRBoxPqXCA8rwl+8LDjWA==
MIME-Version: 1.0
X-Received: by 10.202.217.136 with SMTP id q130mr19226133oig.127.1455686806826;
 Tue, 16 Feb 2016 21:26:46 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Tue, 16 Feb 2016 21:26:46 -0800 (PST)
In-Reply-To: <20160217051847.GB4073@sudip-pc>
References: <cover.1455632723.git.bhumirks@gmail.com>
	<4f96e06bbf4e5226491acca62af017c2ee74da7e.1455632723.git.bhumirks@gmail.com>
	<20160217051847.GB4073@sudip-pc>
Date: Wed, 17 Feb 2016 10:56:46 +0530
Message-ID: <CAOH+1jEV3WjKed9=3MdGXH9rjPV2Tz2mbSk-XQ9AkqfXicKvww@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: wlan-ng: Remove
 function hfa384x_drvr_getconfig_async
From: Bhumika Goyal <bhumirks@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 17, 2016 at 10:48 AM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Tue, Feb 16, 2016 at 08:06:59PM +0530, Bhumika Goyal wrote:
>> The function hfa384x_drvr_getconfig_async is not used anywhere in the
>> kernel so remove it. Also remove its prototype from the header file.
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>
> Just replied to your v1. Didn't see your v2 at that time. Quoting here al=
so:
> This patch introduces new build warning -
> drivers/staging/wlan-ng/hfa384x_usb.c:839:13: warning: =E2=80=98hfa384x_c=
b_rrid=E2=80=99 defined but not used
>
> regards
> sudip
Thank you for the input. I will send a v3 after removing hfa384x_cb_rrid.

Thank you
Bhumika

