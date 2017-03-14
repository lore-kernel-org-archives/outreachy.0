X-GM-THRID: 6397270990644051968
X-Received: by 10.99.170.1 with SMTP id e1mr15593583pgf.146.1489496801578;
        Tue, 14 Mar 2017 06:06:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls18150010otc.47.gmail; Tue, 14 Mar
 2017 06:06:41 -0700 (PDT)
X-Received: by 10.13.221.140 with SMTP id g134mr20617010ywe.55.1489496801229;
        Tue, 14 Mar 2017 06:06:41 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x22b.google.com (mail-it0-x22b.google.com. [2607:f8b0:4001:c0b::22b])
        by gmr-mx.google.com with ESMTPS id t8si1830455ith.0.2017.03.14.06.06.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 06:06:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::22b as permitted sender) client-ip=2607:f8b0:4001:c0b::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22b.google.com with SMTP id m27so46599422iti.0
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 06:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=5aRcSPYWnkIzGTJ/w1vcDEru8tQpNm9KBf9J9cCOSWY=;
        b=k6+n22YrpmSaZBUhGIsxF1rREQoeNvTiYTJ549+07ggWrN0gQKgXY6t+87T4hP/v3Z
         h9ORdoKjUPaRTLTt1S1TFRie7puc/pEr1g7Wk7ipDPkIOgZ4k3jph7XGLuV2L1k00haJ
         Bl5mCF2T193GgYiqI3egd+0eqc6RpBEiOZee6ZYlNImi3Wsz3iNEzC9E8LqGI+398oGF
         GYXgi7o/DS74DOtl9qI8e/MSvYDWGzj7uMCEwmPlA+I4K+okLOnijBinju95a332KoYJ
         YMvjPcgln/hS8p1BAw+mPcs5PQZ8WmEMMQqlvipMvXgViCBGVcjbkZrdhnohfh9uv++D
         /51A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=5aRcSPYWnkIzGTJ/w1vcDEru8tQpNm9KBf9J9cCOSWY=;
        b=C0a9HqL9JapNEfQ7WoTuUg8Ez8aGBmz59F2v9s/2KKQ3muWRqcPuPA2mRMxvx/27Eh
         l0A9wiqRwwfuS4+3UsDSt635KC+D0C1/W443XK6mSBT1WoVXE0cGoRkA6TldxYfUD7pN
         ALBb9rP5+3ncDIooGRsRckfwub97TRuo4YtjUmzYZFKagfPutOprNR2Xapk5f0P1SRbj
         JEZD+8ZJ2JIbOYkhAXUR5qWnEvX2BOFyLrG0yMicz+C+Pjdcue2/C72XaNMSPyWHte6f
         mIeMtFyxbtPvLHYbKdXF/JzfWIJW2+rBOx5l65hbSULmk+3zG08bJGjLxkjTI9GyCCG1
         i/lg==
X-Gm-Message-State: AFeK/H2sRECc/W8LUaIVNYnjCnz3tAs76PBUUI4omtjUDB0nIp425zYVw5MZfvbtOfZ8IQZVrpEBA3A36Kogyg==
X-Received: by 10.36.4.67 with SMTP id 64mr15409482itb.19.1489496801042; Tue,
 14 Mar 2017 06:06:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Tue, 14 Mar 2017 06:06:40 -0700 (PDT)
In-Reply-To: <20170314083835.4317-1-diaconita.tamara@gmail.com>
References: <20170314083835.4317-1-diaconita.tamara@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 14 Mar 2017 15:06:40 +0200
Message-ID: <CAEnQRZAGAeLFUY11=iyeNLaF+J6uXZVjFzfSjrEurqhmudT9Zg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Documentation: admin-guide: Fix typos
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Tamara Diaconita <diaconita.tamara@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 14, 2017 at 10:38 AM, Tamara Diaconita
<diaconitatamara@gmail.com> wrote:
> Fix typos in admin-guide directory.
> Make documentation clear and grammatically correct.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Also for easier reviewing next patches you can mention in the
commit message what were the typos:

e.g: witdh -> width

