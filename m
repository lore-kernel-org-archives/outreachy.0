Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.173
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793891092;
	b=IkU3EuRxt3ZU1OSjL1XbULNSZG9Sper+vg7X0jJBWgpeQK9dCoDjnjZSIUiodU2rHlta
	 mgmmVjqveWhRA/t2kUUC859jjcTbz3EMA6VpQqEeaQZL0jyme37PBZt2PAWlJynemVaPS
	 ElHrMaq33wB7tYaUQgJyk4Dl8oCmPmmzQY1+QTmwC3Ppq1JPiSmMqmgXXfGiW1rQhiyE7
	 w5mKyxQSiuGMAMqRHfbma3MsNMKqbhPRdCIQ+wfmE/PeP1Gfp1jZnBmE8O2CrG+ybq96m
	 py82Xa3s+F66Ag9w41OTjixXUa/AME1R6KSA1HtWv36DSEav5m0nTp2BQLIS4OG6BSw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793891092;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=bfpdbUUIX16VN5mCBIU3OZ+av/8U5ZQPuLtnxoG4U/M=;
	b=s7pnnTnQt8qRgP9o9jQQZ1SbMCHRVdV/1YgtAPO2VO6GRV9vz3MS5hf1m5PsMIFE8Q4/
	 UYkgrmTGLXZYYmF8S4PEHcw5bHbJJ3rvarltQHMPdLHXjyuqgcP3MbUM0+sPVL4WNmgTv
	 utMwUaUHiUbEPJuUAkFX5XNBD6VfRDUL/hvrA+i6Bo1VeMEjpDl/ttT/PdLfCoUDNA9s7
	 /P5VydQwdcLnSX7qN8hJpUv8iK9jRucd9ob+1EoaUr1R78jRbusUwFpW9V3fFvCjqPxrR
	 EfleG4XCe35nRwdVkdTXxE5gR7P5W18hPApXCpfHeijbCpxUr8BbJvwMmdHehOQ9oDQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=mTMScwco;
	arc=none smtp.remote-ip=74.125.82.173
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97CCB606A328
	for <outreachy@lists.linux.dev>; Thu,  5 Nov 2026 15:04:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 97CCB606A328
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=mTMScwco
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-3645f0f3fcdso3297412eec.0
        for <outreachy@lists.linux.dev>; Thu, 05 Nov 2026 07:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793891091; x=1794495891; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=bfpdbUUIX16VN5mCBIU3OZ+av/8U5ZQPuLtnxoG4U/M=;
        b=mTMScwcoSmTgBfn2Wwrpey0+oS7FfxBCPLjDGeSjLwMDTha53L7ZQqeTJJR8UfQ5zr
         RaTaFmRbbOJM2Oljw0Qp/4PRdWSfks40WYR4h+JAe7P6Y2VUQgEyMNBeBbj2JqxVhdJa
         9Poku8mVkrf2mhx6EVif+SxahiHq34LNDqVXXO0Fe6MjjC26n3bhrwKHP6pw0pTIwmeb
         6ZDAQGsxKYIA1AaxtDoFs58JPZpRWjyFDWOJfKKfp57jJS/n9zVLksrOCv6QoHtKY08c
         oLsorM9m4KIobNhXl4TTrqlmC4KiQVnU7UlWBrFeFiiwLfDNaiIEDV+hHpYxW00Dv2Ab
         Xflw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793891091; x=1794495891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bfpdbUUIX16VN5mCBIU3OZ+av/8U5ZQPuLtnxoG4U/M=;
        b=VzQmMYNP44EgurSTMX/QG58EkjPazpdCAhQrSDH6Htv4rNO5w8gwtvo5lyXP/dz6RC
         hBg3/IFOZmT0IEZH87TWNwEiIwT4NmmbsnhFt3nX4ZhPqpHJfx6uI5kWHCFyzkzYK792
         mBE6KQ4MfItPs1ZOK2vOQ/FrqKFMNDQu3oH6ObcoaPhydgWnKHgDeus9T8hfaVbURxVY
         BXR3HeO/185xdBIE0CYdr1WPJAj4hFHU4zTnYhNkMPyPdDki3A1UvaryH/fFB0lRVxsd
         tR3Ry4554Qq4TGwkZJcnmXSE4Dnue30GiPlBWl87vqYe/ZNZJ+y1RAOHX+ZB24LXFG9g
         Fh2A==
X-Gm-Message-State: APuU4Z+yW+xQCKUIS6L3FxGbU97X0C1dwXGVZxDdWc2i3y/Oj9HtDvVK
	OwE17gnnLowjiwMn/nXUbAD/woRo3pd0yRs5t09N559Z3qUjiNQlvLLTJJ7Fzz2HXSA=
X-Gm-Gg: AYBFou0c7repXKmj8GlnkNSVqfiwTFI1XJjt5UryLcilfsEihWLFhClJSIlm/n8cUZV
	mX8K/mrl1/gLkyRDkGBxvEDkSdRcLCQG4GUtzTw634tDSRI87WNhoPFHw/kUFxB5pkUU427gZeP
	r77NGVaZuS2KMNfGec3C+fz+3QlpJ55IE2cytszfXNcKS3PFNaTlxNCjxwnGfmodvVUUqMtbd7M
	wpv4quWd3PV/hLJNmxIKVgT/oWXbAmXgRPEsD7issG4T+tAaXTI+KAdXL2khBLaWv1zRahbhDJ+
	vh84F8zCSGj+eilhcgEkiqInmfuYCP/QuwfifgJ4d7+ZtqrJ7cutolOPKN+x9yizVeAQfdyHYYc
	KJwd49hD+BhYY6uMBvbVUWOE2BmsOySkUP/SETxuH3Lf82tIJannr62ChIyP0BWUv14Jx+x6Jan
	WPxUTG9IV9syfMKDIB1A/3ed7ROySz34L+kYp0WRzVUg6rfyKLxl7s+D1ZifeYGV6VWyd9WyJuJ
	umLx9f7reXLP7kOSAVZ/WaNICBfDKEy9yEUiGdHIxTENIHp+5pjAdeYH8Clb2ub+714x/jK+g6J
	ykNAGyAF+sQXShBN2Db8H8R34QwaC/nokt/xELeR6kBa7xK5r2P/pQ==
X-Received: by 2002:a05:693c:4145:20b0:36f:551:2bd5 with SMTP id 5a478bee46e88-36f05512dbfmr772632eec.32.1793891090524;
        Thu, 05 Nov 2026 07:04:50 -0800 (PST)
Received: from Anonymous.localdomain ([223.181.63.167])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36d34d5960esm18325064eec.5.2026.11.05.07.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 07:04:49 -0800 (PST)
From: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
To: outreachy@lists.linux.dev
Cc: johannes@sipsolutions.net,
	linux-wireless@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hussain Sitamouwala <husainsitamuwala21@gmail.com>
Subject: [PATCH] wifi: mac80211: remove unused drv_offchannel_tx_cancel_wait tracepoint
Date: Thu,  5 Nov 2026 15:04:33 +0000
Message-ID: <20261105150433.10816-1-husainsitamuwala21@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The drv_offchannel_tx_cancel_wait tracepoint is defined but never
used. Its only call site was in drv_offchannel_tx_cancel_wait() in
driver-ops.h, which was removed by commit b4ca6084a84d ("mac80211:
remove offchannel_tx API"). That commit left the trace event
definition behind.

Remove the unused tracepoint. It was found with "make UT=1".

Signed-off-by: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
---
 net/mac80211/trace.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/net/mac80211/trace.h b/net/mac80211/trace.h
index ea46c3cca21a..f34d079f3d38 100644
--- a/net/mac80211/trace.h
+++ b/net/mac80211/trace.h
@@ -1472,11 +1472,6 @@ DEFINE_EVENT(local_only_evt, drv_tx_frames_pending,
 	TP_ARGS(local)
 );
 
-DEFINE_EVENT(local_only_evt, drv_offchannel_tx_cancel_wait,
-	TP_PROTO(struct ieee80211_local *local),
-	TP_ARGS(local)
-);
-
 TRACE_EVENT(drv_set_bitrate_mask,
 	TP_PROTO(struct ieee80211_local *local,
 		 struct ieee80211_sub_if_data *sdata,
-- 
2.53.0

