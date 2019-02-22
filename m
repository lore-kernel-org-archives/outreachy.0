X-GM-THRID: 6660473635314073600
X-Received: by 2002:a0c:b10f:: with SMTP id q15mr1520176qvc.0.1550818992248;
        Thu, 21 Feb 2019 23:03:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:21c5:: with SMTP id 5ls2317908qtz.1.gmail; Thu, 21 Feb
 2019 23:03:11 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbFnhQjvxAFXRfk08+OiydkMuVf0j68RoqqCwp1tnNbpoB7OTQ1l93Vx42jHE3wWcCyfEBF
X-Received: by 2002:ac8:1498:: with SMTP id l24mr1434920qtj.21.1550818991848;
        Thu, 21 Feb 2019 23:03:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550818991; cv=none;
        d=google.com; s=arc-20160816;
        b=e7plIA7/Vr13z4RL9mFzkY/QixIgXcd1GBEHEo4mlSu13dxrUn3DjaPUxFbndn/wKv
         WmQTzO8jrtcdAEJNQ8TsaRkL5d01OLSdxXx1162UOem+ieHxAO4hM3VcnbnuNna/T4J4
         LJkHkgLH+KqUuccsxqkKzgvQXGQtpeqV9ilaPvzdof86d051IK0VlsT6hKiiqcLuLrZ7
         kRsn6t+2pygzPsv4J0LVjvnmvdsGhBxrLiMwq5cgLXdy5VSmH4kSos20W3DWiUTl6GRh
         U2xqqWAT8SUSWpuKs+08ubuNjveWWiM5w9XA2Wce0e5oQhWkHKrXKSOVGLb3P+1J/dWR
         Fiqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=pNJHhgyEbuJcp6bukW8ShxBT1fizDqIn4FabNb/Ilfc=;
        b=0nhqqh9StwfbCBmZLCYr0E1Fa2cijVsPdaTD5WYLrah1w3cohy8tWRf9UMLnR+/9Tu
         HVDXHaNWWjefBzGwlJuAWjLeJyC7jdQHDKw2t7Z/ywRHPyuUNhtc8V+cU543R47FQmiB
         MXiZq14eMInD7HZbLqXgM4RDouNYANoftbYSjOwowOuO6fngKL1N16N5iyPyVIsFgFOC
         bTYGjJzjC5FSRwNuKaYvrdqUHBdgZ67qNmrLGiJzVgwlcfCy5QnudPAShNl2wXGiCidV
         1nuTZ30VnooGOJoHlq3oBTQvinCe73mAoVC8mtW2KoY9gXO0P05A49CQh7i1Oicrv0rT
         p08g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZQk3ptfK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g23si41509qtg.4.2019.02.21.23.03.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 23:03:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZQk3ptfK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i20so681867pfo.6
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 23:03:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pNJHhgyEbuJcp6bukW8ShxBT1fizDqIn4FabNb/Ilfc=;
        b=ZQk3ptfKCCaKiITv73BEXQ+jxfFbvuGWND36RtSXkNDLquZx1l/y34Hx1zZgxNwSXg
         bJVVpa9WfrSn6t0EMbZpUCD46VsRlSrRUUtE3vZmwo7Qmq1DuRE+oAszEPsjyQ9cG+k7
         wnmtlBktcbko9zKjzCfzttkU0F88ZvcgHYJ8tI76F5c1OzsAAqYA95g/hL/KxKAijJLV
         TdV6ClbVeY6mE5gC3XirYf4rMlhthEKRg4KapOeYyXHd711HkoglTVdJB7SZ9yyOG6Y0
         QiQgwbsheW0tc+Gh7eB/+3hgv6GO+ygyEXCa4ncOhNXK8F3WKNCJ7gA2+mNRACVaj4oI
         8aMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pNJHhgyEbuJcp6bukW8ShxBT1fizDqIn4FabNb/Ilfc=;
        b=LOKXmTIt77N8Lp36OTMVUt7SJPjk4dY6N6UqypK7Dh8/6rQQ/elh6AkqjNP+38nXyB
         XhiYM570NNhdoItLkR54v+6HNK2eIZV1cf7fkoQ/RIcDEwJ+BhlPesF+8rwSctGHAYq7
         X4Y95Y9Wqlfao2nlebT7bAAiKDJols6n9sh1famvO7t7z3a4dtE6nDSvqtXZ+BBBO3uy
         brSONAnFN+ZNjswvUYN2my9CQztfSAKRPD4C3Nvv+QKEywTJ4+rC/sQgswSno5ynsvSX
         qeAwJS4PyfNYt9jKy8eThklOqT4fFEZoV9y8CJb89haPAOBw3GOKTkk8fdyWFVHUwo4Z
         jaQA==
X-Gm-Message-State: AHQUAuaLeCYTcERvmORpcvEX1mXH++RND3ASrMEGBNsC3tiDdD/f+Dvm
	wFGYUkJ9SEcDgxAcUaJvxSYo9pz+df4=
X-Received: by 2002:a63:1a5d:: with SMTP id a29mr2367500pgm.369.1550818990786;
        Thu, 21 Feb 2019 23:03:10 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id n1sm1617743pfi.123.2019.02.21.23.03.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 23:03:10 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bhanusree Pola <bhanusreemahesh@gmail.com>
Subject: [PATCH 1/2] Staging: fbtft: Extra blank line not required before '}'
Date: Fri, 22 Feb 2019 12:32:23 +0530
Message-Id: <20190222070224.3963-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190222070224.3963-1-bhanusreemahesh@gmail.com>
References: <20190222070224.3963-1-bhanusreemahesh@gmail.com>

Removes unnecesessary extra blank line before the closing brace '}'
which solves the checkpatch.pl warning.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index de3f431abc15..9d78ce6e819f 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -87,7 +87,6 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
 			dev_err(dev,
 				"Failed to request %s GPIO:%d\n", name, ret);
 			return ret;
-
 		}
 		fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
 			      __func__, name);
-- 
2.17.1


