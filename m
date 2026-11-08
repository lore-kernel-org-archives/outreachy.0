Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794138513;
	b=vehlVKyG8+cUmuY05toASlu1qiouzQtQl4vw2WTEoCAqI2lODckcz/2GaYASOiFemquA
	 5CaktiKveku8o6IS1h2XH6371NVUwHLZYPX4lIhERtgXsfJzcdxEijg9d7RlhWnkZOux7
	 dwwsI+oU9YsbYwslcbwXgGogytOCWS/Kr55kDysNEVAeOiM9xpvTDOSC+G1Er0lbAo47P
	 c8RQgp9qDDac0NTbnGRkV2gbAjAQUrbic3J8e9dPzeLx9VJorJ9SggGuI22i/iV9zTPCK
	 lddnJ7kb74jqdOJQO8LHpoZbkYJUHG02vx76rGDrZct1WyFHaZwGOD1YfQ/wW7To38A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794138513;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=UhpRmsYIebpgkIBayvfXc5n90Z1Ml6OEKAGhSBXKCdE=;
	b=YZleISmmnB5qw+0orYBc+HqyYKV5c281mcmRul3ob1822uXfZVN5I9sjGHjM6SjLGk4o
	 Ujn5LmxUYZtQWaTRLvN22JEma3pceo/irK3P7KPz4tEzFNKrsdBRdX3IvMx5YlQvdVluy
	 kseFzq+CgaDndsg1rpLTrohtAkCDIVXVBtmlnf4Y1JeQE4hTDF/cMgnOnqsXTS59gdJzz
	 GyPiW8zajzSYt/r+elOLyrn+kKi23u38MRVYk2wqghrYwN94ab9ArRxL0Q0WWAAsrXAq/
	 tzeFNwos2t7EP6Key8kuZOLNMDglSCYkHy8nqKZDakbNTwJAn98h+mBgS/HZI6k8S1w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TVTqC0G0;
	arc=none smtp.remote-ip=209.85.221.44
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4739606A31C
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 11:48:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org D4739606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TVTqC0G0
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-492fcbfaa87so28872f8f.3
        for <outreachy@lists.linux.dev>; Sun, 08 Nov 2026 03:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794138511; x=1794743311; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=UhpRmsYIebpgkIBayvfXc5n90Z1Ml6OEKAGhSBXKCdE=;
        b=TVTqC0G0+R9lOV/B4TGOuhcjcKbyswqpyc1shruk/HvRMle03FQsy58LNzu2ZZcPPM
         ewB3UnV12R9o5IUqTgGecvrmP4h6mMG7ddSGDhHXN+0ya0FHi2cg7ev9AsNViUJo7A1Y
         gK5kdTlxp3Pjzxhvfmq5Wv5hrlE+5oNWxDQ1hKa53pF90vDQCXIg/bsWQTO9DXXs/+hB
         Nqpfd/Po+e2nBZCw9KtFUKX+MpXF+PhgvIbdrev927a2fRAuGnZsHSkvSoSCSX1doN1r
         TjUgHh4n50Nkc7uOQ0z/lrU3Z/8MRJ7sVHjqrH2IxLfUeBArup06SumbhAnXUSpR3qdf
         0ZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794138511; x=1794743311;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UhpRmsYIebpgkIBayvfXc5n90Z1Ml6OEKAGhSBXKCdE=;
        b=GpRE2hqER3Eo9eggbbsgBJYRflj6KdYIFeasgtC0NUH6cijJI0F7eITcqHd3QQ1euQ
         UD9o9CoU2XATn2iYpYrubgkFL+7cdkxwi2GujgwWfagEOoOSCrfrsTRwMhAZNb1AVFe5
         EPtkEaBt3W/da+/HvtUzGBm0ChoivGJOTmWM5c//1DoI3zjL1fdeX921I9+xB4jpGoLm
         V2kxZf+0If6uWHSZrRbERLbSx9usrKJB8yO/ygltCusGlAvyxuYX58+JUZEAnP04rc1c
         jijo084Ye7g9gxrKAO9Z/r+G7V05HOUhFFQItuzbYFDixm7p7grwxGqtK1arN+eWqUby
         jZCw==
X-Gm-Message-State: APuU4Z8Z5lTlhcFzKijtCCJv+6lBCnTY3CXF+XcvcGyoAbfyLZm9gupL
	G/m7AqrOcc8CcCewzIee01qxFhx/REK6MndjpY8Z/e3mB6JewRh9zutsxjtjPw==
X-Gm-Gg: AYBFou1LX8SYVlz2HNUnnMY3yopYjNTVRn2GqpYQgk4CQ8SaRhcMXPfzk5CT0aVacEd
	VCK+NKLq+rxnN8G6/qRsA3s4HztBR9a2/AJSrgDyV35FHkV9Px5ZIRJBM4Ktqj7UaDU6hE8jRLC
	szK44d3+d+ce8NOvefSrfmSoXCr7qlJBr+omkcG9VDeOxHpMcgpB9m8CqeDTr6czyW7ubtRzRc+
	lx6O/U6jzsOmDmOXX9pHwURbBfGDlxDiw4DifSngVTQbevuOw2s2QRfXMtCqTLT8bx//xWb38xA
	bviOIloRHiljdIjYQqHCNH7cThvwBCcSf5e8VKmCeU5v+yHdEWOqfNKVQGUcVf2MkuQij4gvtPB
	OQPK0SfaxYTwMmi8PlP247OsxN6uf+Enzoo6TSk7DIeC94sCtyNqkLxE32YAawgL0TF6xchBHCI
	waGthOGJBRSSCPayMlLUW63p7VQhC7zqlHLAy8VbLjTEmFylU8XVcn40Y9biprzySulwrOTuFrD
	hQXzUzCSidV8HHDlJTaAHiSYf5sMMd23zejPUsruFFtphlR1Ok+YAUfKRojka/TlyhhRpEPO/hs
	Fny2W0SmPQlbe7WsxGm4hUt6rUWU42LgSxuLxBBCjVZNDSK7YWS5qSTrd7cNmmXl9mvVWovkPKY
	EsbMlstVtpBKb8C5oj/MKCguiT7Sp3eYWFpxD7g==
X-Received: by 2002:a05:6000:288a:b0:492:7969:b4d2 with SMTP id ffacd0b85a97d-495843aebcbmr2936813f8f.40.1794138510948;
        Sun, 08 Nov 2026 03:48:30 -0800 (PST)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.37.64])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f398afsm3425380f8f.5.2026.11.08.03.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 03:48:30 -0800 (PST)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Julian Braha <julianbraha@gmail.com>,
	julia.lawall@inria.fr
Subject: Tracepoint project: draft timeline for feedback
Date: Sun,  8 Nov 2026 13:47:00 +0200
Message-ID: <20261108114700.538-1-obabitemitope765@gmail.com>
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

Hi Steven and Julian,

As part of my Outreachy application, I need a project timeline for
removing unused tracepoints. Here is my draft, based on the patches I
have sent so far (assuming about 12 weeks):

Weeks 1-2: Set up the kernel build with tracing enabled. List candidate
tracepoints by checking which definitions have no callers. Choose the
first subsystems to work on, and ask you which ones you prefer.

Weeks 3-5: Send removal patches in small batches, one subsystem at a
time. For each one, check the callers and search lore for duplicates
first. Then build, run checkpatch, send to the maintainers from
get_maintainer, and Cc you and the Outreachy list.

Weeks 6-8: Handle review feedback and send v2 or v3 as needed. Keep a
list of what is sent, accepted or waiting, and follow up politely on
patches with no reply.

Weeks 9-10: Take on harder cases, such as tracepoints that look unused
but might be used by tools like trace-cmd or perf. Ask Steven before
removing anything unclear.

Weeks 11-12: Follow up on unmerged patches, update the status list, and
write the final report.

Do you think this is realistic? Is there anything you would add, remove
or change?

Thank you,
Temitope
