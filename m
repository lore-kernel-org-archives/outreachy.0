Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.48
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793628752;
	b=HXP1HXKyFnKRdbFAqVdUU5aNKgbQ4i0nOoUTgRh8GFmxbinRdpcfRgpGVepDQKZWHtxx
	 J/mwgZidIwVqGWeDu+AGb4fVsBIV/iJ6mWxID2ZQYN12wKZOqLH/r69VllqpQxZIYgCKh
	 RccMxtfhoFd2ZQhPWeUnIKWzynLUs+7v4p7tbn97WFvOqz3h12R6TYILLcC/wXNJxnXUb
	 pzRUMNwvaJKCcgAVKubT9OouTBcHS9+LSVJwl1Wgsn18CIXqW/w7qIeG/zo1PphrnUzyh
	 fumljun4VShP6Vb9JIwzS1lvPbZfrwhNm/Qex6/KcqH6/O7bi6TDFM003c/N05B0Iiw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793628752;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding;
	bh=Zbt90t1wgRfp0YpX0T9Ft+WXbhZP3kkNCP+Z5PBV6hk=;
	b=tpajQb/YwzWd+DsX4iEqki/OwZV2LKEAGYYsfiMUJpH/4mGiGbGa9cnT7gusKMMuE4Px
	 T1OLAJ7AddN9MOAkJDYEcIklcJskOa9stbV/O2mII/pY0zgLn98OTlpFDPV1saqsAxx9+
	 gQwPD24BXhtOPAkqDEc3kVKdb+/CXr250U8quB9pPfDjgfyZopwILdtTOtMtBaHVQNgXl
	 Tdr0QvAShYa20AQk2ekodSelJUTBrhFE9ayvZjanbBn/1ziulNu8K8EI2fQP34iZK1vPN
	 AWK3+Xjtcmfk5pL8oqZf5sZAFsWseln+HT8ybGNqDLBPQ1mDL4gTybI+XJj/DBI3uWA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cT+s8qQ5;
	arc=none smtp.remote-ip=209.85.128.48
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2152606A334
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 14:12:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B2152606A334
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cT+s8qQ5
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4a4d7ae1ae9so29229325e9.1
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 06:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793628750; x=1794233550; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Zbt90t1wgRfp0YpX0T9Ft+WXbhZP3kkNCP+Z5PBV6hk=;
        b=cT+s8qQ5pIrPAZF8GouXqQuutdV7SZbRennIwto2c2yS4Gsel/awfPwl2laMC2hGA/
         FcN9HW2a7I2PrwuHcTVq50jqSJ36VYDeeDKMuP1IA3YJE5JYrrmSxcg43gtqBVHfpm7B
         4Yg6YkcP32ZMF87eDsCb/H9G6Nc3PMxp+vTfSiyBhMR7cmWiYCpaHscP0KH+NIsjxLVt
         waa4z2vVosDxrnA4pPZ3mhZNLjk0ZdgzP7rqoq9owAGdhrP6x1qMNLwm7Syjsj8GC/9v
         wfW90aSqGL7mkK5SkibA0GselWArv6szpEZnu6Qbd3lFEgbybK93GKdaQx11CapNOOsQ
         rpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793628750; x=1794233550;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Zbt90t1wgRfp0YpX0T9Ft+WXbhZP3kkNCP+Z5PBV6hk=;
        b=hButJ3I0PTI9cbA37h/IuXS8rrxX6ZR1W307hOJhsfI0MtbYM4RYEQGX+k3yNrSqUU
         kgC0HlTZYyS6F+/dPdrZ+5Y1rp4BrGMBpzfOG52ZRQhOo8mzS5mWqhYfRNjadOGT5wqC
         OsftZ87svxn5ar9sqlycOwD82j2NX9Hr+DZbixTU/96YoYfQkQy845p6C3Uovw/Dc1nz
         I7dawh74jgT5w20Yl+gJYfbrh10eISlIRCQ23S3VOnBBl6Ez5j3sVJ53rWKZfpwfni+T
         gaBN4QSHK1Q53gg5pPjxhjBnTxPpBJa7hsFL+hqWgISCgUYXzeEG/KoHLcqJpfAlztzG
         YJuQ==
X-Forwarded-Encrypted: i=1; AKwUvBw8A/Q1tfgmcdHG1MojG5Vn4FiGGR1FIlSqg0SZFFHzK1Afr660dTPGH+JQvjhEO1xyJSNbKDcZLk8=@lists.linux.dev
X-Gm-Message-State: AFq9FYJk9Rzz2xLZo0W1f9NIJLXV4x2jJCDZqST6vGmg+U9lSgBrjndS
	w9hpOZR7ImR4C7XLFugLEbW/YFDiU3srjbX9ss9d+M4hn37lKb85rc81
X-Gm-Gg: AYBFou35Z2/AdmSHTNS45wgDQdAls744pPenEWQe9p12nRTOKxANVI8hFRVEtgbVk/Q
	R67JXf9yd70pdrm9r9h6+MVQGtj+UajWZnXXLmKvmJ0Mw3IkmsoPC/RyWePjQHTBZwTqE9dkM0v
	0gmk8HRLVJMC5FqqaJqLNY07LbUwHAr2k+h6AUcfxZtEJIU76PsUFUoMPNgDfY16/fND8AOQYxq
	rwlV+jf66b5gD0aRM/+lkIzXelfTokg1lrM8XhgshqnJENB5iTzwjaClIs88sGCV3KOO1APMQUi
	ljJQ7VDD72oqqtXKt0prJLfZYucwSIXjZGypBKXWKX4NzR2Iwg6cBhbC23JEQ02PThIK+VkxkmW
	g6fHwW7tg3lMhUk6kWFxe2vRAnL3KV3NOa0qFrU2kaQYzcmD3j7oIp985CoN98Z3WZvz9gY3gYk
	BPZG8bqgFPJYW26X+MWsU+qc0u6UX/YNWqTPS6kX1xQo4LtgUOvtgyRBPwxNdhT5Z86kAnPz6MC
	Yq95MaoctswgEYjZTZ6+nenE0y3HmKyoZ1QkLfgUnx8pK8RWnNxbnHrS/8ADypZf3VEtzTP0352
	cV0fnrftCJk54MQNRGQO4Q+2QOEkWbJfgeZXGDBxtYwXPVPsUuwfKuu+Drrfq/X3fLp02woKQcb
	QWkovJRdolT9VaIg7p7kWU3eYf0ymRlp9V2L0
X-Received: by 2002:a05:600c:4e02:b0:4a3:59c9:a758 with SMTP id 5b1f17b1804b1-4ac19705e02mr219933115e9.32.1793628749862;
        Mon, 02 Nov 2026 06:12:29 -0800 (PST)
Received: from x1e ([196.189.89.249])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4abf751c2d2sm301441565e9.15.2026.11.02.06.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 06:12:29 -0800 (PST)
From: Maritu Hone <marehone12@gmail.com>
To: vireshk@kernel.org
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Maritu Hone <marehone12@gmail.com>
Subject: [PATCH] staging: greybus: fw-management: validate firmware_tag is NUL-terminated
Date: Mon,  2 Nov 2026 17:12:21 +0300
Message-ID: <20261102141221.87646-1-marehone12@gmail.com>
X-Mailer: git-send-email 2.43.0
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

fw_mgmt_ioctl() copies struct fw_mgmt_ioc_get_backend_version,
struct fw_mgmt_ioc_intf_load_and_validate and
struct fw_mgmt_ioc_backend_fw_update directly from userspace via
copy_from_user(). Each of these contains a fixed-size
firmware_tag[GB_FIRMWARE_U_TAG_MAX_SIZE] array that is never checked
for NUL-termination before being used.

While the array is eventually copied into a Greybus request via
strscpy_pad(), which safely bounds its read and always NUL-terminates
its destination, three error paths print the original, unterminated
userspace buffer directly with "%s":

  fw_mgmt_backend_fw_version_operation():
    dev_err(..., "failed to get version of %s backend firmware (%d)\n",
            fw_info->firmware_tag, ret);
    dev_err(..., "Firmware with tag %s is not supported by Interface\n",
            fw_info->firmware_tag);

  fw_mgmt_backend_fw_update_operation():
    dev_err(..., "backend %s firmware update request failed (%d)\n",
            tag, ret);

If a caller supplies exactly GB_FIRMWARE_U_TAG_MAX_SIZE non-NUL bytes,
"%s" has no terminator inside the array and reads past it into
adjacent kernel stack memory until it happens to find a zero byte,
leaking that memory into dmesg.

Reject the ioctl up front when firmware_tag is not NUL-terminated,
mirroring the existing check already used for the equivalent
Greybus-module-supplied field in fw_download_find_firmware().

Fixes: 013e66537273 ("greybus: fw-management: Add firmware-management protocol driver")
Signed-off-by: Maritu Hone <marehone12@gmail.com>
---
 drivers/staging/greybus/fw-management.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/staging/greybus/fw-management.c b/drivers/staging/greybus/fw-management.c
index 5d01da6b6eb9..2ee609dd67fb 100644
--- a/drivers/staging/greybus/fw-management.c
+++ b/drivers/staging/greybus/fw-management.c
@@ -419,6 +419,11 @@ static int fw_mgmt_ioctl(struct fw_mgmt *fw_mgmt, unsigned int cmd,
 				   sizeof(backend_fw_info)))
 			return -EFAULT;
 
+		if (strnlen(backend_fw_info.firmware_tag,
+			    GB_FIRMWARE_U_TAG_MAX_SIZE) ==
+		    GB_FIRMWARE_U_TAG_MAX_SIZE)
+			return -EINVAL;
+
 		ret = fw_mgmt_backend_fw_version_operation(fw_mgmt,
 							   &backend_fw_info);
 		if (ret)
@@ -433,6 +438,11 @@ static int fw_mgmt_ioctl(struct fw_mgmt *fw_mgmt, unsigned int cmd,
 		if (copy_from_user(&intf_load, buf, sizeof(intf_load)))
 			return -EFAULT;
 
+		if (strnlen(intf_load.firmware_tag,
+			    GB_FIRMWARE_U_TAG_MAX_SIZE) ==
+		    GB_FIRMWARE_U_TAG_MAX_SIZE)
+			return -EINVAL;
+
 		ret = fw_mgmt_load_and_validate_operation(fw_mgmt,
 				intf_load.load_method, intf_load.firmware_tag);
 		if (ret)
@@ -457,6 +467,11 @@ static int fw_mgmt_ioctl(struct fw_mgmt *fw_mgmt, unsigned int cmd,
 				   sizeof(backend_update)))
 			return -EFAULT;
 
+		if (strnlen(backend_update.firmware_tag,
+			    GB_FIRMWARE_U_TAG_MAX_SIZE) ==
+		    GB_FIRMWARE_U_TAG_MAX_SIZE)
+			return -EINVAL;
+
 		ret = fw_mgmt_backend_fw_update_operation(fw_mgmt,
 							  backend_update.firmware_tag);
 		if (ret)
-- 
2.43.0

