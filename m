X-GM-THRID: 6332043627755208704
X-Received: by 10.98.78.146 with SMTP id c140mr4357238pfb.19.1474297675624;
        Mon, 19 Sep 2016 08:07:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.201.21 with SMTP id z21ls1175229iof.15.gmail; Mon, 19 Sep
 2016 08:07:53 -0700 (PDT)
X-Received: by 10.107.131.35 with SMTP id f35mr383370iod.16.1474297673697;
        Mon, 19 Sep 2016 08:07:53 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z4si4933528pam.0.2016.09.19.08.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 08:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so7128647pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 08:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=gvHi/l+Bi+oouNWpDnalN1vAnXi3dZCnS69547NgPzk=;
        b=qK6i+F1eE60c1vNI6YoSNnBrjl4euX5EgxRQ6gVKpZUtVzwDxZ40cLPxb2gFVsy1wQ
         S9h7Z1Jel4jHIzt/g6zT0Z9AtJIELP97aLAu7HVMD4147SlH0x1QgzUe6ZEZJQuaXiUa
         fYO+7x8o3Sx0V4zP4JoleeHcNT1kd4PAaBPJxqmhajr/JelrokIVN5bkZo/H2/uHEEGn
         EnSJDIzF0JtnR7pt3Ln/v/HL5AXaywvlZFFeMXlSFkI2IhdmqI/JQvi3S67GtQCKfjeL
         Qx72pOXe/73o9EGX//4wQkvkElhSCq3oWOkSE4BHQcKt2IP9iSQSRSe32Unrbaao0dDs
         SyrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gvHi/l+Bi+oouNWpDnalN1vAnXi3dZCnS69547NgPzk=;
        b=Q43TvjsoksbKSqDFmOWNIN0RsCt/7I5z5QMPixtfN40CGWZOHAjXtYMyMrEOhifeUM
         hW3KqbxkG0R3GCJxsAe47/sTIf7d6L4RGpsFr+fDLM0sAh74OTb5kOmdMhG3w0djBs1e
         KP2sfRN6QPvVQCYRx0Dfw9mEG5GKkrYt9D/B5f4lu+zeRKZtiooQMLtavzlaSpEkN0EC
         EWvTnEX+U5gqj+8bIp0q74vNcNYBTEydOkC4rX1oYaQtPgjqFlzDJGj/itviMSCL0wf7
         DuVvGdAvcfhtZd0m0sDPZQFycelw1dWEXy/hzQ6t81ksO1ArZz+Gv2ojON39l8HBZPsU
         1/2w==
X-Gm-Message-State: AE9vXwMI/7i8LqiTRg4Vcb2uJH8rh49PDhbJHmNOwrNu5CPxlQdSh8HufSoOSFiTYySOIg==
X-Received: by 10.66.132.81 with SMTP id os17mr47934992pab.106.1474297673446;
        Mon, 19 Sep 2016 08:07:53 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.144.220])
        by smtp.gmail.com with ESMTPSA id y1sm1562215pfd.90.2016.09.19.08.07.45
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 08:07:52 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 19 Sep 2016 20:37:37 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 0/2] Staging: wilc1000: Code cleanup
Date: Mon, 19 Sep 2016 20:37:34 +0530
Message-Id: <1474297656-2989-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset declares some functions as static and remove their 
declaration from headers. Also, drop prototypes of some already
static functions.

Changes in v2:
- Combine both the patches into a patchset.
- Rebuild patch 2/2.
- Correct subject and commit message of patch 1/2.

Changes in v3:
- Sending v3 as "v2" was not prefixed in subject line.

Bhumika Goyal (2):
  Staging: wilc1000: Drop static function prototypes
  Staging: wilc1000: Make functions wilc_mac_{open/close} static

 drivers/staging/wilc1000/linux_wlan.c             | 30 ++++++++++-------------
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  3 ---
 drivers/staging/wilc1000/wilc_wlan.h              |  3 ---
 3 files changed, 13 insertions(+), 23 deletions(-)

-- 
1.9.1


