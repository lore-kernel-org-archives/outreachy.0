X-GM-THRID: 6332502470301843456
X-Received: by 10.194.46.233 with SMTP id y9mr3630597wjm.3.1474444918795;
        Wed, 21 Sep 2016 01:01:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.149 with SMTP id u143ls1163676lja.27.gmail; Wed, 21 Sep
 2016 01:01:58 -0700 (PDT)
X-Received: by 10.25.74.71 with SMTP id x68mr3600753lfa.6.1474444918072;
        Wed, 21 Sep 2016 01:01:58 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id w79si1813248wmw.0.2016.09.21.01.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 01:01:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id s29so2007432lfg.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 01:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=iX4pUsRUbsoQ+3BbUBKKJ/iIPCslZXSfaA6BAczlZF4=;
        b=VP16CWpFSZv2eYnqsfhw+Rggmon5T2FQya/srdYoRDsA0UN7bAAfIFTwJNwo7UTQgg
         OLsCyvXKqvJIiY/ORfTmteauCqJkoYazzibiKnhEy5lRlMSeibVBFPXC3BFPJF6iDpJ5
         uo7mJ5pnmKqtv4PyG1v+8F1WwHJELbUCDBOQMWN8+LIofzpmQf85Ae8SFE1tkm8u5tMC
         rOQ6IQ63/uSmE0Wb94UTstr9BeaLXR2W774xOTOKZD2fu1mxwnA42BdAufXh94y/pNx5
         75LkNhdpDkK8NN/XJ4J5W0fyJUHe8rop9l6oXM/ukz5sSE615n6Y8uOQcQdkFGV4mkMn
         NEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=iX4pUsRUbsoQ+3BbUBKKJ/iIPCslZXSfaA6BAczlZF4=;
        b=TlRoG3bCpL44/vpo9C/jU79GKF2g2/FwgUdD8XCOoQnGxxwThTdnJBRaqjhjNZhYgr
         KghMbVpPdFTZuZ9Hc+ePzlGKZqe+3UmgPSHiareztKl9cyO+jQeyhGIdGkEyXz2gkQoX
         Vj4xk1zcqJPZQnQ917h0KqPb9MW6APQd9rsLvMXO6d/71N3PDidLGuz6jPXjRIyuFSDz
         3bZQGPLGknRVT6ZOkSI5adNlWeG2l9Ma819wJ02s5PiXAS5K9kXelEE51Zjy5pXdcxOd
         GchpBIlzue5NWxdlFu9rLSH3I2+15daQXP47bQ7Vd7cG/riTPbE94zRqXccitKBv8ir3
         Eksw==
X-Gm-Message-State: AE9vXwOAQ+vJhYzY2nIepZMis7GvbQAfvW7B1NCgZW/r/oSf0Nahs+0P+qpjGVHKY6TDhg4aBV9WfNt8gQym9g==
X-Received: by 10.46.5.140 with SMTP id 134mr6988164ljf.13.1474444917750; Wed,
 21 Sep 2016 01:01:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.208.15 with HTTP; Wed, 21 Sep 2016 01:01:57 -0700 (PDT)
In-Reply-To: <20160920194343.GA5194@d830.WORKGROUP>
References: <20160920194343.GA5194@d830.WORKGROUP>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 21 Sep 2016 11:01:57 +0300
Message-ID: <CAEnQRZCkdXRBhjMfEQZYDenWxn4KdCwL+tmFwaMabEJZLerWDg@mail.gmail.com>
Subject: Re: [Outreachy kernel] IIO Coding Task Added
To: Alison Schofield <amsfield22@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 20, 2016 at 10:43 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> An IIO Coding Task has been added to the IIO Task Page.
> https://kernelnewbies.org/IIO_tasks
>
> So now you have 2 types of IIO Tasks:
>
> 1) Experimenting with the IIO Subsystem
>    Do these independently and submit to Daniel & Alison.
>
> 2) Coding Tasks
>    It's a single task but it applies to multiple drivers. You will
>    find your driver and claim it on the tasks page before working on
>    your patch.  See the description for the details.

I added one more IIO coding task suggested by Lars-Peter.

It's about using sparse to detect endianness issues.
Please read the documentation carefully and don't
hesitate to ask questions :).

Daniel.

