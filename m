X-GM-THRID: 6674934716958769152
X-Received: by 2002:a1f:654:: with SMTP id 81mr7719531vkg.3.1554129346585;
        Mon, 01 Apr 2019 07:35:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:fb14:: with SMTP id d20ls2050352vsr.5.gmail; Mon, 01 Apr
 2019 07:35:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrXIh23LEKb0Z7a6lz2k3jV+wwicsqy7cu0KU+HgvKTyWEWp43FtI8gp2VDgTh2WssLd6L
X-Received: by 2002:a67:df08:: with SMTP id s8mr1826066vsk.40.1554129345777;
        Mon, 01 Apr 2019 07:35:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554129345; cv=none;
        d=google.com; s=arc-20160816;
        b=nNFfGtGcBlMunlfLMSkfzWBx+ZstnkPDoJ+LsE0Ae/ItVIKFrDwwQp0wHukvEtGN4U
         9mf0dE37cmDc6FQDxT5VDUxCfpyFwnCP0AsCmBE3rhbRBJ5fSxwk+7ctRNIgVHkEsaVf
         hrq1+gVPN+gTXjh9yjxJYNkcoFQCHo+nUURLA9ULbTh9PbvqL8bhsSoHTyDfE241vK8j
         EjFeScQYZndXwEDotytvuXB/ldfjJLHrA1uPzdMPSM1D2v9412HUmJ125L/XJjJ/pK3W
         LdCnWLCoLVmHfw1cHx/wYrWSjXBtNfjlaViKC+w6vWV+GwOMqyH15J06dzXF2gYU2ZVq
         ZbjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=oXy7YJnWtupd5YckY+cA/If0uwp45W/CpNru3q1CKsY=;
        b=YhBpSXqI6T1kmxLUvDnBS9pctEGwmfiXUs8zc4BBS1fKQxuePpgZ3pNwo7GqAnLdUX
         Q8/dXEnZMd400keGarKCUINapGOO6TvGKYZfxawXPDm1VMrSd5NLtE+ggKbzLrQFTgsK
         UpyH0tFFIkyWbdamMvTI7jUsFx5SU+zjA2dCbeQKaSP26B1DJUOj2UlOs1WofVHfgMAD
         iQh6BrCxA6bIYviuAVyUnK+ut0FJuQ0qRJJXNp4LPAS6Yh2/Q4gQcdQxJ66/1jqq89eV
         lHlu6715fQFxBhgR01N4wf7qskhr/76hta+X0S6SYRu89HXZfdHbXjHbsp7IjOuwMtXJ
         3ZwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mkK2zlQE;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id o80si568246vke.1.2019.04.01.07.35.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 07:35:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mkK2zlQE;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62c.google.com with SMTP id d1so2903084plj.8
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 07:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=oXy7YJnWtupd5YckY+cA/If0uwp45W/CpNru3q1CKsY=;
        b=mkK2zlQEPDZFBsa76WQkzGtCPqL7kWEmuWSUvJMlNp0Mfi7zz2FxhXhAdguvl2H79b
         e3P9J7Biw0h2isyQklL8l7E+K6HhbwqytTTfSZHeRylWCH9L48wv6rtSlAvoELqQKGaK
         qs6Lofp7zjA1MBmqbbTYM1yF3T58W/sC8VG/xtCvQsZ1YScxmaWHFJ1G9krz0OxYcdV/
         T7NDSefpayJo+EOOLXxS5Fe8W8vdhp9G6KB3xtTMyhMaHiru+4qkpnGu6u+ldcGHw/Nw
         ysk3YyCogzXmRiSZ8aCVKxVf4hBQy46uqKa9YK1PvHNgnNxwzV7Q8UiOk3OmevRWco99
         d+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oXy7YJnWtupd5YckY+cA/If0uwp45W/CpNru3q1CKsY=;
        b=UGKOJkvny1oUWwYcsh1odBxx6Ti7wpJlrk1Ul6nJM7FHVM6NooElitIzS8uNRiBHyD
         /oDE74BIVkewUy0HCWGyXfwQsgP4dQFpuHItyuQ180nN/BdAznSAKK5VpCr65UQUhZpI
         q2wQNdNwX28pryxvqcGnN1PjfdXR9EesSR6Z+dKEFh5sPtLx6Rrh+mF9ibj4q/LyFL5z
         dh3y1ABSoZWkK/zSIOPzjhe7P1CCOiaakJuJkpyy7Rm+yDyPiKYbBOXejhvAjlWeej81
         JG5dtpUXeXxuE31xsKDYTSYy2OC71oHW9xxDy5fq+MmKWmhyK/MawPAcREtwdXd7cZ2Q
         hI+Q==
X-Gm-Message-State: APjAAAU3CsL53rwmO9i6b++zikkT9bkZv+I8FmHs3qBBH2MAa2wqxRf5
	Ro7g+1YK0coPEILm5qcmM2k=
X-Received: by 2002:a17:902:1122:: with SMTP id d31mr30353359pla.29.1554129345445;
        Mon, 01 Apr 2019 07:35:45 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6628:6470:9524:528f:f662:5d77])
        by smtp.googlemail.com with ESMTPSA id e13sm18079674pgb.37.2019.04.01.07.35.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 07:35:44 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: Remove unnecessary casts.
Date: Mon,  1 Apr 2019 20:05:31 +0530
Message-Id: <20190401143531.11493-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Explicit type casting of variable, with same type as
that of variable, is not required.
Issue found using coccinelle.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 53f5a1cb4636..c60db447ae8e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1877,7 +1877,7 @@ parse_rx_slots(struct vchiq_state *state)
 static int
 slot_handler_func(void *v)
 {
-	struct vchiq_state *state = (struct vchiq_state *)v;
+	struct vchiq_state *state = v;
 	struct vchiq_shared_state *local = state->local;
 
 	DEBUG_INITIALISE(local)
@@ -1961,7 +1961,7 @@ slot_handler_func(void *v)
 static int
 recycle_func(void *v)
 {
-	struct vchiq_state *state = (struct vchiq_state *)v;
+	struct vchiq_state *state = v;
 	struct vchiq_shared_state *local = state->local;
 	BITSET_T *found;
 	size_t length;
@@ -1985,7 +1985,7 @@ recycle_func(void *v)
 static int
 sync_func(void *v)
 {
-	struct vchiq_state *state = (struct vchiq_state *)v;
+	struct vchiq_state *state = v;
 	struct vchiq_shared_state *local = state->local;
 	struct vchiq_header *header =
 		(struct vchiq_header *)SLOT_DATA_FROM_INDEX(state,
@@ -2111,7 +2111,7 @@ vchiq_init_slots(void *mem_base, int mem_size)
 	int mem_align =
 		(int)((VCHIQ_SLOT_SIZE - (long)mem_base) & VCHIQ_SLOT_MASK);
 	struct vchiq_slot_zero *slot_zero =
-		(struct vchiq_slot_zero *)((char *)mem_base + mem_align);
+		(struct vchiq_slot_zero *)(mem_base + mem_align);
 	int num_slots = (mem_size - mem_align)/VCHIQ_SLOT_SIZE;
 	int first_data_slot = VCHIQ_SLOT_ZERO_SLOTS;
 
@@ -3039,13 +3039,13 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 	case VCHIQ_BULK_MODE_CALLBACK:
 		break;
 	case VCHIQ_BULK_MODE_BLOCKING:
-		bulk_waiter = (struct bulk_waiter *)userdata;
+		bulk_waiter = userdata;
 		init_completion(&bulk_waiter->event);
 		bulk_waiter->actual = 0;
 		bulk_waiter->bulk = NULL;
 		break;
 	case VCHIQ_BULK_MODE_WAITING:
-		bulk_waiter = (struct bulk_waiter *)userdata;
+		bulk_waiter = userdata;
 		bulk = bulk_waiter->bulk;
 		goto waiting;
 	default:
@@ -3624,7 +3624,7 @@ VCHIQ_STATUS_T vchiq_send_remote_use_active(struct vchiq_state *state)
 void vchiq_log_dump_mem(const char *label, u32 addr, const void *void_mem,
 	size_t num_bytes)
 {
-	const u8  *mem = (const u8 *)void_mem;
+	const u8  *mem = void_mem;
 	size_t          offset;
 	char            line_buf[100];
 	char           *s;
-- 
2.17.1


