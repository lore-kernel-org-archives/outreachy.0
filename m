X-GM-THRID: 6670329493054291968
X-Received: by 2002:ab0:1413:: with SMTP id b19mr2272311uae.5.1553057137122;
        Tue, 19 Mar 2019 21:45:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls153163vke.0.gmail; Tue, 19 Mar
 2019 21:45:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4ak2RSPckx0vDrwemGTlpG26JP/F6phxyPl3+HYW2mC7aDUSnoQaJB4bkW+JPSKE1Vk3g
X-Received: by 2002:a1f:b490:: with SMTP id d138mr15401234vkf.14.1553057136346;
        Tue, 19 Mar 2019 21:45:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553057136; cv=none;
        d=google.com; s=arc-20160816;
        b=GrHpqM6kMu4ST3kKmXMy5CbFMDD7IQFKPQvmS9ugxSM+vVvMgtR5Fr5vqJwldL8tLq
         bOf5uWAZ989+YLYNncD0oDsDa0fN3PwFVy3yysYPYC+QBQ7PGXEqEqjyvaW2hpNGWEph
         aadBwx7qXZULok+lq9O2GX3cAdAmkkCg3XtJ4yTl9yyK2LxQqO++eDZE6lVhCU51/onR
         Ls5VYVDhheciyay6b+kz2crFYChCXQ/q4wn0SbGeGsoV3Do+sCCq1v5klUaKFIR1POMm
         VRDmtQFsxXgRLqM6/rXYuYbCcEecBWTD7RK5nBpoxM/RNUrrVQAGD8EgSkhcUHCMNImr
         su1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=qqUz2dmHoyH83abJNIOjKxae0100J6FS/L0egGcHWjk=;
        b=IDkaQZDH4pDATC5gSMyrvcNqIZrDrEPsK+oh5kEp4dnKn4IktffrNf1MJYnyD/ApJx
         mb5A8D98D0q5A4eWPSSoyv7TsBRbVs5CmykUfCsRxz5qHUngtP3CbH/YsnEyL/3DKWbE
         c7EslfBxJUp79q7uUreXG93Le1HCwwV2i+xVMz3WaNJgWtz189GMOwvC1D5V2ojL/V8/
         cMYnXtBtn6TsUAh+e95mwSS+kSG3lVYsBzKvo6VVTZ1HL3qgOzF+F6ObyK6IEcKN5AUV
         qK8aJzQzYCc5tGT5LVaXTyH5Evq4F8YfhpB4kmTtz+myyhWrH/LOJadOs52oZn3WQQee
         DlpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s220OzfB;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id u12si52641uaa.1.2019.03.19.21.45.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 21:45:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s220OzfB;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id r124so830367pgr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 21:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qqUz2dmHoyH83abJNIOjKxae0100J6FS/L0egGcHWjk=;
        b=s220OzfBzk/Srdg36gRGXnQyHD/Ywu5on67PoKTTufOMkBwjmca2InyPj4xz9YEbwJ
         BZPgq/KZ7fOaSzuk8Bj9G3nh9llSmsj+Q6j+fKCX+WyZ518ikdXi8bX9qxceB6L20Qsu
         NHI42YOWY6kkOqK/kJ8QzylK4CoK45ZvsR57y/9uCF3sjSxI7LV6w7IX71g1hLLUpVSH
         sDoWaOdNv8qZbEC6DTE6dDoEPZGiAdhpwA5f8tAsBC5uCYJtebWb0/8sqgHqXziMJZGH
         rOxsZ8fSX0M1MX4GO1f49d6AoxvCUGNhETglu4xh5/iQbuGtq/FhJ2amYPaCtJsXL6PQ
         zLeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qqUz2dmHoyH83abJNIOjKxae0100J6FS/L0egGcHWjk=;
        b=Hcsa6wn3wWS+GeD2V2N7vakb87FSg8xlAzRIJ1Nm55R74pPyJ9py9t0H54c6epEvZY
         YX0102d/VzAmf47TGysuhWURQ0Ou5BmwaPCoW6+v958Z9PbiiDxzRRJ66IPR8Y7WITzW
         uvOElEEIjGmu3vRt1bQ2QsuP836O+ONJe7zCfTps4Hv1fOFFPC4sFHpuW2vWyoxwjvsc
         D5pO9nanUxVCEddzHeTWCBC0sDqJsB0R9MsaqdkT4WSpBSLewJNv0QL9XX+FMYLVDqBJ
         VHI72d+Da58Qkc+wcawG5nIGVn839ZDi8WXh/MT4Mg2UxuhZSknN88+/NJclxXNYhoZq
         0INA==
X-Gm-Message-State: APjAAAWNgOm1BhKavew/0XiapZFacnelc3pRWfd4ycaT0Pjz11C53KTX
	abxPpeNWfeZ64lOxXSX2UAk=
X-Received: by 2002:a17:902:690a:: with SMTP id j10mr6180324plk.103.1553057135517;
        Tue, 19 Mar 2019 21:45:35 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id a4sm738227pga.52.2019.03.19.21.45.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Mar 2019 21:45:35 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 2/3] Staging: unisys: visorinput: Replace '--help--' with 'help' in Kconfig
Date: Tue, 19 Mar 2019 21:45:00 -0700
Message-Id: <20190320044501.5445-3-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190320044501.5445-1-etsai042@gmail.com>
References: <20190320044501.5445-1-etsai042@gmail.com>

Replace '--help--' in Kconfig and indent the subsequent text to silence
checkpatch.pl
warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/unisys/visorinput/Kconfig | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/unisys/visorinput/Kconfig b/drivers/staging/unisys/visorinput/Kconfig
index a3817e0f7e5c..1b8efc2fd8c8 100644
--- a/drivers/staging/unisys/visorinput/Kconfig
+++ b/drivers/staging/unisys/visorinput/Kconfig
@@ -5,11 +5,11 @@
 config UNISYS_VISORINPUT
 	tristate "Unisys visorinput driver"
 	depends on UNISYSSPAR && UNISYS_VISORBUS && INPUT
-	---help---
-	The Unisys s-Par visorinput driver provides a virtualized system
-	console (keyboard and mouse) that is accessible through the
-	s-Par firmware's user interface. s-Par provides video using the EFI
-	GOP protocol, so If this driver is not present, the Linux guest should
-	still boot with visible output in the partition desktop, but keyboard
-	and mouse interaction will not be available.
+	help
+		The Unisys s-Par visorinput driver provides a virtualized system
+		console (keyboard and mouse) that is accessible through the
+		s-Par firmware's user interface. s-Par provides video using the EFI
+		GOP protocol, so If this driver is not present, the Linux guest should
+		still boot with visible output in the partition desktop, but keyboard
+		and mouse interaction will not be available.
 
-- 
2.11.0


