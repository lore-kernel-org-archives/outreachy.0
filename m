X-GM-THRID: 6201888067640360960
X-Received: by 10.180.208.7 with SMTP id ma7mr1452734wic.5.1443989590800;
        Sun, 04 Oct 2015 13:13:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.38 with SMTP id fl6ls699758wib.35.canary; Sun, 04 Oct
 2015 13:13:10 -0700 (PDT)
X-Received: by 10.194.6.170 with SMTP id c10mr4560419wja.7.1443989590464;
        Sun, 04 Oct 2015 13:13:10 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id o5si239976wib.0.2015.10.04.13.13.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 13:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id lk2so94010130wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 13:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mimdasusGea0lE6Kd4bDMuSk3+pxwqUwDXsOQTplnZ0=;
        b=uZI6UhYWjUt6ew/FZ0j+6G+fVf6yJewpPtedf4mQd3mjLiVg7aD93v3ElW9ZfvVYH7
         ps7ohXXiFGLTl2aT2dI+wzfKEkufpqegxT5devdfgmvugSMEvTBj9UPuxNPMYhypKsqh
         B7oLEUsUXKendJ3XlDDqREnmw0CMoZg2IC9hVPUKLalbBdBDBDGQIO4mSrhoE9vu+RJ1
         Ga5KZMZw+gAilm9xKNZvF+RwCE8h7CzS7IX+PWkZFoluOtzdVU7Pk/UJsm6rDwqJRFVA
         uO9Y5fuw3Fr1AREApmUCix5jDv+q9SN0w64S5KxvEmSLl9hJkU5OrgWqiLrg2nXewtiI
         pogg==
X-Received: by 10.180.39.242 with SMTP id s18mr7238802wik.79.1443989590349;
        Sun, 04 Oct 2015 13:13:10 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id m9sm10885079wib.13.2015.10.04.13.13.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 13:13:09 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/4] Do not DMA on the stack
Date: Sun,  4 Oct 2015 22:13:02 +0200
Message-Id: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix error "doing DMA on the stack" by using kzalloc for buffer
allocation in rtl8192u/r8192U_core.c in the following functions:
	write_nic_byte_E()
	write_nic_byte()
	write_nic_word()
	write_nic_dword()
Issue found by smatch.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (4):
  Staging: rtl8192u: Do not DMA on the stack in write_nic_byte_E()
  Staging: rtl8192u: Do not DMA on the stack in write_nic_byte()
  Staging: rtl8192u: Do not DMA on the stack in write_nic_word()
  Staging: rtl8192u: Do not DMA on the stack in write_nic_dword()

 drivers/staging/rtl8192u/r8192U_core.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

-- 
1.9.1


