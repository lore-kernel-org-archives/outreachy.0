X-GM-THRID: 6394506346185621504
X-Received: by 10.157.31.42 with SMTP id x39mr7760715otd.111.1488837028511;
        Mon, 06 Mar 2017 13:50:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.204 with SMTP id h195ls2846822ioe.3.gmail; Mon, 06 Mar
 2017 13:50:27 -0800 (PST)
X-Received: by 10.99.152.85 with SMTP id l21mr7818698pgo.66.1488837027559;
        Mon, 06 Mar 2017 13:50:27 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x22a.google.com (mail-io0-x22a.google.com. [2607:f8b0:4001:c06::22a])
        by gmr-mx.google.com with ESMTPS id 13si2641094iti.0.2017.03.06.13.50.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 13:50:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) client-ip=2607:f8b0:4001:c06::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22a.google.com with SMTP id l7so123394093ioe.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 13:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=TMjd9UN0ngUJDUEFZOHTNr3ZWua34AJAihfA96kaemo=;
        b=XmP/BIJZsOuRr2S1MeEpyvqLlVW731aQXHJPni5jg9OBUe91wZSeXjNiHkj0ddia8c
         2YZLTbMDhrZXB0SORVT/yEHJ3iiGIaagmbASYL/T0lmqDI1oRrnyH3BLEGo7EZvfKUGn
         39/cmXkoj5hVZ3p7exuPRx1phett4OUSY5ndKD2iF1yWT+1J+lkmhMYHuqxMBuTeuWYN
         0uKbFn6q5mRtb4ohrSZ2mWd1gY4P/8/Fy/4J8ljUXtfuHNyUeRqc8saJonTI0vVVF/dz
         u+fmoKwWnnQxOtJXBwkNaRAwnhXHb4OgMwLUZL7idpfXxmHzD16qGN00m1V7qs+IkA3Y
         OhYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=TMjd9UN0ngUJDUEFZOHTNr3ZWua34AJAihfA96kaemo=;
        b=j1OfjFwlfhFCo8mSE9oO1ruProkbD/Q0D2mXK9iMym5ZvOCXPFfOs9u4KjvwSvVEtW
         6XV+4qGnjuygRqTShmmnjNyYJ25DDq0dRPKjRNVKe/JleKu9wDseSLv151bs6q7x596y
         ZGBWq5ugkgQUeItduMcbGKGWcAMEOl9eeLnwxLyJRq5A0zzhOJDjI7mwbs75oScj85Vn
         fHO/ozHi8WTwguc7hUNMPOCJyrNrFOAhcHlwmmlVnyJOwpxI4p2go86DNUXW2UO0Eneb
         9eHNV4i0cPd2JUvBAyFXv696fDp9bkfvrViUK0kj19dTAOJEYRkfyOiPTteVtZfZZXVR
         MCDw==
X-Gm-Message-State: AMke39n9e8FE0dEpfs5WvnqooS2Os5NDZUJ8SEDcLegJ5/oR7fJQyoyNQ7T094Dv4a/8vMf2p2VZHrY8t/XILw==
X-Received: by 10.107.8.90 with SMTP id 87mr18677270ioi.111.1488837027002;
 Mon, 06 Mar 2017 13:50:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Mon, 6 Mar 2017 13:49:56 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 7 Mar 2017 03:19:56 +0530
Message-ID: <CAOCi2DFHxu4d3S=DgsE=MBrhxYoJgQBVLzv2dLbzxaAi59+Hrg@mail.gmail.com>
Subject: iptables-translate task for Netfilter
To: outreachy-kernel@googlegroups.com
Cc: pablo@netfilter.org
Content-Type: text/plain; charset=UTF-8

Hi,

I was trying to work on the iptables-translate task for nft. Here are
a few problems I ran into:
1. How does one find what needs to be translated and isn't already
supported? A bunch of files
 have the xlate function, and how does one find out what functionality
isn't supported yet?
2. If a file does not contain an xlate function, and one wants to add
it, how to figure what will be
the translation from the iptables command to the nft command?
For example, this iptables command:
iptables-translate -A OUTPUT -m connbytes --connbytes 200 \
  --connbytes-dir original --connbytes-mode packets

translates to this:
  nft add rule ip filter OUTPUT ct original packets ge 200 counter

How does one find out that connbytes translates to ct for nft?

Thanks,
Gargi

