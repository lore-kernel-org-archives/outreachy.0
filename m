X-GM-THRID: 6392026082663464960
X-Received: by 10.129.70.84 with SMTP id t81mr1422717ywa.146.1489576861549;
        Wed, 15 Mar 2017 04:21:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls1901713otb.38.gmail; Wed, 15 Mar
 2017 04:21:01 -0700 (PDT)
X-Received: by 10.157.30.164 with SMTP id n33mr1192925otn.45.1489576861184;
        Wed, 15 Mar 2017 04:21:01 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si283555pfb.2.2017.03.15.04.21.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 04:21:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m5so1969448pgk.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 04:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dxbPAw2y2Sm3c3OIyCexz8kLW2LBf8m9MdsCQpxNHps=;
        b=IAxtn7BoUgTMy6DWtIFUwha2YLHy/xZZAK9cHZrHD+mvJRMATSA9Cpph8GDvQHAf+l
         422OwsrFDIwniItZ+GdbytnHhGhGGnSMIoajf7dgAXtHi1nIk05A9sYUJduRPOaC6oZK
         SwEoH+FOkg4VbmYeaEH7TTt40Ilnk49ahiHLqRilCSsXJi1GfSJ7HuYz11rek7oj4ZCH
         BT7AnClSorZVVFfxrIfdKuJIvGQJNun1Fjmj6osidZ93SNEYc6F70dg0C3moTHxFXtkr
         b5BoMrBPVj7TXpDEHtbCgweCcvKzaRIDFKmz3xbYuvj8QJ0YRwCDimBx21K8HtEyTUNM
         Oezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dxbPAw2y2Sm3c3OIyCexz8kLW2LBf8m9MdsCQpxNHps=;
        b=QkFhC78m5Y+2xVu3bbXgr0eba1P5zJrmr0za4d4KPX6mhgf/4ZhWtZTahT8ZxfQBC2
         mjtIRtdBQbLszFLqrY+vjuNWbcJ0mCofz0ddrJDEa7D/pSmrMMSFclJKdXA4DJ/WFmmh
         qubJB+8fFDSwppDz7h2Cfg3nf/k4LWpPjVnOmgbr+NaBQtU+b2BrQx0TsvigelosIRJj
         bB6pUrKEB2v8XSE3R2ysPqI1HOTyQU+CJ9pKUUc9cIcLObGDtVgZgeB/aPGAh+1S9dTa
         KEE8YLnT/nw5cfx7U+d2eq/5dvywrEcaRN/K/lSlvoX1vM4nGvGlHc3gtG675Ihqtam0
         w3/w==
X-Gm-Message-State: AFeK/H2fgXOC34bLzIBkGmCl3hjrV4a12NAfHTzO5QLkBgNq/h1o6tgZ7XAaaMUiF2Bi7Q==
X-Received: by 10.84.134.164 with SMTP id 33mr3992521plh.116.1489576860920;
        Wed, 15 Mar 2017 04:21:00 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id r12sm3822820pgn.26.2017.03.15.04.20.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 04:21:00 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 5/6] staging: lustre: Replace typedef lnet_test_peer_t with struct
Date: Wed, 15 Mar 2017 16:50:54 +0530
Message-Id: <e1cae60c5ce9cf5fde0722ab0f51b09874412954.1489576506.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>

Using typedef for a structure type is not suggested in Linux kernel
coding style guidelines. Hence, occurence of typedef lnet_test_peer_t
has been removed. Script 1 was used to detect typedef and changes were
done manually. Script 2 was used to replace lnet_test_peer_t with
struct lnet_test_peer.

Script 1:
@r1@
type T;
@@

* typedef struct { ... } T;

Script 2:
@@
typedef lnet_test_peer_t;
@@
(
- lnet_test_peer_t
+ struct lnet_test_peer
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/lustre/include/linux/lnet/lib-types.h |  4 ++--
 drivers/staging/lustre/lnet/lnet/lib-move.c           | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index 9da08cf..3fbc5b8 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
@@ -164,12 +164,12 @@ typedef struct lnet_libmd {
 #define LNET_MD_FLAG_AUTO_UNLINK	(1 << 1)
 #define LNET_MD_FLAG_ABORTED		(1 << 2)
 
-typedef struct {
+struct lnet_test_peer {
 	/* info about peers we are trying to fail */
 	struct list_head	tp_list;	/* ln_test_peers */
 	lnet_nid_t		tp_nid;		/* matching nid */
 	unsigned int		tp_threshold;	/* # failures to simulate */
-} lnet_test_peer_t;
+};
 
 #define LNET_COOKIE_TYPE_MD	1
 #define LNET_COOKIE_TYPE_ME	2
diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index 2e9e4f4..02fc8e5 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -47,8 +47,8 @@ MODULE_PARM_DESC(local_nid_dist_zero, "Reserved");
 int
 lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 {
-	lnet_test_peer_t *tp;
-	lnet_test_peer_t *temp;
+	struct lnet_test_peer *tp;
+	struct lnet_test_peer *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -75,7 +75,7 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 	lnet_net_lock(0);
 
 	list_for_each_safe(el, next, &the_lnet.ln_test_peers) {
-		tp = list_entry(el, lnet_test_peer_t, tp_list);
+		tp = list_entry(el, struct lnet_test_peer, tp_list);
 
 		if (!tp->tp_threshold ||    /* needs culling anyway */
 		    nid == LNET_NID_ANY ||       /* removing all entries */
@@ -97,8 +97,8 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 static int
 fail_peer(lnet_nid_t nid, int outgoing)
 {
-	lnet_test_peer_t *tp;
-	lnet_test_peer_t *temp;
+	struct lnet_test_peer *tp;
+	struct lnet_test_peer *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -110,7 +110,7 @@ fail_peer(lnet_nid_t nid, int outgoing)
 	lnet_net_lock(0);
 
 	list_for_each_safe(el, next, &the_lnet.ln_test_peers) {
-		tp = list_entry(el, lnet_test_peer_t, tp_list);
+		tp = list_entry(el, struct lnet_test_peer, tp_list);
 
 		if (!tp->tp_threshold) {
 			/* zombie entry */
-- 
2.7.4


