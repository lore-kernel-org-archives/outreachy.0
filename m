X-GM-THRID: 6330303746353922048
X-Received: by 10.98.24.146 with SMTP id 140mr4461546pfy.3.1473943217589;
        Thu, 15 Sep 2016 05:40:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.195 with SMTP id n64ls1055812ioi.36.gmail; Thu, 15 Sep
 2016 05:40:16 -0700 (PDT)
X-Received: by 10.107.53.135 with SMTP id k7mr6554682ioo.13.1473943216046;
        Thu, 15 Sep 2016 05:40:16 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h124si2620280pfe.0.2016.09.15.05.40.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:40:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 21so760868pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=66najHnuH6t5TcA1T/N/eWTDX0G92VtTra2K2gs6XzE=;
        b=v5r41lIJ0wWa4kOCbGlCNPSeljSdcwfM+NsWSbt4Vq8t52fEVFVHIHOAXDCcIx3DIO
         504xMGd9Lnb6g1up5QIfcu1QjiKFMMPZf7qTuRQn29XxUCX43nISsRG9ncX7MwlfReQp
         AxY8ZJ/jdU/fL81Z0XDygcjdQq0waueVO0U0Hke4iSrj1zzRufEiYAQXDVC+XOhVIWXd
         gCD+600EXe6mL9jyNaF53JOZpG4CA6TmlhJLRyjRlu0cpf4PBodgvPfnhMxp7AcDRjQv
         KgpKx4vaIVpsrNjV+aQvtQwgbIOEDJXbs/Sg8EzHbbbGYtbvm5oNKeX3VoABfnM29PYQ
         mD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=66najHnuH6t5TcA1T/N/eWTDX0G92VtTra2K2gs6XzE=;
        b=jOjsoelVbpx/WbvP+7cdyw5VH/eBKnZJramk7dSNasAUT/FUPSJk3+pFWFvaxPqT7Z
         h2f09SBtfZkvJh7MhYIO/n0HGZ+KIoJpCBqUNpuhzXnfTbMQNuMn9Nlladsht8whjrBm
         41LOFspPX24X83YS/WEiTzOfLfBWQ4tlMnJSS5PY5cqT8QAQOZaJNB5kiCJilOF4sUlS
         M12syw3D0zj5ig2KffMw/nYbUl+PxE3kKeKfQ4xFI3UZ6GEX5lPKgh1SGlbHm2WBMGzt
         V2ihnSZxQM4CRgb63plyR8fNw361dxhMV2sqdXYpXxuR3kWSMZcdTicwGz8Nyf1l6g9n
         QmJg==
X-Gm-Message-State: AE9vXwOYEqmyApXsWha8T03Ob52sAxqcx1/0xURMvguDR3zhSqzNVPhzpolLfWq1biIHBA==
X-Received: by 10.98.55.1 with SMTP id e1mr14182932pfa.58.1473943215859;
        Thu, 15 Sep 2016 05:40:15 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h123sm45162289pfe.69.2016.09.15.05.40.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 05:40:15 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4 0/6] cleanup of xgifb/vb_setmode.c
Date: Thu, 15 Sep 2016 18:09:13 +0530
Message-Id: <cover.1473942527.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

The following patchset contains patches to make the code more readable.
This patchset fixes various issues that come up in the checkpatch in 
patch 1, 3, 4 and 5. Patches 2 and 6 are based on Julia's suggestion 
when a one patch was sent fixing the checkpatch issue of 
moving && operator to previous line.

---
Changes since v3:
	fix commit messages in patches 2, 3 and 5 which exceeded 80
	characters. Also, reworded patch 6 commit to explain the
	solution more clearly. 

Changes since v2:
	reword commit messages in all patches to explain the solution 
	and using imperative form for the commit subject.

Changes since v1:
	made a patchset instead of a patch to fix various readability
	issues in the code.

Gargi Sharma (6):
  staging: xgifb: move AND operator for logical continuation
  staging: xgifb: remove unnecessary parentheses
  staging: xgifb: remove blank line after open brace
  staging: xgifb: add spaces around |
  staging: xgifb: remove blank line before closing brace
  staging: xgifb: fix alignment for if arguments

 drivers/staging/xgifb/vb_setmode.c | 48 ++++++++++++++------------------------
 1 file changed, 17 insertions(+), 31 deletions(-)

-- 
2.9.2


