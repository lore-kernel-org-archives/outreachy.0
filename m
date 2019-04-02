X-GM-THRID: 6674934716958769152
X-Received: by 2002:a24:7f52:: with SMTP id r79mr7421696itc.33.1554180561264;
        Mon, 01 Apr 2019 21:49:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7dcc:: with SMTP id b195ls140833itc.2.canary-gmail; Mon,
 01 Apr 2019 21:49:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxLfsXoKol7f68UPQwaPKfmH098wPnn8QJvaUzenvJupLYAL/U9jQ95/TA1SaY/I4B/Tiev
X-Received: by 2002:a24:5c12:: with SMTP id q18mr7673593itb.13.1554180560359;
        Mon, 01 Apr 2019 21:49:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554180560; cv=none;
        d=google.com; s=arc-20160816;
        b=l5Ef31jcPDneAKbhDbVnpvLqZxnWY3yES2LlbZcNYTcwOsoYs5cTRMRS4Q2ghhqZ4i
         qGPXHQozpSPyoPxQGdY9E3bZSVZ1LfXBqG2X+3SteWQN7iTNuDmZEE2U7139t7dkXrK4
         Q3aWgLGeNeJnemBsI2RzNe8h85F4dZAx0c7rIP2uw3ZeEIsadL7/mU6A9okym1NPpJOO
         2op0xetWNW6s4+QOc1cCg9In7JRTK+FmeAarU24SitXfqRY8wO7kU8HSotF4NOc4xXGk
         yPO2UbpGnQAOJ9C7POdIAXTwb8PX5sjVKDaHdhCK4Dyrzmf+cajiBwFnOygogr6HDaHm
         9Wdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=//whgPYbJ7iERV13RNca/F+GhfCIhQxDLy3oqXqSkQg=;
        b=VL5HUN4C5JJxJPdqFvT64ur8Bo0WSkOU6C6rAoAfvf4BzC3vEWHcL4uAqgg5lHyayu
         Ub0cxIxJmmSFqqNsJvJZBq7oYUHlIbamBeysEBnvBj8KV1sWV2Q8wGWREAUiU8fpbG8x
         P6gbleMYVxspK3h2+l9zZo2GTfHthBJExGu3Q1tGTX4kdPBpSVnBIbN1zFhyZGgvMqrA
         uHzefziJcS5/PdO6mfnNVJly4pnnYr6bVyp9A0el6ysmGxF8GRfhUDM7Y6VqICv83fhp
         8fy2STcsmTlmsquARMlGgHcPHhmzCD/ZemL5d03NgSqT5cbQFh9dQtDB9c0Is1CcUGVW
         MdjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rOJ+JLA2;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t201si711237itb.2.2019.04.01.21.49.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 21:49:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rOJ+JLA2;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id g8so5902819pgf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 21:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=//whgPYbJ7iERV13RNca/F+GhfCIhQxDLy3oqXqSkQg=;
        b=rOJ+JLA27XBsFZcpED/5FlmCydq89yO2Lppu7U1C0dBBeRdmaRIyaDbpdJDlWqHbI2
         zQ7UIw/sGj9esjsW4qyao2v6zM0Q7N6uM/If3cWoK1+P9WEXYhvN3ctEboQeYt26iNmv
         5RkRaRek5fv+2se2sChr4d3OGjNBn8HGOGLuQCxRN98bN0NkRRbT9aQhGp8HVL8uKtIv
         hWtpDTGxMd+0BTQTW805O2AYDagGdOmooYy/y40vXH130NWmBnUDGimH05NIbMrEo6V6
         31TjI8VoRENRSSMpuZvygKpnG1i+eGtUyHCwIMlv3CFhzNvX8NxF7/MrR4v4+daO9ach
         s6ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=//whgPYbJ7iERV13RNca/F+GhfCIhQxDLy3oqXqSkQg=;
        b=rLuYxDuA95zSA8TXDJVdL3rbdIqLHn0qTotWZkgNgx8/2drIXc6cl2Eud2XNbR6TJN
         kfhofh6Srt0EgftslGH2wnw3Eu3SzOB3oAJydOmQdgYCtf+dag8uI1JTyvCFWb1nyf/x
         nC+aGYa8XTpNi1oxGeq1CqadVHFemUahC5Enzv4tBGe3Jqb5EhBAYTxkrmBp+1bteoLa
         pWTZ1WI3UwObQwS4VziYt9qJLM0/awcsiHt3/N4SF4LnakvBdZBpYzSIVvh2CgcMmWBL
         0CpRgfnjym7keOYS4j9Cz5EKe2/L/QIne9QGfk6ge2SY0DWCLX2KuG2yygxVHh3hmji8
         4low==
X-Gm-Message-State: APjAAAXHAZ0HbKD9qMonM1MRhyfp8JYsoM84wDP3f09o2aJ3CKYqRpP8
	exOD4115IJJULVb/wQ/76q6dRed+zRk=
X-Received: by 2002:a62:205c:: with SMTP id g89mr65004844pfg.34.1554180559629;
        Mon, 01 Apr 2019 21:49:19 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.14])
        by smtp.googlemail.com with ESMTPSA id 17sm17454726pfw.65.2019.04.01.21.49.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 21:49:18 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: Remove unnecessary casts.
Date: Tue,  2 Apr 2019 10:19:08 +0530
Message-Id: <20190402044908.3159-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Explicit type casting of variable, with same type as
that of variable, is not required.
Issue found using coccinelle.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c    | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 804daf83be35..bd24ef9bc1cb 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -417,13 +417,13 @@ vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, const void *data,
 	switch (mode) {
 	case VCHIQ_BULK_MODE_NOCALLBACK:
 	case VCHIQ_BULK_MODE_CALLBACK:
-		status = vchiq_bulk_transfer(handle, (void *)data, size,
+		status = vchiq_bulk_transfer(handle, data, size,
 					     userdata, mode,
 					     VCHIQ_BULK_TRANSMIT);
 		break;
 	case VCHIQ_BULK_MODE_BLOCKING:
 		status = vchiq_blocking_bulk_transfer(handle,
-			(void *)data, size, VCHIQ_BULK_TRANSMIT);
+			data, size, VCHIQ_BULK_TRANSMIT);
 		break;
 	default:
 		return VCHIQ_ERROR;
@@ -447,7 +447,7 @@ vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle, void *data,
 		break;
 	case VCHIQ_BULK_MODE_BLOCKING:
 		status = vchiq_blocking_bulk_transfer(handle,
-			(void *)data, size, VCHIQ_BULK_RECEIVE);
+			data, size, VCHIQ_BULK_RECEIVE);
 		break;
 	default:
 		return VCHIQ_ERROR;
@@ -1381,7 +1381,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		else if (header->size <= args.bufsize) {
 			/* Copy to user space if msgbuf is not NULL */
 			if ((args.buf == NULL) ||
-				(copy_to_user((void __user *)args.buf,
+				(copy_to_user(args.buf,
 				header->data,
 				header->size) == 0)) {
 				ret = header->size;
@@ -2113,7 +2113,7 @@ static int vchiq_release(struct inode *inode, struct file *file)
 void
 vchiq_dump(void *dump_context, const char *str, int len)
 {
-	struct dump_context *context = (struct dump_context *)dump_context;
+	struct dump_context *context = dump_context;
 
 	if (context->actual < context->space) {
 		int copy_bytes;
@@ -2322,7 +2322,7 @@ vchiq_keepalive_vchiq_callback(VCHIQ_REASON_T reason,
 static int
 vchiq_keepalive_thread_func(void *v)
 {
-	struct vchiq_state *state = (struct vchiq_state *)v;
+	struct vchiq_state *state = v;
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
 
 	VCHIQ_STATUS_T status;
-- 
2.17.1


