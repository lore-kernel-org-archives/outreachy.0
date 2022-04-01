Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236E11367
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 13:11:21 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id m3so4800159lfj.11
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 06:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=soJTVXtZvbxu3bDDaXbXIz+uuZBaSqm6HzmCmkmKjp8=;
        b=Hb8xWwKmi/yvdpJbOg+GbEn9G++hkBFX2ev8cy7pjDMSz/4xd0KS7iF0lXeTnLyqAc
         fso5WaXAvmJ/U3ldXycNJp0EYxQuGYWCiJicgKPC9zqL2mwkHrCVxTIfipk9SOTSXhwK
         ag2g2iIOi9vIvG+Jk9YeekNmTgvCv68QLIF748LtT20GaJvN7+x+p4MSQjvnirOzOQvs
         AW5fphqtYja9JArO2NJ/+f3EkawWgglJ+qnHIMf/aKMTjd6v7rk2baXMP+MrlGcSZCVR
         n+QMOAD1woFmeFT5daDzdckz9kP5ChsWa4tWD8HAa4qKN+x03dMFzuAMx6IV3I9NzNsl
         5i+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=soJTVXtZvbxu3bDDaXbXIz+uuZBaSqm6HzmCmkmKjp8=;
        b=4Ybvmxjlbk48N5R3zAa9bvsBD4n5oBUabQ1A/fPMPrw+O80rvmCjoLYxfciYL2w3yI
         jnv3owufU/lMzXOE24LD1TTmFaJZXq0mf48vADdtJHyUphAiW/fICQFW69kSPkXKYJTj
         EtrIdXfWqql3XkD7RWXOYOlRMhNn0dwUb8Ae08G4LAGVp5QsRHa02d+LJTzpj/4UxY4J
         BZRjn2SKhfmENrj4r0uOhJv0/NI3DpePAFNyoRH/hFu2mQiTOP6MyuMW4/4ROGZp0dGq
         OGPd0XWmxz7ogUtvZs+AfFKbsx3Wqu5CVFU1hMAAxKogNgIbONJ0BDRanyLZ6ffsAApj
         Oaxg==
X-Gm-Message-State: AOAM532re8VqM6NGb4dbXd4ZHVgF4GsFk1quv1JdZMlR5t/v/wFdPAIT
	gkRDwulIrwBK4Dz/bIctO5CgyrisOOr9NsIRr/tFsjOOT+DeUQ==
X-Google-Smtp-Source: ABdhPJzgk31hj73+fglVAc/LuXCp2W0ueWUSFLIuhFLYnw70pwxWEkmDtlf1/FzZJjxgVt0bBFRDwf1j1zIS97KgjrU=
X-Received: by 2002:a05:6512:12d6:b0:44a:4a14:a19a with SMTP id
 p22-20020a05651212d600b0044a4a14a19amr14120117lfg.619.1648818678357; Fri, 01
 Apr 2022 06:11:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Fri, 1 Apr 2022 09:11:06 -0400
Message-ID: <CAMWRUK6g5qytnqqNV9GmWgWYsxHFXm0iBEw05Gp62v7tFSg8tQ@mail.gmail.com>
Subject: Missing package when sending patchset
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi all,

I just tried sending out the first patchset, which apparently must be
sent using the "git send-email" command. I got the following error
when I first tried git send-email:

git: 'send-email' is not a git command. See 'git --help'.

Stefano on IRC pointed out that I'm missing the git-email package.
After installing the package I was able to send out the patchset. I've
updated https://kernelnewbies.org/OutreachyfirstpatchSetup to include
the git-email package in the list of packages needed for Ubuntu.

-- 

Sevinj.Aghayeva
