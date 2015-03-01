X-GM-THRID: 5567574704128
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d5db48a77f760ce5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr3310592lah.8.1425243735422;
        Sun, 01 Mar 2015 13:02:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.139 with SMTP id l11ls161018wiv.33.gmail; Sun, 01 Mar
 2015 13:02:15 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr1778445wix.0.1425243735085;
        Sun, 01 Mar 2015 13:02:15 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id l8si564225wia.0.2015.03.01.13.02.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:02:15 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so29854803wgh.12
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lIUJvMK0k4Zgp/kQ7/Z7UON44GQ7wh6IFeEnSlFudf8=;
        b=wSmhzNvV8m5baQnFSFJgdImvc6LquA3d/aetpDiRkw+0TsILz8TAeKRAmPBM5mW0/e
         bQmga2/HrDeSSy0W7IkV6M/VLUkP1nyJAUukz9Pzo8O3zX3iDh+grT3UvHAJCVlwmv+/
         XNy8iYav5YFLxNy96mh+oPrw28iNv6d7K8pXsOHIIkbHzWEUwF5SoLtcauNiRmSM6vXr
         kM1/RZIfOXbWV7CTIqryObNvOYXdkxjToEP2nzPzCrH7VOV1uClCNGt2ZeywsaaUmHmG
         PF2DHAZ1aXN3ZOEvJfiwBlmd13DlvK1Lino/aBkKGqkGLjVprMT0jL6+96jAh3ORY5cL
         rkHg==
MIME-Version: 1.0
X-Received: by 10.194.6.228 with SMTP id e4mr51181096wja.63.1425243735000;
 Sun, 01 Mar 2015 13:02:15 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Sun, 1 Mar 2015 13:02:14 -0800 (PST)
In-Reply-To: <1425243637-10849-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425243637-10849-1-git-send-email-dilekuzulmez@gmail.com>
Date: Sun, 1 Mar 2015 23:02:14 +0200
Message-ID: <CAEnQRZCxhiGcbf16qHYQFrja4Dx-oRY9mejLB=yPHFp_z-Sy4Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Fix
 __printf(string-index, first-to-check) is preferred over __attribute__((format(printf,
 string-index, first-to-check))) in libcfs_debug.h
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 1, 2015 at 11:00 PM, Dilek Uzulmez <dilekuzulmez@gmail.com> wrote:
> Fix checkpatch.pl issues with __printf(string-index, first-to-check) is preferred over __attribute__((format(printf, string-index, first-to-check))) in libcfs_debug.h

Hi,

Try to keep the subject smaller.

