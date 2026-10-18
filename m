Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A08C413786
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 18:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792348660; cv=none; b=Qkk1vlu/BSg+zj5C1Ohh53AlispF/X2Vi9qI2l77lp4VKLSm6xAkx3ITS0B7EIqzyF1Feb2TTZ1YEOsnMTOZ/7pbUNFqj2Z6Cr/bCTIOgHglmMkbm5HzIUP1gWL+hdoKBCtiDi2aWxC9/Atd1tRphz5WjPfHQeTTqQzKAvZLWKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792348660; c=relaxed/simple;
	bh=dAfHecourZFlx36vGy0jDha1tcmQ9INoAS/OgZdXbEo=;
	h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version; b=KbBH/Ixh0u3ypQImqL0gczDigNnG2k5Jf5JRWYwJHf7JZ5Zp1egOARImcP9oAEcqKwKbnn8Nhs4AzumkE5CfO9YDEh4vGfzkX/lkOcgH0sJXSVhH3ruz1T5pwv4P+a8LeM2nzu1cN3j/IXsoeJzApWUQ4tmKrUxlu0MMS93FH8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WXtyo49S; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WXtyo49S"
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-48c4be28b82so1087284f8f.2
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 11:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792348657; x=1792953457; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:content-type:date
         :to:from:subject:message-id:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=dAfHecourZFlx36vGy0jDha1tcmQ9INoAS/OgZdXbEo=;
        b=WXtyo49SsQqWG67dGG9kibHjYsAhQbL/r30vt/RrVbWKj+wxD2H302FEDxLriGu8Jl
         aha2stXvhJdWNMzR63sp1v3gbuTxVPw+Do6VtezE5QcEHf2SeL+vqzupygd1ZwMwQOxW
         znOTEcFZAdpPMOl6yYEF32NfkAdJxhd/y3ERaCg7WtzlNZLRd17u2fstsR+LDeDH4vHC
         MqP+yUrcAEznRS1TUG9p2clAmjx9GIr/9ZvGudJh0fJPAXcy6DF2z85PizqrxdV/JFkf
         S2Vzu4exQTILuVMas4yS5BKzLqnzDR8tpzDV0mwNxlAZ1GfKEZhD7QBfQiwc8lttGXKG
         mnAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792348657; x=1792953457;
        h=mime-version:user-agent:content-transfer-encoding:content-type:date
         :to:from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dAfHecourZFlx36vGy0jDha1tcmQ9INoAS/OgZdXbEo=;
        b=BW2u7UEvWTTwtC0PuIYdcZBSiEs7fq5IdXBzO/IxED7IcP9uAFcCe8tDt5KsyUvjf6
         u8LD/LRXYauS6TftHhEmEBVV5XOpg0BMdIKj01Geq4cqtrwpQezzNc8j17kRGL6Xso/X
         xMUzeCcTf9U2q7ghBnxEwiq5MF9qwlSiVtf2dSAKEpj0UZOPnath03IqMRapJdYpclVQ
         ir+OowU/R5+CHfY/JJbOOVYAEqwSloyfMf4As2t2eGum8T90LjdSi4U09SVX/zFmH3I+
         liMJORaFZEW8RYHZrpviyLGVijIdqAuNBE0yLaZ357RgWXTMx8EUFQ3Y5t8tTjcAwoLJ
         6Dew==
X-Gm-Message-State: AFq9FYI47Wk9PPHmcU54D4s3C8zT2nSOYw4DZ7+Uxe1sVZqYPyyOQzNk
	9CpeRAeYMbd0qUsPuzb8UWv5vYd0FDCmKd46sLrXSrXeg+1z2p7c/bjAHMLSK+q8SIXMPg==
X-Gm-Gg: AYBFou0hrDnfjZJ38+uxf14+29UuYW/Bvtx3LbY1ORCtQQGiWKOTdbHGYVRGZ/Bl/Di
	l/c40C0q/Vb7ypKEtkPN9HdCQFCjCnyJIDQAlBk5/wy0JOe/X06wVzyCqxrMI1yvCofCxMnWPaH
	qPxCo6UJXCkQv3iH8BOY0O10jp6qMRAtHkvXo5uHr6l7XE4mRpdxR1LQTFVl7oZ2NiARY8C78hx
	kxjbkTyAix/+OG2FMervBDp79plEpp8EHpEWrnjcUev3o4rEp0V1nsILe8XKzzQ/boZtvtUaz6h
	UCUIXcYXLdACAGwnQm24ozYvHrMpLM7Tlb90IwF65J7LYn6njnE26cPnL76sSaU5GMaA4oO4OnE
	rv0OCgGFU2JRYpOIWEV92Di8BFZhI26yzcDMyOKJFMIm4S/KpVVEv0Q1qiFfyYjEOFAZkzXYbx7
	b+y1f1ZkiEn2jcfH5PRx9le8Gqc6CJMoq5zfKhgncKtFHBRGW9YEaXFYS8W6KHH92NnfRqeQCqT
	w==
X-Received: by 2002:a5d:5486:0:b0:48d:faa4:5b66 with SMTP id ffacd0b85a97d-48e07fa41damr8171997f8f.36.1792348657074;
        Sun, 18 Oct 2026 11:37:37 -0700 (PDT)
Received: from [192.168.0.50] ([102.91.104.190])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4d4978sm16863871f8f.21.2026.10.18.11.37.35
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 11:37:35 -0700 (PDT)
Message-ID: <8e80fdd3bd43a3ac4e90085d3b33174e87af62eb.camel@gmail.com>
Subject: [KERNEL NEWBIES ACCESS] ComfortOyewole
From: Comfort Oyewole <coyewole7@gmail.com>
To: outreachy@lists.linux.dev
Date: Sun, 18 Oct 2026 19:35:58 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

Hello Everyone,

While following the steps in the Outreachyfirstpatch documentation, I
noticed that the link referenced for the Linux kernel coding style is
not accessible here:
http://elixir.free-electrons.com/linux/latest/source/Documentation/process/=
coding-style.rst

I=E2=80=99d like to propose updating it to the official HTML version on
kernel.org, which is accessible here:
https://www.kernel.org/doc/html/latest/process/coding-style.html

Best Regards,
Comfort
