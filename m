Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.174
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793537927;
	b=duX38gtcIe79MRwVZVF1FqgP0Mx5R1P+oAzUZluTd7QAixJ2bHoCNyvDsmacaLpvuE0c
	 KYIZQ6fRwmYd2b6/1vBBmFxLOnbv5kb4b5hr/V5FyiwSgPnNVr+QS6SSPHbRO9cAOVr1Y
	 +NmcqACO7RLwe8tZ+cbGAPWOMrPfmyGSGNil44tBck8TbagcNmNOSL/JRypK+rlaKDgsC
	 ThFKZSb8DodP58yXr2NIzxmQ7QjfoZU0Ga8eGmt8KBfKXwzpPRKc2WBBDimbgAXrk5oNV
	 CGM2rG/1z97ytFYQlZRVDHIvJRihr00cc3PLa/m28H3wCtrzxI+tLEzhDZB4osItLNg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793537927;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=kBrM554nRDZeqaMMS+gTRrl9THt/dcYcfIH9FMvdP8I=;
	b=U1kwcYszaOythqq4yUbw3yWkVZznK2sDA2GOpONp2uXLq6qBMNMIYFx46MSzuySv4soR
	 3mWt1SuLU6KkGqU5W2ktbTqc8JjWEAaTGh86o8vxH3joWRdnANiAJkc6WhiuRHGDx9AMd
	 UJOWMk8pddh0y+6DTxCnk0SllDC0z3E8YU9h/oD1ftzL5SU0ojoz8rk6tY7mFDSpE8rKE
	 VAsuUR9LYOOYAZuL02UIc+N9/7d5zjQ+OYNdJahg0nbKGwlcnTH8z+YECfIT7ZPWEYUfM
	 VlGib9PNfAJGCrlnsfAdBFfXbElxUiV2vvQOIf0ybRXgN8r6UQ5SdcYx1vv3VrYQAPQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="VR/4Js66";
	arc=none smtp.remote-ip=74.125.82.174
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3350C606A324
	for <outreachy@lists.linux.dev>; Sun,  1 Nov 2026 12:58:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3350C606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=VR/4Js66
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-369f33df08eso4350338eec.0
        for <outreachy@lists.linux.dev>; Sun, 01 Nov 2026 04:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793537926; x=1794142726; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=kBrM554nRDZeqaMMS+gTRrl9THt/dcYcfIH9FMvdP8I=;
        b=VR/4Js66GihtCxZI//bUVqV51fy93QFtdK0ESzcW2WxBGhWahI3dNlZcFmBvu5tfCI
         /EHTVKsjcRRwN12B6a1ddRQFij/QCAy0otKNqBhKVQzwktnkiYzWK6GdLl0iLl2PwOpW
         f0HNGRTP1KO4BJhdNDKVkwreHBEEAbGmRXX+iVJv+CWRydRV/78SplJ/XIISOGyLAzNP
         i0w4VckeOPxqUaIsCz+eB/+zngie8B/eVvc8JAGDx0f/Mp7Kwc9WVrAAAo0rEG0Egq3t
         XNIl0T2YHhS8IkSFXCQ/gUtzXrwhP5Q4jB+AcvMi26Bn3hd31Phz3pNUyeZ/pwPIigDx
         tSBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793537926; x=1794142726;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kBrM554nRDZeqaMMS+gTRrl9THt/dcYcfIH9FMvdP8I=;
        b=uLtTGjMCFmnUJ0Gmxw7+xsX4gHomrj5XZ9ekVEYeAN3gsYZN5Q751u6RK02aaJzvz0
         VQMW9RNrq8kwMf8DXMExsertgXNkhLhgrOwzOxa1u4EDgkvykXkKPp2NroM956Ytyg1S
         OGHCeRh4xEavbxsyiPQgCa+Gpc3/9si2v/GuEq/UXtgGKebnIzqMZvjwUP+sFuQmFQZZ
         3gHgW5XIy4NHhQO9Sse4+bjD8J6ROVaH7NlTYf2Bm3uaLjDhdkJzAd8IVvpdplyWHT7/
         SvaZmOp53wm03FcApK/Rynvn5uAJg970JbKHH6G2rJE3GtCQNT9kGtvMFb6TbDmTaFEz
         pDTA==
X-Gm-Message-State: AFq9FYJXRMcz7feOu926VFbW63GdgjJesh7KSGEI9TDSfYw3ByIdfywh
	imI+GnfcoP0LhfGt1Ayy435WIRLssjluDAnnj3pktlTIdiAy4W2zzvU5MQkeH5NMgME=
X-Gm-Gg: AYBFou3MLQwzIXZVsh7ZPR0dnjQFXUz9VY47MfRbtVZ5zgJXiUZ00/GosTjGOiAm5F4
	oUXv5DF27uGQhy7aQm2YeSuF+B4o10xA0x/jPD957NIr0DqtkGHXpsO2Br+Z9qlHjZOPcDsI+8F
	nG6gCwPr2hNucU5uecyYnQ4Pr144Sao8Dss24Pg4UVaIumIW/IvODkVzHon9ASAm4aZzhL3GoLh
	olqmO1D3vpeFOwWQt5cnQ5tao6PN3q3AFl3TndxDw23HYyHtz23HXIRERf1UPSQeP/OqzzFY7t6
	/vCctHuCmRKEjcP2L9Lon9kK3AOusfG6DZ8HtfAHRsbQoVncbzyAV1ZWDPN3EO1ImmQWQzz6DDE
	ZBKW+f9mi4qBD8mBnpwXqRAk3RYxYkyEotwJfDaqgl8FhqbPjQqAmgm5Osi18TP3q2E03aO32Cc
	PSrRwm/zxRljXHkdQoM9tgsptjB/WYz4QNg+HdvsQoBeuHYBViTQYCAf9xyNzF3n3QQcky+A2u+
	SdZLJJXk9B+VsWf7FsUiiwtSUrAyU3xTsBywRSmWPZ+2e2YWmeyYUjWHV/OCNTK3IpnH/A7fX35
	bDOz2NHjRIXtrDIBbcU9YvxxNsZhlIRY7Mbm+POqm8ExFrw2BxOcGZFZ3bRR/2fO7DYaN6wlWSd
	fFlzv4Wj8YYSMRt+J6ytInT++8w==
X-Received: by 2002:a05:7022:f908:b0:14c:d84c:7182 with SMTP id a92af1059eb24-1ac5da75597mr9765898c88.22.1793537926085;
        Sun, 01 Nov 2026 04:58:46 -0800 (PST)
Received: from localhost.localdomain ([2406:b400:d4:acc8:a024:59b8:c312:eefd])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1ac19f4b08bsm28069908c88.16.2026.11.01.04.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 04:58:45 -0800 (PST)
From: Torra Sowmya <sowmyatorra@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	julia.lawall@inria.fr
Subject: [PATCH] drm/xe: Remove unused xe_vm_restart tracepoint
Date: Sun,  1 Nov 2026 18:28:08 +0530
Message-ID: <20261101125808.9770-1-sowmyatorra@gmail.com>
X-Mailer: git-send-email 2.47.3
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

Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
---
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

