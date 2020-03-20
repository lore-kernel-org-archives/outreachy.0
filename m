X-GM-THRID: 6806115438328545280
X-Received: by 2002:a2e:9b44:: with SMTP id o4mr3844822ljj.63.1584672238582;
        Thu, 19 Mar 2020 19:43:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:1103:: with SMTP id l3ls742390lfg.6.gmail; Thu, 19
 Mar 2020 19:43:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtpQ0O9rmdYHTwLn69hdyRVA3CLYCoy/pCymUOxwE7Y3MAvPqi6U3zZQodBDi+TSvVQYsbC
X-Received: by 2002:a19:ec08:: with SMTP id b8mr3848281lfa.34.1584672237115;
        Thu, 19 Mar 2020 19:43:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584672237; cv=none;
        d=google.com; s=arc-20160816;
        b=YNKGTvOAxCDIAer7jycUwHXTQO4yfHUkAKL/Go8+31X0+UNjB0XmLFNF0KyEzI35xT
         nWo65QZMOxY4XNG8ESSp7F7YsB0kR3T8gbTsYBhE5pAlumlZXULz0ysTU/azy/g52lY0
         Yxyx4/ztA+/tuWPmDGWlT6iDpg4piNoVkIA97ug5RUzoqUz0Ugukr/lGemE1qP1iSGBa
         HVJW0pmESeLJK0kSPVLaL4AVOERv0jm8ndsvJ43A39XveXHfn6pYuEKShl19f/sNP/8R
         hMYdzCXYyH6KHDZE4tPddtwBkx0OCeDdwWW+ZSIxnDvGkcZnuUldn8sGX81ceFDkOAUC
         p74g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=sCytqDIUiRdPSqT3AyzPbgraAkTpejx3bSkafhc4RUY=;
        b=v3Ca5995d0bPoTXY6cFtGdEgCNXMtJEgBW3hdSY4ks4JvNzn/q9YGsYdekvZxI0nep
         /aNRTrTO9r81dxnsXMZP4l9WQTiba0jHjGtZKB4r04l5FZLRXBpTP59v8YLFmVW/Rcic
         C8xZG0iiIyT7N6sVt7cQYhCMgoMAbK920orUp2DweexANEmN0RrI9QNuqgacxskAuryg
         eHNDtKlPLhnLfra/pokwdZvLVS00L4SwxvTw20bM2L+m85FonqosFJX6bxnrQOTD+B/n
         E+GrC4G6xRWgNzAnA9IcmP24zuav8I2EaHFbo4tLy4PHhqMnV1NZrCvbR8y+CHtd80Mn
         HfXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id t3si113762lfq.5.2020.03.19.19.43.56
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 19:43:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 3941 invoked from network); 20 Mar 2020 02:43:49 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.188.29)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 02:43:49 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3] staging: vc04_services: interface: vchi: Correct long line comments and make them C89 style
Date: Fri, 20 Mar 2020 08:13:37 +0530
Message-Id: <20200320024337.4754-1-vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct long lines of comments to respect 80 character per line
limit and make them C89 style one.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v3:
 - Drop unneccessary changes in long line comments
   which decreased readability
 - Some comments did not need to be C89 style
Changes in v2:
 - Change the comments to C89 style
---
 .../interface/vchi/vchi_common.h              | 36 ++++++++++++-------
 1 file changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 141af16ce031..7fc04e38936d 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -33,10 +33,14 @@ enum vchi_crc_control {
 enum vchi_callback_reason {
 	VCHI_CALLBACK_REASON_MIN,
 
-	//This indicates that there is data available
-	//handle is the msg id that was transmitted with the data
-	//    When a message is received and there was no FULL message available previously, send callback
-	//    Tasks get kicked by the callback, reset their event and try and read from the fifo until it fails
+	/*
+	 * This indicates that there is data available handle is the msg id that
+	 * was transmitted with the data
+	 * When a message is received and there was no FULL message available
+	 * previously, send callback
+	 * Tasks get kicked by the callback, reset their event and try and read
+	 * from the fifo until it fails
+	 */
 	VCHI_CALLBACK_MSG_AVAILABLE,
 	VCHI_CALLBACK_MSG_SENT,
 	VCHI_CALLBACK_MSG_SPACE_AVAILABLE, // XXX not yet implemented
@@ -51,9 +55,11 @@ enum vchi_callback_reason {
 
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
 
@@ -112,12 +118,16 @@ struct vchi_msg_vector {
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
+ * Allocated by client, initialised by vchi_msg_look_ahead. Fields are for
+ * internal VCHI use only.
+ * Iterates over messages in queue at the instant of the call to
+ * vchi_msg_lookahead - will not proceed to messages received since.
+ * Behaviour is undefined if an iterator is used again after messages for that
+ * service are removed/dequeued by any means other than vchi_msg_iter_...
+ * calls on the iterator itself.
+ */
 struct vchi_msg_iter {
 	struct opaque_vchi_service_t *service;
 	void *last;
-- 
2.20.1


