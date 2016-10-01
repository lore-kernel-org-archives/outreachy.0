X-GM-THRID: 6336583811362455552
X-Received: by 10.98.63.74 with SMTP id m71mr2273092pfa.30.1475350887582;
        Sat, 01 Oct 2016 12:41:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.76.212 with SMTP id a203ls1478463itb.9.canary; Sat, 01 Oct
 2016 12:41:26 -0700 (PDT)
X-Received: by 10.36.76.212 with SMTP id a203mr2889487itb.18.1475350886764;
        Sat, 01 Oct 2016 12:41:26 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id 128si457241pfz.2.2016.10.01.12.41.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:41:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id oz2so48649770pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 12:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FvYKgjvl+BoD+npfsWs91LcuJa1ic6CllVtPuq6rk7A=;
        b=zBhQELq+9HjPJVCYt+0SahxrhHRggni8EF1OjbwnrHj/X2jstiHwhamclAZ+mK+oJ8
         3Kc8eQRtiw7Uxp3DoHtzb7NUBvBgrEruKu+RYGPEBTr0gEplUaAWj1zcfRQPLCB1F6I0
         lQWMX8EOMVPdtK0sgQtEbJjVRXWBkDL9GX31RbSBEV+V1fWU1clb4nPJqDgkIhaxxstM
         P6gevh55r3LJ3dmvsTCItXmyjvxpEnBqf3RxukpLFCEc4IOHeMDoYUX/yc5Zu6Q+EaEA
         hxAZiA/bjMjla1VgOTfDnJ2dIPsu6QHHs7b942G/HLY8K3V6Xo/lsoSio5Ar7BFBvIkH
         Ja2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FvYKgjvl+BoD+npfsWs91LcuJa1ic6CllVtPuq6rk7A=;
        b=Ufb2SQus7IoCL+WogmTVJDev5M10v3fgr+/3jpm7CLnc0VxBh90iZTwcLkeL7RWvpj
         ufYomh2rakjZ090xSqEKpuvFGyJfQqj21DWijaXrwrcGbrbr1AxVTq086a6Sb8yNToFG
         ie3heF8iT3f6RJNBtJKJivy68ryyAMQiFkM3tXAj4iNj5VI/i7KxTUJvpcDAVuW8nqjN
         t3fY36ffevQiobyZYh2BeB7rTTn/3T5W6zuNmuS1fmLEBCsRnTw5d0qYS5fHY+ns22mY
         J0eIsoREQM/SxSZ5mQVbGoyR05eIrYo9YrLGEIMWD0KVeHyQP8L8FU7UWZdQDAYET08O
         pjxg==
X-Gm-Message-State: AA6/9RldM+QCarAi3Xu3zEAmvZwtvlWfh/i4kgnHk9ylcbSGoQM2ufwjx+hrIsezd5ONBQ==
X-Received: by 10.66.248.229 with SMTP id yp5mr23385808pac.31.1475350886614;
        Sat, 01 Oct 2016 12:41:26 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id jh3sm36680113pac.16.2016.10.01.12.41.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:41:26 -0700 (PDT)
Date: Sat, 1 Oct 2016 12:41:07 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com
Subject: make menuconfig depends line question
Message-ID: <20161001194106.GB3280@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hello all,

I'm running make menuconfig and trying to make VIDEO_DM365_VPFE [=y]. At
this point it says [=n]. In the depends line, usually each term is
followed by [=n], [=y] or [=m] but there's one term ARCH_DAVINCI_DM365
that doesn't have anything after it... So I don't know what to do with
that. There's one more item in the depends line which [=n], and that
item also has ARCH_DAVINCI_DM365. Everything else is either [=y] or
[=m]. Any ideas?

thanks,
liz

