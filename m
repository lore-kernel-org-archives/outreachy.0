Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.50
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794106229;
	b=scbnAPrPqV6qJLyLYmRHYRsc2iAhsHizuRzFwO1nwUcf27GiuPo8IWNcO5MFMjB0WtdV
	 +fStZG/Ycc0WOqifBLhHzniq/RDCDMWnQVRn1NnqxFKjk8O98EjkpNhG+2yFhouZVEYeU
	 wJQ30L2sM8hKH2vFBzP5FYVCYLLbVC9xK07NVEgoSZbxQBQ0sF5ejKeZgKt6zup9W21Cx
	 j7KovBGLszof3Nki9RTTyr3FdvtWB2OoGclPlWIfQUxUGO3fIXgWkJTmffI+cJ0GI3yPX
	 /QDkMoofPCU0H7N9E5PRuNKhisOBj/3R0HfscnYN8raT9sNVZtaH5waBV82fuwaHdhQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794106229;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=+XgAKvL9Yz88WJI2U+RHkRWBYREJXUrZL2P4iN0ZY3c=;
	b=5JQ9jYzqp92rAypIW/MiogieUBmWWI+c36X2GSAIF/JF1UmgvzA7L+o99l1ll3KRERqq
	 S6LZPK/RqGWuLEtvgpaU8pf359moozy5dRKn3WIfPJbB8QYSV6grPixGsiNwChxkJZpsO
	 PLqvetL14NiOUT2SWLGcXXQHCdrkKk2b1sz1oHc5HK6vAiyO/Ldn+KFO8Ar2jnK/C916d
	 i0DXNm+SXgssc/EIiTpUS/Uezoka+JyRRsZQKQAAD9b4uE/Q2wpuvsFZCkm0si3OJoXVu
	 xoxG02qWo0LZkrDS9CQWWDNQ83sSXy6/90YjGuqNxmbKSlziYbEzjlo1qQHdebegw+Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uc0Puz2m;
	arc=none smtp.remote-ip=209.85.128.50
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C338606A31D
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 02:50:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 0C338606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uc0Puz2m
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4a549cd7fd2so1229145e9.0
        for <outreachy@lists.linux.dev>; Sat, 07 Nov 2026 18:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794106227; x=1794711027; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=+XgAKvL9Yz88WJI2U+RHkRWBYREJXUrZL2P4iN0ZY3c=;
        b=uc0Puz2mgdR9LRV145uqaFcG2O9lot8qskgPLE9cBcmFYNOB1F1Ss1qTJGv0pSEk4K
         VmhcUMXwfzFIoVgx1B+6/ISeY0UWuwjHRDmjmTgYfdveS/uAZNi1JAvmUWofUVlzIb5B
         3tRb6vOCjYY98/i1HzcvbLhJVG11j5TxOR0VbeMhRBtd5Q7Nyga2dlG6A9m/tzhg6Gh7
         y+mKigwOdb3PiNIUy+xe4ss5VG0jBZykymqaDkBlBoGH+FFBDpxuh4A/a7TZm7Ze7kfD
         +4phkxThYtiOl0yKv2oJEmNwI7OSyi+M83HNAiWid/DJUIHvpBc0e5mSRSlYX8aep/y8
         vyyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794106227; x=1794711027;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+XgAKvL9Yz88WJI2U+RHkRWBYREJXUrZL2P4iN0ZY3c=;
        b=gCTKHschSakexaErDIhGV8pSVG04lyRVbDjb0mipfXNTsd2xLDP0fiwi+Ci8FebGvA
         huAjWz1KaOfS/NrHDrpgwKel/4nX5s2vn4Q8eeioBW+v53v7t1YnDOItO17gbC1AsWao
         COFKLqFmGDkRbcPqFN4ddETmeDj/TXzp3tF9PlLHkhWI8KC+/WH05CzDpa5PK3imOKAG
         ZFgQ18SSsYp5+mWx5uo0mIe2LxQnTO1D3mDgIbyAnHoqSuVjpB59F22r6iBt1TrWFEA0
         l960aN93sthKUk/DAPsSoTJ5n1LejPoWw0XkD+S9BgMMovEXRb0/1x0X+R5DAb9QlNdi
         qu2w==
X-Gm-Message-State: APuU4Z+jdtsl0PQE+T0kQzC9/zFCgezzkhcqmTA67RvUKuBvxKGFEI4o
	7wktIofjXFb+7wri1z4RHFZ8LR8TvUVd3dDSWLc7wavYdVhEvOcrbZL+
X-Gm-Gg: AYBFou1jcRoQZ3qn72C6orrAZXQ5N6SfUqGmaQyohD52k/Vs164XE/AH0anP9VzP0M3
	ADIAWreKwjPdUa6EU7BlCvwDt+TMw8Hk6u2un6N5n369a1JHA7tROPIft0uxl98qbncgmGp3mav
	QcB7ZKjmLb7DhD7zyIRFyyTbb3PH37VaOof/F1AlvmO60YkmlQ7wEgtYJHSAV56HKRc2fVIvqhv
	+Z9U/RRfjuqrFZddYsp2YZdw+Y+JGCWjQImxbo63iqbj+IVa/HoO2EO9sE6DaE8jju5YWDrwDCl
	kBxymqrX0w7EtaM4POMK3yVSFPaxr8OuZcP7dVaGTIZsMmajbnkml2N2XUgMBS1pQ62T7glBnqc
	mxIHn4nloTFrDR8WaKlcA8GZopHXqRwaGTQVLg3YGiryTGU/b2vVzyYkbdTzJDp93GrQ7ItKW2U
	fwAQ8SmKZQdW6lWJMcM3k5N5nVj5jzM+QNDkcrlRuuQvWSDteC6WEnySdj3vbPGShMe0VBlDTRp
	Rp0+a6HALBNCelq83qCMZr2opkQUJ71aNApeiBMIZNjO5d9N2VLivKYSnQFLAK3IjxNLEuBzzXz
	D6WS6U59gqv+heTbnOTu4kHDLK3M4kS/A9C7sCjeE26iF4ylhJC3lyV4Cihi7VSoiDsqC0jd1pU
	0N0s4WLfPem2pr1Xgz1zo5wmT0+QKeCw8TB4tV5O1jv4X9TgXUYr4lblHZxa5rzXuNQ==
X-Received: by 2002:a05:600c:190e:b0:49e:65f2:db64 with SMTP id 5b1f17b1804b1-4b960d9c5f8mr7744875e9.5.1794106227158;
        Sat, 07 Nov 2026 18:50:27 -0800 (PST)
Received: from maria-VMware-Virtual-Platform ([187.55.90.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b90f10c681sm22969665e9.10.2026.11.07.18.50.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Nov 2026 18:50:25 -0800 (PST)
From: Maria Sheikh <mariasheikh812@gmail.com>
To: cel@kernel.org,
	jlayton@kernel.org,
	neil@brown.name,
	okorniev@redhat.com,
	Dai.Ngo@oracle.com,
	tom@talpey.com,
	rostedt@goodmis.org,
	mhiramat@kernel.org,
	mathieu.desnoyers@efficios.com,
	trond.myklebust@primarydata.com,
	linux-nfs@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org
Cc: outreachy@lists.linux.dev,
	julianbraha@gmail.com,
	Maria Sheikh <mariasheikh812@gmail.com>
Subject: [PATCH] sunrpc: Remove unused rpc_socket_reset_connection tracepoint
Date: Sun,  8 Nov 2026 07:49:42 +0500
Message-ID: <20261108024943.8130-2-mariasheikh812@gmail.com>
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

Tracepoint definitions consume kernel memory even when they are not
used. The rpc_socket_reset_connection tracepoint has had no callers
since commit 4efdd92c9211 ("SUNRPC: Remove TCP client connection reset
hack") removed the code that used it, but its definition was left
behind.
Remove unused definition. This reduces the size of sunrpc.ko by 628
bytes.

Fixes: 4efdd92c9211 ("SUNRPC: Remove TCP client connection reset hack")
Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
---
 include/trace/events/sunrpc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/trace/events/sunrpc.h b/include/trace/events/sunrpc.h
index ff855197880d..a0d02d735a7c 100644
--- a/include/trace/events/sunrpc.h
+++ b/include/trace/events/sunrpc.h
@@ -950,7 +950,6 @@ DECLARE_EVENT_CLASS(xs_socket_event_done,
 DEFINE_RPC_SOCKET_EVENT(rpc_socket_state_change);
 DEFINE_RPC_SOCKET_EVENT_DONE(rpc_socket_connect);
 DEFINE_RPC_SOCKET_EVENT_DONE(rpc_socket_error);
-DEFINE_RPC_SOCKET_EVENT_DONE(rpc_socket_reset_connection);
 DEFINE_RPC_SOCKET_EVENT(rpc_socket_close);
 DEFINE_RPC_SOCKET_EVENT(rpc_socket_shutdown);
 
-- 
2.53.0

