Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A4E6102
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 17:34:31 +0000 (UTC)
Received: by mail-qk1-f180.google.com with SMTP id s17so2441571qkj.12
        for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 10:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+lYl0JUrwl6La1TFMHnURTSNGyhWvLyxPWHX/oSfBZo=;
        b=EafKSR9v5bQ1y4n3n4rO8+iS10gb3SRVda8Sdi/Is8HOeotl5KRGO5rC7jA0ox/JY4
         DyzOTHhfFll6n1fuFOABHRytrYArRbpJ7TbgSXt2+r1GLGxHkAhC32tMa7t1dCOKL1FF
         MLumL7C8HBJuczl8Xh7Bn/fWmILtK3l7fWL5vceQ5ayp5PHP2PlczUE1jPtZWt9h+N43
         x846zO4++WQzmTj4LHVB3pc5zz2HxOHBuft6zz31InNIhgWUB09mqZY1iWnCZBc3rTC0
         gLxMiuAb+bFsYMHx13vG1MFQM1fRKGRPDlWCb50aDwQ6RW8jcSFi7Yi39unrFZXYpJW9
         bLRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+lYl0JUrwl6La1TFMHnURTSNGyhWvLyxPWHX/oSfBZo=;
        b=dZog46lU+7BhCoCq22TQn9nv+DxqRegaQsijsKcsQIjFF/ptlyWJLD1GLVglBtufhw
         AlheXSJcI9KWjuCL2J4g8CuKtWkGqr5gadaha82aVx4Jfjy2Elx7MVVicxsj0nS10Ren
         kWV7stRiG4doK+yAovuKyBW523Y9FVas6e65LNI3fWWKMo6t/0HjJh+09atMibKtVFph
         zJqc6+oWPD6bIeCXl71y+QeY0QwcE/hQogPFPtnnCXLTgnP8wmwzoNyJThNNDOR88dXN
         I8daIizPvUwxuSAhiZVMejbLyPUVnUeD4iHiglRowK5q3UCXuOPXwZUURn7dyxu6XiMA
         kuuw==
X-Gm-Message-State: ACrzQf3UlXwe1vN3VYH9hgNxV8p0izSXEwOjpB2V2jYwBCjIPvDBV8L6
	zG5uVn9m9jq7xBOJkFVw1b98D1E1+tZXs1BotTbDWZ9EP+/R25V9wjo=
X-Google-Smtp-Source: AMsMyM7tUZ4fCrdfZY9KKI9K+DfOKtwBfLJZDwzHqFASmH6HbGUAaRXARbpn6PibVdtr+HfHBRsrWla4W2HiZnkRwOw=
X-Received: by 2002:a37:cd3:0:b0:6e9:b157:c5ac with SMTP id
 202-20020a370cd3000000b006e9b157c5acmr15144397qkm.565.1666373670622; Fri, 21
 Oct 2022 10:34:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Tanju Brunostar <tanjubrunostar0@gmail.com>
Date: Fri, 21 Oct 2022 18:34:19 +0100
Message-ID: <CAHJEyKVqaanNV4AWxnqBe0mg6=mT+-yBo+Y3UbQDfVjp46kvqw@mail.gmail.com>
Subject: KERNEL NEWBIE ACCESS TanjuBrunostar
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Please grant me access to edit the first patch tutorial wiki
