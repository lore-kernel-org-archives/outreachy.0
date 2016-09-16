X-GM-THRID: 6330756111319171072
X-Received: by 10.129.76.18 with SMTP id z18mr8511838ywa.26.1473994020396;
        Thu, 15 Sep 2016 19:47:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.74 with SMTP id u10ls5034883otd.30.gmail; Thu, 15 Sep
 2016 19:47:00 -0700 (PDT)
X-Received: by 10.237.40.5 with SMTP id r5mr9013511qtd.20.1473994019999;
        Thu, 15 Sep 2016 19:46:59 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id 7si1846863pfw.1.2016.09.15.19.46.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 19:46:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id z123so22611705pfz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 19:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=NjrAeVCqBNWrRrUxcN5kYhI5doTvfUcGlhrHj2xHsQA=;
        b=PDBRRokouKmssaU8k/G9KKfBAYdFk0wtDtm2uyJ4LCZIR/tbIKxV32IGAbfZoA+KXx
         0vzXR5bTkcQV52I2bAjBXFV+VW/IHuKltjD/+7ALu1l+6AJSx/k8HSL/tapR0yzb+157
         3JxJDrPuFdzE5wuPSuLZVrTN1hhp4XZzD+Do0Pm0jAKhlEReX3G+02syTNJRLQzEHH0X
         07pdDr3cA04A3ZKRD+FWRTu2OVqjrLQzyEamAUVPMTdRhWzsTiVIFG9qGK9Ln27XyZbU
         jBBofVs4k41q6C0YxgpmAdXV33UFhfAXeE9YNF1xAGku34mjOrIyxCuvczvgobZYa4Dd
         QB1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NjrAeVCqBNWrRrUxcN5kYhI5doTvfUcGlhrHj2xHsQA=;
        b=XbGkDxzy06mjOqxxKZSymPKZiiUZT+Y6MuYhA59EXD07hT8nPE78zYP+lQyMWqxZ9P
         9YxpG9KKT5JyLpURWXpNedpFMmqi7sqVwf1fCoKcEROR+z/ahFL5mr4Max+qegLv+KDG
         T4+UhJf5ZKnDPkdDPZu+sJrJ3nUuwIZmYWDqbmHTM96AQ/iLf3G/iRJAKmcHGljB0Kjc
         C8B+4tUo0tth+ngCcySSj9Uz/VowThoZmbARftQOG8O9iiw0zs5KSIxRDRGfaWLqbrOq
         MtJTSPbvgojNDm6CiNufJsu0UOpPIcIICw8zTe1if9L8FbO+NxNNI7pmV26Duq4KPmre
         4QYg==
X-Gm-Message-State: AE9vXwNguxcjrEYErmmNdQDF0UsU3EVf4/XyGceH7y7ZRGtwSZ1u10KMbEqPW3jw+LnDNw==
X-Received: by 10.98.82.200 with SMTP id g191mr6355956pfb.84.1473994019791;
        Thu, 15 Sep 2016 19:46:59 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h67sm19190807pfg.32.2016.09.15.19.46.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 19:46:58 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 0/8] fix multiple checkpatch issues
Date: Fri, 16 Sep 2016 08:16:02 +0530
Message-Id: <cover.1473993585.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Fix issues detected using checkpatch.pl

Gargi Sharma (8):
  staging: wlan-ng: add spaces around +
  staging: wlan-ng: add spaces around &
  staging: wlan-ng: add spaces around >>
  staging: wlan-ng: add spaces around |
  staging: wlan-ng: add spaces around <<
  staging: wlan-ng: delete space after a cast
  staging: wlan-ng: add blank line after declaration
  staging: wlan-ng: fix block comment style

 drivers/staging/wlan-ng/hfa384x.h | 251 +++++++++--------
 pace                              | 567 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 707 insertions(+), 111 deletions(-)
 create mode 100644 pace

-- 
2.9.2


