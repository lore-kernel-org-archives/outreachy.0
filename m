X-GM-THRID: 6392767227308802048
X-Received: by 10.107.197.194 with SMTP id v185mr3793106iof.48.1488432108285;
        Wed, 01 Mar 2017 21:21:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.26.214 with SMTP id 205ls1860589iti.12.gmail; Wed, 01 Mar
 2017 21:21:47 -0800 (PST)
X-Received: by 10.107.178.3 with SMTP id b3mr4123094iof.93.1488432107618;
        Wed, 01 Mar 2017 21:21:47 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si515907pfz.1.2017.03.01.21.21.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 21:21:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so1228340pfg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 21:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SI3J7R+HbVTwgi5aFZFcLSv9y5FnflRTdoevYwUEsXw=;
        b=Vwu3GhQZ9CGypiJlXslX4bn9OKmTXukfyNAD5AVAZ/QgIXbaqPBKkb6Xlm0X+EDv7B
         Piq8EppjSlHVSfR9y3d3792dtn622UIjBX46JAMMrUS5SmFZg9xlJI24FXY9RBwi1DcN
         JylfUbb6u/UfFwUyyWxVJoXq+pobuQSUuW4plIq1weil3DiqR0+9fsFgZ/xdgmYwuRgk
         1op5nuAeSZ2/Frr/HIgqY875YCopwpnXE6nZvHPWxtYQWL4Rjz7TBCHe0+JOHAZGM/DM
         AA3xjzHZtGCjGp/+TINOawwxYEhky8PKeij77NWfISnmnP/Az2MHf8lMVKCueL2mUN7D
         Xnkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SI3J7R+HbVTwgi5aFZFcLSv9y5FnflRTdoevYwUEsXw=;
        b=pi6ps4s0vaLi5pHxMYN6y6LHW/wEFKKoEo+er0k1JvxTDlTJVl6KL62IVs+onv3FJt
         otxNQjRyzx7pdlhqSDLtBky2QMXixmVT/jnX08I9qanAVvTcHo7tZBLtfJ+R7xado6QV
         OUBnvJOnrzzanGrNZUoo5KVJZpsdEg6H0r4xUqsnIBLVSGhowtGrF75+5fSI4swvBxGE
         G7T/Cw9C6hu0WU6jDP6iQ7OmZ2lg+yAc3J7uLrpOcREhFLl5ze4WIYcudeZCtqsj12E6
         P3a6faOV8vYI+ZonMnXTzjFrPqtpA1/91S+MBnrkXVAuRuRL9R+iHj2qkcNLR2EBuNW/
         FI7g==
X-Gm-Message-State: AMke39mK2AmbxYE6BRZcZoF00sTqKA/WhUm5WJnkgI+tbm2L00bhHQGDb054SCbA5o4KHw==
X-Received: by 10.99.2.18 with SMTP id 18mr10484362pgc.5.1488432107304;
        Wed, 01 Mar 2017 21:21:47 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id f188sm13788015pfa.35.2017.03.01.21.21.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 21:21:46 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: rtl8192u: Constufy ieee80211_qos_parameters structure
Date: Thu,  2 Mar 2017 10:49:25 +0530
Message-Id: <1488431965-24969-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Declare def_qos_parameters instance of the ieee80211_qos_parameters
structure as it is only passed src parameter to the function memcpy.
The fields of def_qos_parameters structure are never modified and
hence it can be declared as const.

Coccinelle Script:

@r1 disable optional_qualifier@
identifier i;
position p;
@@

static struct ieee80211_qos_parameters i@p ={...};

@ok1@
identifier r1.i;
position p;
expression e1,e2;
@@
memcpy(e1,&i@p,e2)

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct ieee80211_qos_parameters i={...};

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
	- Improved the coccinelle script to check for safety of the
	  modification.
	- Improved the commit message.
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index b631990..bbb5f58 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1814,7 +1814,7 @@ static void rtl8192_link_change(struct net_device *dev)
 	}
 }
 
-static struct ieee80211_qos_parameters def_qos_parameters = {
+static const struct ieee80211_qos_parameters def_qos_parameters = {
 	{cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3)},
 	{cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7)},
 	{2, 2, 2, 2},/* aifs */
-- 
2.7.4


