X-GM-THRID: 4525053181952
X-Received: by 10.152.1.5 with SMTP id 5mr2423822lai.4.1425081198581;
        Fri, 27 Feb 2015 15:53:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.5 with SMTP id g5ls203403lag.28.gmail; Fri, 27 Feb 2015
 15:53:17 -0800 (PST)
X-Received: by 10.112.40.81 with SMTP id v17mr2423689lbk.5.1425081197158;
        Fri, 27 Feb 2015 15:53:17 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id ew5si219051wid.1.2015.02.27.15.53.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:53:17 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so23276517wev.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0/H+7vNnVf9Rq5tdvNFjs/0Wwz8biuJcHwecrwflMzU=;
        b=K7Qi15ZnMXiQO6uX3L3L8AKM2tyWqH+4/eiXcYMzVbOPpiPn/TtTphB1UTPLzmzUgd
         us4F1/QXm6mDdOrCwfGXMASfCrRteVChAUVhGwQljMISNkrr5al852zg+vo4GlFINNN9
         ahriyc0hraMx0/USbaqx2sSfcmrY7Q8NVwjT2/XdTOFPES7zAAjrHuM1VHren5xmqPEq
         cNPD9OZ2eIpdmBiU3TWkNZhQW6a9M2y/smh/lRCYGpxReuQ3Usjkka1jKOzX7KSas5nl
         syv6KqrnQwDyHko2urL+IvyTe5zH7AwBXcLKJrXpj+aOIPvUWZpDCXq2Upaesvx2dFcr
         hUrA==
X-Received: by 10.180.76.45 with SMTP id h13mr10986632wiw.51.1425081197045;
        Fri, 27 Feb 2015 15:53:17 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id y3sm8025705wju.14.2015.02.27.15.53.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:53:16 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 01:53:10 +0200
Message-Id: <1425081190-4624-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/pack_generic.c WARNING: Missing a blank
line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 .../staging/lustre/lustre/ptlrpc/pack_generic.c    | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
index 2f45f765..bce4b42 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
@@ -96,6 +96,7 @@ static inline int lustre_msg_check_version_v2(struct lustre_msg_v2 *msg,
 					      __u32 version)
 {
 	__u32 ver = lustre_msg_get_version(msg);
+
 	return (ver & LUSTRE_VERSION_MASK) != version;
 }
 
@@ -118,6 +119,7 @@ EXPORT_SYMBOL(lustre_msg_check_version);
 int lustre_msg_early_size(void)
 {
 	static int size = 0;
+
 	if (!size) {
 		/* Always reply old ptlrpc_body_v2 to keep interoprability
 		 * with the old client (< 2.3) which doesn't have pb_jobid
@@ -127,6 +129,7 @@ int lustre_msg_early_size(void)
 		 *     client.
 		 */
 		__u32 pblen = sizeof(struct ptlrpc_body_v2);
+
 		size = lustre_msg_size(LUSTRE_MSG_MAGIC_V2, 1, &pblen);
 	}
 	return size;
@@ -207,6 +210,7 @@ void lustre_init_msg_v2(struct lustre_msg_v2 *msg, int count, __u32 *lens,
 	ptr = (char *)msg + lustre_msg_hdr_size_v2(count);
 	for (i = 0; i < count; i++) {
 		char *tmp = bufs[i];
+
 		LOGL(tmp, lens[i], ptr);
 	}
 }
@@ -591,6 +595,7 @@ EXPORT_SYMBOL(__lustre_unpack_msg);
 int ptlrpc_unpack_req_msg(struct ptlrpc_request *req, int len)
 {
 	int rc;
+
 	rc = __lustre_unpack_msg(req->rq_reqmsg, len);
 	if (rc == 1) {
 		lustre_set_req_swabbed(req, MSG_PTLRPC_HEADER_OFF);
@@ -603,6 +608,7 @@ EXPORT_SYMBOL(ptlrpc_unpack_req_msg);
 int ptlrpc_unpack_rep_msg(struct ptlrpc_request *req, int len)
 {
 	int rc;
+
 	rc = __lustre_unpack_msg(req->rq_repmsg, len);
 	if (rc == 1) {
 		lustre_set_rep_swabbed(req, MSG_PTLRPC_HEADER_OFF);
@@ -831,6 +837,7 @@ __u32 lustre_msg_get_flags(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return 0;
@@ -850,6 +857,7 @@ void lustre_msg_add_flags(struct lustre_msg *msg, int flags)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		LASSERTF(pb, "invalid msg %p: no ptlrpc body!\n", msg);
 		pb->pb_flags |= flags;
 		return;
@@ -865,6 +873,7 @@ void lustre_msg_set_flags(struct lustre_msg *msg, int flags)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		LASSERTF(pb, "invalid msg %p: no ptlrpc body!\n", msg);
 		pb->pb_flags = flags;
 		return;
@@ -880,6 +889,7 @@ void lustre_msg_clear_flags(struct lustre_msg *msg, int flags)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		LASSERTF(pb, "invalid msg %p: no ptlrpc body!\n", msg);
 		pb->pb_flags &= ~(MSG_GEN_FLAG_MASK & flags);
 		return;
@@ -895,6 +905,7 @@ __u32 lustre_msg_get_op_flags(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return 0;
@@ -912,6 +923,7 @@ void lustre_msg_add_op_flags(struct lustre_msg *msg, int flags)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		LASSERTF(pb, "invalid msg %p: no ptlrpc body!\n", msg);
 		pb->pb_op_flags |= flags;
 		return;
@@ -927,6 +939,7 @@ void lustre_msg_set_op_flags(struct lustre_msg *msg, int flags)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		LASSERTF(pb, "invalid msg %p: no ptlrpc body!\n", msg);
 		pb->pb_op_flags |= flags;
 		return;
@@ -942,6 +955,7 @@ struct lustre_handle *lustre_msg_get_handle(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return NULL;
@@ -960,6 +974,7 @@ __u32 lustre_msg_get_type(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return PTL_RPC_MSG_ERR;
@@ -978,6 +993,7 @@ __u32 lustre_msg_get_version(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return 0;
@@ -996,6 +1012,7 @@ void lustre_msg_add_version(struct lustre_msg *msg, int version)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		LASSERTF(pb, "invalid msg %p: no ptlrpc body!\n", msg);
 		pb->pb_version |= version;
 		return;
@@ -1011,6 +1028,7 @@ __u32 lustre_msg_get_opc(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return 0;
@@ -1030,6 +1048,7 @@ __u64 lustre_msg_get_last_xid(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return 0;
@@ -1048,6 +1067,7 @@ __u64 lustre_msg_get_last_committed(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+"
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return 0;
@@ -1068,6 +1088,7 @@ __u64 *lustre_msg_get_versions(struct lustre_msg *msg)
 		return NULL;
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return NULL;
@@ -1086,6 +1107,7 @@ __u64 lustre_msg_get_transno(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return 0;
@@ -1104,6 +1126,7 @@ int lustre_msg_get_status(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return -EINVAL;
@@ -1123,6 +1146,7 @@ __u64 lustre_msg_get_slv(struct lustre_msg *msg)
 	switch (msg->lm_magic) {
 	case LUSTRE_MSG_MAGIC_V2: {
 		struct ptlrpc_body *pb = lustre_msg_ptlrpc_body(msg);
+		
 		if (!pb) {
 			CERROR("invalid msg %p: no ptlrpc body!\n", msg);
 			return -EINVAL;
-- 
1.9.1


