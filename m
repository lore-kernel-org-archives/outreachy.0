X-GM-THRID: 6661088091510407168
X-Received: by 2002:aca:e6cf:: with SMTP id d198mr10848104oih.24.1551141189436;
        Mon, 25 Feb 2019 16:33:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3de5:: with SMTP id l92ls6285691otc.0.gmail; Mon, 25 Feb
 2019 16:33:08 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYiX/0p9atNrgYdTNXh/H9nsQCD0CCTcHJp8Dz6FuwMFkm7YyPa9iwgEl12tQh5WMOteaLS
X-Received: by 2002:a9d:7a44:: with SMTP id z4mr12360128otm.36.1551141188923;
        Mon, 25 Feb 2019 16:33:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551141188; cv=none;
        d=google.com; s=arc-20160816;
        b=qXfvO9CvOPkWZ1raSxXG+r9+txaHl/ZuPNoSB4l3sgmMW2YL3ctxSD3/GNPRA8m4dI
         23GMFAeJZcwKO5qSFvpgrMUOhjPjrBtIpfnmB0EP7Nv22i9iG4rjQZD7IzkqG0uUINWR
         i9y4IsXQmbW8cnnVny6Y6luS6efoTUnfddiN5oZ0vUXXz1Ac6q6T2IIY+VlCOUYfX12n
         OseJX6KW+xyE76OMaA2zbyrvDb6O6SlcTLbaVv9JbI+jU7ot1NMSUt7wToo0T+x1Yxr7
         sXmxq1wU8mzTL1fuNb6IwQIu6+0m+M0x3iJc2pktDPiNSKTqwu5yu4wVaqwhvNOP9Sky
         Vj5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=uUwEbGN2erls4pkHz/8rOjhdNLxHd5Kmxs+a/RBo168=;
        b=jZrbdE2zSOCCnuaG7gx69R1/UHlqKxGXG25u2a8nqcvuiar8qkM3r5x2ILShul++Ar
         eYewrqTvThC+qiY8BfanYPeTmpmpvCCYYMiVa18kqPZpQY5GWNuhcadVxievtqptbPkP
         oAUUBkkDkcuigEBHvTc6MKEzL3bT+Qmy98rsTqiuMcG3Ks+lpTB0/y5jYKtFB34tpjGQ
         aFFfmrBRWWv3q+5O4hnkqhcgmT3ELvgfFxSgrPgOQDBstQhGAJ9TKb7/0M7pJWufLWdq
         6xSN5SkqikJlZhi706Mj1G7LXYANJrvXFWIPlxMnFP9nOXv9FqE9TPoDrt37UDNTEzcW
         zCrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LNKjIZpI;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id l6si780310otn.5.2019.02.25.16.33.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LNKjIZpI;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id g37so2500508plb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uUwEbGN2erls4pkHz/8rOjhdNLxHd5Kmxs+a/RBo168=;
        b=LNKjIZpIP/E3yVvHI2HetpUqpYD1PBUf0VsGeoo/V7q8HK8jYWOMP5ihI4Di5WO+9O
         2gMXVDtXBF/vyeH0barFOLk6GyiXArVcCOowaZzK8vDBTwqzcQhdGxAE4BatCss0+tz1
         l9GRsAo4VacxVStfGbUW6gp6p92SuktaIKAYoWWynGMQEymno8Gx15Oln3RDy5pwPYgb
         yHCMLIOOLV+/7gc9DHSCFbWOqsXNupN6eUtvlB9wmVntN1rd/Tygu5OJs3y09ZZ99TGf
         oXte2bT0Jp2AijxU/+h1FvcQ7Qa3R1Oy7ijQooiAJ/RfDUHyDVmCLKkX3SDkAsNx/dnM
         Ah9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uUwEbGN2erls4pkHz/8rOjhdNLxHd5Kmxs+a/RBo168=;
        b=BGU3tvvcLjZHI24DC/zZuZlv8anGYBlM25+BVG1hPiVUauJBbSUH0bvGAtDJdNTxXT
         hK//046tTWIjZ4yjwX1DtZs6XVU93zIKK3VBXXFeTNB0GEMlAK6NNQViG1kWNl9N4SOO
         9+sVdDR639gTRJLNxzSrRTiIuN9geIQA6zQHqSAo+YVtIkb6Hu5WLAOm+jUfdEvqpqdt
         h5E9aDAkE12lYETJMXRaNBRFS7zS9qJGww4cuQTW+Wi5TUjzzOd2eBMCQd0bMSG9yGNJ
         6B1mRza55XzEA14qT39P2g8M6CjZUjm8cpVwkscz0Qlsa3u3qa1Cx3qopIshodV0FhNC
         xgJQ==
X-Gm-Message-State: AHQUAuZhfYTdrRF0NnqtXNoubtiZhPeL7dnCAs/dJDcNgEEs0mo/30PO
	P2VBLZ8B/smwrBTRa+wiG9s3SH36XwU=
X-Received: by 2002:a17:902:2ae8:: with SMTP id j95mr23089669plb.292.1551141188388;
        Mon, 25 Feb 2019 16:33:08 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id i14sm14415486pgt.82.2019.02.25.16.33.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:07 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v4 2/4] Staging: greybus: Blank lines not required before '}'
Date: Tue, 26 Feb 2019 06:02:45 +0530
Message-Id: <20190226003247.15574-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190226003247.15574-1-bhanusreemahesh@gmail.com>
References: <20190226003247.15574-1-bhanusreemahesh@gmail.com>

Remove blank line to resolve checkpatch.pl issue:
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/audio_topology.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 8bcbc3c4588c..4ac30accf226 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -923,7 +923,6 @@ static int gbaudio_tplg_create_wcontrol(struct gbaudio_module_info *gb,
 		break;
 	default:
 		return -EINVAL;
-
 	}
 
 	dev_dbg(gb->dev, "%s:%d DAPM control created, ret:%d\n", ctl->name,
-- 
2.17.1


