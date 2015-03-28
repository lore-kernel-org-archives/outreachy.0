X-GM-THRID: 10173002285056
X-Received: by 10.66.161.36 with SMTP id xp4mr26957075pab.36.1427542987562;
        Sat, 28 Mar 2015 04:43:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.16 with SMTP id b16ls1721248qga.50.gmail; Sat, 28 Mar
 2015 04:43:07 -0700 (PDT)
X-Received: by 10.236.70.67 with SMTP id o43mr27082391yhd.40.1427542987321;
        Sat, 28 Mar 2015 04:43:07 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id dv5si166508pbb.0.2015.03.28.04.43.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 04:43:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdcp1 with SMTP id p1so31492104pdc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 04:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=ph1/X+RTAR5K5ByWfZ+2bPMalg/Cc0KKWjcYqtZvCIs=;
        b=SzkjURv097R6Rlhz5SlQ1vDroslOXb9011E5fQ0e/9hy8qVciHb2mhBx+aFVYAE+BR
         DYgGUCiqCJ6VzxukD98NE9pYZjiH+Kh+1/nPn93PINe+mXaupEmysJNDCmTwudBeryjO
         y97Iy3zSdX3PgtY2amMRp6MiygdSWpPahVW4MFL0tsQN1NOCtn+ZtLSoTcFRVSoeBI+Z
         jz9zuCeKjfcsYT34pPsBEF7mbaSYjnZ7V3xUFyiy/CPOdjxNrBjG0itA54eHInrCouw4
         kabgtq63aTYUHOFpD+BihoUcf5tq9GLSFl4WAVIzpdZl5KHYeOjuluNVdFt2gW1potan
         4ukg==
X-Received: by 10.70.44.100 with SMTP id d4mr43262254pdm.36.1427542987153;
        Sat, 28 Mar 2015 04:43:07 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id fz1sm4863476pbb.12.2015.03.28.04.43.05
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 04:43:05 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH] Staging: lustre: Add function prototypes in console.h
Date: Sat, 28 Mar 2015 17:12:53 +0530
Message-Id: <1427542973-10596-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Sparse reported the following warnings:
warning: symbol 'lstcon_console_init' was not declared. Should it be static?
warning: symbol 'lstcon_console_fini' was not declared. Should it be static?
warning: symbol 'lstcon_ioctl_entry' was not declared. Should it be static?

However since these functions are used in other files,
they cannot be made static, so add protoypes for the same in console.h.

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/console.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/lustre/lnet/selftest/console.h b/drivers/staging/lustre/lnet/selftest/console.h
index f960174..e41ca89 100644
--- a/drivers/staging/lustre/lnet/selftest/console.h
+++ b/drivers/staging/lustre/lnet/selftest/console.h
@@ -182,6 +182,9 @@ lstcon_id2hash (lnet_process_id_t id, struct list_head *hash)
 	return &hash[idx];
 }
 
+int lstcon_console_init(void);
+int lstcon_ioctl_entry(unsigned int cmd, struct libcfs_ioctl_data *data);
+int lstcon_console_fini(void);
 extern int lstcon_session_match(lst_sid_t sid);
 extern int lstcon_session_new(char *name, int key, unsigned version,
 			      int timeout, int flags, lst_sid_t *sid_up);
-- 
1.9.1


