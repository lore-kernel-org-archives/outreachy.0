X-GM-THRID: 6669398485379317760
X-Received: by 2002:a63:f316:: with SMTP id l22mr5160508pgh.13.1552840342498;
        Sun, 17 Mar 2019 09:32:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8d4b:: with SMTP id s11ls2577144pfe.8.gmail; Sun, 17 Mar
 2019 09:32:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxKN53wmoYFHOnbxstHNzbt0HGYHTJaSg8O6ylQU6pQ+iQsKPzJew+rm6b6qOmRHpeSnFv+
X-Received: by 2002:aa7:804a:: with SMTP id y10mr5232104pfm.146.1552840341679;
        Sun, 17 Mar 2019 09:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552840341; cv=none;
        d=google.com; s=arc-20160816;
        b=Osi05x8MDbO26/k0au4RUbUBj/Zhv5hzWS33g/jrIrnyNatc0UBEWjllF3gwUOB3x4
         +EESR/hYT4zFwOMopm6Dho2aC+L/PD+9naCji+P/QGy9Ep5GcLe4M9wgZfzmonz4Gjts
         VxTSoM9KR0Pkx9MQpqriV5o2a7lrtkgR4XVc0d34HdrNU9aSsg6Cfj2NLbqYcV9a6Uiv
         FNTJ3SqIeKHNlJ4uZrOhAr7IIs3pre4Aj8FhSAisnvIuZ2RTHUFJSKt0hyR7SfgagQBg
         5JaO3XXBFuK9nHWsdQxxwlwHGxGjvsya28A3CEH+YKIwI1yK1WoAI/b1la2DoePkofsZ
         K1vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=s+mwAOc7ZlXJn/MWTqaJkYgODE2w3tq2SjgBmThIcMw=;
        b=vdQMEK9HanS4/QTj73wfBuwL9JNWmm6BaCIkmEDCEM/X5mUe3YMn0t6a54YswuVnbn
         WBjc74Z9fgCsJD6yz6hefNwiaHs04wQS2TIR/WJJIveFRw8D3sx7wUeu4EkIM6Pwkqqq
         GlKAouab9IduDYZCWL77XsIOyNXO9dAip1ID36Kb0dbOImiNYqH0j6lpf/nK2IVjx51P
         m6NHCOxPyjgQvu9wqbRS+w5BkQ3DwSnUQxny+n+HdollyGDWBf3foisb8vrM0j+JutPD
         ujJ1NB15cYxl1dh/Zyn8I493h9wvgZTYLMn6lCASA1hH9YsQW4RuguxWGVxS+KFizoBN
         zgCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e/pP+Sui";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id c12si417531pfc.2.2019.03.17.09.32.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 09:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e/pP+Sui";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x332.google.com with SMTP id u15so2298775otq.10
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 09:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=s+mwAOc7ZlXJn/MWTqaJkYgODE2w3tq2SjgBmThIcMw=;
        b=e/pP+SuiSxZrYBP3it/wBRinAQ7HZea2gmg+ldiYI+2yg5DzDK80jagYQUQmC2p/H7
         I959y18R2uAdMOH8oiixddYM3K2BEBlJCHafFm62SBllmyfyckARLckjqB4IDqsMtyio
         wqD+vPurkTwgD63RGQ4xCmhOR31heXNwGIcBgNPNLZK4Unt2fPZF90NTPFKFtI7wSrkU
         59Hq03uZ9JC2cTurX56eyeHmZqD2E/amfQdSzEYEAcDIK5S4G52uARVKgHTdN/9ovP3y
         v4yl3F3+kb6szqv00Xo1VEsTs/Gl/Oy20URjgoAoBlzsZvvT5kaK8ReGqCO8oUr3/eZ5
         jJFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=s+mwAOc7ZlXJn/MWTqaJkYgODE2w3tq2SjgBmThIcMw=;
        b=sKGWUEZ+z9lg1UJ6qh+ZbOsnfuH4RMBXbos2J3AdBo9piw2Z3hTTC3lULdNpFO/1/6
         KsbbskJC3J9WzcP9EIHlH8BG4ObohKwFdeVAPTC2YN7I8me4muOv//Yq3DcrMMkRJ1wZ
         ShExS5PzPUOBUPW1GAGi6ZRsYoB4BbiDAOvqhyPgARNivpWmDCZZUYuY05RPEKhBmx+i
         eR+XpxVLr2412S/4HbcprOIwu/JP94XVjQu3jhnUO7HQDFanW+0kr9JDiw17nvlAWt3O
         PZIrAK14WWBIdwl82lOffSA0KDWHMuCeAZCxHT+4BcPKanBJBlO/cEJFmGVdGqPqibel
         cI4A==
X-Gm-Message-State: APjAAAVkZhIEyPpIr60ZdIPYKA6iRan7b6XlTIK65KWLBAuzfaZg2rNe
	AJTzKbxF+XYWIY9cLhB4OBH4wMDyCTWMf+XOhmNKWlp4IOc=
X-Received: by 2002:a9d:6e8e:: with SMTP id a14mr3798615otr.46.1552840340918;
 Sun, 17 Mar 2019 09:32:20 -0700 (PDT)
MIME-Version: 1.0
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Sun, 17 Mar 2019 22:02:10 +0530
Message-ID: <CAB0Mk-NUh5Ye6rnPygQeS8f+EG_RNbPPAzHzBpDmVh2i-TcQnQ@mail.gmail.com>
Subject: Additional information regarding community specific questions
To: outreachy-kernel@googlegroups.com, 
	Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Content-Type: text/plain; charset="UTF-8"

Hi Vaishali,

I'm applying for outreachy projects. In the application i find
"Community-specific Questions:" . Please let me know what needs to be
filled here.

Thanks & Regards,
Bhanusree Pola.

