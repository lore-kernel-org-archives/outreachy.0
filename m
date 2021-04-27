X-GM-THRID: 6955730517423554560
X-Received: by 2002:a05:6102:f:: with SMTP id j15mr16373876vsp.54.1619507213171;
        Tue, 27 Apr 2021 00:06:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:4405:: with SMTP id m5ls1805000uam.4.gmail; Tue, 27 Apr
 2021 00:06:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxmOAhrNSXkzHFpFHuHZdSa1q/4XceYL8LMyg3y9z3EG8875NkY8rEILkeEPFkovv0P8j9z
X-Received: by 2002:ab0:20d0:: with SMTP id z16mr15790262ual.33.1619507212120;
        Tue, 27 Apr 2021 00:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619507212; cv=none;
        d=google.com; s=arc-20160816;
        b=qehXrknRGhodbOiyYe9NgkjR9JI3VPEQcch3EfIkciqmZkznjyL+/XByuL0iZJlg3q
         074pxrjVkN2puCBzT1S47wYHKZ7H34IPpC2pOZBBZeA/LNtvFv0kiy0Q1SnAuL61x8BW
         yo/2lSW6QHaUr8/HxrHy2pgQOGhyQKV55K1AyWW57DxJMyB8bCjnkXTVoHFbuLhIaem9
         oLqmRzB9F0EruBocLkqBCHnTTfJVQLAy20QlKFRF/ZCFCU1RBpLiegx3NyiS6FbrBP3L
         PbaOUb1fJwj2ZrWeF8KUmYunaxV/4Vkx/maSHIObJd/BNAyUq90hB1QEqVY2z6IqMWtk
         na5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version;
        bh=1cNcSuy3B4Q1e7jXusKthVLq/jXEvzcpZsrQXk7SnZA=;
        b=OyRBc146xQYZ/s19UsuDa7afrWR5hmdKSb/XK4IZqgGQ3jezC//5RiKIvh4RZF/5Yi
         EVScraN9Nns31xLBeL9VdtLaKY0gJOarQAuR2wSJudN7n5dqV7t7SklRv8PH4n72KoDa
         qpj3MLeYjwIWQrDAboOqXgqGsr5vvVBbmCsumINBgd3EuXedO7e1OhGdeJtDoFSBu6q3
         oSKN0tR7DiYwndIfrvTM88QaJGbIdLlcwex5xsPJu7jL7PlmtP4BrwDCnBKCuZmQvl/D
         hDDigOdUYMUUFyUpEHNN9M8DqaQTEx57faddszzpFSObdcy12dTCKG3iVgWtco9Mgi3C
         vV9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.111 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-10.prod.phx3.secureserver.net (p3plsmtpa11-10.prod.phx3.secureserver.net. [68.178.252.111])
        by gmr-mx.google.com with ESMTPS id l9si151761vka.1.2021.04.27.00.06.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 00:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.111 as permitted sender) client-ip=68.178.252.111;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.111 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ua1-f46.google.com ([209.85.222.46])
	by :SMTPAUTH: with ESMTPSA
	id bHo2lD8AFJdzpbHo2lBYkS; Tue, 27 Apr 2021 00:06:51 -0700
X-CMAE-Analysis: v=2.4 cv=Zvgol/3G c=1 sm=1 tr=0 ts=6087b80b
 a=EsE9d9NeOqukZ2QoFS1nhg==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10
 a=zt2ZxsI2_pCrdDcvxLgA:9 a=QEXdDO2ut3YA:10
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ua1-f46.google.com with SMTP id i5so1735269uap.5
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 00:06:50 -0700 (PDT)
X-Gm-Message-State: AOAM530nggelmAKKjJiRjAiTONOxpVmlpsVayoN+J5x/y0AwmynM9cXI
	VgIPjG07OLlLn2L0DUl95vlMsvKNbVL+PtO1TO8=
X-Received: by 2002:ab0:7686:: with SMTP id v6mr2356445uaq.99.1619507210503;
 Tue, 27 Apr 2021 00:06:50 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 27 Apr 2021 09:06:38 +0200
X-Gmail-Original-Message-ID: <CAK-LDbK2r+14JB-m4KuU-vy=DAUnv6gmZkEnRyY7Fx_=guk_Ew@mail.gmail.com>
Message-ID: <CAK-LDbK2r+14JB-m4KuU-vy=DAUnv6gmZkEnRyY7Fx_=guk_Ew@mail.gmail.com>
Subject: Outreachy project looking for more applicants
To: Outreachy <outreachy-kernel@googlegroups.com>
Cc: Vineeth Pillai <Vineeth.Pillai@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4xfEWNeygC75KLD0tRe7yGFAE+XBMsu59JdhAzGvagA9tWZinWrJn+V/rIAcQ3ztgesDPWA6jXj3gqq66+ggQ5wkAgZv4gq+FxMFok4lZIpMx7TdgQAhLx
 QuJHIpD8A7sciqyiIkQ1zRtl/AAHZN9Pe+hV9hiN3t7PWmtfUpWtBxoxLwsFbKvTcEE4qur6A/hr3sCJjjBH0l+xkqqLz+1FJFyV+j+xde6E+QZTq44mCjon

Hi All,

I quickly wanted to mention that while most of our projects have
enough applicants, the following project will still be happy to have
more applicants:

"Create a linux scheduler test suite to understand functionality and
performance of Core Scheduling"

Feel free to contact the mentor - Vineeth and apply for it if that's
something you're interested in.

Thanks!

-- 
Vaishali

