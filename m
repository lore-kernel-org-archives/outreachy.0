X-GM-THRID: 6464182084663508992
X-Received: by 10.101.74.130 with SMTP id b2mr5589704pgu.53.1505059675779;
        Sun, 10 Sep 2017 09:07:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.114.14 with SMTP id n14ls2802738ioc.12.gmail; Sun, 10 Sep
 2017 09:07:55 -0700 (PDT)
X-Received: by 10.98.160.71 with SMTP id r68mr4889038pfe.9.1505059674967;
        Sun, 10 Sep 2017 09:07:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505059674; cv=none;
        d=google.com; s=arc-20160816;
        b=RyiiOUzs2egBN5by20U5emKmxpoo50+mtXOQ3LnVDttPcJthHig4dhEw0cppXYBSCI
         Nt0DSf7NI05f4/ICtIN7scFRLK9yDwKugL53h3nCvEBUbirUioUgmXwfH1EAycCCw+wr
         6VOPxAIu9D0RTNvfdEatLhJsTiMIkbnCmUeC1xn1ylO5eqAbSehyTyChJezX6WWEiFQr
         y3b2GkHZtQBSqosZrfZGAcYBFso4IOvm77viHJ9ZRKnnBjWG9SnGtInCn/RyZjPHePMy
         fMHZThkz6LGHqNHwOoflsbPcUt1w4u4JS1+fZWnPxTBVJj+obHXb5D9Vhkusy7+AdaUd
         WNGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=EAxemYZuu+lGuv0skNOA5q6iO7yFzcZ79dmIv6oVnXY=;
        b=aOIvC8j0d2IsPFVzfl9KN5nyExKQRbKMOllJeGl/Pzwdi4sHxLKKJ1IsYWU8fPx+A7
         ln+EolnOFspsQXN+nn/xMeK0veWgauASFHg3YVTksabwpnffLQhj/4WMRW4CRDwbInNa
         1MHwckklwMHjVw4tHzczL0uGEhOPVTaP2qn+k5QQHKyA9+6DXZ/40GD5kqq+Mx/j7jbO
         hmJJoM661u0MFadQ2w7mLmW07CvwKwaHMotC0JZ026E8S7I/C+14cu613Yq9jSBB9Kec
         qr7ilVVuzI9GsjhJY5BdEMuMsuld4KAhZVPEHeCTVhze+owICElXQ8+kA1sV/DyQEmNJ
         cR6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ko00ozx/;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id v25si673693pfg.11.2017.09.10.09.07.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 09:07:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ko00ozx/;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e69so2087029pfg.4
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 09:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EAxemYZuu+lGuv0skNOA5q6iO7yFzcZ79dmIv6oVnXY=;
        b=Ko00ozx/yGQKatd8IYFMKKNTZm5zrxQOiabxM23RBZqfbDPUuYSo5YDXttlng7CTqn
         VMXuwpsmHYll4nOkGJ81cZq1ZQCgQG7ENE4gl5e/aChERlDW6sG4r7AsFGjncPnnZbrA
         znU61HTT9WK0NHt70AOXJWqLd+uRAu3zzhz4nGtgc1oT1tFV9votOxaZ6uRCn0Iepvw6
         3sZ2r+qjqyGOqMMwhx4Z1K2hnbblPJjCRkHBEF0h2X0LdiD3xqYsjsHeNMAZBiQDktkE
         WAosAQnJ3q5xgpCH0zpfRWu3hD2D7VLCPMPuj0ZmNIFN40tyiEQCkdMiMuuIM+GRXSqh
         axbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EAxemYZuu+lGuv0skNOA5q6iO7yFzcZ79dmIv6oVnXY=;
        b=Q/TdTXHNNZ7gSgCbzwb2PojIR2zkrLYsQaCJCx5MWbjGZeC4dWpV9NyOwhWc+QNur8
         xI89AA9eJDShE84mrzeXPfezENdNvy0m9U3aD3VreU26iHs0J/zvP9ZfvHSW7d6lNX4E
         0fHm8iZMqYyyqNeONnDUzrbOmjjMhff3fByFpDPMTfgEUbi05/IN7ZVyJNZbuhsAPlOK
         SKvPHPxwPnRrQ26oICSkRN8MFWI+Lsl5ya+I7cZ6lmLTWSwOpcLIJlQ311XSknCV7Vjr
         3jfCWjHFjAf+dCaD3XjE7Q555mKDkiSXC1Sd1CCR6CcUKacjXz/hZxyZCQZCxlg2cEug
         wY2Q==
X-Gm-Message-State: AHPjjUjkTzNwIEdFPsqDTurQ31Y9mlwewDNKGzmziKxzwbL7K/+/x0nT
	9onGvBIEOJG+dJravZQ=
X-Google-Smtp-Source: ADKCNb5Nhl+i7TN3Yi2/mEaGYmO/mPpEBo+0WvhM2Xbws6fspLJiEEFN+oMldmHEbLSxBioHosg0wA==
X-Received: by 10.99.176.79 with SMTP id z15mr9041754pgo.230.1505059674342;
        Sun, 10 Sep 2017 09:07:54 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id u8sm10200431pgq.52.2017.09.10.09.07.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 09:07:53 -0700 (PDT)
Date: Sun, 10 Sep 2017 21:37:50 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: vc04_services: Remove typedef
Message-ID: <20170910160750.GA9376@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes typedef vchi_connection_t VCHI_CONNECTION_T. This results in cleaner syntax.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c    |  4 ++--
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c      |  2 +-
 .../vc04_services/interface/vchi/connections/connection.h      |  2 --
 drivers/staging/vc04_services/interface/vchi/vchi.h            | 10 +++++-----
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c |  6 +++---
 5 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 5f3d8f2..075499a 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -262,7 +262,7 @@ static void audio_vchi_callback(void *param,
 
 static struct bcm2835_audio_instance *
 vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
-		   VCHI_CONNECTION_T **vchi_connections,
+		   vchi_connection_t **vchi_connections,
 		   unsigned int num_connections)
 {
 	unsigned int i;
@@ -376,7 +376,7 @@ static int vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
 static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream)
 {
 	static VCHI_INSTANCE_T vchi_instance;
-	static VCHI_CONNECTION_T *vchi_connection;
+	static vchi_connection_t *vchi_connection;
 	static int initted;
 	struct bcm2835_audio_instance *instance =
 		(struct bcm2835_audio_instance *)alsa_stream->instance;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 7a7b00e..e707569 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1980,7 +1980,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 {
 	int status;
 	struct vchiq_mmal_instance *instance;
-	static VCHI_CONNECTION_T *vchi_connection;
+	static vchi_connection_t *vchi_connection;
 	static VCHI_INSTANCE_T vchi_instance;
 
 	SERVICE_CREATION_T params = {
diff --git a/drivers/staging/vc04_services/interface/vchi/connections/connection.h b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
index e793cdf..9891e05 100644
--- a/drivers/staging/vc04_services/interface/vchi/connections/connection.h
+++ b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
@@ -52,8 +52,6 @@ typedef struct opaque_vchi_connection_connected_service_handle_t *VCHI_CONNECTIO
 // opaque handle to the connection state information
 typedef struct opaque_vchi_connection_info_t VCHI_CONNECTION_STATE_T;
 
-typedef struct vchi_connection_t VCHI_CONNECTION_T;
-
 
 /******************************************************************************
  API
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index addb7b0..bd4e64f 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -120,7 +120,7 @@ typedef struct {
 typedef struct {
 	struct vchi_version version;
 	int32_t service_id;
-	VCHI_CONNECTION_T *connection;
+	vchi_connection_t *connection;
 	uint32_t rx_fifo_size;
 	uint32_t tx_fifo_size;
 	VCHI_CALLBACK_T callback;
@@ -143,7 +143,7 @@ typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
 typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
 
 // Service registration & startup
-typedef void (*VCHI_SERVICE_INIT)(VCHI_INSTANCE_T initialise_instance, VCHI_CONNECTION_T **connections, uint32_t num_connections);
+typedef void (*VCHI_SERVICE_INIT)(VCHI_INSTANCE_T initialise_instance, vchi_connection_t **connections, uint32_t num_connections);
 
 typedef struct service_info_tag {
    const char * const vll_filename; /* VLL to load to start this service. This is an empty string if VLL is "static" */
@@ -159,7 +159,7 @@ typedef struct service_info_tag {
 extern "C" {
 #endif
 
-extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const VCHI_CONNECTION_API_T * function_table,
+extern /*@observer@*/ vchi_connection_t * vchi_create_connection( const VCHI_CONNECTION_API_T * function_table,
                                                    const VCHI_MESSAGE_DRIVER_T * low_level);
 
 
@@ -168,7 +168,7 @@ extern int32_t vchi_initialise( VCHI_INSTANCE_T *instance_handle );
 
 extern int32_t vchi_exit( void );
 
-extern int32_t vchi_connect( VCHI_CONNECTION_T **connections,
+extern int32_t vchi_connect( vchi_connection_t **connections,
                              const uint32_t num_connections,
                              VCHI_INSTANCE_T instance_handle );
 
@@ -177,7 +177,7 @@ extern int32_t vchi_connect( VCHI_CONNECTION_T **connections,
 extern int32_t vchi_disconnect( VCHI_INSTANCE_T instance_handle );
 
 // Global control over bulk CRC checking
-extern int32_t vchi_crc_control( VCHI_CONNECTION_T *connection,
+extern int32_t vchi_crc_control( vchi_connection_t *connection,
                                  VCHI_CRC_CONTROL_T control );
 
 // helper functions
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 8af95fc..4f4cba6 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -68,7 +68,7 @@ single_get_func_table(void)
 	return NULL;
 }
 
-VCHI_CONNECTION_T *vchi_create_connection(
+vchi_connection_t *vchi_create_connection(
 	const VCHI_CONNECTION_API_T *function_table,
 	const VCHI_MESSAGE_DRIVER_T *low_level)
 {
@@ -518,7 +518,7 @@ EXPORT_SYMBOL(vchi_initialise);
 /***********************************************************
  * Name: vchi_connect
  *
- * Arguments: VCHI_CONNECTION_T **connections
+ * Arguments: vchi_connection_t **connections
  *            const uint32_t num_connections
  *            VCHI_INSTANCE_T instance_handle)
  *
@@ -528,7 +528,7 @@ EXPORT_SYMBOL(vchi_initialise);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_connect(VCHI_CONNECTION_T **connections,
+int32_t vchi_connect(vchi_connection_t **connections,
 	const uint32_t num_connections,
 	VCHI_INSTANCE_T instance_handle)
 {
-- 
2.7.4


