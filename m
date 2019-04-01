X-GM-THRID: 6674917600635387904
X-Received: by 2002:a25:d393:: with SMTP id e141mr7637696ybf.3.1554125361128;
        Mon, 01 Apr 2019 06:29:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:38cb:: with SMTP id f194ls3047788yba.6.gmail; Mon, 01
 Apr 2019 06:29:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSYZsH4AJLu59HZk98m7WuVSTvuYB5BGMZxbZzKIBjMAFeK2pBZfvuw9oP7XuMb+yMX2Nb
X-Received: by 2002:a25:fd6:: with SMTP id 205mr6275882ybp.32.1554125360215;
        Mon, 01 Apr 2019 06:29:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554125360; cv=none;
        d=google.com; s=arc-20160816;
        b=SlHocvxQVRY8iL4fz4VNNcxTPyw3ZJkdssg3dRca+gXCb6AqEkehSrzmahxr6NKW8l
         DFbw2njNlWtVmbmrMU8EhI0cVRQuT9M0osVrJKD0foiT+Z04VQjZMUTZmkfCAsWzD0wP
         7Cxemygf0zPfIHX7QQZypLa4o0B8OJe9LstkvG8ELm9QsTw4fSGOq2/bgD8volj8EcjG
         YU8NGIbsYAB+faAOzyTw8erB4v4fd5RzgkGuDn7prKCKuYNRIRj0QY0/X+sm4o5Nj/x8
         +6np9SqutcHXU+UL5ramb9WcAY6nJpJKFrvmpYxoNXunBjvure8e21B7SF5Zvef1hA6X
         MdWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=QCaOhPEr3VhhMoNCUiKA9rjCPaU0w1rahDrz1EFxOBY=;
        b=tYTrDCvPfnhqzsrRGCdjX3a2Fs837uqOquhMynSvhu4vrR6qXJOn0JmdQJ+Z/qqCHO
         5QNV9Tnn4IL8nEyK5+JBfhcfWf1Kw5Cg6kMoC5+IqBWNJQXDnWBkZbw29WUevXN9AsSa
         u/RnvrfUZvYqKsKK8P6J+GZnfnayzQybdIFrQbbGykEfz4dJwGDDnjoh2SaqNWuUT2Ug
         8BQqDXt2T8ZvcO64296OsAKnqCsPGq4kQSyQmRXKI3C4o2sowS5Tc78LQolzO1lTrqua
         zfMwAQRyhGohcsiTWAqKLcYkwRuf8hQgL4hTP4bsOayKmBzVRgOL107IYN+1GS/aZP+8
         RwtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nS6lmPbQ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l65si563108ywl.1.2019.04.01.06.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 06:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nS6lmPbQ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id y3so4764976pgk.12
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 06:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QCaOhPEr3VhhMoNCUiKA9rjCPaU0w1rahDrz1EFxOBY=;
        b=nS6lmPbQOtNC45Ykci8TMGXDcu6VFnpJbqqnh1DJf3pweoGvLhhSWVV6aRcVLFw4MA
         eYLYSCsWCOjiyaac0kMYePWw7zmtGopUw6ZRC5+XEcyc5lJxrn3iDhyTSFM3yplLEx7v
         xFT9J3BPnSpE6hoWep2yZwyw8jFBwGCxt0A5gasKgIfH6EztPq6eCeHeTEUiGw07cE35
         6+9jomT+FmC4okHzCkG2S5zI7fBiwA2nnxkzqGhixrLyLJCE+uSFk6YamVn5rCh5cncc
         ZUGKnI2qrz8T0aD7EKAZJerx5LdRZNnUT2BzziMRwgintTx8VVHpiqI6TJYPzD7T8AgT
         BI+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QCaOhPEr3VhhMoNCUiKA9rjCPaU0w1rahDrz1EFxOBY=;
        b=PsvDnX4W8W7qQaxFxefuBZ28s9yjCxTWP+pnwbo092tY7w5Qv8W3qnhSqm1hrz2BX7
         B6LVN9B3c83/7C3ICsaDtJVVKuiFRwZZ8QyhEhx+SVleU5kvtJBOzBGDuySmOXZT0ssy
         7xV3lcNymhdF9H8noxO/HVNPJej1bUUqV9U43mXyWhfRjqi7Bq459Pdj6lFwXOd84GPB
         4caq5e7eFDwkKU32ErtST0+LarUShnW+IpRgc9hBk43Hj+MsWj/cH8drmvwTEgcjwciT
         NrHvmHvEMgt2/zgE3BIZxHrvh6PxRZ0dJJ7BCfl8YCsf+4k/38mpU/HW5GSZRMnmmd27
         0kkA==
X-Gm-Message-State: APjAAAUxuyCaGU08Af2ge7t6eXf4RSrGCI9/J7HrfZU4Ixa5hKCQlfR9
	vC+e9ekawEZ4+cA4oCmkREg=
X-Received: by 2002:a62:1197:: with SMTP id 23mr62085208pfr.210.1554125359592;
        Mon, 01 Apr 2019 06:29:19 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6628:6470:9524:528f:f662:5d77])
        by smtp.googlemail.com with ESMTPSA id b72sm34692862pga.86.2019.04.01.06.29.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 06:29:18 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gasket: apex: Modify return type suggested by Coccinelle.
Date: Mon,  1 Apr 2019 18:59:06 +0530
Message-Id: <20190401132906.4406-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

The last two lines in the function could
be compressed into one. Avoid usage of local variable.
Issue found by Coccinelle using ret.cocci.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index a79613db71ef..2be45ee9d061 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -439,9 +439,7 @@ static int apex_reset(struct gasket_dev *gasket_dev)
 		if (ret)
 			return ret;
 	}
-	ret = apex_quit_reset(gasket_dev);
-
-	return ret;
+	return apex_quit_reset(gasket_dev);
 }
 
 /*
-- 
2.17.1


