Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4891725102
	for <outreachy@lists.linux.dev>; Tue,  3 Oct 2023 17:52:17 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2788993edaaso831680a91.0
        for <outreachy@lists.linux.dev>; Tue, 03 Oct 2023 10:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696355536; x=1696960336; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xzqHgkjB2wnbHQD62wnfwY8nAEjBkKZbySxgQKR6I+M=;
        b=L0UJ1RuKutVXzlpTHMGIRDMisxvF6gRdn+OaTvpSawgsa7QJYwxvRwnFG2MUEFuiy/
         qea4+5XDOy/0cR0RKQdK/wIKuKPlhEUfIIlL0LsSiO1CGMqI6IAk529cknIPOi2bstrL
         xsZC8NNgbUxPcpZXH8uqX/3ciX4EqZ5pVPHucGjm3/64m+W2oHix3Q8ByIIo1ibgaQfJ
         0Gdd7SZ3tTpfCl1S6iJsAqOKHrqDtNIovbnqeEkr2GXyWx5XBroNzfvP1UY++p6IfNET
         2yy9Yj1SAvc5d9nc3kAZtw6PxtxAh8DOLkNpY3hIlWbCyOdyWsjey/iBavxs3fti1/wJ
         cJiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696355536; x=1696960336;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xzqHgkjB2wnbHQD62wnfwY8nAEjBkKZbySxgQKR6I+M=;
        b=GXT3mFUa2AaJo5W6cBB1mGyr261KP6CpyvVTqZjlJcPtKtGsTDXrfe7UUJSj/Js9sk
         lFMwoUJyce+n1KrQOOySVnoaY28gj4GyH1WW6kwNvNr92trxPE+U9rx8lj9hS5QsieCH
         jrLeL+quQIK/JAftmlXwkCaKrv+YVVoLjGtP+ujTF9Rp+FHVPLW4VmJFDuKb0KTGZO6u
         NqTM8nsYIoLKPfB2mSIRnIeb+tXKGSL+6uFJ1ZE8UhoH7c7rvcvLHTTSmtsus9a3NoCI
         SM8gDCR6hyF3gORPLlBXo0matHbQhKM+Z0q1Y3wEIDl/hZQJCHlgtLBbKLrNBk6QHQdQ
         E+5Q==
X-Gm-Message-State: AOJu0YxTNI6740hpoOMokZkngKp92cI+cTEyr/CGpK9TEpdTqVZmsYTX
	0RG4OtmSL1MvAYcvtBZCQ7/riXmBhxQFgG3xSply1DQ3ynPDTTCRkqo=
X-Google-Smtp-Source: AGHT+IHfhe6iKtVyO6ByP6JdRMr2xDLRqC43JAyJ4WP+MlfSPQimsR8BcHqCIgfobdhEe/FFyZcmsC5tpRYgvWJZzcw=
X-Received: by 2002:a17:90b:1a8c:b0:274:bf7a:60ed with SMTP id
 ng12-20020a17090b1a8c00b00274bf7a60edmr69616pjb.12.1696355536264; Tue, 03 Oct
 2023 10:52:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Isoken Ibizugbe <isokenjune@gmail.com>
Date: Tue, 3 Oct 2023 18:50:52 +0100
Message-ID: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>
Subject: [Error]
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

while cloning the Linux kernel repo, I had this error, please I need
help in resolving it;
git clone -b staging-testing
git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
Cloning into 'staging'...
remote: Enumerating objects: 9716192, done.
remote: Counting objects: 100% (32/32), done.
remote: Compressing objects: 100% (2/2), done.
Receiving objects:  26% (2602687/9716192), 1.26 GiB | 452.00 KiB/s

error: index-pack died of signal 9716192), 2.10 GiB | 302.00 KiB/s
fatal: index-pack failed
