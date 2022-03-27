Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ABF2F29
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 14:42:04 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id w7so20751758lfd.6
        for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 07:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Fyd7qPXqOGjCbR2wKC++DVDI2gw2wYgkgsE3gqWuJEo=;
        b=O57l+C5yjdLmh59X6+SmkjbqJM0aHYpX3jQgVqXXTbe0XBL+wVSfpVf3t/LTc6bihg
         3759sxvbjQ5tM3Mb6XJHyk9/mxfe8IfopOiOz6RQyG5qQelPXpDZK/eZq8AaCUu2ZXvA
         MwNYsvKa7eHdWhvBRrmOL/yGjCERFyIfybUxa3viHzvm5Vxe2mSOlZinHVXNylgS9FE3
         kubtF9heFpjtr99NZlLib72zY00ez1upzb4E0CBz8et8ICjjQnKJtxxqKoV2NJONB0ZL
         yxLJh65RitszNaNJZCOh5eU44VlmQex9q0VXvTdihaUBCv6syXe2xUQAGxwNOXvbUaf8
         5TbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Fyd7qPXqOGjCbR2wKC++DVDI2gw2wYgkgsE3gqWuJEo=;
        b=O+akfH698cjuRBXsu2qUqfuiEllXBOZhCYr8ELhgozlMkNLIZUpCyQ3g/ESbJSz7XP
         eaN0i31MzojII/jcfrTEgdDoXVVYTvbxrK0SOIehVrhTsW+dxcbz1yWjJxe8it6MRHnV
         iUIfoQdh6wOLoxV02hLUbvVbAsSyPSKGBvGSnzH1ZayEEkoC03dl75FknYbZUE7s322P
         TsIHL0iwjpFjAsz0mGj0KgrV5v7Ox4/mPdWP5CyOie9t8VifwigKTwFjmki1I5u/1JOC
         Ab7bFQVipr3hUFGipkcdIIi1prm0SiaJR6LrDrEyDj6X2+ecdeAQ4+rZSq5Dxsysu5fw
         EUag==
X-Gm-Message-State: AOAM533q0JjajwodKIyhbyFG5h4VZRyLFe1MndG03TlhFz6tGzgi6E8B
	meUde8wVotXEhpwjllhSbsMh905jZVBzRRxhX3FujevX9THgsQ==
X-Google-Smtp-Source: ABdhPJygmwZnAclC/5eO2EJl57VmdC+9Kic5DaiGvzovP39IxRfH6WmDTOOw1IG2V5w6nny+bx6nKJU9iwwx0Mz54Yc=
X-Received: by 2002:a05:6512:12d6:b0:44a:4a14:a19a with SMTP id
 p22-20020a05651212d600b0044a4a14a19amr16005062lfg.619.1648392122023; Sun, 27
 Mar 2022 07:42:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Sun, 27 Mar 2022 10:41:51 -0400
Message-ID: <CAMWRUK5t=LZG4Ay=RaFkBbV4q3JYayMqm=Sb_dkO92wJfgH64Q@mail.gmail.com>
Subject: Outreachy contributor
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi all,

My name is Sevinj Aghayeva, and I'm an MS student in Computer Science
at Penn State. My initial application for Outreachy has been approved,
and I will try to make contributions to Linux Kernel Networking API
and selftest improvements so that I'm elected for the internship. I
have been programming in C for about two years now, and I'm currently
taking a course on Computer Networks. I don't have a background in
kernel programming, and I hope to learn that during this project.

Cheers!

Sevinj.Aghayeva
