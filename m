Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.182
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794231463;
	b=g+c96u5Y+d1OA8aZsxazYxSdKR/bVWWO0OekxhEo4WrXWK1EDJkkfi022aeR1l7tuoBh
	 S6YQTvUmAp8HrqWyNWTqD6H2pWdqJ+JIbJ5VhzFN1Uu1kpBqe+6IIzl+ZVjE9o0+MBr6Z
	 /JRGvTs0oHmFpPc9H/YJyOqHc5rq35ZlFj07gy9lmMmISHB6Pl5/k+2QuUx3joIVgvn+f
	 xU6ZQEh6OHHVV2P+0h5P98iD8xzvk2byVWvZaNp/vd0vW6oG48uuBUswuVqvI1OqYcbtU
	 rhhO7T57GmGSFdBj+9zciEAEMgrWzla8cLQXAGbCr4Nr67W8tWr1fbOJw1TZWWqREHg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794231463;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=QWyQhqJ9ucdQAcEnl95DfWPx+aoHDTMLg3gXeTbngSs=;
	b=TZGZ5JpPpOPmPA6BIuNUeUUGdSwaX2mCqBR6ZwUgjC44paIuAi9gf0FIlJVeZKBLerIX
	 Nwwx0aANEuH4YCPR+xUGtD9bevctdTdcIGTfWokvYh986GRIY0VyVYtUYqWodO0xmHRhH
	 MJ7unvw/EnVEYgdtene6HrgdqxFWq9/Lw+4qx4h5bk/h+FvfPLCqtXena2QJ8grogN9W3
	 acV92sGB/qIdHjFDp/qF6g5Gs0yJab7htNxlIgwRECFrwopR3ZK6qMPubvY+WMkFjo9rA
	 uIvXbm66Pp5wqpKaRe8FfiysOxriIZKnq6VWSq+8vE10KCJThKqIG+ynXBZ7FH3BvBw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=OZHHLv+w;
	arc=none smtp.remote-ip=74.125.82.182
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE1A606EE83
	for <outreachy@lists.linux.dev>; Mon,  9 Nov 2026 13:37:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org CDE1A606EE83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=OZHHLv+w
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-37000e7234bso749079eec.1
        for <outreachy@lists.linux.dev>; Mon, 09 Nov 2026 05:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794231462; x=1794836262; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=QWyQhqJ9ucdQAcEnl95DfWPx+aoHDTMLg3gXeTbngSs=;
        b=OZHHLv+wtuakew83JmCAT7F+nfdfE/ocwOpUVXP2tbWDqLhnTutXyYNyc0LD+35zEq
         KzwB1K4zd5wo1klwUWA8pfmIHSvhD8xSTQBwVfiyL+hWJQ4PxoqefXT5V8n6VFb4oXfF
         7nqjpXXaG9dCu3j0Tu/GtHOh7z7fd4AcIxe1Wj8ad6lPt63yAXh0Dn7SZQkRFEOiwzsJ
         YH2PFt0/+yz8NXRJkVneG+mdzAlCa4DAQD4gC8+RPI1tzQWh+2MdqfcCNXpvKRH8wTRN
         ZDS42H1jzTIBZbJ3r3KZvBWFI+CQLYw4jpAzE4BX6tYYrnL48Fdi49g4ceffjaZO0d7t
         4o8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794231462; x=1794836262;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QWyQhqJ9ucdQAcEnl95DfWPx+aoHDTMLg3gXeTbngSs=;
        b=P0xsjpHVeNrcrD9X9yMwDE77EijiRobhUTxqAcfdYBoimnTlijCXl1rzdG+SERSrwp
         6IIQeH/ZurZPmCJ5fHdOwfomPkJgKsPwla54wb+A+NIpRVf4XPbhqdwPGWavvyKKdr25
         oyGPzwxKiu6C99UBc/8nS1SyvVL5hu51L/fezLtEAmpmZjt/B4v+j1S4fbYN5AzGAKgz
         DRZQOSdUBKcffQhgPBEHVI6xFeS3KLaSF4aFWJU/vDZCima3Dttr+HioXTfp7cztJFPb
         AtKtAC45EIxVJw5sZVi0yX14e+clR0P+WsjYcFrT9/b/K8I8YL+nBRqK+xAVIRSG6VUG
         p8HQ==
X-Gm-Message-State: APuU4Z9d2gD90asJaaxzBYn7wWgJsNet9gIYZ8w3Ldl/R9R9Z4+PBdPM
	YvrTaa+cq2tqUgMNKqTrExuuG7vT596HHsJdOg46+tqcsE2QDrePgiAx64EqhxfMJsk=
X-Gm-Gg: AYBFou0zZ+O91sc2QPILCP70v0WygD3CY2aTJZ9gtotD1xW4bIMBnZw/oc67ryNw5Cc
	JzPyNZV1xOMUW2U/qwQHy+D61RQ3c3bnpFeEDrasv6jnR9tEvFqDqed1OpS+sx2XmVBgLo7HDAS
	L8rrwtSa4Cdohmz51IoikuPHnUBXcm2kDznwPSohT1Nky84NpECuJHbetA0pjI1a73yVw16LO2b
	qwY8HiootUHXE7d2GfsT7Vod1CZxA3u5Z2WdJM4uJ5ay+GdhXgnwh+Lx1rmuN3khHqMzfXGHeKE
	/xMq7JVXlWpuGuQxZU/uCJND+GdoH8b0Vi2+XJMSpFgF0lNglViTI8fYfIFo60/Sh5f6UOjXhln
	ISTbU5ZqxvKfkgtEYHIonuKBSLwmsD72uoOXMluei5jOv9b1RMbJ5Y2k6wZtT/nDFVyXcay/aB9
	/Sd7O7r3Nvhi9HgfVuBZ0hjaRttVySn4idJGE64tpjYNFv4n1IFSzJVpxyTrAmnSkjz8FuqhN4m
	H2reYm5iErCRkJuIMK2v+D206lxVMISNzKExo0dZvvqXPlR+EPR4laciApDyo/V7w+8WnWS+5hu
	JxCqp19T3DJQXp6SprbvaUxzKhFzviqrfZphmSGsIZjgbsZciV+YXUxbfW+kFYTH1ybC1leVO3M
	ytq/sajyV+q6XAEOPHayVZUTLq5g/L3TTgP2Gt2HtXEIA
X-Received: by 2002:a05:7301:6497:b0:369:efd5:9cad with SMTP id 5a478bee46e88-37255475628mr7236459eec.8.1794231461483;
        Mon, 09 Nov 2026 05:37:41 -0800 (PST)
Received: from localhost.localdomain ([203.92.58.30])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-372666d2fcbsm13225525eec.24.2026.11.09.05.37.38
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 09 Nov 2026 05:37:40 -0800 (PST)
From: Shivani Patel <patelshivani2283@gmail.com>
To: outreachy@lists.linux.dev,
	Andy Shevchenko <andy@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	Shivani Patel <patelshivani2283@gmail.com>
Subject: [PATCH] staging: fbtft: fix spelling mistake "writte" -> "written"
Date: Mon,  9 Nov 2026 19:07:31 +0530
Message-ID: <20261109133731.66016-1-patelshivani2283@gmail.com>
X-Mailer: git-send-email 2.50.1
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

Correct spelling mistake in comment ("writte" -> "written").

Signed-off-by: Shivani Patel <patelshivani2283@gmail.com>
---
 drivers/staging/fbtft/fb_st7789v.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
index 861a15414..c4db681eb 100644
--- a/drivers/staging/fbtft/fb_st7789v.c
+++ b/drivers/staging/fbtft/fb_st7789v.c
@@ -221,7 +221,7 @@ static int init_display(struct fbtft_par *par)
  * write_vmem() - write data to display.
  * @par: FBTFT parameter object.
  * @offset: offset from screen_buffer.
- * @len: the length of data to be writte.
+ * @len: the length of data to be written.
  *
  * Return: 0 on success, or a negative error code otherwise.
  */
-- 
2.50.1 (Apple Git-155)

