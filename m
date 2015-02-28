X-GM-THRID: 4525053181952
X-Received: by 10.152.1.5 with SMTP id 5mr2658193lai.4.1425122733742;
        Sat, 28 Feb 2015 03:25:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.4 with SMTP id f4ls189694lah.18.gmail; Sat, 28 Feb 2015
 03:25:32 -0800 (PST)
X-Received: by 10.112.219.102 with SMTP id pn6mr2618583lbc.12.1425122732516;
        Sat, 28 Feb 2015 03:25:32 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id ew5si290372wid.1.2015.02.28.03.25.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:32 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id w55so24848747wes.4
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0/H+7vNnVf9Rq5tdvNFjs/0Wwz8biuJcHwecrwflMzU=;
        b=lc4NOv82HwWR0kUJjjFBmTsOBN6r2QIw6JwJVSlkajt8vkxIZ6fMqR9ywS+/YXM40g
         O4Bz4YrKGYo/WXSnioiVOzlfbBda1TnW9wCbHO5N+vm5zzRZSLkkPZ+GHo6LEElFMa7o
         ekTsfTRbdSRAN5ZDAeZ8aKAXPFaJLdzf4bYWaJn6oNJhvOGyhoAXGHqDLMeDRtbPhv8i
         FEDLsnhxPYSKe/aTytSKUD1HArT1EO3lBEnv1QJ1oAj5ZeOD3OV6qxSr2RXHuewll5Ka
         GS7Gy8Yoo7c4psMWRVaKPiiLZAOxc9zILLmZN7eIDGvjyG7nIb3t3c7tnqSQAZx69zLd
         gbQA==
X-Received: by 10.180.19.228 with SMTP id i4mr15997136wie.13.1425122732442;
        Sat, 28 Feb 2015 03:25:32 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:31 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 05/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:10 +0200
Message-Id: <1425122715-2938-5-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>

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


