X-GM-THRID: 6199177214450204672
X-Received: by 10.112.125.104 with SMTP id mp8mr2482077lbb.20.1443364306826;
        Sun, 27 Sep 2015 07:31:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.202 with SMTP id d10ls231725lah.43.gmail; Sun, 27 Sep
 2015 07:31:43 -0700 (PDT)
X-Received: by 10.112.132.6 with SMTP id oq6mr2383052lbb.1.1443364303454;
        Sun, 27 Sep 2015 07:31:43 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-la0-x22b.google.com (mail-la0-x22b.google.com. [2a00:1450:4010:c03::22b])
        by gmr-mx.google.com with ESMTPS id su6si339994lbb.0.2015.09.27.07.31.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Sep 2015 07:31:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::22b as permitted sender) client-ip=2a00:1450:4010:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-la0-x22b.google.com with SMTP id he4so14441550lac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Sep 2015 07:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=eJBBVI4TqhHgO6E5g9jg6L8n8YzqPAjqLcvtZK170dw=;
        b=ItfYUCVNqJN/osI/n3+HFpmEteQPEjD0cTq2tIyl0ftf4KcFhnwLKTzkUaIin3WwUj
         xUtiX1AR84jI8o2B9YfJ5Q5bnVxgy1qe8Ad4QsgqKxExP+SIl5EYtP2+94NIsGAX6Mnl
         Iz2Ea8t4V4pFM6Am2pU3fTl/flqaHR/JuhJrD4JqWp+/aC/PaxSShRu/1B2N3TSfRyAP
         UbgUftf8LC25B8oksLx4e4JVJlZi71nPFGiEOtLGUYZyqtG1x7tp3uVeC1/5lD8xNk9w
         NTlE9qO/IoKXl2cjEA0goDWv7MlDI3lQOpeaiG9RSCzBL5jahUPadR/MVpszA3onjjzh
         xMMQ==
MIME-Version: 1.0
X-Received: by 10.25.160.133 with SMTP id j127mr2634448lfe.85.1443364303335;
 Sun, 27 Sep 2015 07:31:43 -0700 (PDT)
Received: by 10.25.217.207 with HTTP; Sun, 27 Sep 2015 07:31:43 -0700 (PDT)
In-Reply-To: <1443358394-5464-1-git-send-email-cristina.moraru09@gmail.com>
References: <1443358394-5464-1-git-send-email-cristina.moraru09@gmail.com>
Date: Sun, 27 Sep 2015 17:31:43 +0300
Message-ID: <CAEnQRZCXAz9D9vC4kX-EEXbDvbhpFOn+h_EX25jvBiT3KoQcVw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging:iio/accel: Fixed checkpatch.pl warnings
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Sep 27, 2015 at 3:53 PM, Cristina Moraru
<cristina.moraru09@gmail.com> wrote:
> 'Block comments use a trailing */ on a separate line' Warnings

Hi Cristina,

Please keep this until September, 29 when the official process starts.

thanks,
Daniel.

