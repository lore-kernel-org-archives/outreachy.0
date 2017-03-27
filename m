X-GM-THRID: 6401417655470784512
X-Received: by 10.107.9.90 with SMTP id j87mr8192823ioi.86.1490654013363;
        Mon, 27 Mar 2017 15:33:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls15371846otj.6.gmail; Mon, 27 Mar
 2017 15:33:32 -0700 (PDT)
X-Received: by 10.157.80.155 with SMTP id b27mr533428oth.8.1490654012851;
        Mon, 27 Mar 2017 15:33:32 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si335284pfa.6.2017.03.27.15.33.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 15:33:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 79so16351808pgf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 15:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HdhU92JW5iPeTM6/BjnDe/eGxthhy62/MdWPFLCjyzA=;
        b=V0Q8k7B2C0J/6IjoiS1z4LvIo2f7+2U5KyoMZmMYYk+CtZRNjFdkJpK/j1wjxJIjtG
         n6ye1eHANK188prQbuNVx19HTCbbPnL/E6OlTODx0lbV3s69+bmsUBb9h2mvOpzpnVyl
         eHNzz73pv3uM0x4V6KiQbh+3Qqi4GJAvmKKvaXD8ozdA9Z9vgWxhgSrL/qE6n9U66Ilc
         LvlN/mVgOFeeh3RhA7q2+qbKf1tipmcSbuYv2Adu8hpNraMAWGpyq5RNsoNmFktPTsru
         xj8x7irJpWKH2dnxhM/IhzXb8pMRXxJOTopapuruRbThStlLzgmwDomf7TX88ZrZgT+j
         HxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HdhU92JW5iPeTM6/BjnDe/eGxthhy62/MdWPFLCjyzA=;
        b=koC4StXiW6yGnjL779ZPEHey+AIP5/WUulzT9X4VN5lVbGTM41lldV/ipCH+sxvTtz
         oite0m8K6kAWzmO4mujdI0otzM7nrf0nJd/Jb2JP3VMxN55H624BwxJDL2Y95THV7Ost
         v0RBWSzvKSdnzFOf9o252VgonDuuMkJ1zyBFw1HYifUpADJf7guBMmglUwkJcxusE7Pf
         LgkQ/qfMPoYOoPRId0ft83kkjYWpefoBL/rSLGoTo/H73wn53UgyrfDrwGz6GqO90DqK
         OT0GUGE+lxhb+kAMrJ9+f38heEFE7zmp2gJ5Ud48IsBxTWzAgpT+axoUw9KkUn/y/K1I
         sAgA==
X-Gm-Message-State: AFeK/H0BmCcQP91zotExjCkFm1/zSMsqW3ztSpyCjFrvyfeALrQq0pmFXmrDrCq83Y9x3w==
X-Received: by 10.98.80.1 with SMTP id e1mr27005899pfb.250.1490654012618;
        Mon, 27 Mar 2017 15:33:32 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id j19sm3118747pfk.4.2017.03.27.15.33.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 15:33:31 -0700 (PDT)
Date: Tue, 28 Mar 2017 04:03:27 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: pablo@netfilter.org
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] net: netfilter: Remove multiple assignment.
Message-ID: <20170327223326.GA486@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes multiple assignments to follow the kernel coding
style as also reported by checkpatch.pl.
Done using coccinelle.
@@
identifier i1,i2;
constant c;
@@
- i1=i2=c;
+ i1=c;
+ i2=i1;

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 -Make the commit message more clear and appropriate.

 net/netfilter/nf_conntrack_proto_sctp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/netfilter/nf_conntrack_proto_sctp.c b/net/netfilter/nf_conntrack_proto_sctp.c
index 33279aab583d..723386bcc2cb 100644
--- a/net/netfilter/nf_conntrack_proto_sctp.c
+++ b/net/netfilter/nf_conntrack_proto_sctp.c
@@ -346,7 +346,8 @@ static int sctp_packet(struct nf_conn *ct,
 		goto out;
 	}
 
-	old_state = new_state = SCTP_CONNTRACK_NONE;
+	old_state = SCTP_CONNTRACK_NONE;
+	new_state = old_state;
 	spin_lock_bh(&ct->lock);
 	for_each_sctp_chunk (skb, sch, _sch, offset, dataoff, count) {
 		/* Special cases of Verification tag check (Sec 8.5.1) */
-- 
2.11.0


