Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.210.47
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792928606;
	b=zo+wJ78oGcrGvP4ZHa878LEbPzw/K6/jtgDbIcYtaYtdJWiuBErDFLHCidyr6Y3FeI4h
	 MFzmCxmMT8PiVdJDjcUeA19tDrE1Gc5gyoth8dbcd8c6nuV01gKRMQhTzyEnPuQurpCSl
	 MpOL5KWpqxEXh4NOFp7qzPErI6lRn+VN/9ROMysfsTZSYpT5P01ALjP0p8WuPeFZmRAUo
	 krH69CjCA/oJzmwzyVxSHXd587zL0v4UJuOqClIu7HDLOBviy+hCpZWfHyBbjO3U+3/Gm
	 coz1PxUYnMAfFUDd6eAYvhabih7/nf6cr0zzVC2FoRm+aJUMH70lXzbTqsyWhUAIMHw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792928606;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Cc:Content-Type;
	bh=dgfL+xx40QgBxTp2AfOrFmzdWWLsceJLDhEh6HE2uYA=;
	b=5JWpelVQAL+F/3bxyhgqC8p/pWZHo7V2ad5FAP2ScbQJhzMO1r3Pvnux1lvwXGwEu0LH
	 gbE8PzWF52cjVrpJjqaTa2R/lRKFxjx0eoWFWPMaf7N/56ddDDWoE/zhMwmtyPkNb9TMb
	 qkP65k7kRtHVN75idqEg2gM5XcKt5bT/uVjpBuqn9ZE80QnI6UuC3u0jztHkiIYVGpQif
	 q300SsU0uUdiExKKqd9v+nvkMkkuM5UN5sy+XDF/GWxTUsnufrKsQ6Rydcz99+oIdKcS8
	 998KcSId50dDYAmujau7xUGQnqudlB8AB7oJdkqe5QMfrjCSNjB2QVPRe1u+1Ms3XtA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=jLLaqiM0;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.210.47
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B528A606A339
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 11:43:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B528A606A339
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=jLLaqiM0
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-83bbcfba0ffso1505895a34.0
        for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 04:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792928604; cv=none;
        d=google.com; s=arc-20260327;
        b=Pv5ho7hYLuGkSN4S9D8VqDPlFRvRj+LHYE1SVkzLgrsFNdVwxUSCA9hKeD+1RjzccC
         a/BDf3aGOkcKcgH+Cglc7wyZNHN3s99L3doi8GGlzk8hyIXCC7VRh99MCD3Tvfrr5+hN
         H8hAGKkZZ/GgvX+MH06JYVx2Qgi0sbVMQar+yu4P38ICSNGASqFyEHdaIgWUtbyFY8ut
         J5G+tiy5QRmrdDzkgT9Y+oc96e8j8WCLsKnBRaaXX88fRH4MBz57DzEQheYvoBxJiSsN
         3QAeFO04M1jWO3YIMed6iQdN4INfB6LOhzjmQ9xcMcDFeL+a+dZgKwqVM1uEO7vTDtes
         r9YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=dgfL+xx40QgBxTp2AfOrFmzdWWLsceJLDhEh6HE2uYA=;
        fh=uEAWOBDz/a8a2YprtgEsqSgPvnHv4mIvO0XAGKI+f54=;
        b=p2jXRGXKD1bOXIRNDyHe/zxaFtKQLvWGCTLabLU/mpHlJ14QuMRQ74Wjg5OBrNwhWU
         b2Pm2wN3fxk/amh1SqLl2HsEu5B+Sy7blYcLR81nKZctCRg7GfP1WIAJOONLn2sGu+8e
         DNvrD+ZbMzkk8tnmjHkc4pqN1GERks8wc4lvrJkb5i96t6TBgu/6zm5NYtqtMAZvnDKy
         Pu7TyXFJe2ZbcTDnBdV4DbNwxr/xCW7v05lUDAn18tV6aBY+xswA0NLb8o9I7sU2AUdC
         oEY50BoLevB9oVUNfGqCorrPkQep5ZpRT/+NUAH+jGqdSRAPNEEDERF9Q5FW+AlRcmz1
         NSVw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792928604; x=1793533404; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=dgfL+xx40QgBxTp2AfOrFmzdWWLsceJLDhEh6HE2uYA=;
        b=jLLaqiM0t02XUzFmlb+JA7gW02shfAQ9xYj3ybHatecG6oi/PyGMyMeBB9juBblqm3
         iqlXGSLQczyrtTHAvDbmQqNQsuPwSOU5oIBlrbMwr0x+7OYiZcW9eGc98VMhOsYp1k5k
         mvAWltVMjIku+higXfcozoB7gp7N0CjaCS3kMMkB7qfA+u9S+ffxPll+PsExFMdngB/O
         79vNijqx1zwmBbyNfO6kJ97PBL+wjJYNaDZvaVneSzgKdojYik8jL4JD0hsAaVGBjSqQ
         ELlr9WjG3337CYGyNgkCWAVIRCZ+1TavrLUm6HHZoJyxIeCWt0vaG75pdKWlJU11yRSM
         MH+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792928604; x=1793533404;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=dgfL+xx40QgBxTp2AfOrFmzdWWLsceJLDhEh6HE2uYA=;
        b=0KpYs1GKgKCJmlJPc7KzE1QE6EZ/Nyjn9SislcTYc5n11CPXuYtd7YobHCgkMvYzC8
         ACwne/ZQIzrKnz99H2xPaz4acrlDioYp4rwv0wlBGwNNtOeUqXbDfHfH+g+xW8Peb9vM
         Ha70cf7GHDoylgzuouX73foVBYKbVNtDxdnlR9A+DKXqvuZZejj6l626vrxq2pIUezwn
         a8+bDiM5YocNE4L4HKcDsZSko92Shgv4ndEWGLpE/1f4XF8MJLuSlACB00DIQhW4e/oP
         BMkIlqdMA9wJJRuoewyNMErY3GmnkMwBhrofpa71h2QR7Z+ogDHsmysw3V9lMf2mWKns
         wAkA==
X-Gm-Message-State: AFq9FYKfqLeXM6NzvwIaDG42cNze2hjhkcFetmAVjR9PySp2HFmFE+03
	3HxDuFmjqcdx4JUugM/dty/+ELYoElZg3l+QriD+xOAF7BG+XBUnTHCqerjJoa+5jSDppii4o0E
	niWjduEC1yAHLsXucbO226ib7VclmVp5/jAH80lY=
X-Gm-Gg: AYBFou1UoL48QYMAz7AWU66XTArmzIqJgpYTVPEfagLCKn03xT3pYF02O10ft82rZET
	l9kVUy9s86GhZl8XF3wzwMO01/1CeQSgIzZA38CT3phL8oQUA7M7sgC71T9Hm1WVKHuX7vuVi84
	Nb3NahMaGfGZujQDI1o3TWrD6zRIZu2mzNCTvQLjMZYr4J3xGT8MacpQaiaRr3s8L/TnLbMLchK
	ybY400sl8l8aomVTluiYd5R/SaroR0IB1othM3N/q8r6sOgzMafbO6o71EM7eUUwiSLNYluiy6/
	UarPnXKD8KFBYUIAzNilhkB5NF/C8AR7o3VODsnh1IBuvz/RX+2H8S4ykjuO8JLVUmBYgwkde7e
	LX8NIZ3JQSmgLa9GgxkRfJRheJXu274D6an5c0FWJkfr6pz4tbQRb3aC8NI99Di7CHZJIvfzV6S
	kwx0t61i7UUzcpHt2JGsuqKfhHps4FPSTGbAe1g10Ku/Og1G4CRPE0
X-Received: by 2002:a05:6808:c296:b0:4d6:9355:7547 with SMTP id
 5614622812f47-55c00325c5bmr2425508b6e.66.1792928604574; Sun, 25 Oct 2026
 04:43:24 -0700 (PDT)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Sun, 25 Oct 2026 17:13:13 +0530
X-Gm-Features: AclHuK-pJN6LZ3ZieT84hg4yyoiKGGqg19O9zVi504ZaQKS7Lblp0T5srE9yJXk
Message-ID: <CAFsBPPndmdUMYbiq98qmeBJ_fbYFCNxRngxxx4jB3JHg-G-02g@mail.gmail.com>
Subject: Investigating unused SCSI zone tracepoints
To: outreachy@lists.linux.dev
Cc: "rostedt@goodmis.org" <rostedt@goodmis.org>, julianbraha@gmail.com, 
	Julia Lawall <julia.lawall@inria.fr>
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

While building the kernel with UT=1 using the provided configuration,
I came across two unused SCSI tracepoint warnings:

scsi_prepare_zone_append
scsi_zone_wp_update

I decided to investigate why these tracepoints were no longer being used.

After tracing their references and looking through the Git history, I
found that commit 1846f308d66f ("scsi: sd: Use the block layer zone
append emulation") removed both tracepoint calls when zone append
emulation was moved to the block layer.

However, their definitions still remain in drivers/scsi/sd_trace.h,
and sd_zbc.c continues to include this header with
CREATE_TRACE_POINTS.

I also searched the repository for both tracepoints and couldn't find
any remaining callers. Additionally, I checked the compiled sd_zbc.o
and found that code and data for these unused events are still being
generated.

Based on these findings, I believe removing the obsolete tracepoint
definitions, along with the unused header and its inclusion, would be
a useful cleanup. I plan to rebuild with UT=1 afterward to verify that
the warnings are resolved.
I plan to work on this cleanup. Please let me know if it overlaps with
an existing effort.
I'd appreciate any feedback on my investigation and the proposed
approach before I proceed with the patch.

Thank you for your guidance.

Best regards,
Sowmya
