Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7FB3F4D0
	for <outreachy@lists.linux.dev>; Tue,  3 Oct 2023 23:19:16 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c1854bebf5so17162661fa.1
        for <outreachy@lists.linux.dev>; Tue, 03 Oct 2023 16:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696375155; x=1696979955; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uBQWH3wGClEoc520KxL5fJrsxznLitJh9/NaQHjv008=;
        b=Rx8qyt2bjGw3HwbcbFFf3NEl8bSWwrcXL6gOe2i6DEyBuOC6j6m5fORQ8k9p4e3lvS
         KxWDwT2EWtF4dSq1BPYph2gOJ11wmaF3T9zpCtaK2x8z7RlVa8rNniqsNvSDS/RIxfb6
         Scf/KEpH2S6qoFAm0ej/CZClL9Q6d7fdjbUyPdmyFzBr86DAnBkY2pERMLmYZ1pYYeP3
         C/gScPcKASQzIszISIWDEYDZB5+K4P4/hxRCYEJ4rkobC+SSX7IAZLctuQrLadmmiAm2
         A1HTzEE40c8iBNYLd2i6t8L8uMPttZPUCc14/K3iYJ/XnC4o2UQdInEkV2ySXFelYl1i
         zj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696375155; x=1696979955;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uBQWH3wGClEoc520KxL5fJrsxznLitJh9/NaQHjv008=;
        b=Wp0C70qZbEPupkL0tDTq8eCfhtlLbgDx5+d9j9SSnoWNN9AkCI6IMCT9t9KFigA4Ci
         Bb8N5guYVFTPFP0p4Y6tkIUn0ByuOme+Ze38YbD1bspw4kUuQ95UMSvXm3xFAvluvX5m
         kCVeRmoL6+LzoWfsk0e9MTu8vXeIHAGQ+ZU/NBvcp0+Buno+FCSLHihrPlc96iFJPpf8
         R7XiQQU6uN94GlyafgRdt8bewc5LkYZrukU0yMGm93qwt3fVX2Y/D6V2qLMSGfB2jD91
         b8l7vbCItHBsv3EAGe1MIHsXMBjiDxNIixIb6jOr7EmDkblAW3SLDCRE9T3bLxFnG95u
         QmmQ==
X-Gm-Message-State: AOJu0Yy1S+2e2OBM2d2x2HqGr9qbF8qQmYEBWjseN4CX7kAj2Tpmikqc
	Vf1cg/6bvfMC9DR52DRYZHZQvibTkqepbOSHkznXsVxfupP0DuDE
X-Google-Smtp-Source: AGHT+IFuYMsH1tVs3lFM3iVO8A4U4NaiOlNwVZ0DC1aN6JGWG0s7eoGLnICR6JeCnwPrxR3NiJnZCjJdp262ItlXbHI=
X-Received: by 2002:a2e:7d07:0:b0:2bc:b88c:64ed with SMTP id
 y7-20020a2e7d07000000b002bcb88c64edmr627254ljc.12.1696375154568; Tue, 03 Oct
 2023 16:19:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Wed, 4 Oct 2023 00:18:37 +0100
Message-ID: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
Subject: [Outreachy Applicant] Introduction and Interest in Contributing to
 Linux Kernel
To: outreachy@lists.linux.dev
Cc: Julia.Lawall@inria.fr, andi.shyti@intel.com, karolinadrobnik@gmail.com
Content-Type: text/plain; charset="UTF-8"

Dear Outreachy Linux Kernel Community,

I am Gilbert Adikankwu, an Outreachy applicant for the December Cohort
2023. I want to use this medium to introduce myself to the community.
 As a Linux user,  I appreciate the quality work that has gone into
making Linux a rewarding experience. On this note, I'm interested in
contributing to the Linux Kernel. Specifically, I want to contribute
to the Linux Kernel through the project titled; "Improve i915 sysfs
interface implementation". I am excited about collaborating with
community members on this project.

I am eager to learn, contribute, and be part of the Linux Kernel
community's journey. I'm reading the first patch tutorial to learn how
to push my first patch. Any help you can offer me to make the process
easier is welcomed.

Thank you for your time and consideration.

Best regards
Gilbert
