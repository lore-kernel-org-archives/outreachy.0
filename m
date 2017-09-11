X-GM-THRID: 6464629174501900288
X-Received: by 10.107.50.72 with SMTP id y69mr7212699ioy.40.1505163771936;
        Mon, 11 Sep 2017 14:02:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.12 with SMTP id j12ls4750935ioe.20.gmail; Mon, 11 Sep
 2017 14:02:51 -0700 (PDT)
X-Received: by 10.202.197.6 with SMTP id v6mr7553233oif.82.1505163771141;
        Mon, 11 Sep 2017 14:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505163771; cv=none;
        d=google.com; s=arc-20160816;
        b=dE/GA9ukop4uJado339aGkHps7u4o6VcfvZnwY+O2SxN67tEJjZDqBvkzvrFZLNEaB
         f2dDI1cRuBqK4HLZ1kg8mK2Vo6+DpULfJJtwBAHCHj2RR0KcxrmqDxYqsm36vg53PCNS
         5ELWD5yZRQhGVEZA7LOOaC0SNSFXydCLGBL+DOqLIzzQlEUJqISMN0XfDOtKq75biG7y
         LlKDYuJqLiTjWYfIiSSbDJhuOn1PLDfDZIXctsAQZZSvXgUg1RvGvkobSk7b8B2zFFqR
         HE8s8npgNB6HLBWLogXH/v4BPH7/ipaPMnZWAAEPCDVypMyQe9RkyHeaKO/nNIMT3lxs
         TEqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=NPKX72KiRDPzRyY/agShRkBFAhkiwovrRyF93FBbX+Q=;
        b=gofVPcrIVW+i/z6M0UcqHpGJagCSd4X1faOAD6QIHuyqhdtCjkZrDVa3+H7IKCBp95
         N/pbaLN+GVXQTQwoLWpYYT8ly0BkLfKhLBjkhT52nkSHEAwLSXGBIZN6HRspqoGWyXSE
         2G/xH39UxisDI+3jsjH+YXVJvptEAmCas3IIV8ZcRR4fvNGeL4UIKVaFtnJnvFbizHxX
         oTPyFyA/sP3mLspJDjkT3MIefedUGiEpTsgz/oVaJHn45DPpmDMGPaOvx8gulRj7BYar
         6qW1RxjPlKxy6Xm4H4BFOw83Sjn2KUJOKYzLVSfdpLVYVsassHEO1Zp81Pqtb9QNfIWl
         Zh3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ze8mif3q;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id q15si816746pfi.7.2017.09.11.14.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 14:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ze8mif3q;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q76so5377565pfq.5
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 14:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NPKX72KiRDPzRyY/agShRkBFAhkiwovrRyF93FBbX+Q=;
        b=Ze8mif3qTcXJ2LP3P6tBALbLcym8u6ItAiabIuzYU0k2exp3SVSFLDz8Gg68PY2FW3
         XAjuV7IugnjbT872T+zK7NMnGh7uSMiI/0LWWxCO0/rnET6KBQeBp0H8w4xJc7aF9XuU
         ozModJucaFlspgm4/0a3DGt0fpzUuEyH1/Y9/ryDj2oRl/qDXbJ+dLH3686Exv629U5S
         fm/xgNeUSm4S36tdq5hVeBSjtVgD1SLCOV4Q0GroE3PhaOsBmGC+mwL75a27p1ZzSbw+
         tdQ7hS1qdcd3475E3bJuFkM24dqG9d1EflzsVpp8uw6mAInshgQFEcX8Kdzy1anV6/V7
         Vj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NPKX72KiRDPzRyY/agShRkBFAhkiwovrRyF93FBbX+Q=;
        b=tNCnNeOBB3Zm3sAT7TzLIUgK22U/pc70te3yJlE/bfGGhHS3ge9rAWtprMrdMhzqCI
         cvEm6+yb38t8MLDqC1u19xTpIpazKmoyc2TEZvl3dZc15ByGOPTUwRQbP4bpXoIDuFAx
         DODsEJ69wqYd2W0UmmopmFL+CFPQ46B4dSaYuKT7lbt3dqAAyYdZFYg64fC9Rf3WIoHS
         TzPZJ0Lt+NwHOhCwpNeOzX/zBy3lTjpDjR1SNpj55RSaTjQpej5u46iREEE+dXpXSR4S
         zLSEg0qdWM/G6lJygxMPiJPFGXXMNYnJ9XCXF11S+bkL2mb0760g6x/0/E29aguvHEso
         HFzg==
X-Gm-Message-State: AHPjjUhxFa0XCMOvTxmf9yIe65fwVu5Oo/Rt74q/HGxDfs8tDek6Hn/+
	T4I8/h8N97wLMn66
X-Google-Smtp-Source: ADKCNb7NaZHq7UpLi8vQFDzIxyagv+PdlDL+iXr1Hys74KhkPnURET1gxxLhgtPfQmIfdHlVg4XD/w==
X-Received: by 10.98.29.74 with SMTP id d71mr13155321pfd.141.1505163770179;
        Mon, 11 Sep 2017 14:02:50 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([103.231.132.5])
        by smtp.gmail.com with ESMTPSA id y16sm18722504pge.92.2017.09.11.14.02.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 14:02:49 -0700 (PDT)
Date: Tue, 12 Sep 2017 02:32:44 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH] Staging: vc04_services: Remove typedef VCHI_CONNECTION_API_T
Message-ID: <20170911210239.GA3628@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes the typedef in order to make the code more readable.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 .../staging/vc04_services/interface/vchi/connections/connection.h | 4 ++--
 drivers/staging/vc04_services/interface/vchi/vchi.h               | 8 ++++----
 drivers/staging/vc04_services/interface/vchi/vchi_common.h        | 3 ---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c    | 4 ++--
 4 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/connections/connection.h b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
index e793cdf..4ec16ec 100644
--- a/drivers/staging/vc04_services/interface/vchi/connections/connection.h
+++ b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
@@ -217,7 +217,7 @@ typedef void   (*VCHI_BUFFER_FREE)(VCHI_CONNECTION_SERVICE_HANDLE_T service_hand
  System driver struct
  *****************************************************************************/
 
-struct opaque_vchi_connection_api_t {
+struct opaque_vchi_connection_api {
    // Routine to init the connection
    VCHI_CONNECTION_INIT_T                      init;
 
@@ -314,7 +314,7 @@ struct opaque_vchi_connection_api_t {
 };
 
 struct vchi_connection_t {
-   const VCHI_CONNECTION_API_T *api;
+   const struct opaque_vchi_connection_api *api;
    VCHI_CONNECTION_STATE_T     *state;
 #ifdef VCHI_COARSE_LOCKING
    struct semaphore             sem;
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index addb7b0..7e14532 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -159,7 +159,7 @@ typedef struct service_info_tag {
 extern "C" {
 #endif
 
-extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const VCHI_CONNECTION_API_T * function_table,
+extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const struct opaque_vchi_connection_api * function_table,
                                                    const VCHI_MESSAGE_DRIVER_T * low_level);
 
 
@@ -341,9 +341,9 @@ extern int32_t vchi_bulk_queue_transmit( VCHI_SERVICE_HANDLE_T handle,
  *****************************************************************************/
 
 // function prototypes for the different mid layers (the state info gives the different physical connections)
-extern const VCHI_CONNECTION_API_T *single_get_func_table( void );
-//extern const VCHI_CONNECTION_API_T *local_server_get_func_table( void );
-//extern const VCHI_CONNECTION_API_T *local_client_get_func_table( void );
+extern const struct opaque_vchi_connection_api *single_get_func_table( void );
+//extern const struct opaque_vchi_connection_api *local_server_get_func_table( void );
+//extern const struct opaque_vchi_connection_api *local_client_get_func_table( void );
 
 // declare all message drivers here
 const VCHI_MESSAGE_DRIVER_T *vchi_mphi_message_driver_func_table( void );
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 45c2070..7a4cf69 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -148,9 +148,6 @@ typedef struct vchi_msg_vector {
    int32_t vec_len;
 } VCHI_MSG_VECTOR_T;
 
-// Opaque type for a connection API
-typedef struct opaque_vchi_connection_api_t VCHI_CONNECTION_API_T;
-
 // Opaque type for a message driver
 typedef struct opaque_vchi_message_driver_t VCHI_MESSAGE_DRIVER_T;
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 8af95fc..44c7eea 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -62,14 +62,14 @@ vchi_mphi_message_driver_func_table(void)
 /* ----------------------------------------------------------------------
  * return a pointer to the 'single' connection driver fops
  * -------------------------------------------------------------------- */
-const VCHI_CONNECTION_API_T *
+const struct opaque_vchi_connection_api *
 single_get_func_table(void)
 {
 	return NULL;
 }
 
 VCHI_CONNECTION_T *vchi_create_connection(
-	const VCHI_CONNECTION_API_T *function_table,
+	const struct opaque_vchi_connection_api *function_table,
 	const VCHI_MESSAGE_DRIVER_T *low_level)
 {
 	(void)function_table;
-- 
2.7.4


