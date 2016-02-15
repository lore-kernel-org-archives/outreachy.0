X-GM-THRID: 6251650812318056448
X-Received: by 10.67.5.233 with SMTP id cp9mr17495118pad.43.1455575882669;
        Mon, 15 Feb 2016 14:38:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.75 with SMTP id b69ls2849105qgf.53.gmail; Mon, 15 Feb
 2016 14:38:01 -0800 (PST)
X-Received: by 10.13.238.130 with SMTP id x124mr19457101ywe.53.1455575881848;
        Mon, 15 Feb 2016 14:38:01 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-ig0-x22c.google.com (mail-ig0-x22c.google.com. [2607:f8b0:4001:c05::22c])
        by gmr-mx.google.com with ESMTPS id iq8si1098374igb.0.2016.02.15.14.38.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 14:38:01 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) client-ip=2607:f8b0:4001:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22c.google.com with SMTP id y8so84493694igp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 14:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type
         :content-transfer-encoding;
        bh=xAkloABotw4v5StxZsKVHKaS+GWvAf4oOtAB4xhs8t8=;
        b=KP7DrVxQFW92adIVBPZ5+u+WxAOz1V8VxAlODPXcHmOxMDOPvl6VZHSxpxSQCPNT4q
         xmU/7I4iANlTo8HKO9cxv1YtmOC2E7Pn+XUR30QiKBQrlSY5wU9iprfH0aL9Yxj+cXQk
         6xKWpa/gxm0VQHv2xY8zPhTwhzDeFf8CEvXfh+fUdpMDvwfjWMlNNjCCTpxJL2ihkaL8
         lhj5PvpI65YRcJwvImezcCzslwf+AMEnS6zK+J9JkDtft48X2MDL8HDfzPGrQHXRBjkv
         1y5lqMjStqGGdhaRJ4wqSEaoan35WjN3reOp5WZpZlBmmyUj+RsCWA0BVF8NE/J1NUov
         Ncsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type:content-transfer-encoding;
        bh=xAkloABotw4v5StxZsKVHKaS+GWvAf4oOtAB4xhs8t8=;
        b=Mq+ZGwqMW6LgifKQb0zcKB46ub/3msuEUADA/INV8bMUg7D3irYy9IiB7om5GLlbZc
         TVkCCS59FBzqwG2ftTEHrIobx6BjlcS+O16AVwL23P/nAJZchbBxkJi2xo4M7diB5+07
         lqVN+ZIsN0iKw6N2tJCs3rGYfbduAtVMLw28vuogLJlDWHyr2t291PZasMnUhjvOwMWo
         6tiFnGaq39yAC0GTem8ec1nUuBm9/oB2CMJg/tdbplnZyi2dF029BO7KutkKHCY0fLB5
         Cyr57HDrw0GIvqryUvgIJ9xE71xL42OcfDgMaU0gYpuWdODV1j5mgLnS3B40bjYVdy5U
         4gBw==
X-Gm-Message-State: AG10YOSH1BJFGoIHbCRPSgA3ssI6THb0Kp39juAVBE9AdOL7GdeUvfUJ8984+PPBPweTf+F2zz8vdQOpbH9LcQ==
X-Received: by 10.50.155.5 with SMTP id vs5mr15083897igb.83.1455575881698;
 Mon, 15 Feb 2016 14:38:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.164.6 with HTTP; Mon, 15 Feb 2016 14:37:42 -0800 (PST)
From: =?UTF-8?Q?Tha=C3=ADssa_Falbo?= <thaissa.falbo@gmail.com>
Date: Mon, 15 Feb 2016 20:37:42 -0200
Message-ID: <CAKqL7ZVTpsw+=cNGUeMkwvxq3f1nkkXh=qyGpWHwDLiTWYwPRA@mail.gmail.com>
Subject: Questions about the Application Process
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have some questions about the application process.

I already sent some patches, but haven't emailed any mentor yet.
Should I have already done it?
I liked 3 of the projects and don't know which one I'd like to choose.
Should I email the 3 of them?

Also, about the OPW application, I can't find the application link for
round 12 on their website.
I only found for round 11
(https://outreachy.gnome.org/?q=3Dprogram_home&prg=3D5). Where could I
find the application link for round 12?



Thank you!

Tha=C3=ADssa Falbo

