X-GM-THRID: 6333856383134334976
X-Received: by 10.194.119.196 with SMTP id kw4mr639601wjb.1.1474715858100;
        Sat, 24 Sep 2016 04:17:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.215 with SMTP id 206ls1448697ljj.7.gmail; Sat, 24 Sep
 2016 04:17:37 -0700 (PDT)
X-Received: by 10.25.155.78 with SMTP id d75mr583563lfe.5.1474715857369;
        Sat, 24 Sep 2016 04:17:37 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lf0-x234.google.com (mail-lf0-x234.google.com. [2a00:1450:4010:c07::234])
        by gmr-mx.google.com with ESMTPS id a126si38078wmd.1.2016.09.24.04.17.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 04:17:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) client-ip=2a00:1450:4010:c07::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x234.google.com with SMTP id b71so83266720lfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 04:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=6wiH+pOrSSiuFpOguFpnrRCqS3cPqtS9VSdtO3ta+6Y=;
        b=v1oUBrsybk3LcoI4jNWtW5KKZ/9YAFB5X8AJPMutxdokyGIJ1sWSvnOAlB78p49Myd
         e13Ld/XKEqbG5uw6TowYUoCHxFp6oOSscfBYwMJE75Vs5gDt1fputvjh9kEFr+uKdpOP
         OE46+DUSRxUQnuWPcElmJfQnMaqSoOg7YeQrK9bi1WG8VgHwi6M55NBsjKZiamPcKZNp
         FBtDOd/il36mptpUqdw1WJunR+60dWQ57XVkh+o9Yaei/biZlih/EFUatYVr0nKVJi9w
         J5j3nzbBQNIEbcuqvMJz34RPipbQgCG154dsrDoj/QB27K7SErOnxR4olOf/EBf3ENA/
         xOng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6wiH+pOrSSiuFpOguFpnrRCqS3cPqtS9VSdtO3ta+6Y=;
        b=hQIvcJuavhM0WbOyXVtx/haNEZrlz8U1WGKM4nKsMICyfSUgvq9X5Pj7hl7VGZhF5K
         jIdQM5Rf/NIJAUCPft9xRPTQMlwzYuTdb5M36u0jO4BgrdVlBqw3wsPMYBVvMgywHYPx
         wnxlXi/qXuLaekkraOgZW8GKZXZq1vA2MNbvZfaz7PYOedE3bHkbQw6/L0KPiu++v8qV
         IOkaaRJezqYPzRAmX1IBzMxot9VyaDpFCd3DAylQzEBworwNCdvMJ3UMzm3pRRNdxE2A
         QCDhGjE85CRv4ZMRSrX3v+00Nlt2Q69Zuvyq33aN3F17a2X5PulXeW2NdDCH37U4CvgT
         vEzQ==
X-Gm-Message-State: AE9vXwMjOfpOzU0wo0uxhpdlIFkLkfDGZ2s12BcV73QU91HxhQafSaKkUu/GYFAgDUF3FFlOGGaBPKHZXxc/NA==
X-Received: by 10.46.5.130 with SMTP id 124mr4513171ljf.45.1474715856917; Sat,
 24 Sep 2016 04:17:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.208.15 with HTTP; Sat, 24 Sep 2016 04:17:36 -0700 (PDT)
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sat, 24 Sep 2016 14:17:36 +0300
Message-ID: <CAEnQRZCbJcEStPkwbH0J=inaBqZG10Sd57zh9qoZvYd11FaMrQ@mail.gmail.com>
Subject: IIO tasks
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hi,

This is for everyone interested in IIO driver project.

You can work on the non-coding tasks from here [1]
in parallel with cleanup patches.

Anyhow, for the coding tasks at the bottom you should
first get accepted at least 10 cleanup patches.

thanks,
Daniel.


[1] https://kernelnewbies.org/IIO_tasks

