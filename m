Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.42
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793698105;
	b=xtjI++RB94nsOwDx5loSQsVb9e5br4WJD51/wDxjiDcv+qPVADI9ePFIfBfqCoDu/ZAP
	 tPZp4mnDpvkYJ5ssd/ozM4RbULGCKs+i1txEx1GtxMuK1fNQkvI6/an0NLc37699TUuQe
	 9J8W6a4zjE9OjuVl2hfx8WUWQwtx6dpnm9DSDQ57YYKWYAM/ApuhhJQmbZhJgh3b9wwzv
	 xJvFxHdl4rqtTWSntnVx+MscEpDKLKYOkos7AAdrJdk2vXbe00m2uBgUHehLkYPkGJGwI
	 x376uIrCMRc2So8OOvLy5R7vlyMujOKYxDLVkah4NJtQU/hEgVB2aVpr4V46X5feU0A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793698105;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=rJxzKiW1QrwhdtV25TvjUmW0XRnbnGbKhj6Wgjpusvk=;
	b=OKoTPwssl8RZNEkf6L8eNBglUT+HYZxodrMh/JyQYPIfOWxiIiAut0N7BGZ9IXNbAp7t
	 8+pSnvuA1EHSjUk5mGIbxyg5mrVWadXfRejo6JkFuWz1UnGVZkeUpYnNM8fDiXMKAA3YC
	 NrFfnk915H5RdB3kuK7ntS9HkCOXrDZj3/7Zv2x0NtzHS3AVwWpFZKugLbpO/Q4P35+Fj
	 m/pOd3Bl0VSUbNLqhWiiM4iWtYXiTFNRxwEp0HFugeM3biwyn//ysF6WrxWW0Th9qJomi
	 DguOo3JLJYY3+Ve8WQ1+YJ/doytA/voGAcTS1guu5EymaGu2q1xry9Y4Qzg49QJEH+w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ngy2Bx4M;
	arc=none smtp.remote-ip=209.85.128.42
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916E1606A33E
	for <outreachy@lists.linux.dev>; Tue,  3 Nov 2026 09:28:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 916E1606A33E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ngy2Bx4M
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4a20bde60a0so30238815e9.3
        for <outreachy@lists.linux.dev>; Tue, 03 Nov 2026 01:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793698104; x=1794302904; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rJxzKiW1QrwhdtV25TvjUmW0XRnbnGbKhj6Wgjpusvk=;
        b=ngy2Bx4Mm6bQD0VBplehnxbW+UYaYDVds7p1Q+/FXCDkfJiMrQbmglqoj6avxqIRSP
         g5BMf52SowhelGHDjLlkwnaOmYxRRsObrXzvKSYtDdSBx07y+xgk/u2kw+kR1zqNTuZv
         AsTjw3UTdUwi/sJlGwXQyyggy8F3LiYroQKiwBJtRSfJjrkQsyocCDlGexBEhc/dZJpZ
         RlCJH5OKoyVV6xV/IvsNX8vXH3xSQCQvuKk72SkvdsfsGzijaxmNhiQ+FfRmla6OF4BU
         f5yFb/BboNncY4/DVfquydu++jf6GUZoK6ECk9MT1k0QoBSKp3+qNiveVV/99jGVrYPz
         B4Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793698104; x=1794302904;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rJxzKiW1QrwhdtV25TvjUmW0XRnbnGbKhj6Wgjpusvk=;
        b=zNGLGRkPxenenYhbMRmVzKCp5sREsHsNqhm2shf0crXtRWm3BotstkHndNNvBbracE
         1XWWLQYcRE8XAAf1fYsqC3PD/JzMsquFQC1Q4ttVYpqgeHMeod0g6VXuxh0bx2/Abydf
         +52qq+cHTxwC9QVL8W0JhW/m5x3mEKW8Tm7gsUCbPPRQ9E2DQS8RbBNKcisZaHqrRYim
         APm034FF6EhB9M6fYt3E3ayecIyWiq8/Ul79n2oCpM0ZwHzFMoJYR+xEZSYP7H3l+TCa
         xQSNLOU6p8S8zdhEn6tazrDPuzT7AnXY0PKDcJ77n8woRp1e1duofbaVR13Q+pT6dUnm
         2wfg==
X-Forwarded-Encrypted: i=1; AKwUvByzCuW+PCRlUYwd4WPyFzXvkN8xYBpdsguCNHUx6PL+Xk/N4svpJUKo43BVoyv8f+BLM4ddx1pUivQ=@lists.linux.dev
X-Gm-Message-State: APuU4Z9BBwL+xCkCDBoKR6Yy2r25AIIr/YMeXTQW/o/il/sF9Wrl6kEZ
	XvWv/5a8yd/bzsa6f6YtWMEaIpQFHLAHBb6zs+M/w4Po7A4PaoKIThU0
X-Gm-Gg: AYBFou1x9sTeNykC9NqX8fTiG3+CQHAWfqrNQNyZGLI9W8HIyyRJQJSiOrlsA4xmsgx
	QRSKmQTh7PlE0FK55loONMHXNMGuRStRLaWbEiIFaCSxBkWo/SHaYOPQTdvpn6nSFS+2KyAcJCY
	QSY/7cM1810HhrZpf2IL7gWjzenXRs9ozwCH4j9B8ai0yoRe7wrjYlD8TY6IIt4PV+sxUBZpLCK
	PMcgzU0QS1MJoK+am6lzWbYdUhiZ4460rlEeWgwssboLnRSICi46PkFumMrnXJWvr093tG0go5P
	LL3+NmmRxUgKSK2y40uKms1aLuz+YVBjms6i5jF6j404AxJicK1v4uqmOD6tLRLu2CgU/nUx4Y+
	5HFR24MT5wviiG83sdg6LSHt1oFY+Xlu+pzLm8oKXZR0VoErKe0gzoqOdKX8XXZIu+AIuZVnXA4
	bBSSJV9tYIwS34usPZ/mtW/FlVbg/E7xIxcW2EuoDI6sWcgYT/epmZ6rQsV2MP94NyJ0IDWXCpH
	RZPboF98B2GgooozpT8pAumMTDGsumhQjl//tYIK005qUvl/OYMxd6jZpRvQamQCURXBA9r5GeI
	Vb/H4GvbHVC8wAM6XAFvP3M6PjpBeEE/t9S6EG65VKUOtTmX7nbQ4gXxArMIrXSMpGeBVRv97+7
	AmfvPSPMySVSSmxtyZjNEeKWHcrYk4cu5c2nL7TI9RfiEZk00w2OdMXrbr2O3wVEyWA==
X-Received: by 2002:a05:600d:82f2:b0:4af:c210:5b3f with SMTP id 5b1f17b1804b1-4afc2105bf0mr185589865e9.24.1793698103693;
        Tue, 03 Nov 2026 01:28:23 -0800 (PST)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a922c298sm38522655e9.9.2026.11.03.01.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 01:28:23 -0800 (PST)
Date: Tue, 3 Nov 2026 12:28:19 +0300
From: Dan Carpenter <error27@gmail.com>
To: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@ieee.org>, Maritu Hone <marehone12@gmail.com>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bryan O'Donoghue <bod@kernel.org>, greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: uart: fix heap buffer overflow in
 gb_tty->buffer
Message-ID: <aumpM9Hlh40t9UZd@stanley.mountain>
References: <20261102195332.19860-1-marehone12@gmail.com>
 <f3848ac6-a105-4581-8f17-fc9d3f748b74@ieee.org>
 <aumfB5MLWIQuTYY3@stanley.mountain>
 <aumlkgtsSDS1fw4g@hovoldconsulting.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aumlkgtsSDS1fw4g@hovoldconsulting.com>

On Tue, Nov 03, 2026 at 10:12:50AM +0100, Johan Hovold wrote:
> On Tue, Nov 03, 2026 at 11:44:55AM +0300, Dan Carpenter wrote:
> > On Mon, Nov 02, 2026 at 03:33:58PM -0600, Alex Elder wrote:
> > > On 11/2/26 1:53 PM, Maritu Hone wrote:
> > > > gb_tty->buffer is allocated once in gb_uart_probe() and reused for
> > > > every outgoing chunk as the backing store for a
> > > > struct gb_uart_send_data_request:
> > > > 
> > > > 	struct gb_uart_send_data_request {
> > > > 		__le16	size;
> > > > 		__u8	data[];
> > > > 	} __packed;
> > > > 
> > > > In gb_uart_tx_write_work():
> > > > 
> > > > 	request = gb_tty->buffer;
> > > > 	...
> > > > 	send_size = gb_tty->buffer_payload_max;
> > > > 	if (send_size > gb_tty->credits)
> > > > 		send_size = gb_tty->credits;
> > > > 	send_size = kfifo_out_peek(&gb_tty->write_fifo,
> > > > 				   &request->data[0], send_size);
> 
> > Wow..  Heh...  I have read both the original message and your
> > message and I still have no idea which function contains the
> > actual memcpy() overflow.  :P
> 
> It's the kfifo_out_peek() in gb_uart_tx_write_work() that may write 2
> bytes beyond gb_tty->buffer (as its size is currently just
> gb_tty->buffer_payload_max).

Ah, right.

The right way to fix this is to have a commit message that
says.  "The gb_tty->buffer pointer is supposed to hold a struct with
a flex array at the end, but gb_uart_probe() only allocates enough
space for the flex array so it's two bytes too small.

Part of the reason for this bug is because it uses a void pointer
instead of a struct pointer.  Clean that up as well to prevent
future bugs."

Please send something like this in v2.  (Send exactly this code
but edit the commit message if you want or leave it as-is).

regards,
dan carpenter

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index e1b73db6a17c..7d1985d63482 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -43,7 +43,7 @@
 struct gb_tty {
 	struct gbphy_device *gbphy_dev;
 	struct tty_port port;
-	void *buffer;
+	struct gb_uart_send_data_request *request;
 	size_t buffer_payload_max;
 	struct gb_connection *connection;
 	u16 cport_id;
@@ -230,7 +230,7 @@ static void  gb_uart_tx_write_work(struct work_struct *work)
 	int ret;
 
 	gb_tty = container_of(work, struct gb_tty, tx_work);
-	request = gb_tty->buffer;
+	request = gb_tty->request;
 
 	while (1) {
 		if (gb_tty->close_pending)
@@ -775,7 +775,7 @@ static void gb_tty_port_destruct(struct tty_port *port)
 	if (gb_tty->minor != GB_NUM_MINORS)
 		release_minor(gb_tty);
 	kfifo_free(&gb_tty->write_fifo);
-	kfree(gb_tty->buffer);
+	kfree(gb_tty->request);
 	kfree(gb_tty);
 }
 
@@ -842,8 +842,9 @@ static int gb_uart_probe(struct gbphy_device *gbphy_dev,
 	gb_tty->buffer_payload_max = max_payload -
 			sizeof(struct gb_uart_send_data_request);
 
-	gb_tty->buffer = kzalloc(gb_tty->buffer_payload_max, GFP_KERNEL);
-	if (!gb_tty->buffer) {
+	gb_tty->request = kzalloc_flex(*gb_tty->request, data,
+				       gb_tty->buffer_payload_max);
+	if (!gb_tty->request) {
 		retval = -ENOMEM;
 		goto exit_put_port;
 	}
