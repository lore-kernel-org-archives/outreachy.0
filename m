X-GM-THRID: 6342613322330800128
X-Received: by 10.36.118.10 with SMTP id z10mr3786233itb.17.1476754742720;
        Mon, 17 Oct 2016 18:39:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.69 with SMTP id d63ls4125579otb.48.gmail; Mon, 17 Oct
 2016 18:39:02 -0700 (PDT)
X-Received: by 10.237.59.252 with SMTP id s57mr152583qte.82.1476754742263;
        Mon, 17 Oct 2016 18:39:02 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x235.google.com (mail-yb0-x235.google.com. [2607:f8b0:4002:c09::235])
        by gmr-mx.google.com with ESMTPS id t192si805936ywg.4.2016.10.17.18.39.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 18:39:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::235 as permitted sender) client-ip=2607:f8b0:4002:c09::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::235 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x235.google.com with SMTP id 184so71998296yby.2
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 18:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=NoDgDbsLVcOGhu9oTrfWSE0/OAVcKlgWdLmAIWF7k98=;
        b=ESd9/1wfCaEbEyGl6nzPeQzgsfR0da6KG0xRsPiNAeLnsnULUQR6hiaNTVcn81v+Ng
         lINmIiR1hycpa1FAIx7CVmyF4EaSxOKpic1ipDyN2koRvsrgHTWYHQSXh4t/GjvBk36d
         fXa5BRHRfHxakvS94HnV8FNn6x706MoIeI9w0Ri6wZ3Ydqx6Ct0sepFq1c7dU+Q7OG9/
         +iafL6xIVuh/BRXVruWLcUYvGFdzfUFeVrgVnabgXepiUIZ/zpSPNvRVfzfjQY3Iytf9
         Zog4X20JoPEp3Ens3Z2EKYjyRRieTWnNvpUDnrfyfvCgbKRBljRtb7YYqKkc2NBaJp9o
         CMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NoDgDbsLVcOGhu9oTrfWSE0/OAVcKlgWdLmAIWF7k98=;
        b=g/HC2O48NnSB7Ye/Xf1ZsM1DvHPm2P2xacB0zGCZZQlfu7EbZD8ojH2hnik2Af4Zf8
         rywG/Aw64uODdXgA3ezJqlu7DkRSmbQLpfOWgDA5p/Ife40dfrfVNQF4Wa5yDZdMPzvz
         O/MKHO3D2eGdyKIVGIEPu2c3JFaPW5k2fcxblOJNGxRQvpuKLeNyGbu1PEw1GdZ5DxOS
         kIPTSK0bNyDtKSXMwuNxBtQjlnWHL27rgG2MEVKz4mL1xYlikGZu7u+6khMLoHlKaoZq
         p5GGsR/gHYh5FkQUVCpdootq1nSSsluT4Ofm+Jv7ZR9ESyClMjoHU8TDt7yNega9SUWm
         Rbgg==
X-Gm-Message-State: AA6/9RmO8HoIsLlBN8a1VgOj+IDELqnEIyUTHVSsALdkQuZkOTKtNuZFC79GKkJ2dKfMEFvAvjhEoK9Al5P2Cg==
X-Received: by 10.37.108.66 with SMTP id h63mr420351ybc.50.1476754741950; Mon,
 17 Oct 2016 18:39:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Mon, 17 Oct 2016 18:38:21 -0700 (PDT)
From: sayli karnik <karniksayli1995@gmail.com>
Date: Tue, 18 Oct 2016 07:08:21 +0530
Message-ID: <CAKG5xWgyraBAoALGhc5846-dteNeON_7ELmCvsh1_+h4TAganA@mail.gmail.com>
Subject: radix tree
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello,

I had mailed my radix tree small tasks to the mentors a few days back.
Did I have to send it on the mailing list?

thanks,
sayli

