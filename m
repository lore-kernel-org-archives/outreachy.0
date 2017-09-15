X-GM-THRID: 6465882401621934080
X-Received: by 10.107.141.11 with SMTP id p11mr2532073iod.124.1505455561337;
        Thu, 14 Sep 2017 23:06:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.82.209 with SMTP id d200ls504088itb.12.canary-gmail; Thu,
 14 Sep 2017 23:06:00 -0700 (PDT)
X-Received: by 10.129.172.99 with SMTP id z35mr13125785ywj.171.1505455560518;
        Thu, 14 Sep 2017 23:06:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505455560; cv=none;
        d=google.com; s=arc-20160816;
        b=Riv079XdgPI9XVE/KhTGsrHpg+6QIZlk0Zt6tYwKbBk+exwCKwaaq3emDjmYFAw8R9
         FFvVQYNnJYJZg9wuzHnw9jzCjs2GT78PK8+DaDa9sHk3gS+0cbeGPt4uPvl7YKf4WwG+
         6uF16WWYopgz4s2aVh3zFu7rNyHrHyk5dyAlbtjTQwx/kqCtTzsbguv5WXQvJKonmSUU
         X3CvgtlvbzlLSpPirjhseKC0I87KNIW5P+m6OdA7ARr12Ddx+2Tk9srSJSQ5LIvKf2mV
         ffJwp35tDD2+PwHI2mECp5qVkLhWoUYcs3xRm/gQXZvLgR2XCzNSrrWA6unUfyB5j9z+
         y8cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=1EmLUjYcGUltavs/wmZkeAgYrOP9yjDQ2DDAB2abX4o/hy5KkVDgvsxx4CtF9U7xGh
         B46nyYMZvE2d7pZLBnauLPVMQ3LNOIvzJR64he9V1RnBJ10C28xj/pLygkrw8r8x7IN4
         lGRL5KWIJ+OEPX6z30Cyon6qCI5Zr2JLShw5xFeNvukitQCBWGyrf3YtpEQCqeH/vxDS
         /i5A/0+ssGCSqxKFhKWCeght8Ou8k3ZaeDTMqkp5riijJcwkJJhExtFsxMwUc14vmY3+
         61VbKmjYXDUW3fCR14D177TCB3UmVM0Y95fRuvb8hoKcLISVg6WVMba3XDzBD+InKOaM
         UIUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M012e6UK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c19si15769pfk.9.2017.09.14.23.06.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:06:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M012e6UK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so789806pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=M012e6UK8PfyHxqWohyVwi2Fh6gZozp87f0yZX7Jt/J9QrqFcxNbVKI/QqXt86oJze
         ajFidJ6DjQm1rnqC/0JSmcHGbRp3aj93DgXVShcNN2DVTIj8bt3eMJDlfV0dFLqyn9Ok
         QqfCZ50mswcHDIsrIexoPEY5ff5htdp0oe0vdtlccs3ASdyhjdSWm1i4uuCCitkja6ij
         lPSM66lUDDuiGSTE+BFFRa4x1Jk/mjx5pnM8DxXckRoF9m6EeC2uq0GfJgJ6uMowMUXn
         DxzA5UNuX1njIU2EXeT/+n4LKzbP6f/uX53sDrgu0F5x5Fjy7vQWl6+hD2wg+ffNngd1
         g2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=ZMRADwQejxL8i+bv5hKPf2HbiJ4wKOnZj6rBE0GP6V31kvmW7c9sDfoowdvdIEEBbM
         M6YK0V5kHlAQzWIx8+v73e5n6dtma8GxDCqIbtd+SMxQSf4e8NpmEoNaXwdxxfyL+xqF
         GCdWYtqFb0oE5xQ3Y1Ys/supfeYJZTIP6Q/Hkdp5DqNj7dH/clraICMDWU2n1M/OZb8t
         aP4AEXWiOTK87XJ1H9k6pxol4kberGWQzBN26L27N8BQFZLE7lSFcr7apJfCes1vWT23
         LfEpp6ieE5fjzMA1tzqesxhdfn3YtsERzSFTp7BGmloZ05hINaG4MiyTYLPdxYRI/wHo
         AhXg==
X-Gm-Message-State: AHPjjUgfTKIewYWl0qv0/QzbGm5wSyIPKWMpQQc/sxbGGOrClMbrWIAD
	IdeoE1mjV+TrMQ==
X-Google-Smtp-Source: ADKCNb59WmU7ks6fmztD9DOWhNZjxpFBw2yzKrf5rWSlfCkBsjKMWVR6ieqoITvtuvI/3VWjH5vusw==
X-Received: by 10.84.224.199 with SMTP id k7mr26960159pln.403.1505455560225;
        Thu, 14 Sep 2017 23:06:00 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id m15sm480752pfh.35.2017.09.14.23.05.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:05:59 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: lustre: fid: fix line over 80 characters
Date: Fri, 15 Sep 2017 11:35:51 +0530
Message-Id: <1505455551-14649-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/fid/fid_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
index ba73623..6a98225 100644
--- a/drivers/staging/lustre/lustre/fid/fid_request.c
+++ b/drivers/staging/lustre/lustre/fid/fid_request.c
@@ -279,7 +279,8 @@ int seq_client_alloc_fid(const struct lu_env *env,
 	*fid = seq->lcs_fid;
 	mutex_unlock(&seq->lcs_mutex);
 
-	CDEBUG(D_INFO, "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
+	CDEBUG(D_INFO,
+	       "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
 	return rc;
 }
 EXPORT_SYMBOL(seq_client_alloc_fid);
-- 
2.7.4


