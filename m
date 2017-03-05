X-GM-THRID: 6393338025823174656
X-Received: by 10.99.109.10 with SMTP id i10mr4515816pgc.152.1488716625421;
        Sun, 05 Mar 2017 04:23:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls9486879otd.11.gmail; Sun, 05 Mar
 2017 04:23:45 -0800 (PST)
X-Received: by 10.13.201.4 with SMTP id l4mr5187038ywd.75.1488716625096;
        Sun, 05 Mar 2017 04:23:45 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si852900pfz.1.2017.03.05.04.23.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 04:23:44 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so10262768pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 04:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eE8crXxTNXsJrBXGvPUcF0nAi7VtICerTEeonnLksHw=;
        b=qSKHgGFmEFUa9ZV8IjjZGTio34+x0eHbCSSSvtI3/3EVFJYdhv2F2569+7wrylpD3h
         m8WK7NP+7IJo0cn97a29ouGJ6s4VbDb21orwS14jAGiskI++UOASdrjR9QNJELndd/2w
         a2kd2OtJedmhMvaP+BHU98qTGdT/446TABFFewivuIEG+FK98EQwtgDjfw/UZHOZzCsh
         bVeyn5NimISAuAYAJUnorGua05WUzelq2cA9zDq6HGDO6oWoYZLqXkbqHymmOcGnqUUT
         AuA33+3DAiS81dSCJzhgacNbqFpyt8G4KVMV9UZ7ANdT9Y7X1eNjZ+KFzobw7VQQjdTQ
         EsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eE8crXxTNXsJrBXGvPUcF0nAi7VtICerTEeonnLksHw=;
        b=RHZJYzfQHxVUmgyZV6nBVlL5D64Fa7HO9J85QETE1HSOOhtpQBlJtp2ddnWR206sMD
         44vxRy4u3iPZxOZggHTktgTNfR0L29z640sGD0xXKi4dTEj2dr8kPpZEwow1Aty4zR0H
         lATx+THCExV2DP14Yiaci566lHz0/hpQSQVesJLHDI3e0qvlEdwUxW8+UrZJ9ZLciDm2
         D1C/LMfjYdo9f42Q0tgb5wDaXsjRKkL6FXXZK9+PDYdtvjueU4z9YNc/63Xhb45P8KKk
         CczZgWjurQji4yhIaw0XHk7X3fTNq8kVZvG3CJYHJvxxxU6QzI72pF3SsrfkYywpZou8
         u60g==
X-Gm-Message-State: AMke39mT19z8S2gA+WAIRf336nx2png95QGrXVP+eZtfeRJKbJViCOOrHKddgJSJtrT/Xw==
X-Received: by 10.99.95.69 with SMTP id t66mr14271655pgb.0.1488716624823;
        Sun, 05 Mar 2017 04:23:44 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([157.49.0.166])
        by smtp.gmail.com with ESMTPSA id x21sm15701258pfa.71.2017.03.05.04.23.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 04:23:44 -0800 (PST)
Date: Sun, 5 Mar 2017 17:53:35 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: bcm2835-audio: match alignment with open
 parenthesis
Message-ID: <cover.1488716526.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch fixes the following checkpatch warning issued on bcm2835-ctl.c and
bcm2835-pcm.c- CHECK: Alignment should match open parenthesis

Aishwarya Pant (2):
  staging: bcm2835-audio: match alignment with open parenthesis
  staging: bcm2835-audio: match alignment with open parenthesis

 .../vc04_services/bcm2835-audio/bcm2835-ctl.c      | 18 ++++-----
 .../vc04_services/bcm2835-audio/bcm2835-pcm.c      | 47 +++++++++++-----------
 2 files changed, 33 insertions(+), 32 deletions(-)

-- 
2.7.4


