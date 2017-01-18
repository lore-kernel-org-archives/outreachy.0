X-GM-THRID: 6376626533381963776
X-Received: by 10.157.24.60 with SMTP id b57mr458050ote.65.1484723336701;
        Tue, 17 Jan 2017 23:08:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.214 with SMTP id s80ls736288ota.11.gmail; Tue, 17 Jan
 2017 23:08:56 -0800 (PST)
X-Received: by 10.31.202.68 with SMTP id a65mr347773vkg.25.1484723336260;
        Tue, 17 Jan 2017 23:08:56 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id m71si1020913ywd.1.2017.01.17.23.08.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Jan 2017 23:08:56 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id a20so605268qkc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Jan 2017 23:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=QoBtkprLz3tNetLdS7zTX9deYkNHgam57vH9V2cnnnU=;
        b=cwp6XxjD8GfocgZWPCS6pQkGUohiBKPFtOtLq6emd0OQwCt+3JnkPY0Gk/2ZUsfKp0
         CrdPPV+N7qSJ1B5UqrtA3LJsVCKygLJNxHOPqT78HsQoQnX8fTtlkM9Jeb1INbVlJ/i0
         A136hwv2qMNGuiy+73Ini3JSQA6X/gzcPIXKUDEQBavh7RHzXDU7PKnTZfQcxhDZ8BSL
         fL/QaWkyFBjPHczaF0SGf/clcfElxSxCz0XeDhPRSfxrm4UVkpxQDTMbp+qG20OlcCjB
         s52XrROIpLZ5NSXV46AKn9TAbC6ST0x/JQyL7IFJrVwGNkfysst1dKCbEZlOhvXK0b1H
         hd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=QoBtkprLz3tNetLdS7zTX9deYkNHgam57vH9V2cnnnU=;
        b=GJtkGi47bvyG4hkJ0F1Urz/6vEbd8l9lTz+CxcyMc9b5lnswp6wjHLLokjJ/XvhyBA
         iOPK9/GavI4r6xQXenzpck+BMfdydiyJ0+UrjzWldBGjGGo0C1H1UMfMhlpglv2DffCY
         beC3lezvI7+akHHPUUJFMISNrQOe1n5jiOhawcpoAO3Uun+nowKnsvMN5gmzPOH6SfO7
         JoK6g3OnAjUGLjeklBn6oDI5wOzefVr6bVq7OOtzl/J1e3qH1UOWFi9dcJ0ZhcEr3YVK
         lFBczYDaqgMxEg9tECnUM9wU02emvJjdHiO+pVTruWYgjTRpLGHtoccbu9pjXMhzeRLu
         n2Jg==
X-Gm-Message-State: AIkVDXJ6ACUC+YHUQN+RXFz4yCSQV3ip09td224MKPG8N/SLqD2jWkG88Xiugw9w7LCq9u8x+wjI33DTwhb/yQ==
X-Received: by 10.55.197.194 with SMTP id k63mr1487929qkl.85.1484723336050;
 Tue, 17 Jan 2017 23:08:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.161.37 with HTTP; Tue, 17 Jan 2017 23:08:55 -0800 (PST)
In-Reply-To: <CALrZqyPW2ou_krA2C=HsqM0bkDEPOk_ENZi_otN+zOMJFnv9Aw@mail.gmail.com>
References: <20170117163523.GA18643@singhal-Inspiron-5558> <20170117163806.GA9147@kroah.com>
 <CALrZqyO=O=zu6XRsC=+DaFR4=tCjr2GTjC+ep=0K4A2YEXEFzg@mail.gmail.com> <CALrZqyPW2ou_krA2C=HsqM0bkDEPOk_ENZi_otN+zOMJFnv9Aw@mail.gmail.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 18 Jan 2017 12:38:55 +0530
Message-ID: <CAK-LDbL9tR6SXHYsz=icnEF0J6N__4BY0FuWJ=x-ARm54DPPww@mail.gmail.com>
Subject: Re: [PATCH] drivers: staging: Fix "space required after that ','" errors
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Christian Gromm <christian.gromm@microchip.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 18, 2017 at 12:28 AM, SIMRAN SINGHAL
<singhalsimran0@gmail.com> wrote:
> Hi,
>
>  I am doing what is given on FirstPatchTutorial. I am attaching the
> screenshot of what I got after running the script.

Please cc outreachy-mailing list for this thread.

> I will be thankful if you tell me the mailing lists I have to cc.

Ok. Looking at the Maintainers file, it seems that maintainers entry is not
yet added for drivers/staging/most driver(s). That's why it shows Greg as
a result.

I've CC'ed Christian who seems to be the person of contact for these drivers
[from TODO file].

Christian, can you please send a patch to add a Maintainers entry
for drivers/staging/most/ ?

Simran, you can may be try sending patches for other files to the mailing list
and maintainers based on the result of get_maintainer.pl.

> Thanks,
> Simran Singhal
>



-- 
Vaishali
http://vaishalithakkar.in/

