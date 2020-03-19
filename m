X-GM-THRID: 6805857060632133632
X-Received: by 2002:a1c:4342:: with SMTP id q63mr2917449wma.137.1584612080409;
        Thu, 19 Mar 2020 03:01:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls867829wmc.0.gmail; Thu, 19 Mar
 2020 03:01:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvCDrCpfQ+P1Z8RXKZvhzpWYFznDkt99GQWuueopRzO+tqFe3xg6NJXrEUWsoa0YYgl611T
X-Received: by 2002:a1c:2043:: with SMTP id g64mr2868859wmg.129.1584612079101;
        Thu, 19 Mar 2020 03:01:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584612079; cv=none;
        d=google.com; s=arc-20160816;
        b=qTd0+PlurgReQ0yvCQGtE4xeY+Fqw1lOIhqgy7ZXpDGwQcSZerkk9gaPAkCLhJtSCk
         La6ds2juoWDrFtbcHBGyS1ReCF8DV4bkn4m/6giSBjm8zL/V7Ra/6o5ZFl3diHMoJ1uv
         r/jvwBq1BF32NYhOPwXxRWRehhqmRkCf9EOtBfP/45sJ6u7zQW2e4nEq4jvQTdjA/eWw
         SEIGXgnAZIZunEdMGWtpcW4DkE/GtI07yOya1Syd8tHu972xSJg6EXKVHEp9i+6KKbOJ
         Fmt70KUjRtKwDdAA6jpyCx5sm2daGmp3G82go5az3cAVPnE/mzKoJD3FFsIuFdTS0E3F
         I9RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=gxhB0OG2lo26KKS6ZtW5TAOZ2Jx9+y9wUjpNXkJpBZA=;
        b=Xiar8g8r013n5SNVY8qSbz0SU6R73S4UVFuIiLfB8IG+i0gWSQjhqH6G8DVpG5ox9G
         aSkriIrHnEYVHbyqvU+BJ8dPXwsSJGznS2HiF/1yB9yZHiXvbUjzgSImaqKLaVrPGjr0
         qI7+yJmgdQlQxuU5gFwZZU9pifW9KAcRieLce31/r3LL889CL1pqF9aPqP3wvnvY6io4
         wBX2uCWVZ43wiH0p9m/OEbcBKsmnYTn7Q6iUncBnaqtsq+nHYk0AEigMt5lkNuIKQn36
         x4ZWeeDEzZtzNn9pKLkEVcRaC+nnbYaqUs5PLkPZhqt5GqabyFdUEFYdi72FHmi7WODP
         oY1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id a18si62041wra.0.2020.03.19.03.01.19
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:01:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26765 invoked from network); 19 Mar 2020 10:01:17 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:01:17 -0000
Date: Thu, 19 Mar 2020 15:31:10 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] staging: vc04_services: interface: vchi: Correct long
 lines and style of comments
Message-ID: <20200319100059.GA3310@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Correct long lines of comments to respect
80 character line limit.
Change the comments to C89 style.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Change the comments to C89 style
---
 .../interface/vchi/vchi_common.h              | 90 +++++++++++--------
 1 file changed, 52 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 141af16ce031..29fbe4505223 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -4,70 +4,80 @@
 #ifndef VCHI_COMMON_H_
 #define VCHI_COMMON_H_
 
-//flags used when sending messages (must be bitmapped)
+/* flags used when sending messages (must be bitmapped) */
 enum vchi_flags {
 	VCHI_FLAGS_NONE                      = 0x0,
-	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1,   // waits for message to be received, or sent (NB. not the same as being seen on other side)
-	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2,   // run a callback when message sent
-	VCHI_FLAGS_BLOCK_UNTIL_QUEUED        = 0x4,   // return once the transfer is in a queue ready to go
+	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1, /* waits for message to be
+ received, or sent (NB. not the same as being seen on other side) */
+	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2, /* run a callback when
+							message sent */
+	VCHI_FLAGS_BLOCK_UNTIL_QUEUED        = 0x4, /* return once the transfer
+						    is in a queue ready to go */
 	VCHI_FLAGS_ALLOW_PARTIAL             = 0x8,
 	VCHI_FLAGS_BLOCK_UNTIL_DATA_READ     = 0x10,
 	VCHI_FLAGS_CALLBACK_WHEN_DATA_READ   = 0x20,
 
-	VCHI_FLAGS_ALIGN_SLOT            = 0x000080,  // internal use only
-	VCHI_FLAGS_BULK_AUX_QUEUED       = 0x010000,  // internal use only
-	VCHI_FLAGS_BULK_AUX_COMPLETE     = 0x020000,  // internal use only
-	VCHI_FLAGS_BULK_DATA_QUEUED      = 0x040000,  // internal use only
-	VCHI_FLAGS_BULK_DATA_COMPLETE    = 0x080000,  // internal use only
+	VCHI_FLAGS_ALIGN_SLOT            = 0x000080,  /* internal use only */
+	VCHI_FLAGS_BULK_AUX_QUEUED       = 0x010000,  /* internal use only */
+	VCHI_FLAGS_BULK_AUX_COMPLETE     = 0x020000,  /* internal use only */
+	VCHI_FLAGS_BULK_DATA_QUEUED      = 0x040000,  /* internal use only */
+	VCHI_FLAGS_BULK_DATA_COMPLETE    = 0x080000,  /* internal use only */
 	VCHI_FLAGS_INTERNAL              = 0xFF0000
 };
 
-// constants for vchi_crc_control()
+/* constants for vchi_crc_control() */
 enum vchi_crc_control {
 	VCHI_CRC_NOTHING = -1,
 	VCHI_CRC_PER_SERVICE = 0,
 	VCHI_CRC_EVERYTHING = 1,
 };
 
-//callback reasons when an event occurs on a service
+/* callback reasons when an event occurs on a service */
 enum vchi_callback_reason {
 	VCHI_CALLBACK_REASON_MIN,
 
-	//This indicates that there is data available
-	//handle is the msg id that was transmitted with the data
-	//    When a message is received and there was no FULL message available previously, send callback
-	//    Tasks get kicked by the callback, reset their event and try and read from the fifo until it fails
+/*
+ * This indicates that there is data available handle is the msg id that
+ * was transmitted with the data
+ * When a message is received and there was no FULL message available
+ * previously, send callback
+ * Tasks get kicked by the callback, reset their event and try and read from
+ * the fifo until it fails
+ */
 	VCHI_CALLBACK_MSG_AVAILABLE,
 	VCHI_CALLBACK_MSG_SENT,
-	VCHI_CALLBACK_MSG_SPACE_AVAILABLE, // XXX not yet implemented
+	VCHI_CALLBACK_MSG_SPACE_AVAILABLE, /* XXX not yet implemented */
 
-	// This indicates that a transfer from the other side has completed
+	/* This indicates that a transfer from the other side has completed */
 	VCHI_CALLBACK_BULK_RECEIVED,
-	//This indicates that data queued up to be sent has now gone
-	//handle is the msg id that was used when sending the data
+	/* This indicates that data queued up to be sent has now gone handle
+	   is the msg id that was used when sending the data */
 	VCHI_CALLBACK_BULK_SENT,
-	VCHI_CALLBACK_BULK_RX_SPACE_AVAILABLE, // XXX not yet implemented
-	VCHI_CALLBACK_BULK_TX_SPACE_AVAILABLE, // XXX not yet implemented
+	VCHI_CALLBACK_BULK_RX_SPACE_AVAILABLE, /* XXX not yet implemented */
+	VCHI_CALLBACK_BULK_TX_SPACE_AVAILABLE, /* XXX not yet implemented */
 
 	VCHI_CALLBACK_SERVICE_CLOSED,
 
-	// this side has sent XOFF to peer due to lack of data consumption by service
-	// (suggests the service may need to take some recovery action if it has
-	// been deliberately holding off consuming data)
+	/*
+	 * this side has sent XOFF to peer due to lack of data consumption by
+	 * service (suggests the service may need to take some recovery action
+	 * if it has been deliberately holding off consuming data)
+	 */
 	VCHI_CALLBACK_SENT_XOFF,
 	VCHI_CALLBACK_SENT_XON,
 
-	// indicates that a bulk transfer has finished reading the source buffer
+	/* indicates that a bulk transfer has finished reading the source
+	   buffer */
 	VCHI_CALLBACK_BULK_DATA_READ,
 
-	// power notification events (currently host side only)
+	/* power notification events (currently host side only) */
 	VCHI_CALLBACK_PEER_OFF,
 	VCHI_CALLBACK_PEER_SUSPENDED,
 	VCHI_CALLBACK_PEER_ON,
 	VCHI_CALLBACK_PEER_RESUMED,
 	VCHI_CALLBACK_FORCED_POWER_OFF,
 
-	// some extra notifications provided by vchiq_arm
+	/* some extra notifications provided by vchiq_arm */
 	VCHI_CALLBACK_SERVICE_OPENED,
 	VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
 	VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
@@ -75,7 +85,7 @@ enum vchi_callback_reason {
 	VCHI_CALLBACK_REASON_MAX
 };
 
-// service control options
+/* service control options */
 enum vchi_service_option {
 	VCHI_SERVICE_OPTION_MIN,
 
@@ -85,10 +95,10 @@ enum vchi_service_option {
 	VCHI_SERVICE_OPTION_MAX
 };
 
-//Callback used by all services / bulk transfers
-typedef void (*vchi_callback)(void *callback_param, //my service local param
+/* Callback used by all services / bulk transfers */
+typedef void (*vchi_callback)(void *callback_param, /* my service local param */
 			      enum vchi_callback_reason reason,
-			      void *handle); //for transmitting msg's only
+			      void *handle); /* for transmitting msg's only */
 
 /*
  * Define vector struct for scatter-gather (vector) operations
@@ -112,12 +122,16 @@ struct vchi_msg_vector {
 	int32_t vec_len;
 };
 
-// Iterator structure for reading ahead through received message queue. Allocated by client,
-// initialised by vchi_msg_look_ahead. Fields are for internal VCHI use only.
-// Iterates over messages in queue at the instant of the call to vchi_msg_lookahead -
-// will not proceed to messages received since. Behaviour is undefined if an iterator
-// is used again after messages for that service are removed/dequeued by any
-// means other than vchi_msg_iter_... calls on the iterator itself.
+/*
+ * Iterator structure for reading ahead through received message queue.
+ * Allocated by client, initialised by vchi_msg_look_ahead. Fields are
+ * for internal VCHI use only.
+ * Iterates over messages in queue at the instant of the call to
+ * vchi_msg_lookahead - will not proceed to messages received since.
+ * Behaviour is undefined if an iterator is used again after messages for
+ * that service are removed/dequeued by any means other than
+ * vchi_msg_iter_... calls on the iterator itself.
+ */
 struct vchi_msg_iter {
 	struct opaque_vchi_service_t *service;
 	void *last;
@@ -125,4 +139,4 @@ struct vchi_msg_iter {
 	void *remove;
 };
 
-#endif // VCHI_COMMON_H_
+#endif /* VCHI_COMMON_H_ */
-- 
2.20.1


