X-GM-THRID: 6748460099030745088
X-Received: by 2002:a5d:55d0:: with SMTP id i16mr3300831wrw.150.1571319854199;
        Thu, 17 Oct 2019 06:44:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a78e:: with SMTP id q136ls1459390wme.1.gmail; Thu, 17
 Oct 2019 06:44:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5xRUNE/eoO3fc2KN07ssUDnvjWZotlAurTZErpXKE0hIwh10B2tL21CZISGwNhBCueOT2
X-Received: by 2002:a1c:f714:: with SMTP id v20mr3082768wmh.55.1571319853087;
        Thu, 17 Oct 2019 06:44:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571319853; cv=none;
        d=google.com; s=arc-20160816;
        b=f4Msv0wRmMuIw3CTBuulJYU0HExi4KDkjefgCmOB/UTxrkRLvaldHVVenzOdUCvF0f
         MBpc7vIMJrOb3p0ylc43qxcxIRfeZLRvARdAL+Vl4Sm4Q+Jyv0IswqRARujPrd70JkNN
         BbuD2wjLYBQ1sP8UTZ6rWk0TXlnaBepoSmp632N+iHQ0cqqSYcUn5K4VUry4TmLnv9Rf
         KoM2DRIu4qUnYUkF+42vU3NdOYsxJMa6atW73RZpeLHQvxP65OwqOKZC6lkZKnNmNI5R
         Kikn/F32jGjS/QcZ1yg+qg672nT3pLv5xxEZn1r9QIEeBni/PVuXr2U7SEcatGbUFQtp
         Ilmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=T27lkHHM7IzqD4eQp2jPSWZaywZxEggb2ztdDEg/0PY=;
        b=nn6iwpKOvjAZ59lEtgubM4p5vLBZESy/4wHpYruPAZaW3GPsOjAWX6KvaweafyuwTF
         YresaprvZ5SGx5gW1xjLJ843VbQrnUVSNguwsQbBs8XZKOSnS4o0GsKLmF9QP1voo1QD
         Ln/SAkd2XaHxUndvH0ctF+lnin+Uq8vk5I7sySnXAOxLogzuwytR/HzgK5b2bCrvSuaj
         3/KmnLVKMeEXrDZbFpdYJjsTxF/LDwVk42DBmcOkXDiP2ty9QbR6ghz3fJFIgl+2gTnY
         8xZg2r4ptWjujAhpP9AQsVVpfFY6Ehy147d1HWeNikOvSWkohU+5/yxiVRrWnGq2VPSC
         Zr6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MpoW4gsQ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q137si577952wme.3.2019.10.17.06.44.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 06:44:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MpoW4gsQ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id b24so2593803wmj.5
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 06:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T27lkHHM7IzqD4eQp2jPSWZaywZxEggb2ztdDEg/0PY=;
        b=MpoW4gsQUrlSab9qCNjj42hv6qdAMDZX0eGHC0BJW3h0/cFLlylFAfUzHYRPrV8jZJ
         sLXfnYIeLeKaMgsV1TlGC1om0DQkHwqTz5JwVXCTwq37/b90MFUoPRiYkSldrip0CnBJ
         hMRq8qovdh32iNzAfw3be3Lbihxu8LyV+ldJz2N3ky2ZjEV7XjgSP7i9lTktWKTyPK6d
         kqruC3HUYE9qRX3XVU77txaOQ7riNdl3kXau9/5gS1HmK22oftFbj/UX3b08BePQq+/f
         46sht7VdaIEw8lADTDDdGa9foLVmxDJdvZ9DfKqR82Sq9kze6o1KDGxic9yr40oaRJVA
         4TCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T27lkHHM7IzqD4eQp2jPSWZaywZxEggb2ztdDEg/0PY=;
        b=jAEY18IGnh9aP2IsKFy1MXP5lYtBDsGptVYaCd2+COB5odGeeH+Qxs4zRAXyQXd1iH
         ShiCE3AdJ658P7NTPkiZKEbFcEkKG/IOuR8FzznbPJsoEVNuaRDHDB59H14r0J0o2Ofc
         fY880r+PB6YIPS8kRineQKVwEObkPQUb0lgnsCn0yto4zp4K9d9UPHuMNo8RkG67Yoyr
         OP27PBcn5pQU8UIX9jMKXjXatgfOYIt6fTf858TsmNEGWhRb3fzLrHNFXRkWfnCbZAHC
         wK+GsBvg78UzNNAbQq7HWDdsrvnHZl+0AFXq5j+dMzRHjVha7toakGuyIO1kSic/Grbq
         CpHw==
X-Gm-Message-State: APjAAAWMAWHc5ir8vfEjTd4tKOSwWzicYzlmm8lKtWRsYCITs21cemMu
	w9I2sXh8n65/i8P9BFw4lM60TfDaxYJr
X-Received: by 2002:a1c:1d15:: with SMTP id d21mr2949232wmd.5.1571319852161;
        Thu, 17 Oct 2019 06:44:12 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id h18sm2174312wrr.78.2019.10.17.06.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 06:44:11 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2] staging: vc04_services: fix check warnings of line over 80 characters
Date: Thu, 17 Oct 2019 14:44:02 +0100
Message-Id: <20191017134402.14718-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warnings of line over 80 characters.
Issue detected by checkepatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../vc04_services/interface/vchi/vchi_cfg.h   | 168 +++++++++++-------
 1 file changed, 106 insertions(+), 62 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
index 89aa4e6122cd..94c2fcf50468 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
@@ -4,13 +4,17 @@
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
+/*
+ * Required alignment of base addresses for bulk transfer, if unaligned
+ * transfers are not enabled
+ * Really determined by the message driver, and should be available from
+ * a run-time call.
+ */
 #ifndef VCHI_BULK_ALIGN
 #   if __VCCOREVER__ >= 0x04000000
 #       define VCHI_BULK_ALIGN 32 // Allows for the need to do cache cleans
@@ -19,9 +23,13 @@
 #   endif
 #endif
 
-/* Required length multiple for bulk transfers, if unaligned transfers are not enabled */
-/* May be less than or greater than VCHI_BULK_ALIGN */
-/* Really determined by the message driver, and should be available from a run-time call. */
+/*
+ * Required length multiple for bulk transfers, if unaligned transfers are
+ * not enabled
+ * May be less than or greater than VCHI_BULK_ALIGN
+ * Really determined by the message driver, and should be available from
+ * a run-time call.
+ */
 #ifndef VCHI_BULK_GRANULARITY
 #   if __VCCOREVER__ >= 0x04000000
 #       define VCHI_BULK_GRANULARITY 32 // Allows for the need to do cache cleans
@@ -39,19 +47,24 @@
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
+/*
+ * How many connections can we support? A localhost implementation uses
+ * 2 connections, 1 for host-app, 1 for VMCS, and these are hooked together
+ * by a loopback MPHI VCFW  driver.
+ */
 #ifndef VCHI_MAX_NUM_CONNECTIONS
 #   define VCHI_MAX_NUM_CONNECTIONS 3
 #endif
 
-/* How many services can we open per connection? Extending this doesn't cost processing time, just a small
- * amount of static memory. */
+/*
+ * How many services can we open per connection? Extending this doesn't cost
+ * processing time, just a small amount of static memory.
+ */
 #ifndef VCHI_MAX_SERVICES_PER_CONNECTION
 #  define VCHI_MAX_SERVICES_PER_CONNECTION 36
 #endif
@@ -66,8 +79,10 @@
 #   define VCHI_MAX_BULK_RX_CHANNELS_PER_CONNECTION 1 // 1 MPHI
 #endif
 
-/* How many receive slots do we use. This times VCHI_MAX_MSG_SIZE gives the effective
- * receive queue space, less message headers. */
+/*
+ * How many receive slots do we use. This times VCHI_MAX_MSG_SIZE gives the
+ * effective receive queue space, less message headers.
+ */
 #ifndef VCHI_NUM_READ_SLOTS
 #  if defined(VCHI_LOCAL_HOST_PORT)
 #     define VCHI_NUM_READ_SLOTS 4
@@ -76,112 +91,141 @@
 #  endif
 #endif
 
-/* Do we utilise overrun facility for receive message slots? Can aid peer transmit
- * performance. Only define on VideoCore end, talking to host.
+/*
+ * Do we utilise overrun facility for receive message slots? Can aid peer
+ * transmit performance. Only define on VideoCore end, talking to host.
  */
 //#define VCHI_MSG_RX_OVERRUN
 
-/* How many transmit slots do we use. Generally don't need many, as the hardware driver
- * underneath VCHI will usually have its own buffering. */
+/*
+ * How many transmit slots do we use. Generally don't need many,
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
+/*
+ * If a service has held or queued received messages in VCHI_XOFF_THRESHOLD or
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
+/*
+ * After we've sent an XOFF, the peer will be told to resume transmission
+ * once the local service has dequeued/released enough messages that it's now
+ * occupying VCHI_XON_THRESHOLD slots or fewer.
+ */
 #ifndef VCHI_XON_THRESHOLD
 #  define VCHI_XON_THRESHOLD (VCHI_NUM_READ_SLOTS / 4)
 #endif
 
-/* A size below which a bulk transfer omits the handshake completely and always goes
- * via the message channel, if bulk auxiliary is being sent on that service. (The user
- * can guarantee this by enabling unaligned transmits).
- * Not API. */
+/*
+ * A size below which a bulk transfer omits the handshake completely and always
+ * goes via the message channel, if bulk auxiliary is being sent on that
+ * service. (The user can guarantee this by enabling unaligned transmits).
+ * Not API.
+ */
 #ifndef VCHI_MIN_BULK_SIZE
 #  define VCHI_MIN_BULK_SIZE    (VCHI_MAX_MSG_SIZE / 2 < 4096 ? VCHI_MAX_MSG_SIZE / 2 : 4096)
 #endif
 
-/* Maximum size of bulk transmission chunks, for each interface type. A trade-off between
- * speed and latency; the smaller the chunk size the better change of messages and other
- * bulk transmissions getting in when big bulk transfers are happening. Set to 0 to not
- * break transmissions into chunks.
+/*
+ * Maximum size of bulk transmission chunks, for each interface type.
+ * A trade-off between speed and latency; the smaller the chunk size the better
+ * change of messages and other bulk transmissions getting in when big bulk
+ * transfers are happening. Set to 0 to not break transmissions into chunks.
  */
 #ifndef VCHI_MAX_BULK_CHUNK_SIZE_MPHI
 #  define VCHI_MAX_BULK_CHUNK_SIZE_MPHI (16 * 1024)
 #endif
 
-/* NB Chunked CCP2 transmissions violate the letter of the CCP2 spec by using "JPEG8" mode
- * with multiple-line frames. Only use if the receiver can cope. */
+/*
+ * NB Chunked CCP2 transmissions violate the letter of the CCP2 spec
+ * by using "JPEG8" mode with multiple-line frames. Only use if the receiver
+ * can cope.
+ */
 #ifndef VCHI_MAX_BULK_CHUNK_SIZE_CCP2
 #  define VCHI_MAX_BULK_CHUNK_SIZE_CCP2 0
 #endif
 
-/* How many TX messages can we have pending in our transmit slots. Once exhausted,
- * vchi_msg_queue will be blocked. */
+/*
+ * How many TX messages can we have pending in our transmit slots.
+ * Once exhausted, vchi_msg_queue will be blocked.
+ */
 #ifndef VCHI_TX_MSG_QUEUE_SIZE
 #  define VCHI_TX_MSG_QUEUE_SIZE           256
 #endif
 
-/* How many RX messages can we have parsed in the receive slots. Once exhausted, parsing
- * will be suspended until older messages are dequeued/released. */
+/*
+ * How many RX messages can we have parsed in the receive slots. Once exhausted,
+ * parsing will be suspended until older messages are dequeued/released.
+ */
 #ifndef VCHI_RX_MSG_QUEUE_SIZE
 #  define VCHI_RX_MSG_QUEUE_SIZE           256
 #endif
 
-/* Really should be able to cope if we run out of received message descriptors, by
- * suspending parsing as the comment above says, but we don't. This sweeps the issue
- * under the carpet. */
+/*
+ * Really should be able to cope if we run out of received message descriptors,
+ * by suspending parsing as the comment above says, but we don't.
+ * This sweeps the issue under the carpet.
+ */
 #if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
 #  undef VCHI_RX_MSG_QUEUE_SIZE
 #  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
 #endif
 
-/* How many bulk transmits can we have pending. Once exhausted, vchi_bulk_queue_transmit
- * will be blocked. */
+/*
+ * How many bulk transmits can we have pending. Once exhausted,
+ * vchi_bulk_queue_transmit will be blocked.
+ */
 #ifndef VCHI_TX_BULK_QUEUE_SIZE
 #  define VCHI_TX_BULK_QUEUE_SIZE           64
 #endif
 
-/* How many bulk receives can we have pending. Once exhausted, vchi_bulk_queue_receive
- * will be blocked. */
+/*
+ * How many bulk receives can we have pending. Once exhausted,
+ *vchi_bulk_queue_receive will be blocked.
+ */
 #ifndef VCHI_RX_BULK_QUEUE_SIZE
 #  define VCHI_RX_BULK_QUEUE_SIZE           64
 #endif
 
-/* A limit on how many outstanding bulk requests we expect the peer to give us. If
- * the peer asks for more than this, VCHI will fail and assert. The number is determined
- * by the peer's hardware - it's the number of outstanding requests that can be queued
- * on all bulk channels. VC3's MPHI peripheral allows 16. */
+/*
+ * A limit on how many outstanding bulk requests we expect the peer to give us.
+ * If the peer asks for more than this, VCHI will fail and assert.
+ * The number is determined by the peer's hardware
+ * - it's the number of outstanding requests that can be queued
+ * on all bulk channels. VC3's MPHI peripheral allows 16.
+ */
 #ifndef VCHI_MAX_PEER_BULK_REQUESTS
 #  define VCHI_MAX_PEER_BULK_REQUESTS       32
 #endif
 
-/* Define VCHI_CCP2TX_MANUAL_POWER if the host tells us when to turn the CCP2
+/*
+ * Define VCHI_CCP2TX_MANUAL_POWER if the host tells us when to turn the CCP2
  * transmitter on and off.
  */
 /*#define VCHI_CCP2TX_MANUAL_POWER*/
 
 #ifndef VCHI_CCP2TX_MANUAL_POWER
 
-/* Timeout (in milliseconds) for putting the CCP2TX interface into IDLE state. Set
- * negative for no IDLE.
+/*
+ * Timeout (in milliseconds) for putting the CCP2TX interface into IDLE state.
+ * Set negative for no IDLE.
  */
 #  ifndef VCHI_CCP2TX_IDLE_TIMEOUT
 #    define VCHI_CCP2TX_IDLE_TIMEOUT        5
 #  endif
 
-/* Timeout (in milliseconds) for putting the CCP2TX interface into OFF state. Set
- * negative for no OFF.
+/*
+ * Timeout (in milliseconds) for putting the CCP2TX interface into OFF state.
+ * Set negative for no OFF.
  */
 #  ifndef VCHI_CCP2TX_OFF_TIMEOUT
 #    define VCHI_CCP2TX_OFF_TIMEOUT         1000
-- 
2.21.0


