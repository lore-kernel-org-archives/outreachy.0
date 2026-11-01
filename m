Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.54
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793530479;
	b=XA5fKPvyY2wfuI6Hh70Z26agL77mGka87oyfahEalyMTaJ6K4ZherkibJN08yJVMga8+
	 AveC01xmSeRpVqupsWoR0iU7peQcuQfPSu7Fg5zQeI1M1/5hf8a8NOLoeKDM4n/3WtsGx
	 Eg1py7engsAQgRKFOjL41BaIoFTrdSEOiSoCFfjwWUw0XNVOHds/XwKFVrCYzuytjPnCg
	 shfA7E/n1d4b8rFCLH+8G0hIE5wuiVmiOjAq28SjK9yTUGligW6PE8n320VEMj92QT2WN
	 t7grm2VxHaUUqteXNJ2Ex6YIRzNe6LJTH1BKFzmU79A9V2Q4gU+QSgKAZtyR0+ZbHWw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793530479;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=ef+PQCjWj76ZqfFxqzw9+PfzeJLyrYtV1HHS44QgjKs=;
	b=hIUz5UzjB24KSwur9QkYU3a0c0Ztm4LZBrWvIFySbKOZcOTIDFjPipwWuYHaGzP4RH66
	 mgI98Z3gfy+lu+rW+Phl8+FjPJbY243jUlALq51c4qghfUHy3OfhgtPQ6cpwlAzT7+BX1
	 psUmAY3H59SKa5G0l/qztko2vayp078JpiGT15UhKxaKXMNiy58MDloCza+RVfkYAObca
	 U3g5N2sOPvgLVVPZuuQCwnxKGnHRnLJfWjacH69XOnANdFqTEi9YZ2JGjf7HiEH9AfhYB
	 ZB38f9rmtAJ6jGCAuw+/+Rdh97gjfrWpWJShjIa58HlM/3fnKvTpvsYdfNQBHKBAcXQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=VfQBl2yK;
	arc=none smtp.remote-ip=209.85.128.54
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33691606A324
	for <outreachy@lists.linux.dev>; Sun,  1 Nov 2026 10:54:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 33691606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=VfQBl2yK
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4a5b2be99a8so13155425e9.2
        for <outreachy@lists.linux.dev>; Sun, 01 Nov 2026 02:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793530477; x=1794135277; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ef+PQCjWj76ZqfFxqzw9+PfzeJLyrYtV1HHS44QgjKs=;
        b=VfQBl2yKIXXqhSbMy/xJaaxQXNfbcS5EhtSs0gF66D05/urfQg0pNHsMTBhrYMExxT
         crqys5ouPsBeaD0eVn0ChFnuPQUd+ZhDN4UQg1/E1MWJYGs2106HeqjHrXF98fmoCJQP
         SF5pafQf0ceBQbA4dAuf3HVVrAkgDqa7iqM6D2O9w9h/z/7dmYzr5p7IXXQFEnM+o1eA
         yTm5lmJANf9sq12N5vcO/80Qd4qvPK2ONyAkRwmQSXT0f6eh67etIA3eWdX5V3eLa/Yo
         cof73/zZlAPtrop/oXQyoeoI5nBYKQw8EOltxVSU+5W7H0beL0aZLTJKqs8CpYTtlz4v
         B6xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793530477; x=1794135277;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ef+PQCjWj76ZqfFxqzw9+PfzeJLyrYtV1HHS44QgjKs=;
        b=HDhm0ttDmO7TGU+ecKSfqvMmM3AgazfAGAf7K8qnwAdFifJ6yxZL7eX+9QCF/XJIzk
         ma7G+g+MpbwAIFwQPlRsuEUFi3QGkrcBBOUcksw2qaSFgIjRol5vyrzTcnU5ESO2LU5y
         t5iin03yho5BGOp91iHHQ39TbQM8rx/kYL9mVUjjsn9BJJhIDxaiYpyKLU/c6EP38aY4
         Gk8rQ9jQ9ZPkqIrM9QrzWoJPrsSTGUOMB6Tf78UeFFrKDvirpUeSbpCscr18BkUfbbRv
         dJP9yOvt2kMYTgQuJL6qgRIZClw0WkSjKjSSS0dZhB8yl068+P59UHapskuyFZ5b4DRR
         l45A==
X-Gm-Message-State: AFq9FYLvSK0nSIA557SR3sPTX1Y5Urd+1QHvXRPhWHye/HOQ4lBVewUx
	qPx64EbOleNCxcXmAA1Hw2G8PQwUvjPnVCQDTN6xyybmwPdCl5zdLj9cu7BAnw==
X-Gm-Gg: AYBFou1dMyAMwz41PXrizgmT5aiQqFeboLzrMxaOi7gX2lk+DGa+px9tkU6VgHhDw5d
	cA1B4Eq1FdnLyWwzWE6H+OOdhQ35UNwelrP/X7nWUKJhsE5PfjyokOqQSCl1TPFH8StofbQNY1t
	LJhXdWQ8gDWM9g6SWaZsykjMORTf7IbCGu4wdtv7FbvqQZx9DWLvVR5UK7Fb0rT+Y9CdOsWID5N
	Iut1wfVY4YCuFPMjZPl5Y6wMUkgGXcMWAOmoawOOeQbkZJ4JTFTC6qWe9VCWDeAcYMv8GYQWUGC
	N0ctaRYKRNF8atvImq0ALGAEH9o+sPqhXZ819jRjMYRorzzdxXtiecV+mCOw+KceHibI7Lx6CRB
	v2+gSYApP+zK5cMQ5SMZLDey4SUQdiAj2KqSzwJJLpMX0dtN1eY4GaOUQxSVx2nCZfrYFjdLzpo
	Vmd4KR9kgLNGUQ4y0uMt18rFS+xd2YC5Igc08tgcX3wuEUi2vYean3WAhaR+WvAqZ3PlrZ8qhGZ
	B4K+UOw7XWIcrZiqhmY58wcu9uu+ncB8wPQn2h8d8tzDNv5RGFjvhXcImhpPXA0PW7ohkRBI49g
	jOKBZybChH+2ZDdfvFG7h6rvt/DEKq0B+BtTRxp+NPteNVuJmrnAPP2LYg==
X-Received: by 2002:a05:600c:8b55:b0:4a1:f736:79f3 with SMTP id 5b1f17b1804b1-4ac17ffb30fmr162680845e9.5.1793530477411;
        Sun, 01 Nov 2026 02:54:37 -0800 (PST)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.161.162])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b78a1dsm13069832f8f.24.2026.11.01.02.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 02:54:36 -0800 (PST)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com
Subject: Tracepoint project: starting rxrpc_drop_ack
Date: Sun,  1 Nov 2026 12:52:46 +0200
Message-ID: <20261101105247.35947-1-obabitemitope765@gmail.com>
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

Hello,

I am starting on the unused tracepoint rxrpc_drop_ack in
include/trace/events/rxrpc.h. Its only caller was removed in commit
5e6ef4f1017c. I searched lore and found no recent patch removing it.

Temitope
