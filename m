X-GM-THRID: 6464947819093426176
X-Received: by 10.98.32.81 with SMTP id g78mr11049683pfg.53.1505377890831;
        Thu, 14 Sep 2017 01:31:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.21 with SMTP id r21ls4847164itc.11.canary-gmail; Thu,
 14 Sep 2017 01:31:30 -0700 (PDT)
X-Received: by 10.84.248.131 with SMTP id q3mr3188869pll.13.1505377890104;
        Thu, 14 Sep 2017 01:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505377890; cv=none;
        d=google.com; s=arc-20160816;
        b=VbZ4Fzqu5+QzMpJYqPgmHQLvZLh9llHp0he0d4f7MU2oToceHB1Xe0Y9yB+0FhYmUF
         7rNKH7+pOrPr4Prvl3QxqrAul1LUqc2lKgz49aEAP66X8zvFSfmdg9gVnS2cOeJ59XU8
         doj7JYX2KILKStDL0w2ZyyFfsUN8cO9ELYdaQ/vcZuidSFSl7zDVgN0Wa7w/3vWSRQwc
         rRcX7AXEUpwZDAhyk6fU2o8ymTOzV0Jmz5ZA2+iq6QruRhSV88vTJvI7jO5RI61MEqPt
         HeZNEJfa0C1IwFIrbd6LReftvTAkxFGx5Ts5Du3oLdXrmO4YA6Vb592dm6DL74XZlZ3X
         35Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=YSlF6zK7xd5miht5w5gdSL++ppSmfB8vmUq6I0ODtEY=;
        b=XS7dCdgK5ZD9SiLUQfMG1vUoF9Wt3rw9XJaCzPQdwblbicytTM5QqgO9m7cZYx8kn7
         tlhWfMDoIR4OV0jWlNBWO6aWb3+mkQqEjmq03GvWfU/4E6xznohOF1g3lMjhS3qbq9CW
         xNa2+rSw7ENQvRraiPV5hyUXd/HdTdZm3DjkJpODVcseVre+ADq+iX96AdHHC5b3fXmM
         YsrackBhlTnZpeIYLSqwE+Dfjge4gfrYROwk+soqVkyMlxL/jA5oBUw1P30J/gLJSUEZ
         E3DOiuL4rGDF6HVXR5LGU2/6YZ5iu6xLhBuRUHyWAZFvw/F7IlTo6dZ//MX5C0yF3uVk
         gKWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=en2nxYgm;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g27si252877pfa.2.2017.09.14.01.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=en2nxYgm;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so1208730pfj.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YSlF6zK7xd5miht5w5gdSL++ppSmfB8vmUq6I0ODtEY=;
        b=en2nxYgmwRdvrsc2/+cEgd7P037EF44YNFPde6FedC+CGlivLu/vhWJCJt3hr+tW/D
         YAOCpiBT19MmveYqDAJ/94HJ+g6JdjjAgCN+/8AoQtkvU2Ff/tuja61uLnU6JtyoCXWl
         Vo4wMFOaa1tLz/CspkQIFMzwK8tJzJiQ3eLxONp8uhFHnN6dAKxnZMXM2gS5a/46sI0A
         r27zDV8w08qfbiMEkxJssGoCSCHW/qFqPabdM4NJaWpA7KfzwfmC+uDDMrLLY3m+3tAG
         Vg3bQHic70s7VXv1xkN4QQ7IrJN8i8RU4Cs9PsmqDV+Ravhq1cfNcShdyafiHQ/ciY6n
         XSOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YSlF6zK7xd5miht5w5gdSL++ppSmfB8vmUq6I0ODtEY=;
        b=CiVGPHdXp782OpDsYqpkLrGX0MgzvQJiWq2zR4tssroO6mQC54bSFpEQ2NBnFSiKQF
         LPGeWwnZkAdKYxJIAB93lSRcTnXA5Tg1PamK5IYWbHEew0l4EVXdXsre9W6rtNo7OgUd
         UuGuAn06SCHCD5kt2ngQBDzMVFPTR9PRPF/wsFaVda//61Jv3gE5dISeqZKUoMDTcziz
         XGO1eDu0RI/TZkUOonN1S1MBzc5UnZcBgNWX5hdZz0Sysyi5fyDuCYGRztVz13wXG7h9
         o3EVMK34W3gBWDrgq1/Vpu5hKfAiPBhkmmcJ2G9XuNzJ7hVpAYwU9Nk0V+U0fZ40BKEs
         kJTg==
X-Gm-Message-State: AHPjjUhQciUxi4qI/F31gnBDIisJTPbviBB4IXdL9L4OFW+c47uyPFo+
	XEOusY+hafhhtsan6s8=
X-Google-Smtp-Source: ADKCNb6RipfGZr/ngXz567FCRdseFN8BOVu4pCAHpkb79q+sgXoFPZO+ZhfsGghZkhuhdarxN5DPCg==
X-Received: by 10.98.211.76 with SMTP id q73mr20618764pfg.348.1505377889484;
        Thu, 14 Sep 2017 01:31:29 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id e16sm27947146pfb.170.2017.09.14.01.31.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:31:28 -0700 (PDT)
Date: Thu, 14 Sep 2017 14:01:23 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/4] Staging: vc04_services: Remove typedef
 VCHI_CONNECTION_API_T
Message-ID: <48c429bdd6f6bb00c2a95f27882804ab6ac8aad9.1505377440.git.meghana.madhyastha@gmail.com>
References: <cover.1505377440.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505377440.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes the typedef for cleaner syntax.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
 -Added this commit as part of the patchset which was not present in v1

Changes in v3:
 - Mentioned the changes across versions in the commit message.

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


