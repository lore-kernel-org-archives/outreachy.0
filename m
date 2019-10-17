X-GM-THRID: 6748460099030745088
X-Received: by 2002:ac2:5610:: with SMTP id v16mr2639900lfd.93.1571324563103;
        Thu, 17 Oct 2019 08:02:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7d02:: with SMTP id y2ls335813ljc.8.gmail; Thu, 17 Oct
 2019 08:02:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzm/ccZYzUzwuEWLUbrIPfympVgWSrKMrXUZJP3zpgPWw62NcdFWsk5Mk/BM5X/H2U4IUq+
X-Received: by 2002:a2e:8084:: with SMTP id i4mr2848053ljg.137.1571324561958;
        Thu, 17 Oct 2019 08:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571324561; cv=none;
        d=google.com; s=arc-20160816;
        b=l08Sxb2SZZry8dqKmp3J1KI15tWfc4M6E5KKKf+E4j4WcDiirf/SQFrk+cNnTq4HQO
         YiGzIuQDKOb0Mp1lXNB5/r3iiPzyAIg6whI9CE/QCNH6TXZ0pMO4YI3iKEzWtWsZ2pBo
         tNDyAtxXMEiZaNapGVW5p8xpd4DGiBzy9zSrUmCRPIPOaF2UqV39J6kxJuj6unK+ddaK
         fpanKrPV53B0DaS2kudO1AOBK08asZ3D6AwIthR/osSx/0C6M3MNAe7wlVmdLs9v9H+b
         jORAC5LHid8lY+s+nEAnlrAi+36XrPilihrYeEeMCIighowfCgwCwNiR43ipHczjnCuK
         uFCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yMO57zeBrYVW6qNJJyAJeexDUo996kvX9noH793h8eY=;
        b=ItbNtvFYEvnjQwfo0/0YEzRxYR7Nkrqy9cGLsGG+q2BRS0zpy3Mv9Pbfk5GwnUEsfR
         7pO0eYm9ol3Zu18jnURfKru/rQOnh5TUpCmVPcWbx/QFecHLl8j/ETR7wfX+wOuy1tM6
         mvg3fTZfZnqFIoBGU27Z8havzm0Zo4igoTUgYcE67/FcQkBXqxs2qHRMz0hgVBtF/0Bp
         ZldsLxxrza7RTATlMiBpgqXNvf7b0AHIAJ3gai2l2EzEU/tUZ7TeQRn+N6/cC0OLUSxF
         Ge5t2mrwXcqYzFRws4++XuXofxxrebBDXNp3M1MM4ZC0X/j53yQiMFYBOAcbEL3XUBpD
         1wow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WreSEU2I;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id h10si107082lfm.2.2019.10.17.08.02.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 08:02:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WreSEU2I;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id p7so2912580wmp.4
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 08:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yMO57zeBrYVW6qNJJyAJeexDUo996kvX9noH793h8eY=;
        b=WreSEU2I5QfjY9kKIOIdZM9PcQdZVzRjKLJIHW33katHzSf4P4HfT4YfiR7yLNEGAy
         lmVtk2WpEsW4dqSVISEAxwHlJOcff4I9xzTeIxXwvqRh8duLUh0SfwvKavaOe4MkmnD9
         mALbUId5Dz0RmL3wGBPK1s2ssNhomDkc5IDV8S1blvo0LK5EncuL/KXAPLG3pefzgLKR
         QNiB8hcvjbEuCKbWlp9YMMJWZOzRF8VmZOUJ8ZpfBEAjCI+jXnoONqyJcnZuuUFgK1F+
         qM5r9CdB/fFVMM/DUKESYQPf7Vnej5zXGZBfsC+msb7evLAb28uzIsAwrBd1o9bSSu31
         9Mzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yMO57zeBrYVW6qNJJyAJeexDUo996kvX9noH793h8eY=;
        b=KcdjEWf5c3FsVFHbUtmj5Gpe3PTKmjktJ+B8L7AoGOBjJfc6I2Mg0LLnlLf2RIcKrG
         stgpTBStuQpfxKzubGJT9XRoGG9eb5C1o9PAg6YXOdbgMSlFK1kaQvVYZhjsuHuaywnt
         2X2IP3+AflxyeVWxLemkXaNeAl99QC6RSEvAFs8m/ZUkrDh15+HLnkMdTpANwLzzXY3L
         ZetC1gQ1TWN73iP6YkS4Ae7+PH3Irb/AhIhI2v5jNq2ouanjpA/AprVI/rIBMOOJAJEh
         1W7v1AdbGJdhINvpOvQcNywyAKVEtSDUVWau7q/mthx03CKjsq1u3xO0i3WoV6FU91jl
         q3RQ==
X-Gm-Message-State: APjAAAXKUz33EufC8Py09bzVtHGc8dEgGF/+VzxUqQGe+yFecLAJpwby
	Qf/fYjBxCyUZQaRNqFw3z5u/9vLY+pPs
X-Received: by 2002:a1c:2e50:: with SMTP id u77mr3495276wmu.64.1571324560689;
        Thu, 17 Oct 2019 08:02:40 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id j19sm1435915wre.0.2019.10.17.08.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 08:02:40 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v3] staging: vc04_services: fix check warnings of line over 80 characters
Date: Thu, 17 Oct 2019 16:00:44 +0100
Message-Id: <20191017150044.17746-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warnings of line over 80 characters.
Issue detected by checkepatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
Changes in v1
-Wrap comments to fit in the 80 characters per line maximum requirements in the vch_cfg.c file.
Changes in v2
-Rearrange comments block so as they follow kernel coding style.
Changes in v3
-Add description on the changes that occured on each version of the patch
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


