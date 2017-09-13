X-GM-THRID: 6464947819093426176
X-Received: by 10.202.226.211 with SMTP id z202mr9572261oig.66.1505284665537;
        Tue, 12 Sep 2017 23:37:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.17.75 with SMTP id 72ls2643450itf.10.gmail; Tue, 12 Sep
 2017 23:37:44 -0700 (PDT)
X-Received: by 10.84.169.65 with SMTP id g59mr9148104plb.30.1505284664861;
        Tue, 12 Sep 2017 23:37:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505284664; cv=none;
        d=google.com; s=arc-20160816;
        b=CLivMAzpDSb1BdApiuG6TD4qDJ9irNXojPZO/Pc2OkdLxncF3nYw7BiIiVjZnqHnjC
         Xm6UgKJe94jXEn8yMp8yKihWGHTVJmkoK30PBvhwDZts9BlYQbqYfosyxNo0Wj2MUufc
         4Fr845I1/6ePFVgQ3sx90huv/Z9fJjWvghI9I5WdFJ5gcn7vdtAEN4qlx8QWsGy54P3R
         GkO9PNa5sCGjAZSY7moFJEH5bOzMEWvsaRDtUVLgmPBHFoxqWO8Y/sJXh+eqZbmW43/z
         ATPVOikxniE/Dw3JR1FAaPpBFplTQoNIB5TyTla41iMlkBy5Ax9MmGucLDxT49UphOxE
         B1xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=ndd9aZcKtyTSJ7lNVA0WoAylJSV2vbsgypghT8D4RFE=;
        b=hru110aVRP/QO7fV5yH4tdh0MGdFpvU9aTOI0XCMCdMKXaUASDeS79RhhCg41d0vJw
         WzghgaU/eIGc8C39nHM68XBVPFhQPw/0hrxvAXojmNgATtIIevJALUAftm1Y40suLulQ
         PzOku6AtalaXzjsCkAzRDAcQlE2/kzCvaxD6w/y3u9tTDIKPjZa4Jrvvy1Cf1oTCok3A
         CRfo2z2MNW2Za5/+XcBQXKZdYGobWnkKpgp5pVWqloZJszimlAWn9HHZXq1Zh4/DPUYY
         CkcQCdskSJ3XE1ebaqDGXmgLqSRBe3NIWkxQxDoK9B71BrSLe42fVubyfGBNnS9AtA2u
         DHmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dewxBxK4;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u184si696306pfb.17.2017.09.12.23.37.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:37:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dewxBxK4;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m30so2277024pgn.5
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 23:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ndd9aZcKtyTSJ7lNVA0WoAylJSV2vbsgypghT8D4RFE=;
        b=dewxBxK4/YJ+0SyWI7AIrTCLp9co8s9eeT1fUTGrw9HiNmw0ZF7u8al2BC2sUVgAaw
         8nmrEIqnl91oNVyorHTQATdLwidzP5GgZJgBHCD5BCEQGQvIxv7TP7Bz/FU1Pmu7VU/l
         qjbJsTQEHZ9UCZgUVn0BjAaTVTRy74dGYYcJ7DRT4JRVx4pHdyeVgh9A6ab8HBOE4ov9
         IQB2lGea/fJMJDBJXXo4oFPDeJgrWDIROIHn7+jqA4rIaBwE4ZgkqCAzh4HJEoy9jYBr
         fgO0Xdqity3opA8RiknJVJHnU0vpV+mDAEaGGrCCXZLJXHIK5qgh+Nur3mJihwc+7XS+
         MR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ndd9aZcKtyTSJ7lNVA0WoAylJSV2vbsgypghT8D4RFE=;
        b=kUsttD3ibJ3KQVHnYhP0RmHaN4ab7jbjgB/CdOuwvAYpVQoQaf7npgV4E9d2wAHBLY
         98cPXwltnGjqRDaT0k0f3Lizzdc9OJHf8kwdpJ2uZoFTVa6VDeVrrRni1yCZiEv9G41o
         mrhwi10tk/z5Vbug06PXu+9bnB2qqjmtBw0KNnffCZVGxIiZy9RkyCgOLv4ezq4nfgPA
         FZWO1PlFdZFzSsoTR7FRNBk6v6nFzUz17igZpKBryFEUsLXlAbf/HqaMqikqo2nVFIPZ
         6m9NR+tQEbJjZni3I+UxSqBRq+VddtxsILXCpcdj7zZO95CSuJetkgQcCqfFy3e38poX
         WgHA==
X-Gm-Message-State: AHPjjUhyBzF7WZbZN+VMGmia3R2yGt4FxIHUATZ86OsHjH3Wo4KEHhUy
	dpYeJrwKQJinBQ==
X-Google-Smtp-Source: ADKCNb6s3b5kkVUf4RboVXVSq8mAw2P1hATwdyzHghbRanvrhoPlVjxqIme/KhS4Qu37mAoH4dQXOA==
X-Received: by 10.98.23.10 with SMTP id 10mr17590698pfx.339.1505284664621;
        Tue, 12 Sep 2017 23:37:44 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id h1sm15912204pgp.37.2017.09.12.23.37.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:37:43 -0700 (PDT)
Date: Wed, 13 Sep 2017 12:07:38 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] Staging: vc04_services: Remove typedef
 VCHI_CONNECTION_API_T
Message-ID: <48c429bdd6f6bb00c2a95f27882804ab6ac8aad9.1505284040.git.meghana.madhyastha@gmail.com>
References: <cover.1505284040.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505284040.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes the typedef for cleaner syntax.

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


