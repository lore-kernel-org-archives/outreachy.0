X-GM-THRID: 6401819323480932352
X-Received: by 10.157.36.99 with SMTP id p90mr6276039ota.7.1490539730949;
        Sun, 26 Mar 2017 07:48:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.39 with SMTP id i36ls8263055otb.24.gmail; Sun, 26 Mar
 2017 07:48:50 -0700 (PDT)
X-Received: by 10.200.40.194 with SMTP id j2mr5710834qtj.36.1490539730638;
        Sun, 26 Mar 2017 07:48:50 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id g82si1280835pfb.5.2017.03.26.07.48.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:48:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so6104874pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=wiDgfLA5vhwo3lvqlKVjYKWrFCmUDeRR7sCYc7EyMdg=;
        b=o/fLrLgC6Xz1v5ZA8VplOC8tR9TXX8mPW/OwfPSwHrW6L/T9P59kyHM7H7uAZKRarT
         Z3+QGpkk4SKhbCBlGW8Mtjw4cFPT3WqvIQifLkeImcDWDD0l7x4fqtLdXG6zbbIHLW10
         vFh0RSUdUErg+ovLteP3jiyXmuKz22Q8pZgUgVaV+uOIXukGiSMs50ljd25XNsOGpoQ9
         YiBPl4IpnX7KZ9muJpV6zMNUpNgqXMqTNcL2rUEQStK7cp37XQN3e8DCjJaxpfimioqA
         zwsju0t31zS+K4eNltPu2hDRhdUiMz0bHdMBzCQBaJ6xe7cjYWhcxiumqI1uealVg3Ty
         rftA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=wiDgfLA5vhwo3lvqlKVjYKWrFCmUDeRR7sCYc7EyMdg=;
        b=mxAXw5ddYSBpdfn55QxbRPEgkLwP2LByO/8b/38dndlP8Ngfd6+kdDDsr2ycanm1HF
         0naNUZpB4OkpikMT19iEsoa9BdLP64sRQVcmCpaYVag6uPJaMAJJTacXujP1vWyZB4dN
         ay+qDS7A0YtAC6stNZHfjNvycgI3Mq183vqZFXwB8x70CRnm305exex1v6roE0mMZ+JY
         cAlxU41EcjOADqc9ICUaKXecrlVaMZxBBoFK9Eygq4oEBxQfVV9SL/PzRm295qC1nbWc
         jYOvWRkAUbeWdoMUGlCzLVyym5LHo3WVilNG6rH9IEjvDfQFlWEpnkZGA950AF0M6D6o
         MV2A==
X-Gm-Message-State: AFeK/H1Xtz5IM72oAQS+NvX6KxmJV+smxeRvpvzPpFprhdpJwwZG4IVAj8qv/6ExoDBe2Q==
X-Received: by 10.84.231.9 with SMTP id f9mr22830576plk.117.1490539730414;
        Sun, 26 Mar 2017 07:48:50 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.176])
        by smtp.googlemail.com with ESMTPSA id d4sm15520148pfb.104.2017.03.26.07.48.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:48:49 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 1/3] kernel: pid_namespace: Remove return statement from void function
Date: Sun, 26 Mar 2017 20:18:13 +0530
Message-Id: <4e1f050c2aaf767da474b990afa3b0d49c3442e3.1490539466.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490539466.git.gs051095@gmail.com>
References: <cover.1490539466.git.gs051095@gmail.com>
In-Reply-To: <cover.1490539466.git.gs051095@gmail.com>
References: <cover.1490539466.git.gs051095@gmail.com>

zap_pid_ns_processes is a void function and the return
statement at the end is not useful.

Found with checkpatch.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid_namespace.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index 5f29687..6ace1e3 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -287,7 +287,6 @@ void zap_pid_ns_processes(struct pid_namespace *pid_ns)
 		current->signal->group_exit_code = pid_ns->reboot;
 
 	acct_exit_ns(pid_ns);
-	return;
 }
 
 #ifdef CONFIG_CHECKPOINT_RESTORE
-- 
2.7.4


