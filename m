X-GM-THRID: 6748460099030745088
X-Received: by 2002:aa7:d8ca:: with SMTP id k10mr41209726eds.54.1571248308592;
        Wed, 16 Oct 2019 10:51:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c44d:: with SMTP id n13ls5201091edr.7.gmail; Wed, 16 Oct
 2019 10:51:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwvLT3lov4+FgZujH126lldvWWrySMZKVTCSI08WVqYL3aP8L52UJXwK95CFdjHGaXQ+/Pv
X-Received: by 2002:aa7:d304:: with SMTP id p4mr40642557edq.224.1571248307368;
        Wed, 16 Oct 2019 10:51:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571248307; cv=none;
        d=google.com; s=arc-20160816;
        b=sr6Mvq7w3SBObfz6Sgj6BKWMKg1Dey/TFLd+XEyXhPmT4Gm8gHM7Zw9fdaGQ3bPa1c
         7vwjA4OfK74cZcBw9HVCR3+XPHe+6IvSfyIYlugF8TcheCWIovCtqbw3vXU1avo9AW14
         IYXORajYHWkt22+xqnBYdBWHXgdcFpGud+R0FwrzwYRFxxqqimT3X4Z8BEhW9agkP7xG
         lTL480WrDi0OSsVbNa7oqVCJ96rWoNB+dki68rZZQxCRPy2fB3cb1RLWZrm+KcO9ZXVk
         tgp4tQOshHZmAGz1LwvD+Vy9vJc7lZVOcqZVuqcLsjkPDKy4bsJbJwJl7SSHjwFUGmGa
         YG0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1zqoYooH2OEmuaMajroD5nvCGNETdb71hs00QNazTO4=;
        b=N+HoXTvTFKjvvSmvKekuyXn8O38YTksBwGR2S8S0MwrtOXhHXq1l3WGX6nkPH0SQ06
         cgOYYU9nafLa7kAojN+mEB5AJ7PxIUg9gYGAcpU0PPWmLNxg5t0E+y03fZ+CWJK8qxYr
         vQ/cpBN+HNG3BmMBbetmbl3Jcx6TUO4Vzopu1Id/u5LcZjrxsa0zL/QZip2/d7NJTSdw
         yo6SkvjTWNPc3bwE8onU8URe0XLgTpVlYIPzVgqGABp/Mm9DaHN+xjR3GuXV4mp+0Efs
         JB0idWOznqZAwaQ4gDL5uHmn++/ZaiCCmhUUuK279Npl5/fBFP0Uzo+O2ZSTrfwpyW08
         MAqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HR1FBenn;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q8si1449707edn.5.2019.10.16.10.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 10:51:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HR1FBenn;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id o18so29026137wrv.13
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 10:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1zqoYooH2OEmuaMajroD5nvCGNETdb71hs00QNazTO4=;
        b=HR1FBenn1ESMd9uu/Ii6xp6yBve9LT/ofHK6qVJx/BTNKCI+Lj2sNjhf1liozLz4W3
         GVtNcgJ4lIo0gneDkqbpKar+kT/j49ZjjdJXRYSXeYUFHYRb9zMM6E/9BxDGlYzdvgOJ
         X8LU6F6iUiMyyCsdnEXae5AJEyOcnkdspp7yJ53KIt2seQX548YtjoY3pdb4I4DF6RD+
         y+UQTU+uSa/EroRbVtOX7S031KQt4oRSqi5lPp71Xenh+z2T5FUVGiN+PbE8pRzly/5e
         2FW8MBn/Q51YG5CerD/BkohgN0NMcAEcqtuI9z2nWbjWocD0SocbWL2H4kwIEk6qHgRx
         QgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1zqoYooH2OEmuaMajroD5nvCGNETdb71hs00QNazTO4=;
        b=ZlUauQmxnSZz6AF4HM25wzymH2iZ2g4mukdSW1ZsCtG/D0EnAJSaB99IDHsbqitB6r
         MhlF7Ex3Hfbi/ogWJm0SAC3yMcOA3ptcMNRqeCmcU45EcexG99WiJ/Dpq2NewFFqe9ly
         3VrPcYS9LZDEHzk1oN9Qg/dX4lHyVznIxuhRRhNfUyO+gXOWiX1IPRCEWi21AZCMGxZv
         Ri4J8er3xbh3BXuM1FS/ouKccF3EITDdJo5YHOZ+S9IfRHP9DFHTof8eDnbA+j6uls/8
         3ousx4CrLSIGTZff+R2U6TlsKhIq22oVRqXz2CTjKTj6I3Cq/54a9OAxFNVfSjKNmvn6
         4R1Q==
X-Gm-Message-State: APjAAAUTbDaHCk37ltvKT8JrHlQAWAVeIpMcsfAYyN/Vh4L0NcWMphWB
	SFW9vgWZAMyB6u5EUYODK5Zvue5cAAhCH1I=
X-Received: by 2002:a5d:670b:: with SMTP id o11mr3815124wru.31.1571248306522;
        Wed, 16 Oct 2019 10:51:46 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id 63sm5252236wrq.90.2019.10.16.10.51.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 10:51:46 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: vc04_services: fix check warnings of line over 80 characters
Date: Wed, 16 Oct 2019 18:51:32 +0100
Message-Id: <20191016175132.7947-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warnings of line over 80 characters.
Issue detected by checkepatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../vc04_services/interface/vchi/vchi_cfg.h   | 141 ++++++++++--------
 1 file changed, 81 insertions(+), 60 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
index 89aa4e6122cd..464334332e3c 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
@@ -4,13 +4,16 @@
 #ifndef VCHI_CFG_H_
 #define VCHI_CFG_H_
 
-/****************************************************************************************
- * Defines in this first section are part of the VCHI API and may be examined by VCHI
- * services.
- ***************************************************************************************/
-
-/* Required alignment of base addresses for bulk transfer, if unaligned transfers are not enabled */
-/* Really determined by the message driver, and should be available from a run-time call. */
+/*******************************************************************************
+ * Defines in this first section are part of the VCHI API and may be examined by
+ * VCHI services.
+ ******************************************************************************/
+
+/* Required alignment of base addresses for bulk transfer, if unaligned
+ * transfers are not enabled
+ * Really determined by the message driver, and should be available from
+ * a run-time call.
+ */
 #ifndef VCHI_BULK_ALIGN
 #   if __VCCOREVER__ >= 0x04000000
 #       define VCHI_BULK_ALIGN 32 // Allows for the need to do cache cleans
@@ -19,9 +22,12 @@
 #   endif
 #endif
 
-/* Required length multiple for bulk transfers, if unaligned transfers are not enabled */
-/* May be less than or greater than VCHI_BULK_ALIGN */
-/* Really determined by the message driver, and should be available from a run-time call. */
+/* Required length multiple for bulk transfers, if unaligned transfers are
+ * not enabled
+ * May be less than or greater than VCHI_BULK_ALIGN
+ * Really determined by the message driver, and should be available from
+ * a run-time call.
+ */
 #ifndef VCHI_BULK_GRANULARITY
 #   if __VCCOREVER__ >= 0x04000000
 #       define VCHI_BULK_GRANULARITY 32 // Allows for the need to do cache cleans
@@ -39,19 +45,22 @@
 #   endif
 #endif
 
-/******************************************************************************************
- * Defines below are system configuration options, and should not be used by VCHI services.
- *****************************************************************************************/
+/******************************************************************************
+ * Defines below are system configuration options, and should not be used by
+ * VCHI services.
+ ******************************************************************************/
 
-/* How many connections can we support? A localhost implementation uses 2 connections,
- * 1 for host-app, 1 for VMCS, and these are hooked together by a loopback MPHI VCFW
- * driver. */
+/* How many connections can we support? A localhost implementation uses
+ * 2 connections, 1 for host-app, 1 for VMCS, and these are hooked together
+ * by a loopback MPHI VCFW  driver.
+ */
 #ifndef VCHI_MAX_NUM_CONNECTIONS
 #   define VCHI_MAX_NUM_CONNECTIONS 3
 #endif
 
-/* How many services can we open per connection? Extending this doesn't cost processing time, just a small
- * amount of static memory. */
+/* How many services can we open per connection? Extending this doesn't cost
+ * processing time, just a small amount of static memory.
+ */
 #ifndef VCHI_MAX_SERVICES_PER_CONNECTION
 #  define VCHI_MAX_SERVICES_PER_CONNECTION 36
 #endif
@@ -66,8 +75,8 @@
 #   define VCHI_MAX_BULK_RX_CHANNELS_PER_CONNECTION 1 // 1 MPHI
 #endif
 
-/* How many receive slots do we use. This times VCHI_MAX_MSG_SIZE gives the effective
- * receive queue space, less message headers. */
+/* How many receive slots do we use. This times VCHI_MAX_MSG_SIZE gives the
+ * effective receive queue space, less message headers. */
 #ifndef VCHI_NUM_READ_SLOTS
 #  if defined(VCHI_LOCAL_HOST_PORT)
 #     define VCHI_NUM_READ_SLOTS 4
@@ -76,92 +85,104 @@
 #  endif
 #endif
 
-/* Do we utilise overrun facility for receive message slots? Can aid peer transmit
- * performance. Only define on VideoCore end, talking to host.
+/* Do we utilise overrun facility for receive message slots? Can aid peer
+ * transmit performance. Only define on VideoCore end, talking to host.
  */
 //#define VCHI_MSG_RX_OVERRUN
 
-/* How many transmit slots do we use. Generally don't need many, as the hardware driver
- * underneath VCHI will usually have its own buffering. */
+/* How many transmit slots do we use. Generally don't need many,
+ * as the hardware driver underneath VCHI will usually have its own buffering.
+ */
 #ifndef VCHI_NUM_WRITE_SLOTS
 #  define VCHI_NUM_WRITE_SLOTS 4
 #endif
 
-/* If a service has held or queued received messages in VCHI_XOFF_THRESHOLD or more slots,
- * then it's taking up too much buffer space, and the peer service will be told to stop
- * transmitting with an XOFF message. For this to be effective, the VCHI_NUM_READ_SLOTS
- * needs to be considerably bigger than VCHI_NUM_WRITE_SLOTS, or the transmit latency
- * is too high. */
+/* If a service has held or queued received messages in VCHI_XOFF_THRESHOLD or
+ * more slots, then it's taking up too much buffer space,
+ * and the peer service will be told to stop transmitting with an XOFF message.
+ * For this to be effective, the VCHI_NUM_READ_SLOTS needs to be considerably
+ * bigger than VCHI_NUM_WRITE_SLOTS, or the transmit latency is too high.
+ */
 #ifndef VCHI_XOFF_THRESHOLD
 #  define VCHI_XOFF_THRESHOLD (VCHI_NUM_READ_SLOTS / 2)
 #endif
 
-/* After we've sent an XOFF, the peer will be told to resume transmission once the local
- * service has dequeued/released enough messages that it's now occupying
- * VCHI_XON_THRESHOLD slots or fewer. */
+/* After we've sent an XOFF, the peer will be told to resume transmission
+ * once the local service has dequeued/released enough messages that it's now
+ * occupying VCHI_XON_THRESHOLD slots or fewer.
+ */
 #ifndef VCHI_XON_THRESHOLD
 #  define VCHI_XON_THRESHOLD (VCHI_NUM_READ_SLOTS / 4)
 #endif
 
-/* A size below which a bulk transfer omits the handshake completely and always goes
- * via the message channel, if bulk auxiliary is being sent on that service. (The user
- * can guarantee this by enabling unaligned transmits).
+/* A size below which a bulk transfer omits the handshake completely and always
+ * goes via the message channel, if bulk auxiliary is being sent on that
+ * service. (The user can guarantee this by enabling unaligned transmits).
  * Not API. */
 #ifndef VCHI_MIN_BULK_SIZE
 #  define VCHI_MIN_BULK_SIZE    (VCHI_MAX_MSG_SIZE / 2 < 4096 ? VCHI_MAX_MSG_SIZE / 2 : 4096)
 #endif
 
-/* Maximum size of bulk transmission chunks, for each interface type. A trade-off between
- * speed and latency; the smaller the chunk size the better change of messages and other
- * bulk transmissions getting in when big bulk transfers are happening. Set to 0 to not
- * break transmissions into chunks.
+/* Maximum size of bulk transmission chunks, for each interface type.
+ * A trade-off between speed and latency; the smaller the chunk size the better
+ * change of messages and other bulk transmissions getting in when big bulk
+ * transfers are happening. Set to 0 to not break transmissions into chunks.
  */
 #ifndef VCHI_MAX_BULK_CHUNK_SIZE_MPHI
 #  define VCHI_MAX_BULK_CHUNK_SIZE_MPHI (16 * 1024)
 #endif
 
-/* NB Chunked CCP2 transmissions violate the letter of the CCP2 spec by using "JPEG8" mode
- * with multiple-line frames. Only use if the receiver can cope. */
+/* NB Chunked CCP2 transmissions violate the letter of the CCP2 spec
+ * by using "JPEG8" mode with multiple-line frames. Only use if the receiver
+ * can cope.
+ */
 #ifndef VCHI_MAX_BULK_CHUNK_SIZE_CCP2
 #  define VCHI_MAX_BULK_CHUNK_SIZE_CCP2 0
 #endif
 
-/* How many TX messages can we have pending in our transmit slots. Once exhausted,
- * vchi_msg_queue will be blocked. */
+/* How many TX messages can we have pending in our transmit slots.
+ * Once exhausted, vchi_msg_queue will be blocked.
+ */
 #ifndef VCHI_TX_MSG_QUEUE_SIZE
 #  define VCHI_TX_MSG_QUEUE_SIZE           256
 #endif
 
-/* How many RX messages can we have parsed in the receive slots. Once exhausted, parsing
- * will be suspended until older messages are dequeued/released. */
+/* How many RX messages can we have parsed in the receive slots. Once exhausted,
+ * parsing will be suspended until older messages are dequeued/released.
+ */
 #ifndef VCHI_RX_MSG_QUEUE_SIZE
 #  define VCHI_RX_MSG_QUEUE_SIZE           256
 #endif
 
-/* Really should be able to cope if we run out of received message descriptors, by
- * suspending parsing as the comment above says, but we don't. This sweeps the issue
- * under the carpet. */
+/* Really should be able to cope if we run out of received message descriptors,
+ * by suspending parsing as the comment above says, but we don't.
+ * This sweeps the issue under the carpet.
+ */
 #if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
 #  undef VCHI_RX_MSG_QUEUE_SIZE
 #  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
 #endif
 
-/* How many bulk transmits can we have pending. Once exhausted, vchi_bulk_queue_transmit
- * will be blocked. */
+/* How many bulk transmits can we have pending. Once exhausted,
+ * vchi_bulk_queue_transmit will be blocked.
+ */
 #ifndef VCHI_TX_BULK_QUEUE_SIZE
 #  define VCHI_TX_BULK_QUEUE_SIZE           64
 #endif
 
-/* How many bulk receives can we have pending. Once exhausted, vchi_bulk_queue_receive
- * will be blocked. */
+/* How many bulk receives can we have pending. Once exhausted,
+ *vchi_bulk_queue_receive will be blocked.
+ */
 #ifndef VCHI_RX_BULK_QUEUE_SIZE
 #  define VCHI_RX_BULK_QUEUE_SIZE           64
 #endif
 
-/* A limit on how many outstanding bulk requests we expect the peer to give us. If
- * the peer asks for more than this, VCHI will fail and assert. The number is determined
- * by the peer's hardware - it's the number of outstanding requests that can be queued
- * on all bulk channels. VC3's MPHI peripheral allows 16. */
+/* A limit on how many outstanding bulk requests we expect the peer to give us.
+ * If the peer asks for more than this, VCHI will fail and assert.
+ * The number is determined by the peer's hardware
+ * - it's the number of outstanding requests that can be queued
+ * on all bulk channels. VC3's MPHI peripheral allows 16.
+ */
 #ifndef VCHI_MAX_PEER_BULK_REQUESTS
 #  define VCHI_MAX_PEER_BULK_REQUESTS       32
 #endif
@@ -173,15 +194,15 @@
 
 #ifndef VCHI_CCP2TX_MANUAL_POWER
 
-/* Timeout (in milliseconds) for putting the CCP2TX interface into IDLE state. Set
- * negative for no IDLE.
+/* Timeout (in milliseconds) for putting the CCP2TX interface into IDLE state.
+ * Set negative for no IDLE.
  */
 #  ifndef VCHI_CCP2TX_IDLE_TIMEOUT
 #    define VCHI_CCP2TX_IDLE_TIMEOUT        5
 #  endif
 
-/* Timeout (in milliseconds) for putting the CCP2TX interface into OFF state. Set
- * negative for no OFF.
+/* Timeout (in milliseconds) for putting the CCP2TX interface into OFF state.
+ * Set negative for no OFF.
  */
 #  ifndef VCHI_CCP2TX_OFF_TIMEOUT
 #    define VCHI_CCP2TX_OFF_TIMEOUT         1000
-- 
2.21.0


