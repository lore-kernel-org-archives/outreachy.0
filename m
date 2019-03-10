X-GM-THRID: 6666842031928639488
X-Received: by 2002:aca:58d6:: with SMTP id m205mr29389242oib.34.1552245121371;
        Sun, 10 Mar 2019 12:12:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:164a:: with SMTP id h10ls4580780otr.7.gmail; Sun,
 10 Mar 2019 12:12:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzC1D0E3SNAAoCyMdFfHazmVVX8pjyze4wx8/kVufOH07VR7rMvYLQ3nOjV+k91lFWaOHw4
X-Received: by 2002:a05:6830:8b:: with SMTP id a11mr16875778oto.33.1552245120892;
        Sun, 10 Mar 2019 12:12:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552245120; cv=none;
        d=google.com; s=arc-20160816;
        b=GeKsH9Iq6dB9RQIL+PUtJJeHh4QPxcRtVlrUuHxOorF9qLudGDyRgIjKrO9tPyIXtB
         0yDy2xsitJ+a3mh2lf7ziBwM9tYEQvJ31OVRsJMlMX1oUmmHguiVzNooswbe/rcn2aoP
         mnOq614+f5knVOEOlmNU7oI4sZuvZolkKHuBFRdERP/WWhGFY9qvg9OLcyFuXX3vxuM0
         qKzL6+RnbqqFH+cDZluL7Xk8J//lS7gJo8kwq/mDw777WVZILJ0XW+hdrS3jX76qzS3t
         QkgRzpCuZGR6Es0Pil/TPTyQuYgKXTQzsdPnD1wB/6ObwMagKK24nf93XndlI60Yw+dj
         sZgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=CAkJ7SvgVDEZiFlJodzTHXfmoBHMr4XhNiy+syQoTmE=;
        b=tctpvnrwZDb7PAfvA/e+3cYteCu5u70e9lx5UcPYYs2+eto264ACxuymxAobBgw7BQ
         qsVq62T8FQ41P5mg0QTiHRzlT9KNFtIpwbR5wQRxRHkfkh90KyYkzH4nZLAAbCy/18w7
         iPcHATOZTf8S39kcEk6207EPTV6EgC6lFPcjkIgfb4kYvAY5Dyl98Y6+QSS4QaHJc7E4
         LkdJp3FV2sw/jOqgjIBE3xqTaEDuxIm9DTBnX4AD1MHv9M5EzVx6vcp8IEMwppaIEjJo
         IRcOgd2mMgd5Rx436L3YEc+d3QUUmdFGjWwazD6HFHhGPD8heB0ybjGbPbjRdnQ6dbiu
         T3Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EeSImnO3;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x132.google.com (mail-it1-x132.google.com. [2607:f8b0:4864:20::132])
        by gmr-mx.google.com with ESMTPS id v129si224089oib.0.2019.03.10.12.12.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 12:12:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) client-ip=2607:f8b0:4864:20::132;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EeSImnO3;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x132.google.com with SMTP id v2so3919390ith.3
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 12:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CAkJ7SvgVDEZiFlJodzTHXfmoBHMr4XhNiy+syQoTmE=;
        b=EeSImnO3TIMU+6EkmVntkUg3f5uDQ2Kdgl8pXANCZrPcL5FOPKbPRAuo/sqV2Xtqrs
         7OzSM/2tlECGG1t1WTiZywbEdZnIiqL8SScvxiSy3bdYKGEpT+eIVKJpj3dgchMCX40H
         iNkNUJ994lIRMiR3E/Exf5tpa2rWkKf6Qq0NfIjVp97PMLc/Sz5Jz63RGIiW3IMjNVHy
         PctYZC66JWpatsP72qrEv1zkoP+9aK0LHRVIFpMccd8YspJ4vnSWjGycc6wiZ3ySEVXe
         PQXBRQbKAVzB1UzyfUJ9KToVwsblI88O24mtP2v9yWUs0wBSqpfGaCDrp0ILaBdBz0BZ
         VtFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CAkJ7SvgVDEZiFlJodzTHXfmoBHMr4XhNiy+syQoTmE=;
        b=kcrf65kJeQdCld0g1Bgq1xJTqr9QPOSMC4AbCIIFa0jP+C+awvk5uEON5oeqV9k50y
         +4Rd4liBuvBw2CaqXuu4iF6cEdcGbQCwyk0+wXEKXtWrEWq3iYERQvHVxJ/E1hKRYnic
         X3oNMy6c82CkFu/4GFmOm1o4K+kYMMk7sXexIcJcSnDaF4v3Ht6/nnGJxeUS6dvCyf9w
         d0WKiD2pCkpSL4hoqVbsiYUUlgi8PHBLk+JI4JZhjKvMpsjZK1kNA2rNmLaUtBzQY5+u
         B56CZpxvRY09Hpi4eDOjRaVUqCgaQiMkuSuFsCsJ+JLNiKoPe6EodSRSS7ZiT3JElaZ3
         8osQ==
X-Gm-Message-State: APjAAAUZKj43pU+u0eXz55GaiJf68Y6tzZgN4zN3ZrTwypMNEht8gbnK
	6wD3aB7MkugdCnQCRr5tM2ryDvcVhg==
X-Received: by 2002:a05:6638:398:: with SMTP id y24mr16490351jap.33.1552245120507;
        Sun, 10 Mar 2019 12:12:00 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:d93d:e73d:b219:4764])
        by smtp.gmail.com with ESMTPSA id y3sm7148239itb.2.2019.03.10.12.11.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 10 Mar 2019 12:12:00 -0700 (PDT)
Date: Sun, 10 Mar 2019 15:11:58 -0400
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Question about Checkpatch.pl errors
Message-ID: <20190310191158.GA25717@branx011-Vostro-430>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

What if you try to fix a checkpatch error message e.g "lines should not 
end in '('" but in doing so you now introduce another warning message 
e.g "lines should not be over 80 characters". Fom what I understand this
is bad as we are trying to reduce warnings/errors not introduce more.
However, what if after you fix the '(' error the line is now say 80-83 
characters long. Is this still bad and should be avoided? Should we just
leave the line the way it was and focus on another error?

If there is another guide in terms of which errors take precedence over
others I'm open to reading it. I just dont want to "fix" what isnt
broken and then make it even more unreadable/unclear.

