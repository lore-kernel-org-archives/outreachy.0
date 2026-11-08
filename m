Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.176
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794117920;
	b=s/4XMs6NnTousvqNJuc4q0QAz+M+8e00ahGdZ4pJiFZznXYrhTd2vhe45HNEfnKmDP3C
	 C/CPslhNHpHqqN27zN09PzEsBu1dzvZKm09EfD6QKFrZK0yGdnXKxmtuKsmGfon0QLZWv
	 Gd5b4KLdXCMjKNbq67dSW32MU1DmxRzCDHGKYQfYyCehvswiVwqDFBQ1/rDcpn5brM64/
	 24f6+07LolJyK+llTqDHdGQyVE6312hSLARVmvg7DSjWIzYhpcHc53UGhQeNgne4Pgxq0
	 aobM47MiLfQMVxU9jeGELBYUdrXEihNWsW+rs47nPCX1YHvQhoKh6LNwoeyF4gJt10w==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794117920;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding;
	bh=6lprU6Db7+ksq8wir9YKQMNUuhRExSoqjwLJdiuYXBY=;
	b=qVzakd1+Rm0dgfMP60wdc6vYWLoxq20luSQnPCkyjtglx5Yaao4oxDux4gZsokUtcvcv
	 LU3DK3ZcG7qKfyn+FeWdtOe0K3SKJXRYYrqUX4blXj55EN1u80tTSYrn3rFp70Kwas8ux
	 ACzLl7q6zfzh32ex41P2PgZnGfmmJiWB+AZJ0cXhNezHE1KLadnGYu5WyTS8eVaXGWmFy
	 qV+rCFk6ROIsmGYpyCEG5cVqPGYp+3czT1vOZFd2DUx/KRm30OhVtmcMGiJ/9k2VswKwF
	 PCfsuubzsLRCN6JDphgXFslqfCzxVeaQpS6NQGtv+9qVIYAE/vaAsxw0n89LvRO1xIA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="xk9/NFAF";
	arc=none smtp.remote-ip=74.125.82.176
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7E6606A31A
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 06:05:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org ED7E6606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xk9/NFAF
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-33fb4680717so569040eec.1
        for <outreachy@lists.linux.dev>; Sat, 07 Nov 2026 22:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794117919; x=1794722719; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6lprU6Db7+ksq8wir9YKQMNUuhRExSoqjwLJdiuYXBY=;
        b=xk9/NFAFgkQ2cEbIRQJFR3IXxyYLRjyE65EzusZ5vv7yjq1L6irHdr6rlKCYIpQwUl
         iZaVOmuDmoAeeJhfvcDjg3xSoSdg/tt5Bu0Pe52IUxNGjvifhQ95YZ9TxpG652jKJzSa
         2qV7XjTB89cldYT2+l27BYBfbffXyaUHdcAW3TFoBDvbMTRe6lbeIrHn8HUatyjsADCL
         MzmX2w8pzA4Z34DwleZIMwaYk1WNqSSbqBd+P2zCWWrzKurXxOYxmpGIXA5LuNoKTJyf
         +Sll7ctH97EQqTjl4pmVn7zHb8ScgEkEwhgg4FhSTt2DQeNP1Jf8EUedk0mUbgzGvGTq
         VFKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794117919; x=1794722719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6lprU6Db7+ksq8wir9YKQMNUuhRExSoqjwLJdiuYXBY=;
        b=2LPmVKHGz4Xr1LZsUoYJSvVX0prkT9RCqJc1pUnL1UDsfj8X87zU0DyOJlyqHEjvJO
         zboUqEGkDDWmROb93K/n+K+i3wB7qWpM4yJBK7Oyna4szuwnQqTLXDzzIHoKc2lQkvfL
         yZ663dHfYXyjjIKo3dTFBot7XVydTp3+BaWsaS0xQnyZiv1Eun23HAbgyF7+fYjBchpP
         k+j0Qf79zoIC5h2uBscZqU53xxm7oI3qeUBYhy0A56zI87T8qDU2JLrD+NIU5TmeZTpT
         +G537rTbeDxZaq205CMmn3oMM4H5MmwC9Mis9ONklttGHckkF98KXRrGJB2QFDQEzCzi
         xcNw==
X-Forwarded-Encrypted: i=1; AL+hErHdfdreOLe2xDyeiPWwyGrBG11B3lGM3oXN5nYWqWgzEcBXvymrO0wbKZM7N8uiCH3/K6CfVq4tpYo=@lists.linux.dev
X-Gm-Message-State: APuU4Z+dhCQpj0DfsMz6OGau35YqSzZuQEZkYTqING8neco7m8ffAAsw
	dmrYBohjTqUdQ6M7kEf1YSHHPQupxjsBWVYWhnoR/wiT/Nh2xvfrQioh
X-Gm-Gg: AYBFou2CrlDYKO4F7XmMSmCJowku/DQ4SERkB+a+B9I36f31Sxi7/y3VhrpEfKNRoIf
	PSdHUosDwLZKhXgSxQUocJ3qgDwEfFlkWRg8H5Ky663MSikNJVCHOVo9x+ReeJ9CgYofhWwixZQ
	f08OMPlI9OCn/DBBqAn2eWtqLOBG+PF4LPAvpTeGFbY1LuiH7GYsBPGAlOv31aGvP/UIc538fsd
	556/xbU3jdwAITUXfpaEQP1UjDwiGhs8DmXnWMkhEXv261W6OwO4ShfjP+pvZ9qvak7SibxfEsk
	qyLTj2QKaaFEAKr+jXmSw4qjwdhum95KeQuzi7X6Rv76VpRu6PsoaTUMo5FMdHrU7Hdb8w1RE3n
	RQTQqW4pZeSC2OjI9EqsbAtcU3ZSguNvz4SjziPlJA/YXhN0xyXmXhFD+uffNS1dhb52Hy/1UtH
	r4R3JkHEpJr0lEW/KQ1lGHV654pXY4rZ+soXFpOlIG2NX7oBZcVg/4TYoEg2OIhP9a7j59uxkI5
	e1UGYXMoab411L21XkJmrMjIeIZfEJg2FHuVEVmZRXS0qmFD+KE3PDFykMlXfHvOCFh+ECikBMb
	Wmihki/6bp3pfA6cSTLc9bEXqIdq+bNUSEOrHNWpzIhNvNPl8g49nJkbdbo8hwHAjjs8OcmfwMG
	wTqtNB5v9irBCHTh3lJezfZLl6g==
X-Received: by 2002:a05:7300:fe09:b0:36d:4570:a32d with SMTP id 5a478bee46e88-37252e3a97dmr1835412eec.2.1794117918967;
        Sat, 07 Nov 2026 22:05:18 -0800 (PST)
Received: from localhost.localdomain ([2406:b400:d4:acc8:a024:59b8:c312:eefd])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-372665db733sm2646694eec.23.2026.11.07.22.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Nov 2026 22:05:17 -0800 (PST)
From: Torra Sowmya <sowmyatorra@gmail.com>
To: matthew.brost@intel.com,
	thomas.hellstrom@linux.intel.com,
	rodrigo.vivi@intel.com
Cc: airlied@gmail.com,
	simona@ffwll.ch,
	intel-xe@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	rostedt@goodmis.org,
	julianbraha@gmail.com,
	julia.lawall@inria.fr
Subject: [PATCH v3] drm/xe: Remove unused xe_vm_restart tracepoint
Date: Sun,  8 Nov 2026 11:34:18 +0530
Message-ID: <20261108060418.4554-1-sowmyatorra@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261101125808.9770-1-sowmyatorra@gmail.com>
References: <20261101125808.9770-1-sowmyatorra@gmail.com>
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

Commit f3e9b1f43458 ("drm/xe: Remove async worker and rework sync
binds") removed the call to trace_xe_vm_restart(), but left the
event definition behind.

Remove the unused definition from xe_trace_bo.h to avoid generating
code and data for an event that has no callers.

With the tested x86-64 configuration, size reports a reduction of
436 bytes in xe_trace_bo.o, from 20262 to 19826 bytes: 140 bytes
in text and 296 bytes in data.

Fixes: f3e9b1f43458 ("drm/xe: Remove async worker and rework sync binds")
Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
---
Changes in v3:
- Add the Fixes tag.

Changes in v2:
- Document the measured object-size reduction.

 drivers/gpu/drm/xe/xe_trace_bo.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_trace_bo.h
index 86323cf3be2c..fa91dd2b2174 100644
--- a/drivers/gpu/drm/xe/xe_trace_bo.h
+++ b/drivers/gpu/drm/xe/xe_trace_bo.h
@@ -228,11 +228,6 @@ DEFINE_EVENT(xe_vm, xe_vm_cpu_bind,
 	     TP_ARGS(vm)
 );
 
-DEFINE_EVENT(xe_vm, xe_vm_restart,
-	     TP_PROTO(struct xe_vm *vm),
-	     TP_ARGS(vm)
-);
-
 DEFINE_EVENT(xe_vm, xe_vm_rebind_worker_enter,
 	     TP_PROTO(struct xe_vm *vm),
 	     TP_ARGS(vm)
-- 
2.47.3

