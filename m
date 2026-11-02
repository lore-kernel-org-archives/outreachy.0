Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.53
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793649220;
	b=z1nN/K/R+jjG0CwcmYR+Jbcem6mbtJMrw2XF5Yhu5RyGE2g5bUOZujMwEJO8dYBiEpAL
	 U9tEigkPoi7RJ6ODgWUsm+QFcxh8/+xOpMdMhwet84XLvBm1Okhf4LOcX6saHwwGuJyuD
	 jx/rk7x2hZEsXpQM6gyITmNRP29IwhwDgHw4S6aBT4rx6AGlaxVYuxtWnkf4HYQIgUd2j
	 TLa1ExbiUiBvl7cfeveZUdNF4gJucoE0EvqKL97gCWY+ZBXZspoF2AmBTgUhWwn60p9TZ
	 lHRcSla+TIr3cVPGPMS7R/aOxk0hBQgLs3KkwzjCMuk58pCtN7yhlm04i5PveuFK9ZA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793649220;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding;
	bh=TT+JdKCO8FQmAWG62bqZ1mtZpW2RojAaKod9k+xaBw0=;
	b=GL1RiUbKnXT2NZuGo8DGNLSW5gtmVwRZ4Rb2BDsc+sMOGn05HwkzfjgwNvGgDv/1jkC9
	 KHSlMA7uSyTkhjvJJPP1G3WGup72gKaTKkwMV4fGXuE5tnWpnfomg4+eGUhO/1SwjL0xm
	 w8WHEYuNz1kcb9gfCSzFfiJCFR3snlcJmhZCLFbGx5tZLq+DLyDEssEFyV0v5KCC3QM3i
	 7S4R2vov4IZKw4ZnYQUOqagnsxAxGXioLfiJu7Vbq0++xzKELqHs/Rnn+YFMypwkXMGnE
	 ooOPVHjZ+ElEcSsDZ500CsDUN9PQSjsWInEE0FEg+0xYJnXcZllN3cU/ehZ5q7TLKOA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ioEO9Uof;
	arc=none smtp.remote-ip=209.85.128.53
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CDE606EEB1
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 19:53:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org F1CDE606EEB1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ioEO9Uof
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4a59100fa83so30741105e9.0
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 11:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793649218; x=1794254018; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=TT+JdKCO8FQmAWG62bqZ1mtZpW2RojAaKod9k+xaBw0=;
        b=ioEO9Uof/2Um+4+4CQqp9SdR1Wsr0UsZXS+EVax9rNpvlGIVLpz2j97f32W7braXdC
         rMQLS08RwaCa2RUEUZPjDfBwcj09WvO7gLpLqV4vgXPMPdOHPwXzuJlBifyqY4ZZUc3O
         pynMsck4cuFdfiyfVoRN3HAVsNsvYKfgLWqRZizB5ddCW9bCEQ5y8wmB6eT9sgOTST6h
         HwLMgmaRyO8eHUm9UePwYBn+TNW8Yc4Nqv+8hkrndmyIwO5/Jiqyz8M/G7A1GQiG/bkV
         KgJdy5kRlzijkCdRjuwe8ttl6EkFil8oySULRpMbAXnUdbUMbw60oJZcKjO1GDuWUGeV
         36qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793649218; x=1794254018;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TT+JdKCO8FQmAWG62bqZ1mtZpW2RojAaKod9k+xaBw0=;
        b=bSfdzzbJw85l2SX/Cc+5EOyn6GHaKfJpStnbkvo1dukvpAAoZOYRp0JoUorxV1Ss6y
         dO7XQdbpi+Z0NEYH9oKI+c4kim2rLVtPoURvPHhTsViC9aaDRdzTiwXM+5SJG5BgrkHP
         IVhuhc+ed79PB2346Dm0tlVWXnKGEiT2QlbmOAC+PE1u+O4W4n66h3t7RWinab9kJ5c4
         0CozJdUWXzeFFTj4CeJQ5/oBoTr5ChksUPX97WWqKIJWkHkptwIhEoFOEBzDsi+tu0wu
         XfaK2o2h/FTRrHZkDs3EF3SsGPOJv+/5FV1ixeoPwhwS3O5s93TbMbA+0jpEezghcoo7
         uNsA==
X-Forwarded-Encrypted: i=1; AKwUvBycSsQbSgIWCIu/YMB4PGqR7KnV0ZWw9L65w70q/4otKkx1mk5/SFW3UQ/bU+pID6eN0VPoPam3mlE=@lists.linux.dev
X-Gm-Message-State: AFq9FYKjjdyuneFZdLO61Qe3rPDoi8AX/pX8zhogZRSAy9ZXWvlVs1HV
	dI0gM+YSM2JCfMwhkcruC8m10VWU9elgUMX1i88rTOV7scJP0FYK+E8z
X-Gm-Gg: AYBFou1ml6YZgtNRHRRflsPFeXnae1FGDldMlmfsi3Ut6pYoPwsaeIAhGNGfosMJcDB
	4Vx5TTsjrgpNRmOWI2vdvlFdfHQDdWVHKKCgsHxgUm44HBY1CNgP9NqyfNYPkZR3AnrVwf9jp6/
	AQRU43pHiLyO5r78P1ABhC+J9kF1ixYV46iyegKFxYB7sLJHd4fiFo92F+7sld9WwVkzw78xKbd
	94u0gxUyxfwY0Y1Mu6zJHgppQS9b0f8+MQwl7qZ2xORb4ZCn3V3SV15McUEvq3UaM65WfAFnX4k
	eU0qLZWjrf5X/kEyykynvtJ3SVPbO83PrCFMaagXliLYBgG0tEvyYa5clLVCTaEmKu3wPWcTUfi
	Fs6Zl5waX42FG5o+aQmi4J3hX2N6x+dRhLoYjJSfxxEPsdztTmJ+vbqnOpfm/uIF0MJi43P+zWr
	ALzIX53LqZwLlacCWN/Pz4c0azTAu9MyRJnIrhWIPO5KKrErJEZOlcEf5H7DYbLifQSbY1mzach
	SWPwZLdg0bFLaqJR4SAoFYdO3NgEaxbEFGQTsAaH1urv1eAgrLGb50DxIWgceLlTGHDA0XhYtG2
	hTO2bDSexveginH6Mtv2xfjiY116yz7yaq1d1xjD6mSDFqUyYekp2ZXgxsfu2uC7g1KBkeGFb1U
	GoIex9jk0p/DkWw4JWjtmckkOfjibDoR+B0W8mg==
X-Received: by 2002:a05:600c:848c:b0:4a1:efd3:9862 with SMTP id 5b1f17b1804b1-4ac1765d977mr237853695e9.21.1793649218121;
        Mon, 02 Nov 2026 11:53:38 -0800 (PST)
Received: from x1e ([196.189.152.19])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b727c6sm23542852f8f.16.2026.11.02.11.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 11:53:37 -0800 (PST)
From: Maritu Hone <marehone12@gmail.com>
To: Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Maritu Hone <marehone12@gmail.com>
Subject: [PATCH] staging: greybus: uart: fix heap buffer overflow in gb_tty->buffer
Date: Mon,  2 Nov 2026 22:53:32 +0300
Message-ID: <20261102195332.19860-1-marehone12@gmail.com>
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

gb_tty->buffer is allocated once in gb_uart_probe() and reused for
every outgoing chunk as the backing store for a
struct gb_uart_send_data_request:

	struct gb_uart_send_data_request {
		__le16	size;
		__u8	data[];
	} __packed;

In gb_uart_tx_write_work():

	request = gb_tty->buffer;
	...
	send_size = gb_tty->buffer_payload_max;
	if (send_size > gb_tty->credits)
		send_size = gb_tty->credits;
	send_size = kfifo_out_peek(&gb_tty->write_fifo,
				   &request->data[0], send_size);

request->data starts 2 bytes (sizeof(request->size)) into
gb_tty->buffer, and up to buffer_payload_max bytes are written there
whenever enough data is queued and credits allow it. That needs
buffer_payload_max + sizeof(struct gb_uart_send_data_request) bytes
of backing storage, i.e. max_payload bytes.

gb_tty->buffer is allocated with only buffer_payload_max bytes:

	gb_tty->buffer_payload_max = max_payload -
			sizeof(struct gb_uart_send_data_request);
	gb_tty->buffer = kzalloc(gb_tty->buffer_payload_max, GFP_KERNEL);

so a full-size write overruns the allocation by exactly
sizeof(struct gb_uart_send_data_request) (2) bytes, corrupting
whatever follows it on the heap.

Allocate max_payload bytes instead, which is exactly
sizeof(struct gb_uart_send_data_request) + buffer_payload_max, so the
buffer is large enough for the header and the full data payload it is
used to hold.

Fixes: dd1c64ede97f ("greybus: uart: kmalloc for send_data once only")
Signed-off-by: Maritu Hone <marehone12@gmail.com>
---
 drivers/staging/greybus/uart.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index e1b73db6a17c..7bbac2603726 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -842,7 +842,15 @@ static int gb_uart_probe(struct gbphy_device *gbphy_dev,
 	gb_tty->buffer_payload_max = max_payload -
 			sizeof(struct gb_uart_send_data_request);
 
-	gb_tty->buffer = kzalloc(gb_tty->buffer_payload_max, GFP_KERNEL);
+	/*
+	 * gb_tty->buffer is reused in gb_uart_tx_write_work() as the
+	 * backing store for a struct gb_uart_send_data_request, whose
+	 * variable-length data[] field holds up to buffer_payload_max
+	 * bytes starting right after the struct's header. The allocation
+	 * therefore needs room for the header plus buffer_payload_max
+	 * bytes of data, i.e. max_payload bytes, not buffer_payload_max.
+	 */
+	gb_tty->buffer = kzalloc(max_payload, GFP_KERNEL);
 	if (!gb_tty->buffer) {
 		retval = -ENOMEM;
 		goto exit_put_port;
-- 
2.43.0

