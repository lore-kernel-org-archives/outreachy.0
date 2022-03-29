Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E462572
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 16:24:22 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id r8so19563643oib.5
        for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 09:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=qW+3nZwLinP/l5PaI+PgnRlLtSRRpWswma4ppWYyOhg=;
        b=YxmsfWcUPjAqU1CMWCLZa3jfBxp+fgtc7nye6ZzqNr5Q/ByNOtsaCduntixFqj/cA1
         gKAy2oVyp0JLoe1k/lojUkMNd0ToGgX62nUnQdy1PAyvjGdvOjrVCXmSk2l+4dxl0l2f
         NbluqGovW3Kn6aYoSiceroVIEjyzPK1g14EnxAcw4taur2CIKvq45x/aOoJwfo7orKPn
         5Tr47P9TlUhaHbBJqdn2PEgK6Vj3lx/t3xo0rVoKX/orQWYVZLU3D5No+pz0iqMt9PT0
         e8gp3/xYgwYhyZj9T2q5EVwXNoNeJpo08Nirn3Bcq/Jkg6yXqa/Z6dJDme+xLp8yfkr0
         sSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=qW+3nZwLinP/l5PaI+PgnRlLtSRRpWswma4ppWYyOhg=;
        b=5yyDUiz3nCRyHeYdU5h9M3g7UhVutEbvIk6wbFpZvuMr0ApdU2zceQH2k+j7nES3Bj
         Vn6Z2zlEITjJerwBsq2ZDf/UcN3ysTzq15jo18upjQ3scXxveiAdazTbX9wLbY5c8XST
         04MXvyT3gLTwOOeLO5Szv/x3uIoBO1yMP2sh+K3L55LFVTVMZS68pvpRi6s5Z4rm11g0
         +PM399iBwfV+qP4j/v0m9iVGGIyN9X1qFgUWDsaNdLfgyyd0/F7rSxBdyIEpnn6PVi/j
         xDdEaHh/GhG3IufYgkPEy2RBQh208/VjrAe8CzOs1OTSI68NXecFgzeeQxbxdCLNVwfm
         m73Q==
X-Gm-Message-State: AOAM532wt29ExRicTfjZAWUICfqJT6XioOcqbtqZO/J+qxvd+NaHB1eY
	s7NgqHlMb93Q0R0/GTPftOM7VPqP75Q=
X-Google-Smtp-Source: ABdhPJycaRIYqsBZAlYUnwyg3FlIR/IIprTQkQe3I6q3Tt88ZUqTrnb4/0Lj0qKNIKN44TNQ6EiPMw==
X-Received: by 2002:a05:6808:2204:b0:2da:30c1:dd4c with SMTP id bd4-20020a056808220400b002da30c1dd4cmr225479oib.195.1648571060657;
        Tue, 29 Mar 2022 09:24:20 -0700 (PDT)
Received: from [192.168.21.4] ([170.84.56.148])
        by smtp.gmail.com with ESMTPSA id d17-20020a05683025d100b005cdb1be632esm9731299otu.26.2022.03.29.09.24.19
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 09:24:20 -0700 (PDT)
Message-ID: <3485392358307ad16335e30e6bd41c78cc977840.camel@gmail.com>
Subject: Information for the Kernelnewbies Outreachy Docs
From: brunodout.dev@gmail.com
To: outreachy linux kernel <outreachy@lists.linux.dev>
Date: Tue, 29 Mar 2022 13:24:17 -0300
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hello,

As     Roopa suggested me on IRC yesterda, I am sharing some
info    that could be updated in the KernelNewbies Outreachy
tutorial.  Some instructions for Arch(/Arch based) users and
possibly    other minimalist VM setups (I run a minimal arch
install  on a small filesystem for each kernel tree, and all
space necessary to build the kernel I use virtiofs).

I will try to enumerate them:

REQUIREMENTS

1. cpio
A    non-minimalist install will likely have cpio on it, but
case    it doesn't you'll likely get a tricky error when the
build   system runs kernel/gen_kheaders.sh. (sorry, I didn't
save the output, but the error code is 127)
Perhaps the script also needs a better error message

Cpio     requirement is also missing in the kernel compiling
docs[1].

2. ncurses5
This one isn't missing but it's outdated. It says arch users
must       build it, but actually the arch available package
'ncurses'     (version 6) worked for me so far (at least for
targets like menuconfig, which I believe to be the reason of
this requirement, right?)

3. Possibly python3
I    was following the tutorial for the staging kernel tree,
and      ran `make` to build the kernel (I usually run `make
bzImage`      followed by `make modules`, like usual in 2005
LOL),  and  got  an  error  that  python3  wasn't  found.  I
installed  python but then switched back to my old procedure
and      it worked. I'm not sure if the default target isn't
doing    something else, since re docs[1] also don't mention
python3 as a requirement.

ARCH PACKAGE NAMES

Arch  packages  are  not  as  much  granular       as  other
distributions, so some packages will be differently named. I
have listed them just in case anyone feels stuck:

1. gitk => already contained in: git
2. git-email => already contained in: git
3. esmtp => libesmtp

REFERENCES
[1] https://docs.kernel.org/process/changes.html


I        hope it becomes helpful for other applicants and to
improve the docs.

Sincerely,
Bruno | Pronouns: they/them/theirs
IRC: CodeAgain
