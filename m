X-GM-THRID: 6389746860709380096
X-Received: by 10.200.37.208 with SMTP id f16mr9396710qtf.15.1487728874309;
        Tue, 21 Feb 2017 18:01:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.196 with SMTP id x62ls14256693ota.32.gmail; Tue, 21 Feb
 2017 18:01:13 -0800 (PST)
X-Received: by 10.13.206.196 with SMTP id q187mr10392914ywd.153.1487728873877;
        Tue, 21 Feb 2017 18:01:13 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id h130si3341424pfe.1.2017.02.21.18.01.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 18:01:13 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so13852014pgz.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 18:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NlzzOy1V+l2X6FmSBbqnMIk6j3uv/7Q/HZbfRXBp0KM=;
        b=nDXfEYvFV5sR2pSvZwlvE9wt5ffDKX5KY7rgLBR5cGRp+jgLrEHh/fhdr8c3DCegGT
         Elt2bMwTvUFLDVXb7sQ7p57K1IKk3+cflAWcF5+qzINOd/ClkUEQ9sGXlrwTOJ+lXuxz
         uF/aGQXZFxJ0obqsQMdHATjzDVY1gnbyavasqb1R+Xwa+PCDG+bi2b/lp+l6jy4Qf+QR
         z9aIV8p7ERO5f8RaBbT2ZvL5s7kM6xr3AwAuFxBbpU3Y00E2gRfJ8uSiwrwKXIM+1o2N
         Q3+lQG5jzIS5XscYrrtVkLKdcwlTTmHi3WkBYFcEGbbg6kxclNyAKqhixB7u7vIlFhZi
         l3vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NlzzOy1V+l2X6FmSBbqnMIk6j3uv/7Q/HZbfRXBp0KM=;
        b=bWnZAI/LlI8pof6r4D1LBwdPFjq8QVJ+Z1aRUJHRrwUn3fsD8tntYI8hdePcaLX03q
         fsDepew+d5H9gu5tDZndz8hBX4oxvwA9pwjVVgJMx8Rd+0oToCQPvdaPDu8/QogBb6lt
         3j9hHRIyqd8xhLWlb8CQJNpK8K5m0oWtPbnr/4pfAS0DfH+LRfY7ZcHhT0eYnv8m/uYn
         baEByASTDFKdXCgjOc8ByOoFSNfs6Pb7K3TUQcZ4LADd/VrQ7MSrt5oFv2C7NThGGviw
         AieWQKjOxfgBUGPiUU7h7yv5W6rtvlbyKquhbQD2dG55btPAihX18eEXCx4qx8+BVBQX
         sJtw==
X-Gm-Message-State: AMke39m+IEoi3JJxvQO20ksYb1LK0lnxfvVrWSRX5DcYYqhTC+JkH48GALdM53HWVS+JyQ==
X-Received: by 10.99.136.198 with SMTP id l189mr976729pgd.45.1487728873608;
        Tue, 21 Feb 2017 18:01:13 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x30sm43370284pgc.67.2017.02.21.18.01.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 18:01:12 -0800 (PST)
Date: Wed, 22 Feb 2017 07:31:09 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] staging: gdm724x: Drop useless initialisation
Message-ID: <20170222020109.GA27876@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removed initialisation of a varible if it is immediately reassigned.

Changes were made using Coccinelle.

@@
type T;
constant C;
expression e;
identifier i;
@@
T i
- = C
;
i = e;

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 2 +-
 drivers/staging/gdm724x/gdm_mux.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index a182757..e0f0912 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -353,7 +353,7 @@ static s32 gdm_lte_tx_nic_type(struct net_device *dev, struct sk_buff *skb)
 	struct ipv6hdr *ipv6;
 	int mac_proto;
 	void *network_data;
-	u32 nic_type = 0;
+	u32 nic_type;
 
 	/* NIC TYPE is based on the nic_id of this net_device */
 	nic_type = 0x00000010 | nic->nic_id;
diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 4009691..aba32e2 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -62,7 +62,7 @@ static int packet_type_to_index(u16 packetType)
 
 static struct mux_tx *alloc_mux_tx(int len)
 {
-	struct mux_tx *t = NULL;
+	struct mux_tx *t;
 
 	t = kzalloc(sizeof(*t), GFP_ATOMIC);
 	if (!t)
@@ -91,7 +91,7 @@ static void free_mux_tx(struct mux_tx *t)
 
 static struct mux_rx *alloc_mux_rx(void)
 {
-	struct mux_rx *r = NULL;
+	struct mux_rx *r;
 
 	r = kzalloc(sizeof(*r), GFP_KERNEL);
 	if (!r)
-- 
2.7.4


