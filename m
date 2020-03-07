X-GM-THRID: 6801392736188497920
X-Received: by 2002:ac8:607:: with SMTP id d7mr6507334qth.271.1583572648381;
        Sat, 07 Mar 2020 01:17:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2ba4:: with SMTP id e33ls1785753qtd.2.gmail; Sat, 07 Mar
 2020 01:17:27 -0800 (PST)
X-Received: by 2002:ac8:7585:: with SMTP id s5mr6574502qtq.339.1583572646984;
        Sat, 07 Mar 2020 01:17:26 -0800 (PST)
Received: by 2002:a05:620a:23a:0:0:0:0 with SMTP id u26msqkm;
        Sat, 7 Mar 2020 00:59:25 -0800 (PST)
X-Google-Smtp-Source: ADFU+vuYM+38eIIaubULMjyIReGKwbULoFppwsXdmpzPw0lSILRjLCPxRI7PZdRxvw7E6QOWeWL6
X-Received: by 2002:a05:6402:128c:: with SMTP id w12mr7627200edv.368.1583571564685;
        Sat, 07 Mar 2020 00:59:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583571564; cv=none;
        d=google.com; s=arc-20160816;
        b=whnZMFfznfHoEqUGfifbHPz01QFIS26SLUAA0mRvVLME8l8m/TLNtP6eebpS4VLFpC
         Vh1aPTnFQvzN0SNgOYgxnAVqfPJi3np3WuXEM3x9LZ4JV4u+CWDrMpTGn1sWc4jRdAbd
         YeyxpF8fb859wdOtQm8/pdPsXNouDi1L2KmIyr1HO9IitOHi0LBZsQAlWO1n/zNrJlUM
         bu8T67jUowf8qFyNUKCfMb09qlSOb+Ab5/Ix7Zsp4Y3U3ygXpm3K7Fn8rhcjcCb98Grj
         V1a5nwbCP30+aAzhuOXjbNIO/AlpOHRq/ox2YjGLGfgfkXntMT+R8Bw+lxWHezgORShR
         g9Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date;
        bh=B4x+vmFCHvpTx6RGFCPMdkukdnF9js88SKDz+e4B9tY=;
        b=WfdD2qPL0Ml5XGJ+efnjA8w9+RbiC4CsQlXGxHJCdsOq9vkkv2XlYvAt6Z3VwA5j+h
         QY3hPyw7OzlEOwXPpnnMdFGq9JT+j/oL8IgDKcCwN/HRARAtTszPUNLZ0rdVI6Sp1kDA
         DMacGFwJQ6TMMxi3HLlezkyMv1AVOp9Hqc8ZLd2Vq++BUBzcSShxMun7loJl5mdkDxMo
         1nLnquletkK+RGFfW/3JNxshEVfM1d1vXCINsG7EksjAPkzsxSLWkWz9TWfEco4QmKQx
         JWxwONEFm4G4Vfkf7SULJPkVG3L5ku5QhiZZ6xUfWy8fBOJFP/siPPxBhY5n8D7vaRK4
         j6mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id x7si36269ejw.0.2020.03.07.00.59.24
        for <outreachy-kernel@googlegroups.com>;
        Sat, 07 Mar 2020 00:59:24 -0800 (PST)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 32151 invoked from network); 7 Mar 2020 08:59:21 -0000
Received: from unknown (HELO lily) (vkor@vkten.in@117.249.175.53)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 7 Mar 2020 08:59:21 -0000
Date: Sat, 7 Mar 2020 14:29:13 +0530
From: Veera <vkor@vkten.in>
To: outreachy-kernel@googlegroups.com
Subject: My first post to Outreachy-kernel mailing list
Message-ID: <20200307085911.GA5556@lily>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi,

I am R Veera Kumar and am selected as applicant for Outreachy May 2020 round.
This is my first post to the list.

Veera

