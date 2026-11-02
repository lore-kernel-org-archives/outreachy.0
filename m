Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.182
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793645043;
	b=buxOFa6/aQQmRBgk+mO7j0mDC9308pJtZ/pMZT2heNU4kVLa+TdsatGNFYaoNIriRAy0
	 RuV770cnbRTj+fFszLDxUB0pgud/cFg+bMLBnpDRbEObFXLP1625ngKhKKQj1xMN0p9kg
	 +sWmLaJ1vwDfcyImRmQyZR4lE1nR6BijyShFiWjx7bL+nIpGNRsa9xooiHQ/5E4ZfbfEf
	 ljnWUoJYevEyv4ZgYNIGktSF12MYccZPrtfkHAsqlbWOLbS8U/gaRjJAi1O9xtPYQ6uWJ
	 lo94+vO7WyY8ZAYCSlMPAahvYYEgur5Kf9gcX+B70aRjDWWV1I2spqvya94CP5ONGOg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793645043;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=OkXGErPhmP5eVAxbao2yBu/Rk3POxU4quClJxNwo0dE=;
	b=cFVEuxAKNHKmm9dd/LeCC/cqDGZQBpLR/9tAuSV0az2as9TqBfut2rWfXjQXBtNC/16t
	 wd6gpjngEFR4NHY5b/3CVEBya6QPIme0R9ixv/vfG9WzKyV9m5qDOuaK+s6NU0jcZu+zW
	 0uQrg6PP4+5UxQLTIzVjACEVavJlcbAOfo5b9K2Patinq+O0QxooHJgnmP5iLt52WyoCp
	 uJiDPKi7WjJShzEZ8gi+jIBZOrX7lbdUz707pXEQV9Ibxf80dGfahI8F7TA/4+sBx8A+s
	 xFVqmSYD0dcUQcAQo0iWDHaiuXUBGYtN1MDE6LxlmYv4kYZYtY1MmJjSqJpzOHAnUMg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uaNex0CH;
	arc=none smtp.remote-ip=74.125.82.182
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54C6606A324
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 18:44:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E54C6606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uaNex0CH
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-369f33df08eso6585370eec.0
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 10:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793645042; x=1794249842; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=OkXGErPhmP5eVAxbao2yBu/Rk3POxU4quClJxNwo0dE=;
        b=uaNex0CHpnn31y9nhw9aYmhVAVkOjfBWILJGVxyduL7p44n5R0FzaWN7ldLKPYl+Dg
         iiw4C3LgZ+7vE95LvrscGF65Udx2xp7Xzb/OP+YTuVa7C9s+NYXOis4K/tPEWgzTJ64+
         WykOzP8VV1JVveQ5raY1QuPvC+SkD6+IY0xFkdXXqvymxOdFuUWkTp09+XnNeYQgQ7R2
         hn37yA7GVhNTqd9He0ABT/e+5aDnCiYWujJ42JlMvXvFDP4rbeokY4tQdAoVswl6zs1P
         JEf4/Ny+43/WujAcfuAkM2+sw7p6RRnfu2JYeLhsAZHApiq7rE0pi2Tla+AD6GdkV3W7
         AeFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793645042; x=1794249842;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OkXGErPhmP5eVAxbao2yBu/Rk3POxU4quClJxNwo0dE=;
        b=OPHc3dYAjo6tqNKKj8iDIeUfcaJEHLeKtSCTnOB9nZQomRQUAm1M+18bWy79TqGA8J
         jYZ1qGR0HyX5VtMuwcfhS2m4b3FnbQj/0DZ5BAGDR911ejBQ5HvTj9LLarhY9FPZ5PNz
         UJmA1bJ32as3A+6r+rHynzs+SF8u8MPciQQev4gBe1fBppw7F21UNWyp+o5SMfsw8s/s
         2xrASGtB9P9bYThEJHB/56PBk9eMDqSlTo5ghwJehRgJZ6tAGaJpTscnxk0QTX9xupX/
         K6EDnHZFff0ie6vCRtCX5EmfzmoDiIjt9vWtF/jbHYjoUU9QuaytZHg3qrJ6VMYpe54T
         tsEg==
X-Gm-Message-State: APuU4Z/DEa9o47wcbb6YAHqmSrQq02ZMrKOtA9Gy7njzPjQgemz4/ilB
	2f3Yfj5pUcVOKSXwpltG+K0sX53trBzO6w2q7nmxeUPqMxxzUhl+xauk81S40U9PYZ4=
X-Gm-Gg: AYBFou0UHxdcXmIkMLbKokandbrLQiqo8LKTdOq3sIkWdj7uEfNyv3nhhJ52eNUEM9e
	K0jCPM670fvilK6FNUodGKPL9Xo2PFsiMuWyoNZ5F3zBnHjyLRPzzU5+7PDkAXcje2BijdYvr1m
	4RfJLcqISmQcl2mAQCuMBmIAz+5Jj+SrpJo2hmg3q4psRtU0vi6qg8brYNFOzYQ1f/7/AW6sQfL
	Qi386py7yt8Qgl3dfPH2FuEoBzW0kNQgy8DdfniTHMI3a/G9pkfiqnwLnPRIj7U+9Xa2FhKwerm
	UWJuRYIIG7B1NsMNYXScocCHrc0oq5lP7BXgPmr0GDfSbbaPQh9ArvLt5TJGHhjCvrjc8HrSAXO
	jTUqXlehmqWVhyAYyDMa+ggCWTlg1sgH8D/XiSetH2AVqLGch59wRfsYWbnfL7MI31OlLPwNwMX
	A2PlBlJg77/iM3MyjHw5hi4nuGuyv6W+tyvUH948NAO6rV4Fi0n/PABngsYyfMr2PDTwaDwwb3s
	5Jfboa3ofeuzzUxnmVA5kW6oZb9KvVGt6BCAo0kNF6+NhxNjlPX7w/A2B34J48oDZC+bcohKl7Z
	wy+SuR6ogFnQbP1OsQAMtQdLox82DMLjU43Oi/HXy4j9oV/iQNHoxhtY/lYpbtpQRwoeG5OsAYw
	H7HirMVRYOjRO32vheNXuXf65Ag==
X-Received: by 2002:a05:7301:b10:b0:368:a825:bf7f with SMTP id 5a478bee46e88-36a42368932mr15750302eec.13.1793645041831;
        Mon, 02 Nov 2026 10:44:01 -0800 (PST)
Received: from localhost.localdomain ([2406:b400:d4:acc8:a024:59b8:c312:eefd])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42952e1csm41949704eec.20.2026.11.02.10.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 10:44:01 -0800 (PST)
From: Torra Sowmya <sowmyatorra@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	julia.lawall@inria.fr
Subject: [PATCH] drm/xe: Remove unused xe_vma_flush tracepoint
Date: Tue,  3 Nov 2026 00:11:48 +0530
Message-ID: <20261102184148.11176-1-sowmyatorra@gmail.com>
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
binds") removed the async worker and its calls to
trace_xe_vma_flush(), leaving the event definition unused.

Remove the definition from xe_trace_bo.h to avoid generating code
and data for an event with no remaining callers.

With the tested x86-64 configuration, size reports a reduction of
452 bytes in xe_trace_bo.o, from 20262 to 19810 bytes: 156 bytes
in text and 296 bytes in data.

Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
---
 drivers/gpu/drm/xe/xe_trace_bo.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_trace_bo.h
index 86323cf3be2c..72c4107adc13 100644
--- a/drivers/gpu/drm/xe/xe_trace_bo.h
+++ b/drivers/gpu/drm/xe/xe_trace_bo.h
@@ -115,11 +115,6 @@ DECLARE_EVENT_CLASS(xe_vma,
 			      __entry->end, __entry->ptr)
 )
 
-DEFINE_EVENT(xe_vma, xe_vma_flush,
-	     TP_PROTO(struct xe_vma *vma),
-	     TP_ARGS(vma)
-);
-
 DEFINE_EVENT(xe_vma, xe_vma_pagefault,
 	     TP_PROTO(struct xe_vma *vma),
 	     TP_ARGS(vma)
-- 
2.47.3

