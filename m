X-GM-THRID: 6257139046088179712
X-Received: by 10.107.18.216 with SMTP id 85mr24144001ios.16.1456853711025;
        Tue, 01 Mar 2016 09:35:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls3091703qgf.38.gmail; Tue, 01 Mar
 2016 09:35:10 -0800 (PST)
X-Received: by 10.140.18.239 with SMTP id 102mr34715363qgf.28.1456853710479;
        Tue, 01 Mar 2016 09:35:10 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id yd9si4506710pab.1.2016.03.01.09.35.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:35:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id w128so71838964pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 09:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9A/zFt7ycBa1PUmO/H841QLyVhQibDqNM5szYlpu8HI=;
        b=Tpmfa9c2Zi9ESQwQmNORKsyd2rzR7Hgeu7qWAW74XnAzJ0mpfzahpv6KVfLqsYXfGr
         Kkxe6xug3vQtRcK9NFgmIdTRybIPe4OtLcsX0Vr+M1pHdD/eW6lCam7qWqA9OJ6kTtI0
         KAtc1OLFT2K+WLmtnQRvLlju4WdBAhEbyderEyLSNjTkUxgaVBNmNYZYGH5pZCVwmp9h
         5aCYx+6tYBQXeZAE7Uq1s45SbcSAvfv6TB4V5YdOqBaWTli3EdASuwl4zDbpm4A35lu3
         2ufDg4hT+sp+OacAlNERqmcTsTdQVFomMlCJiwQbV+QRpbD6SK3itz0uuL1MDB8jjfUP
         dzVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9A/zFt7ycBa1PUmO/H841QLyVhQibDqNM5szYlpu8HI=;
        b=De2JnX5w+XxWU5KZq7Js91Sc4Cz+8MyJ0GXCOQZus+1YCCzOz1KFxgzgg3DVHpmB5m
         2gl98IZ/HJz+f/cJZP+h2c9AN1rFpxoPMkLGnnaPsm6FGgctFEhji7pR8Rg7wu04iM41
         E+ABEetvYeTStnkzD2MHZq4Ae4AWy/dXj8ZzhHOHSsmLxrV6YhicwIn2UF6J26Iahp3T
         qC3B3fl+yqbNsm3/6aPFO6AkvFmhpoYj1FMH1c0NS9qZMtgRJ8L+nAqNOE32dqDbXRH4
         RHtQrZc2UoRMDIhszi8tMETpQfgQCmO+vmj1zYjjonuV+t46tVU8QO4k/Lng2CVbM0Hj
         Q3hQ==
X-Gm-Message-State: AD7BkJKlAZBKLXON6tNOSueAE4yYdHLV90hNczQ2le6XNrjO0ksnKR4HJKJIBDGhoWeEqw==
X-Received: by 10.98.70.67 with SMTP id t64mr28669612pfa.110.1456853710202;
        Tue, 01 Mar 2016 09:35:10 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r29sm10875938pfi.9.2016.03.01.09.35.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 09:35:09 -0800 (PST)
Date: Tue, 1 Mar 2016 23:02:24 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: ptlrpc: Remove unnecessary macros
Message-ID: <20160301173208.GA21310@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macros REQS_SEC_SHIFT,REQS_USEC_SHIFT declare constants 32 and 16
and their occurences have been replaced with their respective values.
Also, occurences of REQS_SEQ_SHIFT have been replaced with
REQS_CPT_BITS.

This was detected using Coccinelle:

@@

identifier f;
constant c;
@@
*#define f(...) c

@@
identifier a,b;
@@

*#define f(...) b(...)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/events.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/events.c b/drivers/staging/lustre/lustre/ptlrpc/events.c
index 47be21a..7b7b8a7 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/events.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/events.c
@@ -243,9 +243,6 @@ void client_bulk_callback(lnet_event_t *ev)

 #define REQS_CPT_BITS(svcpt)	((svcpt)->scp_service->srv_cpt_bits)

-#define REQS_SEC_SHIFT		32
-#define REQS_USEC_SHIFT		16
-#define REQS_SEQ_SHIFT(svcpt)	REQS_CPT_BITS(svcpt)

 static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
 				   struct ptlrpc_request *req)
@@ -258,8 +255,7 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
 	 * it must be called with hold svcpt::scp_lock
 	 */

-	new_seq = (sec << REQS_SEC_SHIFT) |
-		  (usec << REQS_USEC_SHIFT) |
+	new_seq = (sec << 32) | (usec << 16) |
 		  (svcpt->scp_cpt < 0 ? 0 : svcpt->scp_cpt);

 	if (new_seq > svcpt->scp_hist_seq) {
@@ -268,14 +264,14 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
 		 */
 		svcpt->scp_hist_seq = new_seq;
 	} else {
-		LASSERT(REQS_SEQ_SHIFT(svcpt) < REQS_USEC_SHIFT);
+		LASSERT(REQS_CPT_BITS(svcpt) < 16);
 		/* NB: increase sequence number in current usec bucket,
 		 * however, it's possible that we used up all bits for
 		 * sequence and jumped into the next usec bucket (future time),
 		 * then we hope there will be less RPCs per bucket at some
 		 * point, and sequence will catch up again
 		 */
-		svcpt->scp_hist_seq += (1U << REQS_SEQ_SHIFT(svcpt));
+		svcpt->scp_hist_seq += (1U << REQS_CPT_BITS(svcpt));
 		new_seq = svcpt->scp_hist_seq;
 	}

--
2.1.4


