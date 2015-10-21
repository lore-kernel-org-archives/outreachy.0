X-GM-THRID: 6208177008118071296
X-Received: by 10.182.29.41 with SMTP id g9mr9304365obh.27.1445454196290;
        Wed, 21 Oct 2015 12:03:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.204 with SMTP id r73ls636977ioi.51.gmail; Wed, 21 Oct
 2015 12:03:15 -0700 (PDT)
X-Received: by 10.107.7.230 with SMTP id g99mr9666088ioi.17.1445454195974;
        Wed, 21 Oct 2015 12:03:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ce6si1283080pad.0.2015.10.21.12.03.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 12:03:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fv9so64999887pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 12:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PIIIFDwH7K7t5VQn6OXT3OUfObKCQeMKU87F1OwHTq0=;
        b=Ba4eYPVRT3/S34nxLFEZdWEBQcDy9ZyQKs53Pm8vW3O4cL2JorijmuBW7Qr6Pow0L7
         vQI42OBRFVjPu4QmuoYhz8rpP12lazXOZxMSOC5yaJ0TxoPiLh2AGUq2EowPP3p0uubJ
         zoiC1/ylVTxkc+sKCwe4tlpYfyUQoKVu9INB7vDHgUJlWqzcohHKCccRlnufg7IwtJhC
         uFC9UWZngftnimy9M86mSYje113m2RBYTR5MG1aKy2aisbOnHYTfszJzQz+WZ7sJgxLQ
         7B1OOOXKj74PQll6xa4AiOWYsZig2/OfghqNjb0JRIMFsU6Rt+9wBMWpOOgwokic37n2
         wnHg==
X-Received: by 10.66.248.10 with SMTP id yi10mr12631799pac.6.1445454195782;
        Wed, 21 Oct 2015 12:03:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.194.209])
        by smtp.gmail.com with ESMTPSA id by6sm5732089pab.25.2015.10.21.12.03.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 12:03:15 -0700 (PDT)
Date: Thu, 22 Oct 2015 00:33:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: lustre: lnet: Fix endian sparse warnings
Message-ID: <661be4508c123053e8c41b7810f53676fba06eb7.1445453573.git.amitoj1606@gmail.com>
References: <cover.1445453573.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445453573.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix bug found using sparse which generates the following warning:

drivers/staging/lustre/lnet/lnet/lib-msg.c:72:37: warning: cast to
restricted __le64
drivers/staging/lustre/lnet/lnet/lib-msg.c:73:37: warning: cast to
restricted __le32
drivers/staging/lustre/lnet/lnet/lib-msg.c:116:42: warning: cast to
restricted __le32
drivers/staging/lustre/lnet/lnet/lib-msg.c:117:42: warning: cast to
restricted __le64
drivers/staging/lustre/lnet/lnet/lib-msg.c:118:42: warning: cast to
restricted __le32
drivers/staging/lustre/lnet/lnet/lib-msg.c:120:42: warning: cast to
restricted __le32
drivers/staging/lustre/lnet/lnet/lib-msg.c:121:42: warning: cast to
restricted __le64
drivers/staging/lustre/lnet/lnet/lib-msg.c:125:42: warning: cast to
restricted __le32
drivers/staging/lustre/lnet/lnet/lib-msg.c:126:42: warning: cast to
restricted __le64
drivers/staging/lustre/lnet/lnet/lib-msg.c:128:42: warning: cast to
restricted __le32
drivers/staging/lustre/lnet/lnet/lib-msg.c:129:42: warning: cast to
restricted __le32
drivers/staging/lustre/lnet/lnet/lib-msg.c:384:46: warning: incorrect
type in assignment (different base types)
drivers/staging/lustre/lnet/lnet/lib-msg.c:384:46: expected unsigned
int [unsigned] [usertype] mlength
drivers/staging/lustre/lnet/lnet/lib-msg.c:384:46: got restricted
__le32 [usertype] <noident>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/lib-msg.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/lib-msg.c b/drivers/staging/lustre/lnet/lnet/lib-msg.c
index 43977e8..4ad9a340 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-msg.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-msg.c
@@ -69,8 +69,8 @@ lnet_build_msg_event(lnet_msg_t *msg, lnet_event_kind_t ev_type)
 
 	if (ev_type == LNET_EVENT_SEND) {
 		/* event for active message */
-		ev->target.nid    = le64_to_cpu(hdr->dest_nid);
-		ev->target.pid    = le32_to_cpu(hdr->dest_pid);
+		ev->target.nid    = hdr->dest_nid;
+		ev->target.pid    = hdr->dest_pid;
 		ev->initiator.nid = LNET_NID_ANY;
 		ev->initiator.pid = the_lnet.ln_pid;
 		ev->sender        = LNET_NID_ANY;
@@ -113,20 +113,20 @@ lnet_build_msg_event(lnet_msg_t *msg, lnet_event_kind_t ev_type)
 
 	case LNET_EVENT_SEND: /* active message */
 		if (msg->msg_type == LNET_MSG_PUT) {
-			ev->pt_index   = le32_to_cpu(hdr->msg.put.ptl_index);
-			ev->match_bits = le64_to_cpu(hdr->msg.put.match_bits);
-			ev->offset     = le32_to_cpu(hdr->msg.put.offset);
+			ev->pt_index   = hdr->msg.put.ptl_index;
+			ev->match_bits = hdr->msg.put.match_bits;
+			ev->offset     = hdr->msg.put.offset;
 			ev->mlength    =
-			ev->rlength    = le32_to_cpu(hdr->payload_length);
-			ev->hdr_data   = le64_to_cpu(hdr->msg.put.hdr_data);
+			ev->rlength    = hdr->payload_length;
+			ev->hdr_data   = hdr->msg.put.hdr_data;
 
 		} else {
 			LASSERT(msg->msg_type == LNET_MSG_GET);
-			ev->pt_index   = le32_to_cpu(hdr->msg.get.ptl_index);
-			ev->match_bits = le64_to_cpu(hdr->msg.get.match_bits);
+			ev->pt_index   = hdr->msg.get.ptl_index;
+			ev->match_bits = hdr->msg.get.match_bits;
 			ev->mlength    =
-			ev->rlength    = le32_to_cpu(hdr->msg.get.sink_length);
-			ev->offset     = le32_to_cpu(hdr->msg.get.src_offset);
+			ev->rlength    = hdr->msg.get.sink_length;
+			ev->offset     = hdr->msg.get.src_offset;
 			ev->hdr_data   = 0;
 		}
 		return;
@@ -381,7 +381,7 @@ lnet_complete_msg_locked(lnet_msg_t *msg, int cpt)
 
 		msg->msg_hdr.msg.ack.dst_wmd = ack_wmd;
 		msg->msg_hdr.msg.ack.match_bits = msg->msg_ev.match_bits;
-		msg->msg_hdr.msg.ack.mlength = cpu_to_le32(msg->msg_ev.mlength);
+		msg->msg_hdr.msg.ack.mlength = msg->msg_ev.mlength;
 
 		/* NB: we probably want to use NID of msg::msg_from as 3rd
 		 * parameter (router NID) if it's routed message */
-- 
1.9.1


