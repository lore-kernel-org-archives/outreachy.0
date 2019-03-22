X-GM-THRID: 6671122210776678400
X-Received: by 2002:a1c:27c4:: with SMTP id n187mr2061706wmn.23.1553241678566;
        Fri, 22 Mar 2019 01:01:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ebcd:: with SMTP id v13ls1787906wrn.14.gmail; Fri, 22
 Mar 2019 01:01:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxuBFpsOCcrqxWXAGneqQ+Fcf26BTEaFgWWTePwV2Ah/Jcn9BBbWiCzHBnJJhp3feJb8/GS
X-Received: by 2002:a5d:6150:: with SMTP id y16mr5411574wrt.13.1553241677841;
        Fri, 22 Mar 2019 01:01:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553241677; cv=none;
        d=google.com; s=arc-20160816;
        b=B6j9vZnmWvxjvfcvWZjD1/lv4RE8FlZMf7byXHEC5MJC+CKt+47TL63mLoE8xFO6ti
         ejBOQxVFdRBIBPE7WjhwtBVLWtQnmuap3VIJJCLEia0TZh++uTdLrsuYtrIdx2Q5c8iB
         iRXXtkKBtADFlJUiSl9lHy1CvbY1yjfJOsB9hRxwrTxbkWdkL9PF6E8nRMW4zC4I6Zj6
         pK2jYm0kTtjzHiPMoT7ASfEUUuQ5hg/r7R+rm6pf0txnS+XA/nzHvXCq/tbeMT/xJ7P1
         boz1snGkYSL983ioszVyXgTGmVemxb7ICClGllbu2QdPk9rqm/fk9aAJ/4OyqSKOBIjs
         g5vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date;
        bh=r10td9Nk/oMLpYy416GzVsVhNxryVon5QH62R90PhWM=;
        b=YaHjaLFRBbBoSfLhf7kpksX/DnSUU9c2l80ucBOzki2HrR+9PZbWUYLSrERIH1v0X0
         ds1bn+DryRp8NdcBXplz7A1pxow3+wOHyZV6EtZ2RFT3xSsZ/gcs/3BaFQAUjCtW4HU8
         9qykPgXzPexvr8sCVoMm5vdh6/nyj/qEZ7LyR6c+Yyd3rexq8otXC0NtEEKTY3KF5zLF
         mEg8+xxSf8KkPnpdY/e3mQwxtcj9N+xcNmJVn53hW1mx1VsjC7R9UDBSOiAKHf/qzsRz
         xB9RCIyEMkEb0Iv96kRQUTYwXzjBTCakekCWsfVk+fQQMOI7h6IUAJg8i4r0v47k5Hr+
         p6Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a9si363891wrp.5.2019.03.22.01.01.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 01:01:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375231005"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 09:01:16 +0100
Date: Fri, 22 Mar 2019 09:01:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: coccinelle project
Message-ID: <alpine.DEB.2.21.1903220900360.2621@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

In case you have not checked the outreachy website recently, I extended
the deadline to the late deadline, ie April 2.

julia

