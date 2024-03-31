Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4411B1DDCE
	for <outreachy@lists.linux.dev>; Sun, 31 Mar 2024 18:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711908817; cv=none; b=HzvFDlyh/UtkyOzxkNEJuTghgIR5LZkdo5KmgYsR4TLdLbKF6gjTPu9X+vi5UsfhuLMJRpDW38CL8S2vN/szqv1HmPMIJN3qLmKbzhlbnZwVhwWDCXcGtopGktuFQ3Wg2lLyVf+rprQKZXbIrsqLD9nB6ez6JVpLKAdVVS4Ep+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711908817; c=relaxed/simple;
	bh=bJjlETUPrQimFsUqGPbFr1lUzshDqw5hKK7RwH7rCn4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=lK5D2zxx/srN2PgGUyMAW3FX1WftFbpD3SCrgQ1KDgLqaaQuMdW9wLAGCxHiy0r09nachLqfZ5j0+An0ZQxi6SAgc/KMh3zo9awXLVmu1e6Hkerm0A5xMkz8mjR8GWXtN/OSEXEnN4iFrAbJJa83pjp/VwqnsiuyRLzVEbu6ZQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SSIhDgiq; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SSIhDgiq"
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a466fc8fcccso435826166b.1
        for <outreachy@lists.linux.dev>; Sun, 31 Mar 2024 11:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711908814; x=1712513614; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bJjlETUPrQimFsUqGPbFr1lUzshDqw5hKK7RwH7rCn4=;
        b=SSIhDgiqti3okRA4D8yUHrAZAZzrXC0qICo/9tMKW6nLyhXqcBezEIFXKQQB+Jk1wK
         /isXEUg7tl1gTu4+efbfiAR4pdd3S9AiV5o924dH/MHjmm42DMEy166ITeWzX/a0R43o
         6EhMOONt8ti4sWduotqJFaPpNtZjjoubaP7Qwdz74arD+2f3Ri7NyIn2AArmFXI8drdY
         tP/BShx9Z050wudUXEzC8jw4BAzoky48vFbcBPPOn22FjwhUmLB6euhXfCOMV5wU0eG2
         tNkANCqgTDcHN4fwfpl3gDj2I9wtW4GRKyAgf0yg7PYKGUWYe+y3TPF+Ab6fbQ1T9Vdt
         kMfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711908814; x=1712513614;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bJjlETUPrQimFsUqGPbFr1lUzshDqw5hKK7RwH7rCn4=;
        b=GvdNzf61m1OdtwxtjNnLFd9qt99PaDODhVA2B1ZChEmnDvNMinhdbnsRA0giDhIlB6
         smBOKLrTGc61NjR/9wTsbKu2TdxVWwvBnwQm53yYNc372oqsg/Kxg2D1DHb/ifPLi7xe
         8U6fYeeLmT/EKI0j3A1N/rl7Flm4qB4r03d0ukGsCdycl9FNMr3qNAeXRcpMpcNZMrjq
         xanMcmrbndyX0wd6HF8L/ZTHZRgrjtgD3WO6gRMZKcYQh9z9/l6BwkxAAwPYpR5cGAO6
         DFGMPjZy2OSn1kf+zjW+kRrMEROnQ9QOoWtqtfzwzM908DQ2F+/a1Qs752/kA7QC7h8g
         DTBA==
X-Gm-Message-State: AOJu0YyoCp/75659z4p4GmEKdFIHbQ2iankx/2TrlY9wN+wTYhDd0ube
	PDEZ6T/rbD0qeVACFLHNb7pLfrkd0DIb1m8BJ+SJAVvqEHEquS6TdFXeDZnmKwE3f8CRJ1mKA7t
	Pk3l4qu5rQ/FV5tAq1DPtRCp2eM1aK2V9wnoIN9PG
X-Google-Smtp-Source: AGHT+IE6Y8BfepPzs3n9QDvHGEYh3QorIlc3mKGtSRLcA+jFaUZvfMivaZJ4lIDH1/pIFfWhz9BPEwpbmC4xJ3pUS8E=
X-Received: by 2002:a17:906:1315:b0:a4e:683d:b602 with SMTP id
 w21-20020a170906131500b00a4e683db602mr803384ejb.10.1711908814491; Sun, 31 Mar
 2024 11:13:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Saasha Gupta <saashaa1122@gmail.com>
Date: Sun, 31 Mar 2024 23:43:23 +0530
Message-ID: <CAN=P6FOCY=2hu+W6+yCdc0AGsfgQh0K4eB8Pw0c=Qp9Z9nzVDg@mail.gmail.com>
Subject: 
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

subscribe outreachy
