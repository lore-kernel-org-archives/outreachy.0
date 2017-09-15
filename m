X-GM-THRID: 6465879632669310976
X-Received: by 10.129.198.66 with SMTP id q2mr2130797ywj.36.1505457519822;
        Thu, 14 Sep 2017 23:38:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.70.16 with SMTP id t16ls2397792ioa.27.gmail; Thu, 14 Sep
 2017 23:38:39 -0700 (PDT)
X-Received: by 10.129.78.202 with SMTP id c193mr15067004ywb.106.1505457519292;
        Thu, 14 Sep 2017 23:38:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457519; cv=none;
        d=google.com; s=arc-20160816;
        b=KuIZwRZgm6sJZsnKjvdg6W74uQV4xk/7YVpottcyHi9ma8dXE6LVEf0OF51wJBM8O2
         o5JDKgb2QGqPVlysF3dB64+w9yvTSsZfrUnjQdUpHPgnk5PUkYL+xS/ex7UbSPp5Dk55
         YFCGHQxb/NrO6HTUXs3oHJeUo0/c7GcjaM89PuDgpdemRxV2UXU8v2A0HyCsy/eqdqyu
         WMudnwFGJzmCxVgWSNoOgGiYnzAMZahK8R/p16Pi8CJPz+anzDhLt8pwLRV4HFuNoT2K
         3XQgUDPlHa2O1HZLpbzlq+fIaakxLwAFXJWUfLkWQYQi9VsAPF73gFqjPGqjUsTsrABK
         eayw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=QxkUlRpXbEj9vAoQi8+mPV1YlzFSX0WzgCX9lM89LKI=;
        b=ndoV0xVDllzR53A6cvpOKgl448GFP/OqiFTryrCIsD40aix7B58QBXp6N25n5j1zzt
         /rxtRl43gMVDsHU+5wIguKSjRDnXE+/Tu3thX3alIWu/m9Ise/0L/jzxpZBRbkQuRJrH
         +Yefx9VkO5furN1o9YKijZs5RtBMiam7jykNPQgMbE90NszabrSE05lVz1nT0i+2lcg5
         S3ZiV0/f/nqgaHZJsW6ulUL+pKIqVDzR1DkopzgPDGpIMEIIn7BDcbs9xo6JXH0fgCNz
         mDRDRLyMuv0Sh3GhOFwCMwVJKelUWIDE9K479THEeAqfh4LINuxDUTYmDBUENKJk0iYv
         dl8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c9iEW2fA;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id s81si17644pfg.19.2017.09.14.23.38.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:38:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c9iEW2fA;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so822891pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=QxkUlRpXbEj9vAoQi8+mPV1YlzFSX0WzgCX9lM89LKI=;
        b=c9iEW2fAbv8A/GC2bIqST3u0PJgxilAu+hWjlvJtF7Om1ZUJAlx5x1WEngZyUgzi9q
         hxMEJDvbZAeH4YQCLe8Vo5OYetkHDjWpITg4lzQPFS/5Ksowa7ASrrRxaYcAGCQTolA/
         U68e0UpdsPZsuDogJl1OuCEI0nfYNp8iOMHVfNb9CLvDcE65zLKE0SARL6+Od1Y2wQrE
         mgi4e1UNlNe03w2w1yakLRpFEX6I+Vayw/gm6DNQM1XbAifCaJXNCbHdlEflwsoNtf0/
         M5uXFz0K/NpSTdI0RwuUz6J/8H2E0R0/LK85QZwzq13AobZ8Uyiu3MoPUN3jJ/caHcwL
         xNrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=QxkUlRpXbEj9vAoQi8+mPV1YlzFSX0WzgCX9lM89LKI=;
        b=L+Jz0QNTNi9fLXzsoe8Hq84iKZjsIT1nVFJQSsCOKjLf1o9pXnfoHoSQgCfx8Ddjkx
         q5SVJKYOx2jqmbe358LFjOQa5MS2VvUBQumnE+BjSvv6lllrfekMGs4fcygzSvaKrmKE
         O8a7NSY50p8RyUgUp0AaJlfLu8B05B5ywBEtVhAs/kxNal4pvGb2gzUaWlyY5p+SO3YK
         vi+wvkDbR2HOjjUoKB4Yl60mwElVg41zW24dcZdp3ceBnV0htky/vKkSr50gDY7KTgXF
         6HfL1icHYRm/YfaMWlnBRCPA5Ai06gt7/7w2EHa+hJhu7sW74tOvK858t49XNgx4RB9P
         Wb2A==
X-Gm-Message-State: AHPjjUiIIifac3Q+kWfU1mEH50dSoflE2Kl/savWUpCOFy+jmjEBHfxy
	z6VHStFTrVL9EQ==
X-Google-Smtp-Source: AOwi7QBmkg6GYmXLRjja0XiO+cdxuD45PioFbDunSD/SpEHR9I02k3gVkzrTByShBmnBMOhIsd103Q==
X-Received: by 10.84.246.197 with SMTP id j5mr5759698plt.164.1505457519051;
        Thu, 14 Sep 2017 23:38:39 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id h90sm758805pfj.32.2017.09.14.23.38.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:38:38 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 2/8] staging: lustre: ldlm: fix line over 80 characters in ldlm_flock
Date: Fri, 15 Sep 2017 12:08:17 +0530
Message-Id: <5447f39de5395c8dd7e799ced3e2baa98f8737be.1505456961.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709150814460.2287@hadrien>
 <cover.1505456960.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <cover.1505456960.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
index cb826e9..04e1d4c 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
@@ -479,7 +479,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 		return 0;
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
+	LDLM_DEBUG(lock,
+		   "client-side enqueue returned a blocked lock, sleeping");
 	fwd.fwd_lock = lock;
 	obd = class_exp2obd(lock->l_conn_export);
 
@@ -561,7 +562,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 			mode = lock->l_granted_mode;
 
 		if (ldlm_is_flock_deadlock(lock)) {
-			LDLM_DEBUG(lock, "client-side enqueue deadlock received");
+			LDLM_DEBUG(lock,
+				   "client-side enqueue deadlock received");
 			rc = -EDEADLK;
 		}
 		ldlm_flock_destroy(lock, mode, LDLM_FL_WAIT_NOREPROC);
-- 
2.7.4


