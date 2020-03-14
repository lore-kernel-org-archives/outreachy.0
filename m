X-GM-THRID: 6803926658306801664
X-Received: by 2002:a19:6502:: with SMTP id z2mr9034241lfb.47.1584162623285;
        Fri, 13 Mar 2020 22:10:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls1755639lfe.3.gmail; Fri, 13
 Mar 2020 22:10:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt4r0KAha7sOueKNGdwuqEZo3stINqI1f1CqzOzIwjADHrUqixi0T1XaOkJXZSboqRous0E
X-Received: by 2002:a19:4cc2:: with SMTP id z185mr10624310lfa.0.1584162621834;
        Fri, 13 Mar 2020 22:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584162621; cv=none;
        d=google.com; s=arc-20160816;
        b=MBsrzzLMTjp1FnPhWyLMGEwp3V5DXqpByWj+8KwPg+73e1XxQ+cv6/BE1zYgXBW2hu
         pMOREn6pBkhIp15lJlc54uqMNBYzIyzCfGjvAK/UibtWF3U4zgZSRzF4huhXI78xC5mN
         aOkQ+8l2xpX9ggRiJjuaoIkX9QNmxDoPoXqzoKJeocFvySgG7GdMKOeXjKE9bCSnQgrM
         cEm8gX+arrgoPJWR2SzqWk9d700TTrRUH/LKhW46/R0v+QqqpNzAGSLh/yqKK+sxXP03
         7STPEetfdozc+EU446j2rFSjWwQt/fSTqAiFswKKJ4b+kBMrUjbxcbH/GRvBzZuACwLN
         1nvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=/sBNkAjxADz8Gz+YhXATs/DLq92ND1HuQ6+rD2SVZnA=;
        b=ffw4srJv6TtHckAUm3U6GrGtqrVwpRqHYSdaIAz9JPjU5M9mUGHB+aEKLDnHKfgPBK
         4OZgF4JwHjfflFDKXS1vrPnTDotnFV8FWBI4X9JMwiUQ6IT+NZ1SwfWhpGhSUCAjSYCv
         A4WQtn5mNwuy4gEcyYJswgwqHP8irKDN+OfKzNQnKZRR+fbQY9NDFvHlKunK8fX/xhSN
         dD5yIzZ76DG55xR+LF+zs+g/FeP0N63aj/Ik13xVziesnQ5IOus15qSRFJrnMWoeSVy4
         I7Q9mXYuiUT034uEkG405+OtW2FbZBvHU1HDgoKMg5avnFNL1w3pFgulqvAp6kgps8Qk
         +9BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id o24si589542lji.4.2020.03.13.22.10.21
        for <outreachy-kernel@googlegroups.com>;
        Fri, 13 Mar 2020 22:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 1362 invoked from network); 14 Mar 2020 05:10:16 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.242.88.46)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 14 Mar 2020 05:10:16 -0000
Date: Sat, 14 Mar 2020 10:40:07 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: vc04_services: interface: vchi: Fix longline
 comments
Message-ID: <20200314050955.GA1504@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Fixes long line comments in C header file.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 .../interface/vchi/vchi_common.h              | 37 ++++++++++++-------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 141af16ce031..e0f349b05e22 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -7,9 +7,13 @@
 //flags used when sending messages (must be bitmapped)
 enum vchi_flags {
 	VCHI_FLAGS_NONE                      = 0x0,
-	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1,   // waits for message to be received, or sent (NB. not the same as being seen on other side)
-	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2,   // run a callback when message sent
-	VCHI_FLAGS_BLOCK_UNTIL_QUEUED        = 0x4,   // return once the transfer is in a queue ready to go
+	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1,
+		// waits for message to be received, or sent (NB. not the
+		// same as being seen on other side)
+	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2,
+		// run a callback when message sent
+	VCHI_FLAGS_BLOCK_UNTIL_QUEUED        = 0x4,
+		// return once the transfer is in a queue ready to go
 	VCHI_FLAGS_ALLOW_PARTIAL             = 0x8,
 	VCHI_FLAGS_BLOCK_UNTIL_DATA_READ     = 0x10,
 	VCHI_FLAGS_CALLBACK_WHEN_DATA_READ   = 0x20,
@@ -35,8 +39,10 @@ enum vchi_callback_reason {
 
 	//This indicates that there is data available
 	//handle is the msg id that was transmitted with the data
-	//    When a message is received and there was no FULL message available previously, send callback
-	//    Tasks get kicked by the callback, reset their event and try and read from the fifo until it fails
+	//    When a message is received and there was no FULL message
+	//     available previously, send callback
+	//    Tasks get kicked by the callback, reset their event and
+	//     try and read from the fifo until it fails
 	VCHI_CALLBACK_MSG_AVAILABLE,
 	VCHI_CALLBACK_MSG_SENT,
 	VCHI_CALLBACK_MSG_SPACE_AVAILABLE, // XXX not yet implemented
@@ -51,9 +57,10 @@ enum vchi_callback_reason {
 
 	VCHI_CALLBACK_SERVICE_CLOSED,
 
-	// this side has sent XOFF to peer due to lack of data consumption by service
-	// (suggests the service may need to take some recovery action if it has
-	// been deliberately holding off consuming data)
+	// this side has sent XOFF to peer due to lack of data consumption
+	//  by service
+	// (suggests the service may need to take some recovery action if it
+	//  has been deliberately holding off consuming data)
 	VCHI_CALLBACK_SENT_XOFF,
 	VCHI_CALLBACK_SENT_XON,
 
@@ -112,12 +119,14 @@ struct vchi_msg_vector {
 	int32_t vec_len;
 };
 
-// Iterator structure for reading ahead through received message queue. Allocated by client,
-// initialised by vchi_msg_look_ahead. Fields are for internal VCHI use only.
-// Iterates over messages in queue at the instant of the call to vchi_msg_lookahead -
-// will not proceed to messages received since. Behaviour is undefined if an iterator
-// is used again after messages for that service are removed/dequeued by any
-// means other than vchi_msg_iter_... calls on the iterator itself.
+// Iterator structure for reading ahead through received message queue.
+// Allocated by client, initialised by vchi_msg_look_ahead. Fields are
+//   for internal VCHI use only.
+// Iterates over messages in queue at the instant of the call to
+//  vchi_msg_lookahead - will not proceed to messages received since.
+// Behaviour is undefined if an iterator is used again after messages for
+//  that service are removed/dequeued by any means other than
+//  vchi_msg_iter_... calls on the iterator itself.
 struct vchi_msg_iter {
 	struct opaque_vchi_service_t *service;
 	void *last;
-- 
2.20.1


