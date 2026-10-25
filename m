Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.181
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792942264;
	b=psPw90FJs+VQfNkmCn1c5XQnd2fawzY/VmOLJ5GidP9V9DelacdUHyKo3ewws24Q5FYf
	 l/GiQZhFOk973n9sCAlDe9NGXZInWCay0qUA+JVA+BZqEYKXnvkSXgdhbYufLxkMLLkSh
	 qLgMEJiZ4Ak08u+2c7ylNH/I57bcYsgQnfGmwzW39/Z5Ehs5JsFihYLbI1dFxmRK8y4NO
	 EchXzvhLxsct2uPVdll7xTI+ejvXKMa0JRDB0z44DUxMpjyxLPRauFTHN6WhXRydt0nNp
	 dxun2G0g36PistEgJH2bVZ9nnD8mpVX2lbVZNSh1pKZhiaOgSG4PnoSG4QLNOr/CXlw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792942264;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=Si7KGWcYgMkjLpfr3EeXcKqAh1Zm3Sr1hnE0+4HWPdc=;
	b=wR6y9UnG1PMaAPSfi02m+BWwCns921hiWLa4b33GNBnA0ffNqSEu30ALNyNhT7MQGyp7
	 JlX1JJtxiB1S01Ns+ST3MolWuL6jcWqjqD6k4HKGwqdGAilvcEXUz8wNtvdbjhRG8LTOP
	 0PrfT0hZLQUoJAbfJaCK4c+ITkibCy+5L5PRqg4Ch+0khg3QUtZHpHGvH2Dlv7g8PTtCP
	 nhx2zi5+ab80//nqtdGNWXfivC2ZlhNfydVZTZ/80mBrQv3WSTGQA3YB16ZSBw9e2uk1z
	 TjEQGopIKL+whLM44IGci7AUDjTMLznvBVCifixVmKyTVfRz1hJpHw1Adh8lModmmxg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=SNg9GN3c;
	arc=none smtp.remote-ip=74.125.82.181
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A56606A31A
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 15:31:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 01A56606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=SNg9GN3c
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-35d0be18c71so3898430eec.1
        for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 08:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792942263; x=1793547063; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Si7KGWcYgMkjLpfr3EeXcKqAh1Zm3Sr1hnE0+4HWPdc=;
        b=SNg9GN3clofbD4VsaDplTaF1ceczRHKN9dTAJ0iodq5MZl0qqSJmmvJsGmyYcPKUhx
         aBYiIDLHYJAAETUgAJ+rPH14T+s0NNTaAB9RDfrvYZQ0ifUCHj7Q1oLMu5racpqt99sC
         0N/9eWiCNagfl44WZMJsK7CTlrvvOnQE1HRq5pzg4DUccYbxyfmf6bxqTEmwKptw2pLw
         a8n5uaFO159oGaf05PoQ7KYxyKuzb+NJ1F0s7Y76e9DuuCW5mB8HAIQgAFZYaXSbVmoE
         bBr1Fju1IEWVGRqAnNSLpn3RXR8uo8nKGhU5pP5oQk8g28ULjJyl4OfxFN9mNmS4ykhq
         a1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792942263; x=1793547063;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Si7KGWcYgMkjLpfr3EeXcKqAh1Zm3Sr1hnE0+4HWPdc=;
        b=i8AfxkpUwnS2wTjJVJbWkcijKlSBUWc8qAxxry+hfL+7PLjgIoOWLsVi+XiIv49RkV
         XYwmAsCNscJzGjYtnrefApgX0g21yMP0nXoSyFOzjdJRY+B5WaiFie//uzKj6lx9q5kw
         H9cGF0JrVzimQVdnaJss/Nx4Nkz6o2zCR40JNq0szVy3Jv99AWaKDRtD6ZrjJphiXkhf
         qEAUMGaljG3NDnBig5nBAorQpYzweIH/0oe7TFe3FXQTar6C1WtyKbhfqrfKqSejs73Z
         awMfPRAWB/9ek2js6rlLKyS1TIk5CMcTM0r+5vbBiNtBPxJnOiizU/tZRNVJv08goXq0
         i89g==
X-Gm-Message-State: AFq9FYIsvesgwCmAFSgKDZ8U/J2uJHcWmr+HSbHtBZktg86LIX5fn3Pe
	LF457umGd/+0ayAyxoGGCLBKOB5OCji0W7MFGL93tqwbEDWsk/e7KZzAtQ+2zfwd
X-Gm-Gg: AYBFou2yL6g4og8kyDCwdIjOxTvPnbLwzZip5NM3z24vjN5wPJB8DV6kRuJ1Rz8HjdO
	aMcWj+LeopriCkpYHMsUITh145FOYsRBaF7M6tW35BC3RPZMW1+F+1HPZ7HYc8P97mz78UasIA/
	cYXaAf+i6eHLcrA+XhaDiUYDN8XgSY/UIlhCuLCvj2ekNmu2PH6uVgEctZgye8VvPtbB/4SNYrT
	1kNb8Hg2TyHdn3sQIKgEBVX5dY0/UXRmrO9kjjhc8WD4fiU+PgSG0fah3pzRNlU5+eplucQCXuy
	o+p5ONAG+Zy5YN9TYrlYTUtTXNPvLGV9VWF5BuRWiD+XAP7fAFnlk0zZuTVbcmcOB4T+HEvRrbV
	QgFNCI73fPRSnX3ajFqeGoA9aEUL+zARK9nnXvKGhytodAzPwW+6pn3+9fGrsbkoPX3sBIBv1l7
	PXgOoY++dOpLmoWuYSSDjLDixVPsZeVJdDlMLFLfjsb5Jn+ISdysNnVoTlspOG2Nw7Opzufr6RE
	iKVWtGH6W+pEqdTaaspYOYkW5L9Mz1TLN0KlVOus3QFUB3N5f9/T4Nlhu4+i/k=
X-Received: by 2002:a05:701a:c919:b0:187:5a5f:3b27 with SMTP id a92af1059eb24-19935be804amr5768956c88.17.1792942262818;
        Sun, 25 Oct 2026 08:31:02 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:62e8:4f46:5eff:e371])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1989ff2eefbsm17691896c88.7.2026.10.25.08.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2026 08:31:02 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH v2] nfs: Guard nfs_local_open_fh tracepoint with CONFIG_NFS_LOCALIO
Date: Sun, 25 Oct 2026 21:00:21 +0530
Message-ID: <20261025153021.41713-1-pavankumaryalagada@gmail.com>
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

From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

The nfs_local_open_fh tracepoint is used in fs/nfs/localio.c.
The NFS Makefile includes localio.o in the NFS module only when
CONFIG_NFS_LOCALIO is enabled. When this configuration is disabled,
localio.o is not built, leaving this tracepoint unused.

Guard the tracepoint definition with CONFIG_NFS_LOCALIO to avoid
wasting memory when it is not used.

Fixes: 70ba381e1a43 ("nfs: add LOCALIO support")
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
v2:
- Explain why the tracepoint needs a CONFIG_NFS_LOCALIO guard.

v1: https://lore.kernel.org/outreachy/736e1fe0-f4bf-abcf-b7b-1cd874cce131@inria.fr/T/#t
---
 fs/nfs/nfstrace.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/nfs/nfstrace.h b/fs/nfs/nfstrace.h
index b15c1732c869..bbd7735a1f67 100644
--- a/fs/nfs/nfstrace.h
+++ b/fs/nfs/nfstrace.h
@@ -1898,6 +1898,7 @@ TRACE_EVENT(nfs_mount_path,
 	TP_printk("path='%s'", __get_str(path))
 );
 
+#ifdef CONFIG_NFS_LOCALIO
 TRACE_EVENT(nfs_local_open_fh,
 		TP_PROTO(
 			const struct nfs_fh *fh,
@@ -1926,6 +1927,7 @@ TRACE_EVENT(nfs_local_open_fh,
 			__entry->error
 		)
 );
+#endif /* CONFIG_NFS_LOCALIO */
 
 DECLARE_EVENT_CLASS(nfs_xdr_event,
 		TP_PROTO(
-- 
2.43.0

