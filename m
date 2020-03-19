X-GM-THRID: 6805942899825442816
X-Received: by 2002:a2e:240e:: with SMTP id k14mr2487751ljk.228.1584632066960;
        Thu, 19 Mar 2020 08:34:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8997:: with SMTP id c23ls650702lji.7.gmail; Thu, 19 Mar
 2020 08:34:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvWausr/DAmzitHwDVWCD5TbSQI5NqmarInGh5CPPztnUl0K39fDCkoJWxPmohBhTU1agB7
X-Received: by 2002:a2e:8095:: with SMTP id i21mr2582886ljg.193.1584632065657;
        Thu, 19 Mar 2020 08:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584632065; cv=none;
        d=google.com; s=arc-20160816;
        b=MvRxlKRrqVBtt2YCleQbPOYKKiARYsHWar2bsDEHjEUtOWTrvT6TAAkkMVWIKOi8sI
         cn9hRri4M0Z+w04lEJ2VZoeOh1HY5zQs1XcdwlWX6UPSRTMVwWXFVdBOefJdMMGRzLrq
         ICCvGPn8lwdAP/7N7bfHQXBLvMNCiBgo3NMNAXwwtkrxnjSRcYRAUCct1PIKlA9IUOJd
         f20pYLcjczR1lqYP9EMct7YH6kfAcZes+jc2D93GU1yU1ECDWgwptFhl8OF4UjuLdcYI
         Lz7nJUA0PpJf1uiLoQxmLGz6iwjMe8kG/ETRp/kN/4ctGbtVaGRaamnBbHkoqp1NaHX5
         VNyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date;
        bh=35WU91hs/uXMmGScA1CyNj6hg9HvIbcS+mvihPkx13s=;
        b=bP9w+3jPLLcKpDZNXj1805gkIcix5CPPP706OYW8Bsyaprk2yTtBV/43hXlPRM99e6
         sw03QJ1lxvbeIgEYHP1KcVOuNgQOAvwznRbKL1/QdRBqTUMcN+4u7gkW0fkH4AxPNV7T
         MirtOr/BZAaSjJgDMnJiyglOg1pqaL5JMBbbznp9kAWBdIfSDvmTC9n79xEnsP4GhJFC
         w1NR894uwvadYps8Lw2NDl9wbPxhZRjJC+HMoH11r8gc8dode0fqHu1qPv2SR+6c7y9I
         ajXV1iFVukcyJw1AbPQuMye6yiFcktn0AhbvwVduwks4VW0jirxM4qCIlZsU7sIUlt23
         gm5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id e4si101945ljn.1.2020.03.19.08.34.25
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 08:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 29763 invoked from network); 19 Mar 2020 15:34:24 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 15:34:24 -0000
Date: Thu, 19 Mar 2020 21:04:17 +0530
From: R Veera Kumar <vkor@vkten.in>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: I made a two patches in a set with two different changes; does it
 qulifies
Message-ID: <20200319153412.GA464@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)


Hi,

I made a patchset of two patches.

one patch fixing misspelling in comments.

other fixing long lines in comments.

Does it qualifies as a patchset.
I sent it to Greg.

And he says the subject is not unique and to be named
something better.

Sub1: Correct typos in comments.
Sub2: Correct long lines in comments

I am unable to think of anything more descriptive.

Sub2: Correct long lines in comments to match coding style

Veera

