X-GM-THRID: 6476179573447852032
X-Received: by 10.107.52.145 with SMTP id b139mr2648020ioa.98.1507853058872;
        Thu, 12 Oct 2017 17:04:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.134.134 with SMTP id u128ls1372986itd.2.canary-gmail; Thu,
 12 Oct 2017 17:04:18 -0700 (PDT)
X-Received: by 10.107.131.18 with SMTP id f18mr2699472iod.73.1507853058167;
        Thu, 12 Oct 2017 17:04:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507853058; cv=none;
        d=google.com; s=arc-20160816;
        b=KvmJ7RHN09Bzof5pVPrfMIxbGZJkP/zTO7etcIqAOWpMWiSO6HkYG7gtSKk9hhfAhf
         JCizbEu42WL/5S04S8OgKU9IOFakIGUzAyD5VWIeA2ByP7/tB38h3cWBG2q/WPEwnzgE
         8gDt7j3Az8yfTcaO6QSG2RTnqNYT++9tHN7ep0KJkWe17233Ne1UtCpAUq6Pq2mx/86u
         ligFiqtYQMb6pnhpFCYPWAO37PP+2cT7NKsCYUA+stPs5GmJdYMofh87CQgw8XiW4H1y
         5MiiMci3DC0CFpLibH80FZG4XMx/5SmnlSN/dj7z9sEtng0o6tUk2rvc4sa/2e3vhdxg
         OzRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=O+u1Ci2orjzS6WiUzK1pdagWasxZ0U9ydEX3f0YDJ1c=;
        b=nxLaB6RDzcK5mbpqNHuVlZN6mHdVBrLf4sm8qV/PnYVsQ5axhrVQU/lL7a1rLooQdQ
         ckS4pU2QiGLifoqhzo/5ZYmrD2tKRAM21NT/tb9v+FXy6YtMGhhCAYcQh4AS4toSXfJm
         +nWnnyWdYUV68ZbIyg5MUqZdKIuQNY7IIDcivOs61RCx7MSQ6o5pflqoAi16F1VM/Xbh
         d5XwIQX81sJAy0yrgXIKUSiEVYp9l67QNZl326SoyRDY7zzwcGNTjWSMi8Iuxl55xxqd
         dJzNfPrMO4G8eBVJzsohewICxkVM/LtFXI6z+/WIGJyEG/M3bQrQE/aT/R1XfM4Hz69n
         KpOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBYFkGa7;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id c29si162351iod.3.2017.10.12.17.04.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 17:04:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBYFkGa7;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id e64so7243425pfk.9
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 17:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=O+u1Ci2orjzS6WiUzK1pdagWasxZ0U9ydEX3f0YDJ1c=;
        b=PBYFkGa7lOntXMzbU+IXZs24/x3ayITbkirVECvPkZa+IN28JAUnAhJzjHWhJjxV/R
         adbBYn2XHxcta8MegbK4uEXAF0AX0dYwWASY8o7h7O+Q1ClgO/20Qz+tYVAQiWZslkjm
         XGh7mEAt1GA+Rwhi8/V6Wwq+AaZrXAZm3v++LNXyw68sM4+00Ot9dR1h8CWomyJvHUoV
         1DCUcIp01wD6cxir+PZT7U0gJCfuElkNAVi9h9wJyEjZrAbrqX/NhaWEbUdGFGC7c1EZ
         KFOjGiODwDdvKU+/OBdBd9Uw+iXthn5NKfe6ggOaglcSDh6WquxwnyBNj6NozPzY/rPn
         RbuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=O+u1Ci2orjzS6WiUzK1pdagWasxZ0U9ydEX3f0YDJ1c=;
        b=I1fOWhyExSq2jRxesCQPmR4tKMtBcwwrknZhOdl3/dnh+I4qCXvrpYI/S+WzNXS+vj
         xTqWoJWjO56V4SKCyh9cnyM6JF3BWBUN5QtqRrFQnvSW/olsqZljjKRJ2q/F6FYyFRwh
         TidMTGb8Z7y1KT1bklx+nNl0KIT2OgKzhXFfCpV5GLsH1w8RQGlipBVdbdvpq4yODVUW
         /9fDsDW4ICMaar76zKKhiDFSXH/uVf9XOc+Df/S9LusLR5iVXXzCoauMJIvK3z2gIgI0
         namronGIk56aWBy5ySHxIY1efTpDydlIeuuTCUuM5VdU2RS/frA9V4oWbSPxa/2tnpmi
         h8Kg==
X-Gm-Message-State: AMCzsaXhIpfFV2xCoDalj4UAaAvL6QsHjGCloskU2hVGtdpvF8TK4uYw
	EkbMpOEIDFzUrB4KMYr5/r8=
X-Google-Smtp-Source: AOwi7QDz6Ma7/WhaHqCFATek6w+jb/Aa/gk2VaqUY43HasNSTkdpLee1A0zuyhuAwLmtE9CcyDE5SA==
X-Received: by 10.84.138.1 with SMTP id 1mr1534196plo.404.1507853057887;
        Thu, 12 Oct 2017 17:04:17 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id x79sm12894424pfa.156.2017.10.12.17.04.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 17:04:17 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] src: Remove unnecessary cast on void pointer
Date: Fri, 13 Oct 2017 05:31:16 +0530
Message-Id: <20171013000116.20107-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Done with following coccinelle patch

@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|

- (T*)
  e
)

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 src/netlink.c | 2 +-
 src/tcpopt.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/netlink.c b/src/netlink.c
index d5d410a..3a7ae62 100644
--- a/src/netlink.c
+++ b/src/netlink.c
@@ -2941,7 +2941,7 @@ static int netlink_events_cb(const struct nlmsghdr *nlh, void *data)
 {
 	int ret = MNL_CB_OK;
 	uint16_t type = NFNL_MSG_TYPE(nlh->nlmsg_type);
-	struct netlink_mon_handler *monh = (struct netlink_mon_handler *)data;
+	struct netlink_mon_handler *monh = data;
 
 	netlink_events_debug(type, monh->debug_mask);
 	netlink_events_cache_update(monh, nlh, type);
diff --git a/src/tcpopt.c b/src/tcpopt.c
index 7c6c255..c37c9d5 100644
--- a/src/tcpopt.c
+++ b/src/tcpopt.c
@@ -86,7 +86,7 @@ static const struct exthdr_desc tcpopt_timestamp = {
 };
 #undef PHT
 
-#define TCPOPT_OBSOLETE ((struct exthdr_desc *)NULL)
+#define TCPOPT_OBSOLETE (NULL)
 #define TCPOPT_ECHO 6
 #define TCPOPT_ECHO_REPLY 7
 static const struct exthdr_desc *tcpopt_protocols[] = {
-- 
2.11.0


